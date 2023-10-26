---
tags: weekly, rustc
type: docs
note_id: dkZMBk7MSyG0NjHpb_Ce_A
---

# T-compiler Meeting Agenda 2023-10-19

## Announcements

- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzEwMjBUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-20T10:00:00-04:00>
- @**apiraino** proposal to rename the *WG-prioritization* to *T-compiler/ops* team ([Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Rename.20.22WG-prioritization.22.20to.20.22T-compiler.2Fops.22)). Happy to receive feedback!
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzEwMTlUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-19T16:00:00-04:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzEwMjNUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-23T10:00:00-04:00>
- [wg-rls-2.0 steering meeting](https://www.google.com/calendar/event?eid=N2NxOWxzYWYxb3NicWNzbGsxYzdxcG9ydTJfMjAyMzEwMjNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-23T11:00:00-04:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzEwMjNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-23T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Consistently.20use.20.22region.22.20terminology.20in.20.E2.80.A6.20compiler-team.23634)) (last review activity: 4 months ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635)) (last review activity: 4 months ago)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20visionOS.20targets.20compiler-team.23642)) (last review activity: about 47 days ago)
  - "Match the behavior of `strip` and `split-debuginfo` across platforms" [compiler-team#669](https://github.com/rust-lang/compiler-team/issues/669) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Match.20the.20behavior.20of.20.60strip.60.20and.20.60split-.E2.80.A6.20compiler-team.23669)) (last review activity: about 44 days ago)
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
  - "Add `$message_type` field to distinguish json diagnostic outputs" [compiler-team#673](https://github.com/rust-lang/compiler-team/issues/673) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.20Add.20.60type.60.20field.20to.20json.20diagnostic.20outp.E2.80.A6.20compiler-team.23673))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "make soft_unstable show up in future breakage reports" [rust#116274](https://github.com/rust-lang/rust/pull/116274)
  - "Remove support for compiler plugins." [rust#116412](https://github.com/rust-lang/rust/pull/116412)
- Things in FCP (make sure you're good with it)
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20infrastructure.20to.20.22compute.20the.20ABI.20of.E2.80.A6.20compiler-team.23672))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Have `rustc` produce a local log of execution metrics" [compiler-team#679](https://github.com/rust-lang/compiler-team/issues/679) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Have.20.60rustc.60.20produce.20a.20local.20log.20of.20execu.E2.80.A6.20compiler-team.23679))
  - "Enable Parallel Rustc Front End In Nightly Builds" [compiler-team#681](https://github.com/rust-lang/compiler-team/issues/681) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20Parallel.20Rustc.20Front.20End.20In.20Nightl.E2.80.A6.20compiler-team.23681))
- Accepted MCPs
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Simplify.20and.20improve.20explicitness.20of.20the.20.E2.80.A6.20compiler-team.23636))
- Finalized FCPs (disposition merge)
  - "rustdoc: hide `#[repr(transparent)]` if it isn't part of the public ABI" [rust#115439](https://github.com/rust-lang/rust/pull/115439)
  - "const-eval: make misalignment a hard error" [rust#115524](https://github.com/rust-lang/rust/pull/115524)
  - "const_eval: allow function pointer signatures containing &mut T in const contexts" [rust#116015](https://github.com/rust-lang/rust/pull/116015)
  - "Bump `COINDUCTIVE_OVERLAP_IN_COHERENCE` to deny + warn in deps" [rust#116493](https://github.com/rust-lang/rust/pull/116493)
  
### WG checkins

- @_*T-rust-analyzer* by @_**Lukas Wirth** (https://hackmd.io/CG_A-TBVTBqsH_mfID3Fvg#WG-checkins)
  > taking some time off

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix a performance regression in obligation deduplication." [rust#116826](https://github.com/rust-lang/rust/pull/116826)
  - authored by @**nnethercote**
  - Fixes #116780 #116797, noteworthy perf. regressions
<!--
/poll Approve beta backport of #116826?
approve
decline
don't know
-->
- :beta: "Make `#[repr(Rust)]` and `#[repr(C)]` incompatible with one another" [rust#116829](https://github.com/rust-lang/rust/pull/116829)
  - authored by @**León Orell Liehr (fmease)** 
  - Fixes [#116825](https://github.com/rust-lang/rust/issues/116825), where rustc didn't reject an incorrect `[repr(C, Rust)]` block.
  - T-lang ok'd these changes ([comment](https://github.com/rust-lang/rust/pull/116829#issuecomment-1768618240))
<!--
/poll Approve beta backport of #116829?
approve
decline
don't know
-->
- :beta: "Update to LLVM 17.0.3" [rust#116840](https://github.com/rust-lang/rust/pull/116840)
  - authored by @**Nikita Popov** 
  - Fixes [#116582](https://github.com/rust-lang/rust/issues/116582) (unsoundness) and [#104862](https://github.com/rust-lang/rust/issues/104862) (miscompilation), introduced with LLVM 17 upgrade
<!--
/poll Approve beta backport of #116840?
approve
decline
don't know
-->
- :beta: "Disable effects in libcore again" [rust#116856](https://github.com/rust-lang/rust/pull/116856)
  - authored by @**oli**
  - reverts [#114776](https://github.com/rust-lang/rust/pull/114776), accidentally enabled libcore without feature gate
<!--
/poll Approve beta backport of #116856?
approve
decline
don't know
-->
- :beta: "revert #114586" [rust#116879](https://github.com/rust-lang/rust/pull/116879)
  - authored by @**aliemjay** 
  - reverts [rust#114586](https://github.com/rust-lang/rust/pull/114586)
  - fixes [rust#116877](https://github.com/rust-lang/rust/issues/116877), #116684 fixes #114586 ([comment](https://github.com/rust-lang/rust/pull/114586#issuecomment-1751967321)), (all pretty high prio. regressions)
<!--
/poll Approve beta backport of #116879?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 100 P-medium, 19 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "regression when relating two opaque types in canonical queries" [rust#116877](https://github.com/rust-lang/rust/issues/116877)
  - That will be closed by the beta backport of #116879

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-10-18](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-10-18.md)

Overall an interesting week performance wise, with small improvements to a vast
number of benchmarks seeming to outweigh an isolated set of (slightly) larger
regressions. It included a number of PRs regressed instruction counts but did
not matter for cycle times, plus one mysterious regression to `check_match` and
`mir_borrowck` from reworking constructor splitting (see report on PR 116391 for
details), and an awesome broad set of improvements from automatically inlining
small functions across crates (see report on PR 116505 for details).

Triage done by **@pnkfelix**.
Revision range: [84d44dd1..b9832e72](https://perf.rust-lang.org/?start=84d44dd1d8ec1e98fff94272ba4f96b2a1f044ca&end=b9832e72c9223f4e96049aa5911effd258b92591&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 3.0%  | [0.3%, 12.2%]   | 7     |
| Regressions (secondary)  | 0.7%  | [0.3%, 1.2%]    | 15    |
| Improvements (primary)   | -1.1% | [-17.9%, -0.2%] | 131   |
| Improvements (secondary) | -2.4% | [-39.6%, -0.2%] | 121   |
| All  (primary)           | -0.9% | [-17.9%, 12.2%] | 138   |


4 Regressions, 1 Improvements, 4 Mixed; 3 of them in rollups
84 artifact comparisons made in total
30 Untriaged Pull Requests

#### Regressions

Rollup of 7 pull requests [#116605](https://github.com/rust-lang/rust/pull/116605) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5b88d659f8c2428536589d4bd36b9099d53a6815&end=c30b28bdc17f1da73515afa0886f0d4f55c76e1f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.6%] | 7     |
| Regressions (secondary)  | 0.3% | [0.3%, 0.4%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 0.6%] | 7     |

* solely rustdoc regression
* believed to be caused by [PR 109422](https://github.com/rust-lang/rust/pull/109422) "rustdoc-search: add impl disambiguator to duplicate assoc items"
* already marked as triaged

Optimize `librustc_driver.so` with BOLT  [#116352](https://github.com/rust-lang/rust/pull/116352) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ee8c9d3c34719a129f280cd91ba5d324017bb02b&end=c543b6f3516767150af84d94c14a27b19d4b0291&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.3%  | [0.2%, 5.7%]   | 10    |
| Regressions (secondary)  | 1.9%  | [0.3%, 5.0%]   | 60    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 4     |
| All  (primary)           | 2.3%  | [0.2%, 5.7%]   | 10    |

* primary instruction-count regressions were restricted to helloworld and html5ever
* As noted in comment by Kobzol, the instruction counts regressed for many benchmarks, but the [cycle counts](https://perf.rust-lang.org/compare.html?start=ee8c9d3c34719a129f280cd91ba5d324017bb02b&end=c543b6f3516767150af84d94c14a27b19d4b0291&stat=cycles:u) solely improved, significantly so, and bootstrap time improved (628.052s -> 623.517s (-0.72%)).
* already marked as triaged

Rollup of 3 pull requests [#116742](https://github.com/rust-lang/rust/pull/116742) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c543b6f3516767150af84d94c14a27b19d4b0291&end=e292fec36880f48101bda4054be37097312e73c0&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.4%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.4%] | 3     |

* Regressions are solely to bitmaps full scenarios.
* Looks like a blip (i.e. noise) based on the graph over time.
* marking as triaged.

don't UB on dangling ptr deref, instead check inbounds on projections [#114330](https://github.com/rust-lang/rust/pull/114330) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a00c09e9d80b763fb29206b47b04e1d99c3ace96&end=e7bdc5f9f869219e8d20060b42a09ea10a837851&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.7% | [0.5%, 1.0%] | 17    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

* From skimming the PR, one can see that the PR author (RalfJung) iterated on this to identify a solution that would minimize regressions.
* As noted by the PR author, only secondary benchmarks were affected.
* Also, while instruction-counts regressed, the [cycle-counts](https://perf.rust-lang.org/compare.html?start=a00c09e9d80b763fb29206b47b04e1d99c3ace96&end=e7bdc5f9f869219e8d20060b42a09ea10a837851&stat=cycles%3Au)
  did not, at least not enough to pass our noise threshold.
* marking as triaged.

#### Improvements

optimize zipping over array iterators [#115515](https://github.com/rust-lang/rust/pull/115515) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e292fec36880f48101bda4054be37097312e73c0&end=0d410be23c45e2f3567a6ec35985f690473f9176&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 3     |

* A small win from a PR addressing user-filed performance regression, namely [issue #115339](https://github.com/rust-lang/rust/issues/115339), "Performance regression of array::IntoIter vs slice::Iter"

#### Mixed

Also consider call and yield as MIR SSA. [#113915](https://github.com/rust-lang/rust/pull/113915) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c30b28bdc17f1da73515afa0886f0d4f55c76e1f&end=d627cf07ce46d230a93732a4714d16f00df9466b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.9%  | [3.9%, 3.9%]   | 1     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 2     |
| Improvements (primary)   | -0.4% | [-0.9%, -0.2%] | 26    |
| Improvements (secondary) | -0.4% | [-0.6%, -0.3%] | 5     |
| All  (primary)           | -0.2% | [-0.9%, 3.9%]  | 27    |

* The try perf run had sole primary regression of unicode-normalization-0.1.19 opt-full (1.19%), while the perf run against master had sole primary regression of exa-0.10.1 opt-full (3.90%).
* The exa regression has persisted forward (i.e. it is not transient noise).
* It was already been marked as triaged, as the performance changes were deemed a wash, apart from object code sizes which saw "small but clear" improvement.

Rollup of 5 pull requests [#116640](https://github.com/rust-lang/rust/pull/116640) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c1691db366c0f2e2341c60377c248ca2d9335076&end=475c71da0710fd1d40c046f9cee04b733b5b2b51&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.1%  | [1.1%, 1.1%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 4     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.4%] | 6     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 4     |

* sole regression was to secondary benchmark coercions debug incr-patched: add static arr item
* Looks like a blip (i.e. noise) based on the graph over time.
* marking as triaged

exhaustiveness: Rework constructor splitting [#116391](https://github.com/rust-lang/rust/pull/116391) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=df4379b4eb5357263f0cf75475953f9b5c48c31f&end=e20cb7702117f1ad8127a16406ba9edd230c4f65&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 4     |
| Regressions (secondary)  | 3.9%  | [0.5%, 5.8%]   | 9     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.1%  | [-0.4%, 0.3%]  | 5     |

* the primary regressions were to cranelift-codegen-0.82.1 and cargo-0.60.0 in various incremental settings (mostly check builds)
* the large (>5%) secondary regressions are all to match-stress.
* the above cases were regressions for instruction-counts, but the cycle-counts didn't get marked as regressed in *any* of the same cases.
* in all cases, the performance loss from these regressions was subsequently recovered (or masked) by [PR 116505](https://github.com/rust-lang/rust/pull/116505) "Automatically enable cross-crate inlining for small functions".
  (I don't know if that's actually related or just an awesome change that bought so much performance that it masked this problem).
* Since the match-stress one was relatively large, I looked at the
  self-profile results in the [details](https://perf.rust-lang.org/detailed-query.html?commit=e20cb7702117f1ad8127a16406ba9edd230c4f65&benchmark=match-stress-check&scenario=full&base_commit=df4379b4eb5357263f0cf75475953f9b5c48c31f)
  which indicates a change in the delta(time) for match-stress might be due to new overheads in `check_match` and `mir_borrowck`.
* But this is strange; I cannot tell how this PR could have affected codegen, which would be the only way I could imagine those functions being impacted.
* Not marking as triaged for now; this mystery might be worth looking into a bit more. (But then again, the only significant regression was to a secondary stress test, so maybe its not worth spending time on.)

Automatically enable cross-crate inlining for small functions [#116505](https://github.com/rust-lang/rust/pull/116505) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ca89f732ec0f910fc92111a45dd7e6829baa9d4b&end=5d5edf0248d967baa6ac5cbea09b91c7c9947942&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 2.3%  | [0.3%, 13.0%]   | 8     |
| Regressions (secondary)  | 0.5%  | [0.2%, 0.8%]    | 2     |
| Improvements (primary)   | -1.2% | [-18.1%, -0.1%] | 148   |
| Improvements (secondary) | -2.2% | [-39.8%, -0.2%] | 209   |
| All  (primary)           | -1.0% | [-18.1%, 13.0%] | 156   |

* Already marked as triaged
* This was clearly awesome and amazing (all the more amazing if you review the history)
* 'Nuff said.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Code no longer compiles after -Zdrop-tracking-mir was enabled by default" [rust#116242](https://github.com/rust-lang/rust/issues/116242)
  - waiting for the crater run results. See [comment](https://github.com/rust-lang/rust/issues/116242#issuecomment-1759715052)
  - (@**apiraino** looked for the results but didn't find them)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "Save liveness results for DestinationPropagation" [rust#115291](https://github.com/rust-lang/rust/pull/115291)
  - cc @**Jak{e,ob} Degen** 
- "Fix duplicated crate keyword in suggested path" [rust#115876](https://github.com/rust-lang/rust/pull/115876) (last review activity: about 28 days ago)
  - cc @**Esteban Küber**, roll this one off your dish?
- "Introduce `-C instrument-coverage=branch` to gate branch coverage" [rust#116094](https://github.com/rust-lang/rust/pull/116094) (last review activity: about 25 days ago)
  - cc @**Wesley Wiser**, roll this one off your dish?

## Next week's WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/I7BHh5YMReC2jAyhFwUwSQ)
