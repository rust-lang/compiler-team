---
tags: weekly, rustc
type: docs
note_id: AIoQaNMuSwOQ0UCkX38lZQ
---

# T-compiler Meeting Agenda 2024-11-21

## Announcements

- Next week stable 1.83 is out :loudspeaker:
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async Design Meeting <time:2024-11-21T19:00:00+01:00>
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-11-21T22:00:00+01:00>
- Stable MIR Weekly Meeting <time:2024-11-22T17:00:00+01:00>
- @_**davidtwco** office hours <time:2024-11-22T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 2 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 40 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: 2 months ago)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785)) (last review activity: about 0 days ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: about 33 days ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: about 33 days ago)
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790)) (last review activity: about 33 days ago)
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800)) (last review activity: about 11 days ago)
  - "Unstable flag to choose Emscripten unwinding abi" [compiler-team#801](https://github.com/rust-lang/compiler-team/issues/801) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstable.20flag.20to.20choose.20Emscripten.20unwind.E2.80.A6.20compiler-team.23801)) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
- Things in FCP (make sure you're good with it)
  - "Support for a new `wasm32-wali-linux-musl` Tier-3 target" [compiler-team#797](https://github.com/rust-lang/compiler-team/issues/797) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20for.20a.20new.20.60wasm32-linux-musl.60.20Tie.E2.80.A6.20compiler-team.23797))
  - "Allow users to specify the TLS dialect (Traditional TLS vs. TLSDESC)" [compiler-team#805](https://github.com/rust-lang/compiler-team/issues/805) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20users.20to.20specify.20the.20TLS.20dialect.20.28T.E2.80.A6.20compiler-team.23805))
  - "New Tier-3 target proposal: `loongarch64-linux-android`" [compiler-team#806](https://github.com/rust-lang/compiler-team/issues/806) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.20proposal.3A.20.60loongarch64-.E2.80.A6.20compiler-team.23806))
  - "Ban field-projecting into `[rustc_layout_scalar_valid_range_*]` types" [compiler-team#807](https://github.com/rust-lang/compiler-team/issues/807) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Ban.20field-projecting.20into.20.60.5Brustc_layout_.E2.80.A6.20compiler-team.23807))
  - "Forbid disabling SSE on x86 targets that have SSE in their "baseline"" [compiler-team#808](https://github.com/rust-lang/compiler-team/issues/808) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Forbid.20disabling.20SSE.20on.20x86.20targets.20that.20.E2.80.A6.20compiler-team.23808))
  - "Also enable ICE file dumps on stable" [compiler-team#809](https://github.com/rust-lang/compiler-team/issues/809) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Also.20enable.20ICE.20file.20dumps.20on.20stable.20compiler-team.23809))
- Accepted MCPs
  - "Promote powerpc64le-unknown-linux-musl to tier 2" [compiler-team#803](https://github.com/rust-lang/compiler-team/issues/803) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20powerpc64le-unknown-linux-musl.20to.E2.80.A6.20compiler-team.23803))
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
- Other teams finalized FCPs
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "Finish stabilization of `result_ffi_guarantees`" [rust#130628](https://github.com/rust-lang/rust/pull/130628)
  - "Fixup Windows verbatim paths when used with the `include!` macro" [rust#125205](https://github.com/rust-lang/rust/pull/125205)
  - "Lint against getting pointers from immediately dropped temporaries" [rust#128985](https://github.com/rust-lang/rust/pull/128985)
  - "Make deprecated_cfg_attr_crate_type_name a hard error" [rust#129670](https://github.com/rust-lang/rust/pull/129670)
  - "Stabilize Arm64EC inline assembly" [rust#131781](https://github.com/rust-lang/rust/pull/131781)
  - "Stabilize const `ptr::write*` and `mem::replace`" [rust#130954](https://github.com/rust-lang/rust/pull/130954)
  - "Stabilize expr_2021 fragment specifier in all editions" [rust#129972](https://github.com/rust-lang/rust/pull/129972)
  - "Stabilize s390x inline assembly" [rust#131258](https://github.com/rust-lang/rust/pull/131258)
  - "Tracking issue for `const_size_of_val` and `const_align_of_val`" [rust#46571](https://github.com/rust-lang/rust/issues/46571)
  - "atomics: allow atomic and non-atomic reads to race" [rust#128778](https://github.com/rust-lang/rust/pull/128778)
  - "mark is_val_statically_known intrinsic as stably const-callable" [rust#132449](https://github.com/rust-lang/rust/pull/132449)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Enforce that raw lifetimes must be valid raw identifiers" [rust#132363](https://github.com/rust-lang/rust/pull/132363)
  - Authored and nominated by compiler-errors
  - Fix something we noticed (not an issue reported) see [comment](https://github.com/rust-lang/reference/pull/1603#discussion_r1822726753)
  - Patch sibling to #132341 (work on #126452), approved for backport
  - FCP'd by t-lang, also in favor of a backport ([comment](https://github.com/rust-lang/rust/pull/132363#issuecomment-2487363849))
<!--
/poll Approve beta backport of #132363?
approve
deny
don't know
-->
- :beta: "Add discriminators to DILocations when multiple functions are inlined into a single point." [rust#132613](https://github.com/rust-lang/rust/pull/132613)
  - Authored by khuey
  - we postponed the vote last week ([comment](https://github.com/rust-lang/rust/pull/132613#issuecomment-2476684329)) because we wanted to see how #132900 was (or wasn't) related
  - So, yes, it was related ([here](https://github.com/rust-lang/rust/pull/133194#issue-2670635621) more context) but #132900 is solved by a follow-up patch from @**cuviper** in #133194
<!--
/poll Approve beta backport of #132613?
approve
deny
don't know
-->
- :beta: "Update cdb annotations for some debuginfo tests with cdb `10.0.26100.2161`" [rust#133115](https://github.com/rust-lang/rust/pull/133115)
  - Authored by jieyouxu
  - Fixes some tests on windows target, CI image was updated CDB (MS debugger)
  - nominated by @_**cuviper** because this is probably affecting beta+stable 1.83 ([comment](https://github.com/rust-lang/rust/pull/133115#issuecomment-2480812972))
<!--
/poll Approve beta backport of #133115?
approve
don't know
-->
- :beta: "Drop debug info instead of panicking if we exceed LLVM's capability to represent it" [rust#133194](https://github.com/rust-lang/rust/pull/133194)
  - Authored by khuey
  - Fixes an ICE #132900
  - makes sense a backport of both this and #132613 (or neither, see [comment](https://github.com/rust-lang/rust/pull/133194#issuecomment-2486609480))
<!--
/poll Approve beta backport of #133194?
approve
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [65 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "error: the compiler unexpectedly panicked. this is a bug." [rust#132920](https://github.com/rust-lang/rust/issues/132920)
  - we have a [smaller repro](https://github.com/rust-lang/rust/issues/132920#issuecomment-2470552757)
  - seems originated in #128849 ([comment](https://github.com/rust-lang/rust/issues/132920#issuecomment-2469191911))
  - P-high because the ICE completely shadows the error (but we can lower the priority)

## Performance logs

> [triage logs 2024-11-19](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-11-19.md)

We saw improvements to a large swath of benchmarks with the querification of
MonoItem collection (PR #132566). There were also some PRs where we are willing
to pay a compile-time cost for expected runtime benefit (PR #132870, PR #120370),
or pay a small cost in the single-threaded case in exchange for a big parallel
compilation win (PR #124780).

Triage done by **@pnkfelix**.
Revision range: [d4822c2d..7d40450b](https://perf.rust-lang.org/?start=d4822c2d84c242cc7403118b50c571464f38ef8f&end=7d40450b2df92bdc9dec414b30cf5f7a5979a92e&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.2%, 7.3%]    | 195   |
| Regressions (secondary)  | 1.3%  | [0.1%, 5.0%]    | 194   |
| Improvements (primary)   | -7.3% | [-24.9%, -0.3%] | 60    |
| Improvements (secondary) | -9.4% | [-67.0%, -0.3%] | 23    |
| All  (primary)           | -0.9% | [-24.9%, 7.3%]  | 255   |


2 Regressions, 4 Improvements, 10 Mixed; 6 of them in rollups
47 artifact comparisons made in total
30 untriaged PRs

#### Regressions

Rollup of 5 pull requests [#133039](https://github.com/rust-lang/rust/pull/133039) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c82e0dff84f922274c3060f09b5ae78d5dbf5c49&end=90ab8eaedd3efd7919bffa7638db66e67df3f0b8&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 1     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 13    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.3%] | 1     |

* sole primary regression is to doc (full) on helloworld.
* already triaged as being due to PR #133005 (and categorized as "improvements to rustdoc search that justify this cost")

Rollup of 7 pull requests [#133120](https://github.com/rust-lang/rust/pull/133120) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ee4a56e353dc3ddfcb12df5fe2dc1329a315c2f5&end=1e0df74445a185fc97b7e806cd6c636eaded1326&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.3%] | 25    |
| Regressions (secondary)  | 0.2% | [0.1%, 0.4%] | 14    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.1%, 0.3%] | 25    |

* primary regressions to {serde, libc, diesel, cargo, cranelift-codegen} (across multiple scenarios) and {html5ever, ripgrep, exa, syn, stm32f4, image, regex, webrender, hyper} (in isolated scenarios).
* @nnethercote has hypothesized that PR #132134 may be responsible and is planning to investigate.
* Not marking as triaged.

#### Improvements

move all mono-time checks into their own folder, and their own query [#132843](https://github.com/rust-lang/rust/pull/132843) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5700240affd222f69b8755e2ff5d4ccaae9e6cf9&end=583b25d8d1bf934f593d9d9811f88305888032b5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 4     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)           | -0.2% | [-0.2%, -0.2%] | 4     |

* (based on conversation in the PR itself, I think this "gain" is illusory and these benchmarks are just unstable)

Rollup of 4 pull requests [#133047](https://github.com/rust-lang/rust/pull/133047) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=90ab8eaedd3efd7919bffa7638db66e67df3f0b8&end=e84902d35a4d3039c794e139eb12fba3624c5ff1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.0%] | 2     |
| Improvements (secondary) | -0.2% | [-0.4%, -0.1%] | 4     |
| All  (primary)           | -0.2% | [-0.4%, -0.0%] | 2     |


Rollup of 5 pull requests [#133086](https://github.com/rust-lang/rust/pull/133086) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=917a50a03931a9861c19a46f3e2a02a28f1da936&end=d3a4b1f46ba0fff6239e3d75abd285287ccd17f9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -4.2% | [-4.2%, -4.2%] | 1     |
| All  (primary)                 | -     | -              | 0     |


Rollup of 5 pull requests [#133179](https://github.com/rust-lang/rust/pull/133179) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c602e9aeaab636302d52b17da64e84044462a230&end=03ee4845197ce71aa5ee28cb937a3e863b18b42f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.2%, -0.1%] | 3     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 2     |
| All  (primary)           | -0.1% | [-0.2%, -0.1%] | 3     |


#### Mixed

Rollup of 7 pull requests [#132919](https://github.com/rust-lang/rust/pull/132919) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=81eef2d362a6f03db6f8928f82d94298d31eb81b&end=67f21277cd40cd12e69aa34089f4a20926fd6dc5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 1.3%]   | 6     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 2     |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 1     |
| Improvements (secondary) | -2.4% | [-2.4%, -2.4%] | 1     |
| All  (primary)           | 0.3%  | [-0.1%, 1.3%]  | 7     |

* primary regressions are to doc scenarios; further investigation has indicated that PR #132144 is the root cause of them.
* pnkfelix's understanding is that this is known potential cost of progress when adding new traits (Receiver in this case) to stdlib.
* marked as triaged

`#[inline]` integer parsing functions [#132870](https://github.com/rust-lang/rust/pull/132870) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f7273e0044ad8f35ad27282e4ab776af50b61a54&end=b420d923cff05f51eb43f607f5d8dce827eeba97&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.1%, 5.1%]   | 12    |
| Regressions (secondary)  | 1.0%  | [0.4%, 2.3%]   | 9     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.6%  | [-0.6%, 5.1%]  | 15    |

* main notable regressions were to regex opt-incr-patched (5%), cargo opt-full (1.14%), cranelift-codegen opt-full (0.83%) and ripgrep opt-full (0.74%); (everything else was <0.5% change).
* this is incurring a compilation cost, especially on opt builds, because its inlining more stuff
* pnkfelix assumes that the runtime benefit justifies this runtime cost.
* marking as triaged

[perf] rustdoc: Perform less work when cleaning middle::ty parenthesized generic args [#132886](https://github.com/rust-lang/rust/pull/132886) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=44f233f2519ce5d633c87c38014d03d8a5f0e810&end=ec239b888f3945a6ce043db639f1741d14f08874&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [1.0%, 1.0%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 5     |
| All  (primary)           | 1.0%  | [1.0%, 1.0%]   | 2     |

* already identified as measurement bias/noise and marked as triaged; thanks lqd!

Reland #132772: use `download-rustc="if-unchanged"` as a global default [#132872](https://github.com/rust-lang/rust/pull/132872) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ec239b888f3945a6ce043db639f1741d14f08874&end=65b3877488ccfef3b1a903bfdd269559c59b957c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 2     |
| Improvements (primary)   | -1.1% | [-1.1%, -1.0%] | 3     |
| Improvements (secondary) | -0.5% | [-0.9%, -0.3%] | 6     |
| All  (primary)           | -1.1% | [-1.1%, -1.0%] | 3     |

* already identified as measurement bias/noise and marked as triaged; thanks lqd!

tweak attributes for const panic macro [#132662](https://github.com/rust-lang/rust/pull/132662) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a00df61387e5389d6fe23e38e657f90d672668b1&end=8adb4b30f40e6fbd21dc1ba26c3301c7eeb6de3c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.5%, 0.9%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-2.0%, -0.2%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-2.0%, 0.9%]  | 8     |

* primary regressions are to image (0.92%) and webrender (0.50%) in opt-full scenarios.
* it seems like this might be just noise from changes to inlining decisions, since it seems like both those cases are undoing artificial improvements introduced by PR #132870 (noted above)
* marking as triaged

rustc_metadata: Preprocess search paths for better performance [#132910](https://github.com/rust-lang/rust/pull/132910) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f00f68245ebe85960000adaab18c1fe8da104cfe&end=76fd47124b8f8037b6187169b2cdf39139466952&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.0%  | [0.0%, 0.0%]   | 1     |
| Regressions (secondary)  | 2.2%  | [0.1%, 4.4%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 2     |
| All  (primary)           | 0.0%  | [0.0%, 0.0%]   | 1     |

* already marked by saethlin as triaged: "The reported regressions are extremely marginal, and the discussion above: [#132910 (comment)](https://github.com/rust-lang/rust/pull/132910#issuecomment-2473240290) contains instructions for how to demonstrate a quite significant benefit of this change."

Querify MonoItem collection [#132566](https://github.com/rust-lang/rust/pull/132566) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5afd5ad29c014de69bea61d028a1ce832ed75a75&end=ee4a56e353dc3ddfcb12df5fe2dc1329a315c2f5&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.7%  | [0.3%, 6.6%]    | 10    |
| Regressions (secondary)  | 1.7%  | [0.3%, 3.7%]    | 23    |
| Improvements (primary)   | -6.3% | [-25.1%, -0.1%] | 73    |
| Improvements (secondary) | -9.9% | [-67.2%, -0.3%] | 22    |
| All  (primary)           | -5.4% | [-25.1%, 6.6%]  | 83    |

* massive improvements; many incremental benchmarks are improved by 5% to 20% (and even 25% in the case of ripgrep)
* the regressions here (mostly to helloworld) were anticipated during review and are far outweighed by the very notable gains in compiler performance across a broad swath of benchmarks.
* marking as triaged

Likely unlikely fix [#120370](https://github.com/rust-lang/rust/pull/120370) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5ec7d6eee7e0f5236ec1559499070eaf836bc608&end=3fb7e441aecc3c054d71eb4d752d06e7776e8888&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.1%, 2.8%]   | 4     |
| Regressions (secondary)  | 0.8%  | [0.2%, 1.7%]   | 18    |
| Improvements (primary)   | -0.4% | [-1.9%, -0.1%] | 21    |
| Improvements (secondary) | -0.3% | [-0.4%, -0.1%] | 11    |
| All  (primary)                 | -0.2% | [-1.9%, 2.8%]  | 25    |

* primary regressions on html5ever opt-full (2.78%), image opt-incr-patched (0.35%) (and stm32f4 doc-full (0.11%) but that's probably noise)
* already triaged by saethlin; "some change is expected because these intrinsics used to do nothing" (i.e. they were broken before and are now believed to be fixed). Also clearly the benefits on the primary benchmarks is outweighing the limited primary regressions.

Use `TypingMode` throughout the compiler instead of `ParamEnv` [#132460](https://github.com/rust-lang/rust/pull/132460) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=03ee4845197ce71aa5ee28cb937a3e863b18b42f&end=b71fb5edc0217eaf8fc824a44cd7b0945e29ff4d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.4%]   | 8     |
| Regressions (secondary)  | 0.9%  | [0.2%, 2.7%]   | 6     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -0.8% | [-0.9%, -0.7%] | 5     |
| All  (primary)                 | 0.1%  | [-0.3%, 0.4%]  | 9     |

* primary regressions to unicode-normalization profiles and (to a lesser extent) diesel, stm32f4, and cargo.
* it seems like this regression was to some extent anticipated, at least from the [perf run that was done](https://github.com/rust-lang/rust/pull/132460#issuecomment-2465546736) while the PR was in development.
* not formally marking as triaged yet; instead, left note saying that I'm inclined to mark as triage if either the PR author or the PR reviewer agree that this "regression", such as it is, was anticipated.

Improve VecCache under parallel frontend [#124780](https://github.com/rust-lang/rust/pull/124780) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b71fb5edc0217eaf8fc824a44cd7b0945e29ff4d&end=5926e82dd1eae211c6e2ffe446de54df04798e89&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.2%, 3.3%]   | 214   |
| Regressions (secondary)  | 1.0%  | [0.2%, 2.9%]   | 172   |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.9% | [-3.0%, -0.4%] | 8     |
| All  (primary)                 | 1.0%  | [0.2%, 3.3%]   | 214   |

* left a note pointing out that there was a pretty serious process deviation, in that this was marked with rustc-perf-triaged for a different commit (maybe a different commit series?), months before this had gotten review or even landed...
* but having said that, I looked over the data and it seems like the label remains justified, so I have left the label in place.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Renaming targets might be a breaking change" [rust#133030](https://github.com/rust-lang/rust/issues/133030)
  - Nominated by ([comment](https://github.com/rust-lang/rust/issues/133030#issuecomment-2478320511))
  > Does T-compiler want to amend the target policy docs to better reflect what *compiler* stability guarantees are made and what is *explicitly* not covered by *compiler* stability guarantees, as opposed to *library API* stability guarantees and *language* stability guarantees.
  - And:
  > Are there any difference in stability guarantees (or the explicit lack thereof) for different-tiered compiler targets.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

None this week

Next meetings' agenda draft: [hackmd link](https://hackmd.io/y41E-EkQQW2kpkhEy5vTbA)
