# pipelining Meeting Notes

## Video 2019-04-05

[@alexcrichton] and [@nnethercote] met on video for ~30m and talked about various
aspects of implementing pipelining in the compiler.

[@alexcrichton]: https://github.com/alexcrichton
[@nnethercote]: https://github.com/nnethercote

#### What are metadata/rlibs?

First we talked a bit about what are rlibs/metadata files and how is this all
going to be put together. The recap is:

* Rustc can produce metadata files (`--emit metadata`). These metadata files are
  like header files for Rust crates. They're internally a compiler-specific
  binary format and cannot be inspected.

* Rustc can also produce rlibs (`--emit link --crate-type lib`). An rlib is an
  archive (a `*.a` file) which contains three things:

  * Object code (`*.o`)
  * Compressed bytecode (`*.bc.z`)
  * Metadata (`metadata.bin`)

  The metadata included here is the same as `--emit metadata`

When you type `cargo build`, Cargo is likely building an `rlib` for almost all
library crates in use. When you type `cargo check` Cargo produces metadata files
for all crates.

#### How are we going to pipeline?

The goal of pipelining is similar to CPU instruction pipelining, which is to
fill up available hardware with as much work as possible. This can increase
overall throughput without actually speeding up the intermediate operations. For
example let's say your compile looks like this:


```
         meta                meta
[-libA----|--------][-libB----|--------][-binary-----------]
0s        5s       10s       15s       20s                30s
```

Here we're have a `binary` which depends on `libB` which depends on `libA`. The
whole compile currently takes 30s, but as noted here the metadata files for
libraries are available before the compilation is finished.

Fundamentally all rustc needs to produce an rlib is the `metadata.bin` file from
upstream crates. In other words, to compile `libB`, all we need is the metadata
from `libA`, not the entire rlib. We can theoretically restructure the
compilation like so:

```
[-libA----|--------]
          [-libB----|--------]
                    [-binary-----------]
0s        5s       10s       15s       20s
```

By starting subsequent compilations as soon as metadata is available, we shaved
10 seconds off this compilation. We also did that for free! Furthermore
we're able to use 2 parallel rustc processes at times instead of having
everything be serial.


#### Compromise: linking is hard

Although we can shave 10s off compilation as shown above, it's likely going to
be very difficult to get the full wins there. There's a caveat when compiling
`binary` that we do actually need the `*.rlib` files to link. We don't need them
to typecheck and such, but the linking phase needs them.

Now linking is the final stage of the compiler, so it's only very late that we
end up needing all of the dependencies. This would require some degree of
synchronization still, though, where rustc needs to know it cannot proceed until
Cargo instructs it to.

As a result, the current thinking is to compromise here and simply ignore
pipelining for "linkable" crates. Crates that produce binaries, dylibs,
proc-macros, etc, will all wait for all their dependencies to finish before
proceeding, even if they could get some work done ahead of time. As a result the
target compilation timeline for our example above looks like:

```
[-libA----|--------]
          [-libB----|--------]
                             [-binary-----------]
0s        5s       10s       15s                25s
```

but we're still saving time! Typically a dependency graph in Rust is far deeper
than three crates, so the compile time wins are expected to be much larger.

#### Step 1: What architecture is used to pipeline rustc?

The first thing we then talked about was how rustc was going to be invoked in a
pipelined fashion. There were two primary candidates we figured could be
implemented:

##### (a) Run rustc twice

One option is to literally run `rustc --emit metadata foo.rs` and then
subsequently execute `rustc --emit link foo.rs`. The second command is in theory
accelerated by incremental compilation artifacts produced by the first command.

**Pros**:

* Feels "pure" from a build system perspective as it keeps rustc in line with
  basically all other build tools, you run it to completion and don't care about
  what happens in the middle.

**Cons**:

* We're unlikely to reap full benefits from this strategy. The second `rustc`
  command has to redo quite a bit of work to get back to the point the first
  command was at, and it's not an instantatenous piece of work even with
  incremental. As a result this may run a risk of slowing down compiles because
  the second command takes so long to start up.

##### (b) Signal Cargo when metadata is ready

The second option is for rustc to continue in-process after it produces metadata
and go on to produce the final rlib. The compiler would, however, send a signal
to Cargo (somehow) that metadata is ready to go.

**Pros**:

* This should get us the full speed of pipelined compilation. There's no
  "startup time" for the work involved in producing the rlib since it's already
  all in-process in rustc.

**Cons**:

* This is going to be significantly more difficult for other build systems to
  get integrated (those that aren't Cargo).

Overall we decided that this option was the route to pursue due to the speed
wins likely to be gained.

#### Step 2: work with only metadata as input

@alexcrichton claimed that rustc cannot produce an rlib today with only
`*.rmeta` files as input. After some testing, it was found that this was a false
claim. Invocations like so can produce working rlibs:


```
$ rustc libA.rs --emit metadata,link --crate-type lib
$ rm libA.rlib
$ rustc libB.rs --emit metadata,link --crate-type lib --extern libA=liblibA.rmeta
```

So that means this step is already done! The compiler is already capable of
implementing the pipelining showed above where it can be invoked in parallel by
Cargo.

#### Step 3: telling Cargo when metadata is ready

The next (and final) piece of implementation needed in rustc is that the
compiler has to somehow tell Cargo when metadata is available on the filesystem.
Cargo needs some mechanism to know when to start spawning more rustc processes
(if possible), and it currently has none without watching the filesystem.

There are two primary ways we could implement this:

##### (a) Use a TCP server

A simple option would be for Cargo to start a small TCP server locally whenever
it builds. The compiler would then connect to this server whenever a metadata
file is ready to go and tell Cargo that it can proceed.

**Pros**:

* Relatively simple to implement in Cargo and rustc
* Should work on all platforms

**Cons**:

* The compiler has to somehow tell Cargo which compiler it is (disambiguating
  from other parallel invocations)
* This is a weird interface without really much precedent. It's unclear how
  other build systems would take advantage of it easily. It just "feels wrong"
  and "icky".

##### (b) Print a JSON message when metadata is ready

An alternative solution proposed by @ehuss is that the compiler could print a
message on stdout/stderr to Cargo whenever a file has been produced. Cargo
already does this, for example, when invoked with `--message-format=json`. The
compiler already emits errors as JSON blobs with `--error-format=json`, although
the compiler doesn't emit other information via JSON right now.

**Pros**:

* Feels like a clean solution. No need for Cargo to figure out what rustc is
  printing what (it knows that from which process printed).
* Pretty easy to implement in rustc, just another JSON message somewhere.
* Should be somewhat usable by other build systems as it's pretty standard to
  listen to stderr/stdout from spawned processes.

**Cons**:

* Cargo would have to always invoke the compiler with `--error-format=json`.
  Cargo does not currently do this to ensure that compiler error diagnostics are
  rendered to the screen correctly (aka are colorized and formatted correctly).
  A [recent PR to rustc](https://github.com/rust-lang/rust/pull/59128) shows
  hope for Cargo to be able to do this, although it may take time to implement
  and stabilize that. This would become a required blocker to enabling pipelined
  compilation.
* A JSON message format for rustc would need to be designed. There's no
  precedent to draw from in rustc yet to emit arbitrary JSON messages about
  progress so far. There's likely some desire to do so though!

We decided this is the route to go as it seems the most viable for
stabilization.
