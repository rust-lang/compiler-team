---
tags: weekly, rustc
type: docs
note_id: Fie7NWHOR4qGTeVfeVgwew
---

# T-compiler Meeting Agenda 2026-06-18

## Announcements

- :loudspeaker: :point_right: P-high review ([compiler-team#900](https://github.com/rust-lang/compiler-team/issues/900)): <time:2026-06-19T16:00:00+02:00>
  - P-high issue list is on HackMD: https://hackmd.io/CQmx-X5iTO6nf23Ng5uHtA
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours <time:2026-06-22T16:15:00+02:00> and <time:2026-06-25T16:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: 2 months ago)
  - "Add `-Zglobal-target-cpu`" [compiler-team#991](https://github.com/rust-lang/compiler-team/issues/991) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zglobal-target-cpu.60.20compiler-team.23991)) (last review activity: about 6 days ago)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `wasm32-wasip3` to Tier 2 (compiler-team#1001)](https://github.com/rust-lang/compiler-team/issues/1001#issuecomment-4694741738)
    - @_**|116266** @_**|124288** @_**|116107** @_**|119031** @_**|370197** @_**|343125**
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251), see also this [comment](https://github.com/rust-lang/rust/pull/146369#issuecomment-3290621937)
    - concern should be resolved by #157941
  - merge: [Stabilize `-Zprofile-sample-use` (rust#155942)](https://github.com/rust-lang/rust/pull/155942#issuecomment-4603443003)
    - cc: @**|119031** @**|370197** @**|343125**
    - no pending concerns
  - merge: [remove `box_patterns` (rust#156749)](https://github.com/rust-lang/rust/pull/156749#issuecomment-4556105090)
    - @_**|116009**
    - concerns: [crater (by traviscross)](https://github.com/rust-lang/rust/pull/156749#issuecomment-4559428417)
  - merge: [enable eager `param_env` norm in new solver (rust#156976)](https://github.com/rust-lang/rust/pull/156976#issuecomment-4691345132)
    - @_**|116266** @_**|326176** @_**|232957**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Create new Tier 3 targets: `powerpc64le-unknown-none-softfloat`, `powerpc64-unknown-none-softfloat`, `powerpc-unknown-none-softfloat`" [compiler-team#988](https://github.com/rust-lang/compiler-team/issues/988) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988))
  - "Create a new Tier 3 target: `s390x-ibm-zos`" [compiler-team#992](https://github.com/rust-lang/compiler-team/issues/992) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60s390x-ibm-zo.E2.80.A6.20compiler-team.23992))
  - "Desugar async blocks in HIR instead of MIR" [compiler-team#997](https://github.com/rust-lang/compiler-team/issues/997) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Desugar.20async.20blocks.20in.20HIR.20instead.20of.20MIR.20compiler-team.23997))
    - concern: [back-to-the-future](https://github.com/rust-lang/compiler-team/issues/997#issuecomment-4643474187)
  - "Deny `todo!()` in tidy" [compiler-team#999](https://github.com/rust-lang/compiler-team/issues/999) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Deny.20.60todo.21.28.29.60.20in.20tidy.20compiler-team.23999))
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002))
  - "Rename the compiler files containing struct diagnostics to `diagnostics.rs`" [compiler-team#1003](https://github.com/rust-lang/compiler-team/issues/1003) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20the.20compiler.20files.20containing.20str.E2.80.A6.20compiler-team.231003))
  - "Fix trait method resolution on an adjusted never type" [rust#156047](https://github.com/rust-lang/rust/pull/156047)
- Accepted MCPs
  - "Set requirements for windows-gnu" [compiler-team#993](https://github.com/rust-lang/compiler-team/issues/993) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20requirements.20for.20windows-gnu.20compiler-team.23993))
  - "Test new solver and polonius alpha on CI" [compiler-team#996](https://github.com/rust-lang/compiler-team/issues/996) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Test.20new.20solver.20and.20polonius.20alpha.20on.20CI.20compiler-team.23996))
- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 8 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 11 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 14 days ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 8 months ago)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 4 months ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 7 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 2 months ago)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 4 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 4 months ago)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "Stabilize `-Zprofile-sample-use`" [rust#155942](https://github.com/rust-lang/rust/pull/155942)
  - (See FCP reminder)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [44 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "1.97 beta regression: "conflicting implementations of trait"" [rust#157407](https://github.com/rust-lang/rust/issues/157407)
  - (T-types) #157617 is fixing that and is beta-nominated

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-06-15 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week we had quite a lot of changes, a few small regressions that were a bit tough to diagnose, but the week is largely positive, overall.
Notably, we got one massive improvement on the next-solver benchmark in #[156187](https://github.com/rust-lang/rust/pull/156187),
and a nice speedup for incremental in [#157781](https://github.com/rust-lang/rust/pull/157781).

Triage done by **@panstromek**.
Revision range: [f3ef3bd8..b5d46ecb](https://perf.rust-lang.org/?start=f3ef3bd882dd24a275a60701a67c3bb330edd8c1&end=b5d46ecb51c3e4134b82570cfe718f093daa6390&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |      range      | count |
|:------------------------:|:-----:|:---------------:|:-----:|
|  Regressions (primary)   | 0.4%  |  [0.2%, 0.6%]   |  22   |
| Regressions (secondary)  | 0.5%  |  [0.1%, 2.0%]   |  40   |
|  Improvements (primary)  | -1.8% | [-5.9%, -0.1%]  |  125  |
| Improvements (secondary) | -3.8% | [-69.4%, -0.1%] |  90   |
|      All  (primary)      | -1.5% |  [-5.9%, 0.6%]  |  147  |


1 Regression, 4 Improvements, 8 Mixed; 5 of them in rollups
28 artifact comparisons made in total

#### Regressions

Add a check for impossible predicates to trivial_const [#156934](https://github.com/rust-lang/rust/pull/156934) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a1e52fc1cf67929a7c01ed9c037520e276ec98fd&end=3bdd7f86fcecc0ea65d79e62e39a70c8a2aabf15&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   | 0.4% | [0.2%, 0.5%] |  10   |
| Regressions (secondary)  | 0.4% | [0.2%, 0.7%] |  10   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      | 0.4% | [0.2%, 0.5%] |  10   |

This regression was justified pre-merge in https://github.com/rust-lang/rust/pull/156934#issuecomment-4588047527 by the author: 'IMO the perf overhead is fine, all that the "regression" means is that the trival_const optimization is now a touch less of an improvement.'

#### Mixed

Rollup of 13 pull requests [#157616](https://github.com/rust-lang/rust/pull/157616) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f3ef3bd882dd24a275a60701a67c3bb330edd8c1&end=cb46fbb8c6ea799c6fba9188ed889275c35a8c28&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.2%, 0.2%]  |   1   |
| Regressions (secondary)  | 0.3%  |  [0.3%, 0.5%]  |   4   |
|  Improvements (primary)  | -0.3% | [-0.3%, -0.3%] |   1   |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] |   5   |
|      All  (primary)      | -0.0% | [-0.3%, 0.2%]  |   2   |

Two large-workspace regressions caused by https://github.com/rust-lang/rust/pull/148820 as noted in the [comment by Jonathan](https://github.com/rust-lang/rust/pull/157616#issuecomment-4687958558).

I'm inclined to say that `bitmaps` regression is just its existing (somewhat chaotic) bimodality. But it also slightly regressed in https://github.com/rust-lang/rust/pull/148820 (below the significance threshold).

The secondary ones I'm not sure about. My other guess (except the ones that were already measured) would be https://github.com/rust-lang/rust/pull/154608. I've looked through the rest, and it seems mostly tests or diagnostic changes, which should not have any impact.

I started a perf run on https://github.com/rust-lang/rust/pull/154608. Otherwise, I don't think there's much to do. The secondary changes don't seem to be big enough to dive deeper into this, in my opinion.

Rewrite `rustc_span::symbol::Interner` to avoid double hashing [#157252](https://github.com/rust-lang/rust/pull/157252) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cb46fbb8c6ea799c6fba9188ed889275c35a8c28&end=83b3bfc40a9d2fb07dd08a275d80a6ba8a903f18&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.7%  |  [0.2%, 1.7%]  |   6   |
|  Improvements (primary)  | -0.5% | [-0.7%, -0.2%] |   6   |
| Improvements (secondary) | -0.4% | [-1.8%, -0.2%] |  21   |
|      All  (primary)      | -0.5% | [-0.7%, -0.2%] |   6   |


Improvements outweigh regressions. `include-blob` regression looks persistent, but a bit unexpected to me. It seems it's metadata-related. [Earlier comment](https://github.com/rust-lang/rust/pull/157252#issuecomment-4594899209) noted it's an LLVM codegen noise, but even benchmarks that don't do codegen (doc) had regressed.

This was known before merge and accepted, so I'm marking it as triaged. On top of that, `include-blob` is a bit weird benchmark. I'd certainly like to know what happened there, though.

Rollup of 17 pull requests [#157683](https://github.com/rust-lang/rust/pull/157683) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d56483a91d6cf5041351a3208b8d08f98f0c8b56&end=ab26b175979ee7b2cb3302dce204b99df96f7efb&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.5%  |  [0.2%, 1.4%]  |  23   |
|  Improvements (primary)  | -0.2% | [-0.3%, -0.2%] |   2   |
| Improvements (secondary) |   -   |       -        |   0   |
|      All  (primary)      | -0.2% | [-0.3%, -0.2%] |   2   |

Caused by https://github.com/rust-lang/rust/pull/157683, already triaged by @JonathanBrouwer. No response on the PR, yet.

Rollup of 31 pull requests [#157739](https://github.com/rust-lang/rust/pull/157739) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=485ec3fbcc12fa14ef6596dabb125ad710499c9e&end=32cfe53009803b85afd40ff72768bb058e9936f0&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.2%, 0.3%]  |   7   |
| Regressions (secondary)  | 0.2%  |  [0.2%, 0.3%]  |   5   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] |   1   |
|      All  (primary)      | 0.2%  |  [0.2%, 0.3%]  |   7   |

Small acceptable regression caused by https://github.com/rust-lang/rust/pull/155527, as investigated by @JonathanBrouwer.

The rest is mostly caused by https://github.com/rust-lang/rust/pull/157647#issuecomment-4699736291 (part of the comptime experiment).
The clue is in the `size:dep_graph` metric which is a broad regression, similar in both perf runs. That PR adds a few thousand new query calls.
These kinds of regressions also show up the most on small incremental benchmarks that spend proportionally more time in metadata-related code, and that's also the case here.
I left a note on the PR.


Build the dep-graph reverse index lazily, per DepKind [#157319](https://github.com/rust-lang/rust/pull/157319) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=32cfe53009803b85afd40ff72768bb058e9936f0&end=d2f24127d97d8c795d1cf5fbf6037f9885f34d39&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.2%, 0.3%]  |   3   |
| Regressions (secondary)  | 0.3%  |  [0.2%, 0.5%]  |   6   |
|  Improvements (primary)  | -0.4% | [-0.7%, -0.2%] |  50   |
| Improvements (secondary) | -0.7% | [-2.7%, -0.2%] |  33   |
|      All  (primary)      | -0.4% | [-0.7%, 0.3%]  |  53   |

I don't know what to do with this to be honest. Improvements seemingly outweigh regressions, but I'll reiterate the concern from the Zoxc comment above:
If you untick  the `incr-unchanged` filter, pretty much everything else is red (and non-significant results are also mostly red), including other metrics.
Judging this depends on how much do we weigh `incr-unchanged` improvements against other regressions.
I left a [longer comment](https://github.com/rust-lang/rust/pull/157319#issuecomment-4716959015) on the PR, asking for more opinions.

Rollup of 24 pull requests [#157794](https://github.com/rust-lang/rust/pull/157794) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b30f3df3ba3c4c9de2f58f1a75dd9500b79b3f8d&end=09a371361240e42b0d69438fd1179efcf212e576&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.3%  |  [0.2%, 0.4%]  |   2   |
|  Improvements (primary)  | -0.4% | [-0.9%, -0.2%] |  12   |
| Improvements (secondary) | -0.2% | [-0.3%, -0.0%] |   2   |
|      All  (primary)      | -0.4% | [-0.9%, -0.2%] |  12   |

Already triaged by @jhpratt: "The gains clearly outweigh the 2 minor secondary regressions, both of which are `incr-unchanged`."

`include-blob` regression is bimodal noise. `deeply-nested-multi` looks related to metadata.

@Teor is also trying to address a small regression in https://github.com/rust-lang/rust/pull/157699, which might have been masked by improvements in the rollup.
See https://github.com/rust-lang/rust/pull/157794#issuecomment-4716299616 for more info.
Might also be related to `deeply-nested-multi` regression, because it regresses similar queries.

Do not eagerly normalize alias during coherence [#157617](https://github.com/rust-lang/rust/pull/157617) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=65407954098ca3c19f0d46092cb374b5d3e9dc3c&end=4e391cf2425cf96521af17ff460e9f220e9bca00&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.4%  |  [0.3%, 0.5%]  |   6   |
| Regressions (secondary)  | 0.4%  |  [0.3%, 0.5%]  |   3   |
|  Improvements (primary)  | -0.2% | [-0.3%, -0.1%] |   4   |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] |   3   |
|      All  (primary)      | 0.2%  | [-0.3%, 0.5%]  |  10   |


This PR fixes the regression from https://github.com/rust-lang/rust/pull/155767 and the primary results in `nalgebra` and `diesel` looks to be roughly inverse of the results on that PR.
It also fixes beta regression and is part of an important line of work on the type system. Given all that, I think the results are acceptable.

Introduce #[diagnostic::on_type_error(message)] [#155200](https://github.com/rust-lang/rust/pull/155200) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9ae5f5231868c9a6c0b84ac1d87df2dca7be03ed&end=4f8ea98eb3e462eec4a005a4a93dfd21b9525af2&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.4%  |  [0.2%, 1.7%]  |   9   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.4% | [-0.4%, -0.3%] |   2   |
|      All  (primary)      |   -   |       -        |   0   |


The regression in `large-workspace` looks like noise, but `tt-muncher` one looks real. Full `opt` and `debug` runs are noisy, but `incr-unchanged`, `check` and `doc` show clear regressions. Detailed results are all over the place (maybe the benchmark machine was noisy at the time), but eyeballing all of that, the regression seems to be somewhere in the frontend. Maybe metadata loading, maybe macro expansion?

I don't understand how this PR could cause this, to be honest. `tt-muncher` is a stress test for declarative macros, I don't see any related change here. Most of this code should be unused right now.

`tt-muncher` is a pathological stress test, so I don't think this is worth a revert, but it'd be nice to know why it regressed. I left a note on the PR.

#### Improvements

- obligations_for_self_ty: skip irrelevant goals (recompute sub_root from stalled_vars) [#156187](https://github.com/rust-lang/rust/pull/156187) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=057ed8ba87418a77d5758f2d5e13f84b89b197e9&end=beae781308e9ddef13074a03faf57ca2fac59a5b&stat=instructions:u)
- rustdoc: Cleanup and (micro-)optimize `print_where_clause` [#157874](https://github.com/rust-lang/rust/pull/157874) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4f8ea98eb3e462eec4a005a4a93dfd21b9525af2&end=1a30ed949b00abd96ffd9a6719905aac7320d405&stat=instructions:u)
- Rollup of 5 pull requests [#157894](https://github.com/rust-lang/rust/pull/157894) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a30ed949b00abd96ffd9a6719905aac7320d405&end=c7446f2d7fc27aeea22d33cbe2417bdccac9ec5d&stat=instructions:u)
- perf: reuse green-marking's edge walk when promoting a node [#157781](https://github.com/rust-lang/rust/pull/157781) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3daae5e42ec9ba435212987331af1b7b8634fa90&end=b5d46ecb51c3e4134b82570cfe718f093daa6390&stat=instructions:u)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Region inference: split results from RegionInferenceContext" [rust#151688](https://github.com/rust-lang/rust/pull/151688) (last review activity: 3 months ago)
  - cc: @**lcnr** (perhaps author asks for feedback, can't follow the thread, there are a few of review comments not resolved)
- "Add regression test for #132767 (try_normalize_erasing_regions ICE)" [rust#154792](https://github.com/rust-lang/rust/pull/154792) (last review activity: 2 months ago)
  - cc @**Yuki Okushi**
- "Enable split_debuginfo=packed/unpacked for RISC-V" [rust#155135](https://github.com/rust-lang/rust/pull/155135) (last review activity: 2 months ago)
  - left a comment for @_**TaKO8Ki** in case they want to hand it to someone else

Next meetings' agenda draft: [hackmd link](https://hackmd.io/_Gjq6oJRSFOLMJduuQh89w)
