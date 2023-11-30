---
tags: weekly, rustc
type: docs
note_id: tokEKvgeR2qf7jYRvsWkzA
---

# T-compiler Meeting Agenda 2023-11-30

## Announcements

- RFC: improve the onboarding experience of t-compiler + t-compiler-contributor ([Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/244344-t-compiler.2Fcontrib-private/topic/Welcoming.20new.20members.20in.20t-compiler-contributors)):
  - HackMD document: https://hackmd.io/Cp0Ktm2KQeS4TNmFn2UwWQ
  - @_**Santiago Pastorino** @_**lqd**  and _@_**apiraino** are planning to work a bit on the rustc-dev + forge documentation as well
  - 👉 Feedback and wishlists around this topic are welcome!
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzExMzBUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-30T16:00:00-05:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzEyMDRUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-04T10:00:00-05:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzEyMDRUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-04T11:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Require `--known-broken-llvm` flag for x.py to skip codegen tests on old LLVM" [compiler-team#687](https://github.com/rust-lang/compiler-team/issues/687) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Require.20.60--known-broken-llvm.60.20flag.20for.20x.2E.E2.80.A6.20compiler-team.23687))
  - "Semantics of `-Cinstrument-coverage=all`" [compiler-team#690](https://github.com/rust-lang/compiler-team/issues/690) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Semantics.20of.20.60-Cinstrument-coverage.3Dall.60.20compiler-team.23690))
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692))
  - "New Tier-3 target: `wasm32-wasi-preview2`" [compiler-team#694](https://github.com/rust-lang/compiler-team/issues/694) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.3A.20.60wasm32-wasi-preview2.60.20compiler-team.23694))
  - "Smooth the renaming transition of `wasm32-wasi`" [compiler-team#695](https://github.com/rust-lang/compiler-team/issues/695) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Smooth.20the.20renaming.20transition.20of.20.60wasm32.E2.80.A6.20compiler-team.23695))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "De-llvm some integer intrinsics that on the Rust side always use `u32`" [compiler-team#693](https://github.com/rust-lang/compiler-team/issues/693) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/De-llvm.20some.20integer.20intrinsics.20that.20on.20t.E2.80.A6.20compiler-team.23693)) (last review activity: about 3 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "make soft_unstable show up in future breakage reports" [rust#116274](https://github.com/rust-lang/rust/pull/116274)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
  - "guarantee that char and u32 are ABI-compatible" [rust#118032](https://github.com/rust-lang/rust/pull/118032)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20infrastructure.20to.20.22compute.20the.20ABI.20of.E2.80.A6.20compiler-team.23672))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Support response files generated by ninja with `@ninja:path` syntax" [compiler-team#684](https://github.com/rust-lang/compiler-team/issues/684) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20shell.20parsing.20for.20response.20files.20compiler-team.23684))
  - "Add `-Zexperimental-target`" [compiler-team#685](https://github.com/rust-lang/compiler-team/issues/685) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zexperimental-target.60.20compiler-team.23685))
  - "Stop emitting less useful debug sections: `.debug_pubnames` and `.debug_pubtypes`" [compiler-team#688](https://github.com/rust-lang/compiler-team/issues/688) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flag.20to.20stop.20emitting.20less.20useful.20debug.20s.E2.80.A6.20compiler-team.23688))
  - "Add -Z small-data-threshold" [compiler-team#689](https://github.com/rust-lang/compiler-team/issues/689) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20small-data-threshold.20compiler-team.23689))
- Accepted MCPs
  - " Add `$message_type` field to distinguish json diagnostic outputs" [compiler-team#673](https://github.com/rust-lang/compiler-team/issues/673) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.20Add.20.60type.60.20field.20to.20json.20diagnostic.20outp.E2.80.A6.20compiler-team.23673))
  - "Set alignment of `i128` to 128 bits for x86" [compiler-team#683](https://github.com/rust-lang/compiler-team/issues/683) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20alignment.20of.20.60i128.60.20to.20128.20bits.20compiler-team.23683))
- Finalized FCPs (disposition merge)
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - "TAIT defining scope options" [rust#107645](https://github.com/rust-lang/rust/issues/107645)
  - "[style edition 2024] Combine all delimited exprs as last argument" [rust#114764](https://github.com/rust-lang/rust/pull/114764)
  - "dropck_outlives check whether generator witness needs_drop" [rust#117134](https://github.com/rust-lang/rust/pull/117134)
  - "Stabilize C string literals" [rust#117472](https://github.com/rust-lang/rust/pull/117472)
  - "generator layout: ignore fake borrows" [rust#117712](https://github.com/rust-lang/rust/pull/117712)

### WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/Eq0n1oBvTaajzXK5WvKPng#WG-checkins)):
  > text

## Backport nominations

FIY Some stable backports were preemptively approved last week ([Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Week.2047.3A.20stable.20.2B.20beta.20backports/near/403208821)):
- [clarify fn discriminant guarantees: only free lifetimes may get erased](https://github.com/rust-lang/rust/pull/118006)
- [Move subtyper below reveal_all and change reveal_all](https://github.com/rust-lang/rust/pull/116415)

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: 1.75 "Build pre-coroutine-transform coroutine body on error" [rust#117686](https://github.com/rust-lang/rust/pull/117686)
  - Fixes an ICE #117670
  - nominated by Wesley ([comment](https://github.com/rust-lang/rust/pull/117686#issuecomment-1812739698)) because people are already tripping on this
<!--
/poll Approve beta backport of #117686?
approve
decline
don't know
-->
- :beta: 1.75 "ConstProp: Correctly remove const if unknown value assigned to it." [rust#118426](https://github.com/rust-lang/rust/pull/118426)
  - thanks @**Alona Enraght-Moony** !
  - Fixes [rust#118328](https://github.com/rust-lang/rust/issues/118328), P-high regression of a fuzzer-generated unsoundness
<!--
/poll Approve beta backport of #118426?
approve
decline
don't know
-->
- :beta: 1.75 "Dispose llvm::TargetMachines prior to llvm::Context being disposed" [rust#118464](https://github.com/rust-lang/rust/pull/118464)
  - Fixes #118462 (thanks @**Wesley Wiser** ), a `P-high` UB on ARM (Windows only)
<!--
/poll Approve beta backport of #118464?
approve
decline
don't know
-->
- :stable: "Fix coroutine validation for mixed panic strategy" [rust#118422](https://github.com/rust-lang/rust/pull/118422)
  - Fixes #116953, a P-high stable regression likely caused by a recent regression by MIR drop tracking ([context](https://github.com/rust-lang/rust/pull/118422#issue-2015229075))
  - Nominated by @_**apiraino** ([comment](https://github.com/rust-lang/rust/pull/118422#issuecomment-1831780965)), more in case a 1.74.1 dot release discussion starts (see other stable accepted backports)
<!--
/poll Approve stable backport of #118422?
approve
approve but does not justify new dot release
decline
don't know
-->

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "[`RFC 3086`] Attempt to try to resolve blocking concerns" [rust#117050](https://github.com/rust-lang/rust/pull/117050)
  - T-lang approved without FCP ([comment](https://github.com/rust-lang/rust/pull/117050#issuecomment-1802336843))
  - anything else blocking? Is T-compiler still interested here?
- "Remap paths from other crates" [rust#117836](https://github.com/rust-lang/rust/pull/117836)
  - T-compiler mentioned to have a look ([comment](https://github.com/rust-lang/rust/pull/117050#issuecomment-1802336843)) and figure out if there are ramifications
- "guarantee that char and u32 are ABI-compatible" [rust#118032](https://github.com/rust-lang/rust/pull/118032)
  - T-lang discussed ([comment](https://github.com/rust-lang/rust/pull/118032#issuecomment-1823161874)), opened FCP process
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 4 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 39 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Miscompilation of Bevy (and some wgpu) apps resulting in segfault on macOS." [rust#117902](https://github.com/rust-lang/rust/issues/117902)
  - Actually will be fixed by fixing the `wgpu` crate ([comment](https://github.com/rust-lang/rust/issues/117902#issuecomment-1831027066) and following)
- "1.74 causes an internal compiler error: broken MIR in Item" [rust#117976](https://github.com/rust-lang/rust/issues/117976)
  - stable Regression is causing the project `tantivy` to fail compiling on 1.74. Reported problems also from a Asahi Linux kernel driver ([comment](https://github.com/rust-lang/rust/issues/117976#issuecomment-1822225691))
  - @**lqd** investigated and reports that it doesn't reproduce anymore on nightly+beta ([comment](https://github.com/rust-lang/rust/issues/117976#issuecomment-1815237421)). We probably just missed a backport.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: new resolution failures in 1.74" [rust#117056](https://github.com/rust-lang/rust/issues/117056)
  - @_**apiraino** thinks these are mostly fixed (anything missing here?)
- "Problem running a method on the output of a function that returns an associated type ("missing optimized MIR")" [rust#117997](https://github.com/rust-lang/rust/issues/117997)
  - Will be fixed by #117076 ([comment](https://github.com/rust-lang/rust/issues/117997#issuecomment-1816723585)), already merged

## Performance logs

> [triage logs for 2023-11-28](https://github.com/rust-lang/rustc-perf/blob/20911b7f28a4b88d36ecd5b13414f26feac49d4d/triage/2023-11-28.md)

A good week, despite a few PRs that pnkfelix opted not to mark as triaged. In
particular, a broad set of primary benchmarks improved, due to improvements to
resolve (PR #118188) and a one-pass rewrite of exhaustiveness (PR #117611).

Triage done by **@pnkfelix**.
Revision range: [4f3da903..df0295f0](https://perf.rust-lang.org/?start=4f3da903a43f22ea33d2ca4435a24b42fc1f842a&end=df0295f07175acc7325ce3ca4152eb05752af1f2&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.1%, 1.5%]   | 15    |
| Regressions (secondary)  | 1.3%  | [0.2%, 2.4%]   | 16    |
| Improvements (primary)   | -0.7% | [-2.1%, -0.3%] | 66    |
| Improvements (secondary) | -1.7% | [-8.1%, -0.2%] | 43    |
| All  (primary)           | -0.5% | [-2.1%, 1.5%]  | 81    |


1 Regressions, 5 Improvements, 5 Mixed; 2 of them in rollups
84 artifact comparisons made in total

#### Regressions

Rollup of 4 pull requests [#118319](https://github.com/rust-lang/rust/pull/118319) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3dbb4da04267b19bc8c403c0bb2b41c5b8010a61&end=3bb0171999a65b0650d9405a7b2e8e7dc3476dec&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.1%, 0.8%] | 23    |
| Regressions (secondary)  | 0.5% | [0.2%, 1.0%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.1%, 0.8%] | 23    |

* The bulk (in this case > 0.31%) of the primary regressions are to bitmaps and libc, in a variety of incremental modes.
* nnethercote noted that this seems like it must be PR #118311 ("merge DefKind::Coroutine into Defkind::Closure"), and confirmed it by benchmarking that specific commit.
* follow-up PR's have been proposed, but we have not successfully found one that undoes the regression.
* meanwhile, a follow-on PR, #118188, has landed that is coupled to #118311. This PR #118188 seems to have wide benefits. So it may not be worthwhile to spend time trying to figure out the regression injected by #118311.
* not marking as triaged yet.

#### Improvements

Remove `PredicateKind::ClosureKind` [#118120](https://github.com/rust-lang/rust/pull/118120) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=06d1afe5189bc0830b9b5654fd0ba89e9829f4cd&end=1e9dda77b5b8e690c7e21871bbd2dcf182e1a841&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 4     |
| Improvements (secondary) | -3.8% | [-8.1%, -0.5%] | 14    |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 4     |

* slight improvements to clap check-{incr-full,full}, cargo check-full, and diesel doc-full


Cache flags for `ty::Const` [#118189](https://github.com/rust-lang/rust/pull/118189) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eab8c7d5fd335d673bb96bb4aef86c74006cef4b&end=41fe75ec6b824d51e5365098c4af9de45e5a2723&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 10    |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 3     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 10    |

* slight improvements to bitmaps {check-full,opt-full}, serde {check-full,debug-full}, diesel check-full
* the remaining 5 are doc-full improvements.


Indicate that multiplication in Layout::array cannot overflow [#118228](https://github.com/rust-lang/rust/pull/118228) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f74f700952f105536446e415b8df8061bddfb25e&end=b06258cde4b0dd131cdbf289349ebf51b3b6388a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-0.5%, -0.3%] | 3     |

* switches to unsafe { element_size.unchecked_mul(n) } with a big ol' safety comment about why.
* improved opt incr-patched:println for clap, image, and cargo benchmarks.

`AmbiguityCause` should not eagerly format strings [#118267](https://github.com/rust-lang/rust/pull/118267) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3acb261e214cd13ae54346af30eae5807501ec37&end=0b8a61b235662d397721d1b88ddefdfc147ba39a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.8%, -0.2%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-0.8%, -0.2%] | 5     |

* improved check builds for clap {incr-full,full,incr-unchanged} and hyper {incr-full,full}

resolve: Feed the `def_kind` query immediately on `DefId` creation [#118188](https://github.com/rust-lang/rust/pull/118188) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=df0295f07175acc7325ce3ca4152eb05752af1f2&end=5facb422f8a5a61df515572fe79b02433639d565&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 58    |
| Improvements (secondary) | -0.5% | [-1.0%, -0.1%] | 34    |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 58    |

* wide range of benchmarks improved on incr-unchanged and incr-patched variants: stm32f4, diesel, bitmaps, cranelift-codegen, syn, serde, et cetera.
* as noted above with #118319, this is coupled with a PR (#118311) associated with some regressions.

#### Mixed

Refactor `binary_search_by` to use conditional moves [#117722](https://github.com/rust-lang/rust/pull/117722) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=41fe75ec6b824d51e5365098c4af9de45e5a2723&end=8abf920985368264ed4d46e62e1730232e161292&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | 1.3%  | [1.3%, 1.4%]   | 2     |
| Improvements (primary)   | -1.4% | [-1.9%, -0.2%] | 5     |
| Improvements (secondary) | -1.8% | [-2.6%, -1.3%] | 8     |
| All  (primary)           | -1.1% | [-1.9%, 0.4%]  | 6     |

* The single primary regression here seems to be a measurement blip, based on the 30-day history.
* Even if it weren't, the improvements would outweigh the regression.
* Marked as triaged.

Rewrite exhaustiveness in one pass [#117611](https://github.com/rust-lang/rust/pull/117611) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f5dc2653fdd8b5d177b2ccbd84057954340a89fc&end=ee80c8d0a8bc63b69f68216c5d37f9ab837eedd0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [1.0%, 1.1%]   | 2     |
| Regressions (secondary)  | 1.6%  | [0.3%, 2.4%]   | 9     |
| Improvements (primary)   | -0.9% | [-2.0%, -0.2%] | 11    |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | -0.6% | [-2.0%, 1.1%]  | 13    |

* primary improvements were to html5ever, cranelift-codegen, exa, and image.
* unicode-normalization was the main primary regression, by up to 1.15% (check incr-full); but its worth noting that it was very close to the significance factor (1.13%) for that benchmark, so its borderline historically.
* already marked as triaged by nnethercote

rustc: Make `def_kind` mandatory for all `DefId`s [#118250](https://github.com/rust-lang/rust/pull/118250) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=33f6af805257c6d462ad45c5de32da3fb38bfaf7&end=5c97719393b093997a03d7bb5d8a01d712c66c0e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]   | 2     |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 5     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 9     |
| All  (primary)           | -0.1% | [-0.1%, -0.1%] | 5     |

* already marked as triaged by nnethercote. (regressions are confined to secondary match-stress benchmark).

Add `debug_assert_nounwind` and convert `assert_unsafe_precondition` [#110303](https://github.com/rust-lang/rust/pull/110303) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5c97719393b093997a03d7bb5d8a01d712c66c0e&end=9529a5d2655f6974c2ee16e91c5db548a3daea03&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.4%, 0.6%]   | 4     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 2     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -0.6% | [-0.6%, -0.6%] | 2     |
| All  (primary)           | 0.3%  | [-0.4%, 0.6%]  | 5     |

* already marked as triaged by nnethercote (hoped to be churn/noise).

Rollup of 7 pull requests [#118405](https://github.com/rust-lang/rust/pull/118405) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e06c94d6cb61ef2fa28370fb69a8d2e11b6678c4&end=46a24ed2f4b4bdfccca36fb20b1574a6164893d8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.4%, 0.6%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-1.3%, -0.2%] | 4     |
| All  (primary)           | 0.5%  | [0.4%, 0.6%]   | 3     |

* regressions are confined to clap opt {full,incr-full,incr-patched:println}
* not marking as triaged

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "RFC: Packages as (optional) namespaces" [rfcs#3243](https://github.com/rust-lang/rfcs/pull/3243)

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Stabilize `extended_varargs_abi_support`" [rust#116161](https://github.com/rust-lang/rust/pull/116161)
  - author pinged @**wesley wiser**
- "Create the previous dep graph index on a background thread" [rust#116375](https://github.com/rust-lang/rust/pull/116375)
  - cc: **cjgillot**
- "Provide context when `?` can't be called because of `Result<_, E>`" [rust#116496](https://github.com/rust-lang/rust/pull/116496)
  - cc: @**compiler errors**

## Next week's WG checkins

- @_*T-rust-analyzer* by @**Lukas Wirth**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/CBacAmB6TTyQJb4kmrBGfw)
