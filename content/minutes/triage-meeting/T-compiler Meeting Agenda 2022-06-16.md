---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-06-16

## Announcements

- [T-compiler steering: path sanitisation changes rfc#3127](https://www.google.com/calendar/event?eid=Nm8xbGtqbHBzMjdpcTRjcHAybmw4a3Y0ZjEgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-06-17T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
  - [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjA2MjBUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-06-20T11:30:00-04:00>
  - [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA2MTdUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-06-17T09:00:00-04:00>
  - [wg-debugging triage meeting](https://www.google.com/calendar/event?eid=NjAwbDEwNzNmMzVsNDZucnFsdDdwbGJrdDRfMjAyMjA2MjBUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-06-20T10:00:00-04:00>
  - [Types team Hack session: Advanced subtyping](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA2MjJUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-06-22T09:00:00-04:00>
  - [wg-traits GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA2MjBUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-06-20T16:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) 
- Old MCPs (not seconded, take a look)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 5 months ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 4 months ago)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: 2 months ago)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: about 40 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510#issuecomment-1119675764) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006) 
  - "session: stabilize split debuginfo on linux" [rust#98051](https://github.com/rust-lang/rust/pull/98051#issuecomment-1153776703) 
- Things in FCP (make sure you're good with it)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Remove migrate borrowck mode" [rust#95565](https://github.com/rust-lang/rust/pull/95565) 
  - "Modify MIR building to drop repeat expressions with length zero" [rust#95953](https://github.com/rust-lang/rust/pull/95953) 
  - "Lang: Stabilize usage of rustc_nonnull_optimization_guaranteed on -1" [rust#97122](https://github.com/rust-lang/rust/issues/97122)

### WG checkins

- @_*wg-polymorphization* Polymorphization by @**davidtwco** ([previous checkin](https://hackmd.io/Fv3TSalbT_CYVUEonihWzg#WG-checkins))
> Checkin text

- @_*WG-rls2.0* RLS 2.0 by @**matklad** ([previous checkin](https://hackmd.io/Fv3TSalbT_CYVUEonihWzg#WG-checkins))
> Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Update LLVM submodule" [rust#97690](https://github.com/rust-lang/rust/pull/97690) 
  - Discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-06-09/near/285540791)
  - backport decision postponed to better evaluate the entity of the LLVM patch being backported
- :beta: "Aarch64 call abi does not zeroext (and one cannot assume it does so)" [rust#97800](https://github.com/rust-lang/rust/pull/97800)
  - Discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-06-09/near/285544367)
  - backport decision postponed (more work is being done on #97800)
- :beta: "Revert "remove num_cpus dependency" in rustc and update cargo" [rust#97911](https://github.com/rust-lang/rust/pull/97911)
  - patch authored by @**David Tolnay** 
  - Fixes [rust#97549](https://github.com/rust-lang/rust/issues/97549), `P-high` regression (increased memory usage)
  - nominated by @**simulacrum** cc: @**Michael Goulet (compiler-errors)** so users won't wait until 1.63 to receive this patch

- :beta: "debuginfo: Fix NatVis for Rc and Arc with unsized pointees." [rust#98137](https://github.com/rust-lang/rust/pull/98137)
  - patch authored by @**mw**
  - nominated by @**Wesley Wiser** for [these reasons](https://github.com/rust-lang/rust/pull/98137#issuecomment-1156667912)

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.
  - (4 PRs omitted since either drafts or waiting on other teams / RFC process)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Add option to pass environment variables" [rust#94387](https://github.com/rust-lang/rust/pull/94387) (last review activity: about 33 days ago)
  - cc latest reviewers: @**Esteban Küber** and @**bjorn3**
- "`Clone` suggestions" [rust#95115](https://github.com/rust-lang/rust/pull/95115) (last review activity: about 26 days ago)
  - assigned reviewer @**Esteban Küber**, suggests an additional reviewer ([comment](https://github.com/rust-lang/rust/pull/95115#issuecomment-1107672151))
  - also cc: @**oli** and @**Jak{e,ob} Degen** (as they left comments, too)
  - any actionable for the PR author at this time?
- "Add Finalize statement to make deaggregation "reversible" by storing all information in MIR" [rust#96043](https://github.com/rust-lang/rust/pull/96043) (last review activity: about 25 days ago)
  - unsure about status: maybe a comment on latest perf run results?
  - cc: @**Wesley Wiser** assigned reviewer
- "Print type of every call in a method call chain" [rust#96918](https://github.com/rust-lang/rust/pull/96918) (last review activity: about 20 days ago)
  - unsure about current status
  - cc: @**Michael Goulet (compiler-errors)** maybe to comment on latest notes left by @**Esteban Küber**?
- "Add `round_ties_even` to `f32` and `f64`" [rust#95317](https://github.com/rust-lang/rust/pull/95317) (last review activity: about 41 days ago)
  - r'ed by Felix [comment](https://github.com/rust-lang/rust/pull/95317#issuecomment-1099251055)
  - anything else from T-compiler?

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [44 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 78 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463) 
  - Issue is being addressed by @**pnkfelix** in #97800
- "NLL: unsound verification of higher ranked outlives bounds" [rust#98095](https://github.com/rust-lang/rust/issues/98095)
  - discussion in [comments](https://github.com/rust-lang/rust/issues/98095#issuecomment-1155342985), cc: @**Michael Goulet (compiler-errors)** and @**nikomatsakis**
  - Also `I-compiler-nominated`

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2022-06-14 Triage Log](https://github.com/rust-lang/rustc-perf/blob/62b8e93e9f0fc44e3eb9dd3431af174dd044fe58/triage/2022-06-14.md)

A mixed week. I suppose it is best to focus on the fact we made some big
improvements to a large number of primary benchmarks, at the cost of some
smaller regressions to a smaller number of primary benchmarks.

Triage done by **@pnkfelix**.
Revision range: [bb55bd449e65e611da928560d948982d73e50027..edab34ab2abbafc16a78daedf71dbacd2eb0b7bf](https://perf.rust-lang.org/?start=bb55bd449e65e611da928560d948982d73e50027&end=edab34ab2abbafc16a78daedf71dbacd2eb0b7bf&absolute=false&stat=instructions%3Au)

**Summary**:

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.6%  | 1.6%  | 35    |
| Regressions (secondary)  | 2.1%  | 8.1%  | 23    |
| Improvements (primary)   | -0.8% | -3.5% | 72    |
| Improvements (secondary) | -0.8% | -2.9% | 62    |
| All  (primary)           | -0.4% | -3.5% | 107   |


4 Regressions, 3 Improvements, 5 Mixed; 4 of them in rollups
47 artifact comparisons made in total
30 Untriaged Pull Requests

#### Regressions

Rollup of 5 pull requests [#97825](https://github.com/rust-lang/rust/pull/97825) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=91cacb3faf987805675e39aca41859ec1fcabef3&end=7fe2c4b00dfbc33643e1af4b293eb057306a8339&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.2% | 0.3% | 4     |
| Regressions (secondary)  | N/A  | N/A  | 0     |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.2% | 0.3% | 4     |

* stm32f4-0.14.0 regressed for check+debug+opt on incr-patched: negate. diesel-1.4.8 regressed for check on incr-patched: println
* Given that all the regressions are to incremental, I'm assuming this is because of #97058
* skimming over the [perf details for stm32f4 check](https://perf.rust-lang.org/detailed-query.html?commit=7fe2c4b00dfbc33643e1af4b293eb057306a8339&base_commit=91cacb3faf987805675e39aca41859ec1fcabef3&benchmark=stm32f4-0.14.0-check&scenario=incr-patched:%20negate), it *seems* like the bulk of the time delta is coming from `expand_crate`. A total time delta of 0.66, and the biggest contributors to that delta are `expand_crate` (0.033), `incr_comp_load_dep_graph` (0.015), `misc_checking_1` (0.007), `hir_owner_nodes` (0.005), `generate_crate_metadata` (0.005), `incr_comp_encode_dep_graph` (0.004), and `wf_checking` (0.004). The remainder are <= 0.003, most of them <= 0.000.
* given the relatively small size and scope of the regression, and the fact that it was in a rollup, I do not think this is worth investigating further. marked as triaged.

Rollup of 6 pull requests [#97968](https://github.com/rust-lang/rust/pull/97968) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ec55c61305eaf385fc1b93ac9a78284b4d887fe5&end=b9f3bdf5ce37c50c71dd7cee969a14e15f14130a&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.3% | 0.3% | 3     |
| Regressions (secondary)  | N/A  | N/A  | 0     |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.3% | 0.3% | 3     |

* diesel-1.4.8 regressed on check full, opt full, and check incr-full, by about 0.3% each time.
* rylev says that diesel has started to become more noisy in its behavior, perhaps since we turned on PGO.
* I do not think this is worth investigating further. marked as triaged.

Handle `def_ident_span` like `def_span`. [#95880](https://github.com/rust-lang/rust/pull/95880) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c08b235a5ce10167632bb0fddcd0c5d67f2d42e3&end=99930ac7f8cbb5d9b319b2e2e92794fd6f24f556&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.6% | 1.6% | 92    |
| Regressions (secondary)  | 0.8% | 1.9% | 28    |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.6% | 1.6% | 92    |

* [Already triaged by the PR author](https://github.com/rust-lang/rust/pull/95880#issuecomment-1152671967).
* "we encode more spans into metadata and invoke more queries, so the slight regression is to be expected."

Rollup of 5 pull requests [#98025](https://github.com/rust-lang/rust/pull/98025) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ae2aa18d7467e212c4e961378b1061628abdb358&end=53305f15625756dc3ec62ddc0ec070dee412a547&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | N/A  | N/A  | 0     |
| Regressions (secondary)  | 5.5% | 7.9% | 6     |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | N/A  | N/A  | 0     |

* All six regressions are variations of issue-88862: {opt,debug} x { incr-full, full, incr-unchanged }. The two incr-unchanged cases regressed by 0.94% and 1.72% . The full cases regressed by 7.13% and 7.57% . The incr-full cases regressed by 7.86% and 7.80%.
* None of these PRs strike me as something that would cause a problem for the code exercised by #88862. (I briefly thought it might be #98012, but issue-88862 doesn't exercise HKT's...)
* but also, given that issue-88862 is a canary that is trying to catch a catastrophic regression, I think we can accept a 7-8% regression here.

#### Improvements

Re-use the type op instead of calling the implied_outlives_bounds query directly [#97081](https://github.com/rust-lang/rust/pull/97081) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5435ed6916a59e8d5acba2149316a841c3905cbd&end=b17e9d76f2ad15022e0e69bc33745c4ef9025a8f&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.3% | -0.6% | 22    |
| Improvements (secondary) | -0.4% | -0.7% | 12    |
| All  (primary)           | -0.3% | -0.6% | 22    |


Revert part of #94372 to improve performance [#97905](https://github.com/rust-lang/rust/pull/97905) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=75307c22f33cb47966466ba1daca08573a3c583e&end=c84594661c1b51feb539b479b58bb551fcf8e19a&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.4% | -0.9% | 82    |
| Improvements (secondary) | -0.5% | -1.0% | 39    |
| All  (primary)           | -0.4% | -0.9% | 82    |


Tidy up miscellaneous bounds suggestions [#97778](https://github.com/rust-lang/rust/pull/97778) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e652caa679a304af11fc04f1f12452f255a82593&end=37a42258ffe02cfb7107380759e492c64500ab55&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.3% | -0.4% | 2     |
| Improvements (secondary) | -0.7% | -0.8% | 6     |
| All  (primary)           | -0.3% | -0.4% | 2     |


#### Mixed

Folding revamp [#97447](https://github.com/rust-lang/rust/pull/97447) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=47aee31b2a89cb7de97d779869a30b046632b6af&end=64a7aa7016de32f4d991c30bfa40d3911e18a213&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 0.6%  | 6     |
| Regressions (secondary)  | 0.4%  | 0.7%  | 5     |
| Improvements (primary)   | -0.4% | -0.7% | 5     |
| Improvements (secondary) | -0.8% | -2.1% | 23    |
| All  (primary)           | 0.1%  | -0.7% | 11    |

* [already triaged by its author](https://github.com/rust-lang/rust/pull/97447#issuecomment-1150497492)
* "The perf effects are fairly small and there are more improvements than regressions."

Make `Encodable` and `Encoder` infallible. [#94732](https://github.com/rust-lang/rust/pull/94732) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e45d9973b2665897a768312e971b82cc62633103&end=1a97162cb245b5e2c7458c28859e3df779908c02&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.4%  | 0.8%  | 16    |
| Regressions (secondary)  | 0.5%  | 0.9%  | 15    |
| Improvements (primary)   | -0.3% | -0.5% | 25    |
| Improvements (secondary) | -0.4% | -0.5% | 20    |
| All  (primary)           | -0.1% | 0.8%  | 41    |

* PR author [already investigated](https://github.com/rust-lang/rust/pull/94732#issuecomment-1154607616).
* "Good news: #97905 fixed the regressions here. That PR plus this PR combined gave a clear performance win."
* marked as triaged.

cleanup bound variable handling [#97648](https://github.com/rust-lang/rust/pull/97648) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b9f3bdf5ce37c50c71dd7cee969a14e15f14130a&end=75307c22f33cb47966466ba1daca08573a3c583e&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.3%  | 0.3%  | 4     |
| Improvements (primary)   | -0.7% | -1.7% | 22    |
| Improvements (secondary) | -0.5% | -0.6% | 16    |
| All  (primary)           | -0.7% | -1.7% | 22    |


Rollup of 10 pull requests [#98066](https://github.com/rust-lang/rust/pull/98066) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=083721a1a7365d3afe1521cd2661b2201aac0450&end=ca122c7ebb3ab50149c9d3d24ddb59c252b32272&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 0.6%  | 4     |
| Regressions (secondary)  | 0.4%  | 0.5%  | 11    |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -0.3% | -0.3% | 4     |
| All  (primary)           | 0.5%  | 0.6%  | 4     |

* diesel-1.4.8 regressed by 0.5% for variations on check/debug/opt and incr-full/full. That's the only primary regression, and its within the noise level that we're currently associating with diesel, I think.
* The other regressions are wf-projection-stress-65510, projection-caching, regression-31157, and wg-grammar.
* wf-projection-stress-65510 and regression-31157 are canaries where we are trying to catch a *massive* regression, not a minor one like the ones presented here.
* given that this is a rollup and the remaining regressions are well under 0.5%, I think that's the limit to the amount of investigation I want to do here.

Remove RegionckMode in favor of calling new skip_region_resolution [#98041](https://github.com/rust-lang/rust/pull/98041) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a2ecbf87cf355a121a62f0629ea5f880c9bf41fc&end=4e02a9281dd8c74cf5c04df044659b5e03b17571&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.2%  | 0.2%  | 1     |
| Regressions (secondary)  | 1.0%  | 1.2%  | 3     |
| Improvements (primary)   | -0.9% | -3.7% | 35    |
| Improvements (secondary) | -0.3% | -0.3% | 1     |
| All  (primary)           | -0.8% | -3.7% | 36    |


* Skimming over the comparison (and even just from the table), it seems clear that the improvements far far far outweighed the gains here.
* Marking as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "sess: stabilize `--terminal-width`" [rust#95635](https://github.com/rust-lang/rust/pull/95635)
  - nominated by @**oli** for a mention for T-compiler 
- "Update Mac Catalyst support for Clang 13" [rust#96392](https://github.com/rust-lang/rust/pull/96392) 
  - nominated by @**Esteban Küber** in [comment](https://github.com/rust-lang/rust/pull/96392#issuecomment-1138887246) to find someone more conversant with that platform
  - @_**Thom Chiovoloni** pinged a list of names that could help ([comment](https://github.com/rust-lang/rust/pull/96392#issuecomment-1138893845))
- "NLL: unsound verification of higher ranked outlives bounds" [rust#98095](https://github.com/rust-lang/rust/issues/98095) 
  - nominated by @**Jack Huey**, see `P-critical`

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No new RFC for T-compiler

## Next week's WG checkins

- @_*WG-self-profile* This Week by @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/a5c6sNqrSUq_kifJGEWURQ?view=#WG-checkins))
