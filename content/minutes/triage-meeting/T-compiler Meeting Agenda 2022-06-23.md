---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-06-23

## Announcements

- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA2MjRUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-06-24T09:00:00-04:00>
- [T-compiler steering: Compiler Feature Backlog Bonanza](https://www.google.com/calendar/event?eid=MmE2azQyb2ViODQ4NWwxMWViMzJka2g0cjIgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-06-24T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [MIR Formality Walkthroughs](https://www.google.com/calendar/event?eid=NWtvMGpxaTZ1dTc2YzEwZWcxb2d0dHE3N2tfMjAyMjA2MjlUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-06-29T12:00:00-04:00>
- [Types team Hack session: Advanced subtyping](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA2MjlUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-06-29T09:00:00-04:00>
- [wg-traits GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA2MjdUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-06-27T16:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 5 months ago)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: 3 months ago)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: about 48 days ago)
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510#issuecomment-1119675764) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006) 
  - "session: stabilize split debuginfo on linux" [rust#98051](https://github.com/rust-lang/rust/pull/98051#issuecomment-1153776703) 
- Things in FCP (make sure you're good with it)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) 
  - "Track licensing metadata with REUSE" [compiler-team#519](https://github.com/rust-lang/compiler-team/issues/519) 
  - "Split TypeVisitable out from TypeFoldable" [compiler-team#520](https://github.com/rust-lang/compiler-team/issues/520) 
- Accepted MCPs
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) 
- Finalized FCPs (disposition merge)
  - "Remove migrate borrowck mode" [rust#95565](https://github.com/rust-lang/rust/pull/95565) 
  - "Modify MIR building to drop repeat expressions with length zero" [rust#95953](https://github.com/rust-lang/rust/pull/95953) 
  - "Lang: Stabilize usage of rustc_nonnull_optimization_guaranteed on -1" [rust#97122](https://github.com/rust-lang/rust/issues/97122) 
  - "make cenum_impl_drop_cast deny-by-default" [rust#97652](https://github.com/rust-lang/rust/pull/97652) 
  - "lub: don't bail out due to empty binders" [rust#97867](https://github.com/rust-lang/rust/pull/97867)

### WG checkins

- @_*WG-self-profile* @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/a5c6sNqrSUq_kifJGEWURQ?view=#WG-checkins))
> @eddyb's PR to support using hardware performance counters in `-Zself-profile` has landed! [#78781](https://github.com/rust-lang/rust/pull/78781)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Remove the unused-`#[doc(hidden)]` logic from the `unused_attributes` lint" [rust#98336](https://github.com/rust-lang/rust/pull/98336)
  - PR authored by @**fmease**
  - approved by @**Michael Goulet (compiler-errors)** 
  - PR author mentions that this patch should be backported to fix [#96890](https://github.com/rust-lang/rust/issues/96890) ([comment](https://github.com/rust-lang/rust/issues/96890))
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- :beta: "Remove the unused-`#[doc(hidden)]` logic from the `unused_attributes` lint" [rust#98336](https://github.com/rust-lang/rust/pull/98336) 
  - See above nomination, `T-rustdoc` approves the backport ([comment](https://github.com/rust-lang/rust/pull/98336#issuecomment-1162152636))
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.
  - (4 PRs omitted since either drafts or waiting on other teams / RFC process)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Add option to pass environment variables" [rust#94387](https://github.com/rust-lang/rust/pull/94387) (last review activity: about 33 days ago)
  - cc latest reviewers: @**Esteban Küber** and @**bjorn3**
- "Add Finalize statement to make deaggregation "reversible" by storing all information in MIR" [rust#96043](https://github.com/rust-lang/rust/pull/96043) (last review activity: about 25 days ago)
  - unsure about status: maybe a comment on latest perf run results?
  - cc: @**Wesley Wiser** assigned reviewer
- "Add `round_ties_even` to `f32` and `f64`" [rust#95317](https://github.com/rust-lang/rust/pull/95317) (last review activity: about 41 days ago)
  - r'ed by Felix [comment](https://github.com/rust-lang/rust/pull/95317#issuecomment-1099251055)
  - anything else from T-compiler?
- "Mir-Opt for copying enums with large discrepancies" [rust#85158](https://github.com/rust-lang/rust/pull/85158) (last review activity: 3 months ago)
  - [previously mentioned](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-05-26/near/284016028)
  - needs another reviewer?
- "Only compile #[used] as llvm.compiler.used for ELF targets" [rust#93718](https://github.com/rust-lang/rust/pull/93718) (last review activity: 2 months ago)
  - [previously mentioned](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-05-26/near/284016180)
  - cc: @**pnkfelix** (today not in meeting, leaving a mention for reviewing #93718)

 ## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [44 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 5 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 78 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463) 
  - Issue is being addressed by @__**pnkfelix** in #97800
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-06-16/near/286364673), pending a downgrade to `P-high`
- "NLL: unsound verification of higher ranked outlives bounds" [rust#98095](https://github.com/rust-lang/rust/issues/98095)
  - discussed last week whether to revert after the next beta cut (on 27.06 I believe) ([Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-06-16/near/286365638))
  - Fixed by Niko in [#98109](https://github.com/rust-lang/rust/pull/98109], [perf results](https://github.com/rust-lang/rust/pull/98109#issuecomment-1157104572)
  - pr #98109 is being reviewed, perf results triaging in progress by @**aliemjay** ([comment](https://github.com/rust-lang/rust/pull/98109#issuecomment-1161508797))

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2022-06-21 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-06-21.md)

A pretty busy week for performance, with quite a few PRs landing with
significant improvements to specific benchmarks. Overall the week was positive,
with many benchmarks improving at least a little. No significant changes in
memory usage this week.

Triage done by **@simulacrum**.
Revision range: [edab34ab2abbafc16a78daedf71dbacd2eb0b7bf..abace0a1f17986d89aedf610819deab2b4afee56](https://perf.rust-lang.org/?start=edab34ab2abbafc16a78daedf71dbacd2eb0b7bf&end=abace0a1f17986d89aedf610819deab2b4afee56&absolute=false&stat=instructions%3Au)

**Summary**:

|                           | mean  | max    | count |
|:-------------------------:|:-----:|:------:|:-----:|
| Regressions  (primary)    | 0.4%  | 0.5%   | 6     |
| Regressions  (secondary)  | 2.9%  | 14.7%  | 37    |
| Improvements  (primary)   | -1.9% | -19.4% | 89    |
| Improvements  (secondary) | -8.4% | -91.4% | 38    |
| All  (primary)            | -1.8% | -19.4% | 95    |

5 Regressions, 6 Improvements, 3 Mixed; 1 of them in rollups
54 artifact comparisons made in total

#### Regressions

BTreeMap: Support custom allocators (v1.5) [#98103](https://github.com/rust-lang/rust/pull/98103)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5bc82c0b944dc6c8ed12372b4f79d1a8e3fb0cbd&end=1b9daa69640970e7858b7c8e1c9f72c604985e11&stat=instructions:u)

|                           | mean | max  | count |
|:-------------------------:|:----:|:----:|:-----:|
| Regressions  (primary)    | 1.7% | 3.0% | 2     |
| Regressions  (secondary)  | 1.6% | 2.1% | 6     |
| Improvements  (primary)   | N/A  | N/A  | 0     |
| Improvements  (secondary) | N/A  | N/A  | 0     |
| All  (primary)            | 1.7% | 3.0% | 2     |

This regression is largely fixed by [#98178](https://github.com/rust-lang/rust/pull/98178).

Improve the tuple and unit trait docs [#97842](https://github.com/rust-lang/rust/pull/97842)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d40f24e956a698e47a209541031c4045acc5a684&end=6ec3993ef4a4eb72bc20477fe9a4d92acd53f2c6&stat=instructions:u)

|                           | mean | max  | count |
|:-------------------------:|:----:|:----:|:-----:|
| Regressions  (primary)    | 0.4% | 0.6% | 2     |
| Regressions  (secondary)  | 0.3% | 0.4% | 3     |
| Improvements  (primary)   | N/A  | N/A  | 0     |
| Improvements  (secondary) | N/A  | N/A  | 0     |
| All  (primary)            | 0.4% | 0.6% | 2     |

Slight regressions to small number of doc benchmarks, likely due to slightly
more work during generation (std's docs changed).

Fix `SourceScope` for `if let` bindings. [#97931](https://github.com/rust-lang/rust/pull/97931)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=17c6bde14eabdd61c35505ed6834ee9196c2fdc9&end=9a0b7749665d925d8f533756149deba74f2db88b&stat=instructions:u)

|                           | mean | max  | count |
|:-------------------------:|:----:|:----:|:-----:|
| Regressions  (primary)    | 0.4% | 0.5% | 4     |
| Regressions  (secondary)  | 0.3% | 0.3% | 1     |
| Improvements  (primary)   | N/A  | N/A  | 0     |
| Improvements  (secondary) | N/A  | N/A  | 0     |
| All  (primary)            | 0.4% | 0.5% | 4     |

Regression is pretty small and only one primary benchmark is affected (regex),
and only incremental scenarios there. Likely not enough to worry about.

Obligation forest tweaks [#97674](https://github.com/rust-lang/rust/pull/97674)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4104596251818f4f588051c7a8172ca9f5a195bf&end=1d6010816c37186e2bee316709f0c0197c427513&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 0.8%  | 0.9%  | 2     |
| Regressions  (secondary)  | 1.8%  | 2.4%  | 7     |
| Improvements  (primary)   | N/A   | N/A   | 0     |
| Improvements  (secondary) | -0.3% | -0.3% | 1     |
| All  (primary)            | 0.8%  | 0.9%  | 2     |

keccak is the primary affected benchmark, and is known to be very sensitive to
changes to the obligation forest code. See some analysis in this
[comment](https://github.com/rust-lang/rust/pull/97674#issuecomment-1160914976)
following up on the results from the merge perf run.

Rollup of 4 pull requests [#98307](https://github.com/rust-lang/rust/pull/98307)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5750a6aa2777382bf421b726f234da23f990a953&end=08871139915b95ec868aff807f224f78d00f4311&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 0.3%  | 0.3%  | 2     |
| Regressions  (secondary)  | 0.7%  | 0.8%  | 6     |
| Improvements  (primary)   | N/A   | N/A   | 0     |
| Improvements  (secondary) | -0.4% | -0.4% | 1     |
| All  (primary)            | 0.3%  | 0.3%  | 2     |

Cause of regressions is unclear, but they're minor enough that it's not worth
the hassle of investigating a rollup.


#### Improvements

ctfe: limit hashing of big const allocations when interning [#98097](https://github.com/rust-lang/rust/pull/98097)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=949a64ab20b9d5d4516416c4735b134e0496855a&end=43c47db0b04627dbd0e16a1e7cad14a4a5a60d3a&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | N/A   | N/A   | 0     |
| Improvements  (secondary) | -6.6% | -6.6% | 3     |
| All  (primary)            | N/A   | N/A   | 0     |


Batch proc_macro RPC for TokenStream iteration and combination operations [#98186](https://github.com/rust-lang/rust/pull/98186)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ff86b27e7be1ffff9e00d80beb15560d5f301459&end=0182fd99afaf4a3d602de6b88506edaf6043c125&stat=instructions:u)

|                           | mean   | max    | count |
|:-------------------------:|:------:|:------:|:-----:|
| Regressions  (primary)    | N/A    | N/A    | 0     |
| Regressions  (secondary)  | N/A    | N/A    | 0     |
| Improvements  (primary)   | -1.0%  | -4.0%  | 26    |
| Improvements  (secondary) | -12.1% | -37.5% | 15    |
| All  (primary)            | -1.0%  | -4.0%  | 26    |


Fix `MissingDoc` quadratic behaviour [#98153](https://github.com/rust-lang/rust/pull/98153)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0182fd99afaf4a3d602de6b88506edaf6043c125&end=cdcc53b7dc002ea4a7a28105010c5a1126ee31b7&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | -0.3% | -0.4% | 14    |
| Improvements  (secondary) | N/A   | N/A   | 0     |
| All  (primary)            | -0.3% | -0.4% | 14    |


Make some lints incremental. [#98238](https://github.com/rust-lang/rust/pull/98238)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=15fc228d0d0a68b5ba565758fab13ed7f863fcea&end=67404f7200c13deec255ffe1146e1d2c9d0d3028&stat=instructions:u)
  
|                           | mean  | max    | count |
|:-------------------------:|:-----:|:------:|:-----:|
| Regressions  (primary)    | N/A   | N/A    | 0     |
| Regressions  (secondary)  | N/A   | N/A    | 0     |
| Improvements  (primary)   | -0.4% | -1.7%  | 54    |
| Improvements  (secondary) | -7.4% | -90.8% | 17    |
| All  (primary)            | -0.4% | -1.7%  | 54    |


[RFC 2011] Expand expressions where possible [#98148](https://github.com/rust-lang/rust/pull/98148)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=08871139915b95ec868aff807f224f78d00f4311&end=42dcf70f99c21c6d59ad036e33e846769b369fff&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | -0.3% | -0.4% | 2     |
| Improvements  (secondary) | -0.7% | -0.8% | 6     |
| All  (primary)            | -0.3% | -0.4% | 2     |

Compile `unicode-normalization` faster [#97936](https://github.com/rust-lang/rust/pull/97936)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3bebee73397b692e84b9cc1b6af439fae78918c9&end=cacc75c82ebe15cf63d31034fcf7f1016cddf0e2&stat=instructions:u)

|                           | mean   | max    | count |
|:-------------------------:|:------:|:------:|:-----:|
| Regressions  (primary)    | N/A    | N/A    | 0     |
| Regressions  (secondary)  | 1.0%   | 1.0%   | 1     |
| Improvements  (primary)   | -14.2% | -19.4% | 6     |
| Improvements  (secondary) | N/A    | N/A    | 0     |
| All  (primary)            | -14.2% | -19.4% | 6     |

A solid improvement, though just to the one benchmark; coercions change in the
regressions section is likely just noise, not an actual meaningful delta.

#### Mixed

Use valtrees as the type-system representation for constant values [#96591](https://github.com/rust-lang/rust/pull/96591)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=872503d918b2c3266d828f85e42951df74f5e303&end=1f34da9ec8a85b6f86c5fa1c121ab6f88f2f4966&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 0.4%  | 0.6%  | 54    |
| Regressions  (secondary)  | 3.1%  | 14.3% | 29    |
| Improvements  (primary)   | -3.0% | -5.9% | 10    |
| Improvements  (secondary) | -1.1% | -1.6% | 7     |
| All  (primary)            | -0.2% | -5.9% | 64    |

Large change (over 2000 lines changed) that is a first step for further work on
constant evaluation in the compiler. Overall this is still an improvement, and
regressions are primarily on stress tests. See [this
comment](https://github.com/rust-lang/rust/pull/96591#issuecomment-1156381494)
for some further context.

Split up `Definitions` and `ResolverAstLowering`. [#98106](https://github.com/rust-lang/rust/pull/98106)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ecdd374e6123d79b89c3ecea618d827c931b81cd&end=3a8b0144c82197a70e919ad371d56f82c2282833&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | 0.4%  | 0.5%  | 9     |
| Improvements  (primary)   | -0.3% | -0.6% | 39    |
| Improvements  (secondary) | -0.3% | -0.6% | 5     |
| All  (primary)            | -0.3% | -0.6% | 39    |


btree: avoid forcing the allocator to be a reference [#98178](https://github.com/rust-lang/rust/pull/98178)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=529c4c71793fbf4305d65b1c4d826a5d0e748fb3&end=ff86b27e7be1ffff9e00d80beb15560d5f301459&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 0.4%  | 0.4%  | 1     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | -2.0% | -2.0% | 1     |
| Improvements  (secondary) | N/A   | N/A   | 0     |
| All  (primary)            | -0.8% | -2.0% | 2     |
|                           |       |       |       |

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Update Mac Catalyst support for Clang 13" [rust#96392](https://github.com/rust-lang/rust/pull/96392) 
  - nominated by @**Esteban Küber** in [comment](https://github.com/rust-lang/rust/pull/96392#issuecomment-1138887246) to find someone more conversant with that platform
  - @_**Thom Chiovoloni** pinged a list of names that could help ([comment](https://github.com/rust-lang/rust/pull/96392#issuecomment-1138893845))
- "NLL: unsound verification of higher ranked outlives bounds" [rust#98095](https://github.com/rust-lang/rust/issues/98095) 
  - nominated by @**Jack Huey**, see `P-critical`

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-traits* Generic associated types initiative by @**Jack Huey**
- @_*WG-diagnostics* Diagnostics by @**Esteban Küber** and @**oli**
