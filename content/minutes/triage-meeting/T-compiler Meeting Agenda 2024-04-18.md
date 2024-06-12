---
tags: weekly, rustc
type: docs
note_id: uKNODHUfQ2mUIjQtDiGwdg
---

# T-compiler Meeting Agenda 2024-04-18

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-04-18T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 3 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 2 months ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: about 41 days ago)
  - "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730)) (last review activity: about 13 days ago)
  - "Add `-Zemit-thin-lto-index=<path>` to enable distributed ThinLTO users" [compiler-team#735](https://github.com/rust-lang/compiler-team/issues/735) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zemit-thin-lto-index.3D.3Cpath.3E.60.20to.20ena.E2.80.A6.20compiler-team.23735)) (last review activity: about 13 days ago)
  - "Only emit forward compatible v0 symbol names with graceful degradation" [compiler-team#737](https://github.com/rust-lang/compiler-team/issues/737) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Only.20emit.20forward.20compatible.20v0.20symbol.20na.E2.80.A6.20compiler-team.23737)) (last review activity: about 13 days ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
    - concern: [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
  - "Stabilize `--env-set` option" [rust#119926](https://github.com/rust-lang/rust/pull/119926)
  - "Make casts of pointers to trait objects stricter" [rust#120248](https://github.com/rust-lang/rust/pull/120248)
- Things in FCP (make sure you're good with it)
  - "allow all command line flags to be passed multiple times, overwriting previous usages" [compiler-team#731](https://github.com/rust-lang/compiler-team/issues/731) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/allow.20all.20command.20line.20flags.20to.20be.20passed.E2.80.A6.20compiler-team.23731))
  - "Policy: no discussions on T-compiler tracking issues" [compiler-team#739](https://github.com/rust-lang/compiler-team/issues/739) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Lock.20all.20tracking.20issues.20to.20prevent.20discu.E2.80.A6.20compiler-team.23739))
  - "Ignore `-C strip` on MSVC" [rust#115120](https://github.com/rust-lang/rust/pull/115120)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking Issue for RFC 3013: Checking conditional compilation at compile time" [rust#82450](https://github.com/rust-lang/rust/issues/82450)
  - "sess: stabilize `-Zrelro-level` as `-Crelro-level`" [rust#121694](https://github.com/rust-lang/rust/pull/121694)
  - "stabilize `-Znext-solver=coherence`" [rust#121848](https://github.com/rust-lang/rust/pull/121848)
- Other teams finalized FCPs
  - "Stabilise inline_const" [rust#104087](https://github.com/rust-lang/rust/pull/104087)
  - "stabilize `-Znext-solver=coherence`" [rust#121848](https://github.com/rust-lang/rust/pull/121848)

### WG checkins

- @_*WG-llvm* by @**Nikita Popov** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > There were some LLVM patch version updates, some ABI fixes, and some changes to reduce our reliance on LLVM types (and thus LLVM layout calculations)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.78] "Silence `unused_imports` for redundant imports" [rust#123744](https://github.com/rust-lang/rust/pull/123744)
  - Authored by @_**Michael Goulet (compiler-errors)** (thanks!)
  - Addresses this comment from [#121708](https://github.com/rust-lang/rust/issues/121708#issuecomment-2048105393), fixes a regression in #117772
<!--
/poll Approve beta backport of #123744?
approve
decline
don't know
-->
- :beta: [1.78] "Stop using `HirId` for fn-like parents since closures are not `OwnerNode`s" [rust#123804](https://github.com/rust-lang/rust/pull/123804)
  - Authored by @_**Michael Goulet (compiler-errors)** (thanks!)
  - Fixes #123273, a diag. regression causing an ICE (from latest beta run)
<!--
/poll Approve beta backport of #123804?
approve
decline
don't know
-->
- :beta: [1.78] "Update LLVM to 1deeee3" [rust#124044](https://github.com/rust-lang/rust/pull/124044)
  - Authored by @_**Quentin Dian (dianqk)** (thanks!)
  - Fixes #123772, regression on MIPS introduced in the last LLVM upgrade
  - Diff: https://github.com/rust-lang/llvm-project/compare/af8f9eb61a2ad4ee1f2d3f46d157b93a47c6a4bf...5399a24c66cb6164cf32280e7d300488c90d5765
  - LLVM 1.8.1.4 released in the meantime ([comment](https://github.com/rust-lang/rust/pull/124044#issuecomment-2060131453)), so probably a backport of this makes sense.
<!--
/poll Approve beta backport of #12044?
approve
decline
don't know
-->
- :beta: [1.78] "Call the panic hook for non-unwind panics in proc-macros" [rustc#123825](https://github.com/rust-lang/rust/pull/123825)
  - Authored by @_**Ben Kimock (Saethlin)** (thanks!)
  - Implements this suggestion ([comment](https://github.com/rust-lang/rust/issues/123286#issuecomment-2030344815))
    > If a proc macro causes a non-unwinding panic, proc_macro isn't able to catch the unwind and report the panic as a compile error by passing control back to the compiler. Our only chance to produce any diagnostic is the panic hook, so we should call it.
<!--
/poll Approve beta backport of #123825?
approve
decline
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
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [35 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 4 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- None new

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "nightly-2024-04-05 regression: error[E0275]: overflow evaluating the requirement" [rust#123573](https://github.com/rust-lang/rust/issues/123573)
  - Will be fixed by #123594 ([last week entered in FCP](https://github.com/rust-lang/rust/pull/123594#issuecomment-2042756501)), authored by @_**Urgau** (thanks!)

## Performance logs

> [triage logs for 2024-05-16](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-04-16.md)

A quiet week, with slightly more improvements than regressions.
There were a few noise spikes, but other than that nothing too interesting.

Triage done by **@Kobzol**.
Revision
range: [86b603cd..ccfcd950b](https://perf.rust-lang.org/?start=86b603cd792b3f6172ba4f676d7b586c1af7630a&end=ccfcd950b333fed046275dd8d54fe736ca498aa7&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.3%, 1.4%]   | 9     |
| Regressions (secondary)  | 0.4%  | [0.2%, 1.1%]   | 20    |
| Improvements (primary)   | -0.6% | [-2.5%, -0.2%] | 41    |
| Improvements (secondary) | -0.8% | [-1.4%, -0.2%] | 4     |
| All  (primary)           | -0.4% | [-2.5%, 1.4%]  | 50    |

1 Regression, 3 Improvements, 6 Mixed; 5 of them in rollups
62 artifact comparisons made in total

#### Regressions

Implement syntax for `impl Trait` to specify its captures
explicitly (`feature(precise_capturing)`) [#123468](https://github.com/rust-lang/rust/pull/123468) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ccfcd950b333fed046275dd8d54fe736ca498aa7&end=26e6a2fdaa9443dfe37c77489bd4122119e3c900&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 5     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.2%] | 5     |

* A tiny regression on a stress test, introduced by a new feature.
* Marked as triaged.

#### Improvements

Remove my `scalar_copy_backend_type` optimization
attempt [#123185](https://github.com/rust-lang/rust/pull/123185) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5974fe87c4d711949caa64fc1e8366685c8fc190&end=c2239bca5b89a8d3573cc0fc0f2fa65c50edb79c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 4     |
| Improvements (secondary) | -2.0% | [-2.7%, -1.2%] | 2     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 4     |

Rollup of 8 pull
requests [#123823](https://github.com/rust-lang/rust/pull/123823) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=616a8f85f153033d798b583c0ad0431924a738b0&end=a07f3eb43acc5df851e15176c7081a900a30a4d7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-1.1%, -0.2%] | 20    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-1.1%, -0.2%] | 20    |

Rollup of 4 pull
requests [#123982](https://github.com/rust-lang/rust/pull/123982) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=99d0186b1d0547eae913eff04be272c9d348b9b8&end=3493a56529b3f972205f2cdda920132deef4b475&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.8%, -0.3%] | 8     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -0.6% | [-0.8%, -0.3%] | 8     |

#### Mixed

Only collect mono items from reachable
blocks [#123272](https://github.com/rust-lang/rust/pull/123272) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=86b603cd792b3f6172ba4f676d7b586c1af7630a&end=bb78dba64ca4158ef2f3488d0d41a82c75a504f2&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.5%]   | 8     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.5%, -0.3%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.1% | [-1.5%, 1.5%]  | 14    |

* Fixed an important bug, and results were mixed anyway.

Rollup of 7 pull
requests [#123725](https://github.com/rust-lang/rust/pull/123725) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e908cfd125ae9d98550edb9ffd8d7eae4be601ac&end=5974fe87c4d711949caa64fc1e8366685c8fc190&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 2     |
| Regressions (secondary)  | 0.9%  | [0.2%, 2.6%]   | 7     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 2     |
| Improvements (secondary) | -0.6% | [-0.6%, -0.6%] | 1     |
| All  (primary)           | -0.1% | [-0.6%, 0.2%]  | 4     |

* The largest regressions were noise, the rest was mixed.
* Marked as triaged.

Rollup of 8 pull
requests [#123762](https://github.com/rust-lang/rust/pull/123762) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aa067fb984d36462548bb785da221bfaf38253f0&end=4435924bb62cda0131e38dd5d2bba36f9616039f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.5%]   | 2     |
| Regressions (secondary)  | 0.5%  | [0.3%, 1.7%]   | 9     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.8% | [-4.2%, -1.4%] | 2     |
| All  (primary)           | 0.4%  | [0.2%, 0.5%]   | 2     |

* The largest regression on the `coercions` benchmark is noise.
* The rest were small regressions on `doc` benchmarks.
* Marked as triaged.

Rollup of 4 pull
requests [#123884](https://github.com/rust-lang/rust/pull/123884) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6cfd80942e4599a6e429e8a2aa27af38f5987aa0&end=59c38c06049fc3fba98bb046701eb2ab1777d998&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.0%, -1.0%] | 1     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 6     |
| All  (primary)           | -0.3% | [-1.0%, 0.4%]  | 2     |

* The single regression was immediately reverted, the rest were small improvements.
* Marked as triaged.

Re-enable `has_thread_local` for
i686-msvc [#123257](https://github.com/rust-lang/rust/pull/123257) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=59c38c06049fc3fba98bb046701eb2ab1777d998&end=f96442b4482fef6a50b65f2284bcfb8921320183&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.4%]   | 6     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.3%, -0.3%] | 1     |

* This has to be noise, since the PR did not modify x64 Linux.

Get rid of `USIZE_MARKER` in formatting
infrastructure [#123819](https://github.com/rust-lang/rust/pull/123819) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0bf471f339837af930ec90ef5e1e9cb232e99f29&end=7ab5eb8fe7aee35aea8ed4aed8c34f6abd988cc5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.4%, 0.9%]   | 2     |
| Regressions (secondary)  | 1.5%  | [1.5%, 1.5%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.3%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.1% | [-0.6%, 0.9%]  | 7     |

* More improvements than regressions.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Relocate coroutine upvars into Unresumed state" [rust#120168](https://github.com/rust-lang/rust/pull/120168)
  - Nominated by Felix ([comment](https://github.com/rust-lang/rust/pull/120168#issuecomment-2051880787))
  - Context of this PR ([comment](https://github.com/rust-lang/rust/pull/120168#issue-2092189762)):
    > This PR is an attempt to address the async/coroutine size issue by allowing independent def-use/liveness analysis on individual upvars in coroutines. It has appeared to address partially the size doubling issue introduced by the use of upvars.
  - Reason for nomination:
    > Are we okay with the `upvars: Option<(Local, usize)>` this change is adding to various dataflow analyses, at least in the short term so that we can make forward progress on the problem of generator size explosion? Or wait to land this PR until after we have a discussion in any of {dataflow, MIR representation, generator representation} to try to figure out the "right answer".

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Introduce perma-unstable `wasm-c-abi` flag" [rust#117919](https://github.com/rust-lang/rust/pull/117919)
  - Does anybody know how to reach out for the PR reviewer (GH user `b-naber`)? Seems this PR is languishing a bit and has good potential
- "tidy watcher" [rust#114209](https://github.com/rust-lang/rust/pull/114209)
  - cc @**Wesley Wiser**
- "Fix gce ICE when encountering ill-formed consts" [rust#119060](https://github.com/rust-lang/rust/pull/119060)
  - cc @**Michael Goulet (compiler-errors)** (PR author also needs some input)
- "Issue 83060 fix" [rust#119798](https://github.com/rust-lang/rust/pull/119798) (last review activity: 3 months ago)
  - cc @**Wesley Wiser**

## Next week's WG checkins

- @_*WG-mir-opt* by @**oli**
- @_*T-rust-analyzer* by @**Lukas Wirth**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/ZtmRDIGyQUSe0RD6mYjbBA)
