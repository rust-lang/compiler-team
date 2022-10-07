---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-09-15

## Announcements

- [Types Team: Finalize TAITs recommendations](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA5MTZUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-16T09:00:00-04:00>
- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMjA5MTVUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-15T12:00:00-04:00>
- Next week Sept. 22nd release of Rust stable 1.64!
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
  - added PR #90584 to list of oldest PR waiting for review

### Other WG meetings
- [wg-debugging triage meeting](https://www.google.com/calendar/event?eid=NjAwbDEwNzNmMzVsNDZucnFsdDdwbGJrdDRfMjAyMjA5MTlUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-19T10:00:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA5MTlUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-19T16:00:00-04:00>
- [Performance Triage](https://www.google.com/calendar/event?eid=NG1qdG9tYWs1ZmJmYmwydnFqYWcwNjY4MmNfMjAyMjA5MjBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-20T11:00:00-04:00>
- [[Types team] Hack session: Advanced subtyping](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA5MjFUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-21T09:00:00-04:00>
- [MIR Formality Walkthroughs](https://www.google.com/calendar/event?eid=NWtvMGpxaTZ1dTc2YzEwZWcxb2d0dHE3N2tfMjAyMjA5MjFUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-21T12:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557)
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 4 months ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: about 54 days ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: about 19 days ago)
  - "Allow informational -Z flags on stable compiler" [compiler-team#542](https://github.com/rust-lang/compiler-team/issues/542) (last review activity: about 19 days ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: about 19 days ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 6 days ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 6 days ago)
  - "New Tier-3 target proposal: powerpc64-ibm-aix" [compiler-team#553](https://github.com/rust-lang/compiler-team/issues/553) (last review activity: about 6 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 6 days ago)
  - "MCP: Raise UEFI Targets to Tier-2" [compiler-team#555](https://github.com/rust-lang/compiler-team/issues/555) (last review activity: about 5 days ago)
  - "Raise minimum supported macOS and iOS versions" [compiler-team#556](https://github.com/rust-lang/compiler-team/issues/556) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking issue for `..X`, and `..=X` (`#![feature(half_open_range_patterns)]`)" [rust#67264](https://github.com/rust-lang/rust/issues/67264) 
  - "Tracking Issue for `#[instruction_set]` attribute (RFC 2867)" [rust#74727](https://github.com/rust-lang/rust/issues/74727) 
  - "Consider `#[must_use]` annotation on `async fn` as also affecting the `Future::Output`" [rust#100633](https://github.com/rust-lang/rust/pull/100633)

### WG checkins

- Generic Associated Types initiative by @**Jack Huey** ([previous checkin](https://hackmd.io/kEQ286idQmuU0jRpfPjRVw?view=#WG-checkins)):
  > After much discussion, the GATs stabilization PR has been merged and is on track to stabilize in the next release. The document PR is pending. 

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/wIKuLLJlRN6_nYThJ3A37w#WG-checkins)):
  > Progress remains steady in the migration to the translation machinery. Lots of first-time contributions. Big thanks to @davidtwco for leading this effort. Tons of smaller improvements around structured suggestions.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix code generation of `Rvalue::Repeat` with 128 bit values" [rust#101612](https://github.com/rust-lang/rust/pull/101612) 
  - nominated by @**Michael Goulet (compiler-errors)** 
  - closes a very old unsoundness issue [since when `i128` were introduced](https://github.com/rust-lang/rust/issues/101585#issuecomment-1241890666)
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- 3 PRs hidden as S-blocked on other teams 
- "Empty iterator error" [rust#100751](https://github.com/rust-lang/rust/pull/100751)
  - nominated for T-compiler discussion by @**fee1-dead** 

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "[DO NOT MERGE] Add ballast to some important AST types." [rust#100044](https://github.com/rust-lang/rust/pull/100044) (last review activity: about 43 days ago)
  - This is a perf. experiment from @**nnethercote** 
- "More distinctive pretty-printing of function item types" [rust#99927](https://github.com/rust-lang/rust/pull/99927) (last review activity: about 41 days ago)
  - assigned reviewer @**Esteban Küber** 
- "`super_relate_consts`: stop being generic" [rust#100016](https://github.com/rust-lang/rust/pull/100016) (last review activity: about 37 days ago)
  - unsure about the status cc @**lcnr** @**Jack Huey**
- "fix universe map in ifcx.instantiate_canonical_*" [rust#99814](https://github.com/rust-lang/rust/pull/99814) (last review activity: about 37 days ago)
  - @**nikomatsakis** was mentioned as additional reviewer
- "Added support for PlayStation Vita" [rust#90584](https://github.com/rust-lang/rust/pull/90584)
  - last comment from Wesley: waiting for progress on policy in #88991 (now merged, see [comment](https://github.com/rust-lang/rust/pull/88991#issuecomment-1184788918))
  - what is the current status? Does it need an official MCP ([author replied](https://github.com/rust-lang/rust/pull/90584#issuecomment-962180142) to tier 3 MCP questions)

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 84 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Regression in consteval: error[E0080]: could not evaluate static initializer (unable to turn pointer into raw bytes)" [rust#99923](https://github.com/rust-lang/rust/issues/99923)
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-09-08/near/297796695)
  - Felix prepared [blog post](https://github.com/rust-lang/blog.rust-lang.org/pull/1028)
  - #101320 beta-backport approved so can #99923 be closed? (as mentioned during the meeting)
- "Potential miscompilation on i686 of chacha20" [rust#101346](https://github.com/rust-lang/rust/issues/101346)
  - discussed last week, Felix left [some comments](https://github.com/rust-lang/rust/issues/101346#issuecomment-1240830834), unclear if replied in full
  - can close issue?
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463)
  - linking PR [#97800](https://github.com/rust-lang/rust/pull/97800)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Anon lifetime in `impl Trait` no longer suggests adding a lifetime parameter" [rust#100615](https://github.com/rust-lang/rust/issues/100615)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-09-08/near/297799676), looks under control
- "Borrow checking for static methods became more strict" [rust#100725](https://github.com/rust-lang/rust/issues/100725)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-09-08/near/297799676), looks under control

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "codegen regression for bool" [rust#101048](https://github.com/rust-lang/rust/issues/101048)
  - issue is reported upstream LLVM in [llvm-project#57448](https://github.com/llvm/llvm-project/issues/57448)

## Performance logs

> [triage logs for 2022-09-13](https://github.com/rust-lang/rustc-perf/blob/003a043b1577ea4df1acd855934305885ba3945c/triage/2022-09-13.md)

From the viewpoint of metrics gathering, this was an absolutely terrible week, because the vast majority of this week's report is dominated by noise. Several benchmarks (html5ever, cranelift-codegen, and keccak) have all been exhibiting bimodal behavior where their compile-times would regress and improve randomly from run to run. Looking past that, we had one small win from adding an inline directive.

Triage done by **@pnkfelix**.
Revision range: [e7cdd4c0..17cbdfd0](https://perf.rust-lang.org/?start=e7cdd4c0909b62f2ee0368fd10e6e244f2af44b4&end=17cbdfd07178349d0a3cecb8e7dde8f915666ced&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.2%, 6.2%]    | 26    |
| Regressions (secondary)  | 1.9%  | [0.1%, 5.6%]    | 34    |
| Improvements (primary)   | -1.8% | [-29.4%, -0.2%] | 42    |
| Improvements (secondary) | -1.3% | [-5.3%, -0.2%]  | 50    |
| All  (primary)           | -0.7% | [-29.4%, 6.2%]  | 68    |


11 Regressions, 11 Improvements, 13 Mixed; 11 of them in rollups
30 Untriaged Pull Requests
71 artifact comparisons made in total

#### Regressions

Simplify `hir::PathSegment` [#101228](https://github.com/rust-lang/rust/pull/101228) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6e4a9ab650b135ae0ff761e4a37d96c8bcaf7b3d&end=2dc703fd6e3aaaf343828cc7dd1aec192d24c628&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.3%, 1.3%] | 16    |
| Regressions (secondary)  | 1.3% | [0.9%, 1.8%] | 14    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.3%, 1.3%] | 16    |

* [already triaged](https://github.com/rust-lang/rust/pull/101228#issuecomment-1238065150) as "these regressions aren't real; they are an artifact of some current bimodality"

Rollup of 7 pull requests [#101485](https://github.com/rust-lang/rust/pull/101485) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=380addd7d2971447d7f6828c508a93fa8018a9b6&end=78a891d364a7358ed9eb9c93099ba2f3e6817ca6&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.9% | [0.3%, 1.6%] | 15    |
| Regressions (secondary)  | 1.2% | [0.8%, 1.6%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.9% | [0.3%, 1.6%] | 15    |

* [already triaged](https://github.com/rust-lang/rust/pull/101485#issuecomment-1238769318)  as "these regressions aren't real; they are an artifact of some current bimodality"

Track PGO profiles in depinfo [#100801](https://github.com/rust-lang/rust/pull/100801) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c41305631f96bae3e456d7942f00e0d437c350e&end=ff479b1f3c77e8312843e7de212253632f4c1a8a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 2.0% | [1.8%, 2.4%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

* [already triaged](https://github.com/rust-lang/rust/pull/100801#issuecomment-1239043740) as "these regressions aren't real; they are an artifact of some current bimodality"

Make `HandleCycleError` an enum instead of a macro-generated closure [#101303](https://github.com/rust-lang/rust/pull/101303) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=512bd84f51ba6963c84506f408840e5341abe499&end=4af35b8e3017cb080630942d1c2b7045c74e450a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.2% | [1.1%, 1.3%] | 2     |
| Regressions (secondary)  | 3.4% | [3.1%, 3.9%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.2% | [1.1%, 1.3%] | 2     |

* [already triaged](https://github.com/rust-lang/rust/pull/101303#issuecomment-1240524838) as "these regressions aren't real; they are an artifact of some current bimodality"

Shrink `hir::Ty` and `hir::Pat` [#101467](https://github.com/rust-lang/rust/pull/101467) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ccb5595df2ed412eda6444edc7eaf06f709fa79d&end=24d69920201563f0ee7b530f1cda0f171b205cc2&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.8%, 1.0%] | 6     |
| Regressions (secondary)  | 7.5% | [7.5%, 7.5%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.8%, 1.0%] | 6     |

* [already triaged](https://github.com/rust-lang/rust/pull/101467#issuecomment-1241210848) as noise (all regressions are noise in html5ever).

Normalize before erasing late-bound regions in `equal_up_to_regions` [#101437](https://github.com/rust-lang/rust/pull/101437) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=87788097b776f8e3662f76627944230684b671bd&end=1120c5e01df508de64fe6642f22fadeb574afd6d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.2% | [1.1%, 1.3%] | 2     |
| Regressions (secondary)  | 3.4% | [3.0%, 3.9%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.2% | [1.1%, 1.3%] | 2     |

* [already triaged](https://github.com/rust-lang/rust/pull/101437#issuecomment-1244842297) as noise; cranelift-codegen and keccak have been noisy lately.

Rollup of 6 pull requests [#101639](https://github.com/rust-lang/rust/pull/101639) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cedd26b1ea066fe243b82b0f78e37066c6f4d789&end=db9d86b58dff2a19d84d5e557641dfbb4cbb3a8d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [1.2%, 1.4%] | 2     |
| Regressions (secondary)  | 3.1% | [0.8%, 4.0%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [1.2%, 1.4%] | 2     |

* [already triaged](https://github.com/rust-lang/rust/pull/101639#issuecomment-1242799249) as noise from bimodality.

Only compute captures once when building MIR. [#100968](https://github.com/rust-lang/rust/pull/100968) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5197c96c49fc3b7de3ce9a31f7cc62d2cbd1f70c&end=2e44c17c12cec45b6a682b1e53a04ac5b5fcc9d2&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.2% | [1.1%, 1.3%] | 2     |
| Regressions (secondary)  | 3.4% | [3.1%, 3.9%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.2% | [1.1%, 1.3%] | 2     |

* [already triaged](https://github.com/rust-lang/rust/pull/100968#issuecomment-1243200319) as noise.

Fix LLVM IR type mismatch reported in #99551 [#101647](https://github.com/rust-lang/rust/pull/101647) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=14636887008d9ee67a12b4f05f1e404ed1d64579&end=4a6ac3c225d6322caaf0ef86623cddc74e5260c6&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [1.3%, 1.3%] | 1     |
| Regressions (secondary)  | 3.4% | [3.1%, 3.9%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [1.3%, 1.3%] | 1     |

* [already triaged](https://github.com/rust-lang/rust/pull/101647#issuecomment-1243202926) as noise from cranelift-codegen and keccak.

Simplify codeblock and their associated tooltip [#101613](https://github.com/rust-lang/rust/pull/101613) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2287107588d92889d282e6cd3c1ca5df34cd34a5&end=781ef3e99582fee003264087b0eea106a8c7518f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [1.3%, 1.3%] | 1     |
| Regressions (secondary)  | 3.4% | [3.1%, 3.9%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [1.3%, 1.3%] | 1     |

* [already triaged](https://github.com/rust-lang/rust/pull/101613#issuecomment-1242919852) as noise.

Compute information about function parameters on THIR [#101086](https://github.com/rust-lang/rust/pull/101086) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1ce51982b8550c782ded466c1abff0d2b2e21c4e&end=c84083b08e2db69fcf270c4045837fa02663a3bf&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.5%] | 10    |
| Regressions (secondary)  | 0.6% | [0.3%, 1.6%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 0.5%] | 10    |

* between 0.38% and 0.47% regression for stm32f4 in various incremental scenarios. Approximately 0.25% on serde,clap,image for incremental.
* it seems plausible that this is just overhead that we have to pay, in terms of adding more state to the THIR, in exchange for simpler MIR construction code.
* (its also possible that this is just noise, though the listed benchmarks are not the same as the other ones that have been exhibiting bimodality this last week.)
* [marking as triaged.](https://github.com/rust-lang/rust/pull/101086#issuecomment-1246191513)

#### Improvements

Inline `<T as From<T>>::from` [#100733](https://github.com/rust-lang/rust/pull/100733) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3c7278846102bb829c9a789e91bc43f0ed612943&end=380addd7d2971447d7f6828c508a93fa8018a9b6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-2.2%, -0.2%] | 25    |
| Improvements (secondary) | -1.4% | [-2.2%, -0.5%] | 22    |
| All  (primary)           | -0.8% | [-2.2%, -0.2%] | 25    |


Rollup of 8 pull requests [#101508](https://github.com/rust-lang/rust/pull/101508) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=699bfa882b34a73b333e684e96984c1c565d2eff&end=8c41305631f96bae3e456d7942f00e0d437c350e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.2% | [-1.3%, -1.1%] | 2     |
| Improvements (secondary) | -3.3% | [-3.8%, -2.9%] | 6     |
| All  (primary)           | -1.2% | [-1.3%, -1.1%] | 2     |

* (bimodality in other direction, cranelift-codegen and keccak)

Lower the assume intrinsic to a MIR statement [#98332](https://github.com/rust-lang/rust/pull/98332) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0568b0a3de4eb37bf187eb61a9f017ae0018ad8f&end=e7c7aa7288559f8e5ea7ce3543ff946b09783628&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-0.9%, -0.7%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.8% | [-0.9%, -0.7%] | 6     |

* presume bimodality in other direction for html5ever

Update miri submodule [#101522](https://github.com/rust-lang/rust/pull/101522) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a4d034126da8ff42590325622b1861c2597e870b&end=f91ca2878af792bc6969b97d78fe91b27739ac2d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-0.9%, -0.7%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.8% | [-0.9%, -0.7%] | 6     |

* presume bimodality in other direction for html5ever

Rollup of 14 pull requests [#101544](https://github.com/rust-lang/rust/pull/101544) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9682b5d3a34b3167d7f2f2d0cf6ddc485cd51b4b&end=c2804e6ec2c29a5c7368600ea173b890e2655c3d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.2% | [-1.3%, -1.1%] | 2     |
| Improvements (secondary) | -3.3% | [-3.8%, -3.0%] | 6     |
| All  (primary)           | -1.2% | [-1.3%, -1.1%] | 2     |

* (bimodality in other direction, cranelift-codegen and keccak)

const_generics: correctly deal with bound variables [#98900](https://github.com/rust-lang/rust/pull/98900) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b42244c2ab462a5ac4c901e8988f9fcb78776d9c&end=ccb5595df2ed412eda6444edc7eaf06f709fa79d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.3%, -0.8%] | 8     |
| Improvements (secondary) | -3.3% | [-3.8%, -2.9%] | 6     |
| All  (primary)           | -0.9% | [-1.3%, -0.8%] | 8     |

* (bimodality in other direction, html5ever, cranelift-codegen, and keccak)

Rollup of 7 pull requests [#101577](https://github.com/rust-lang/rust/pull/101577) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=24d69920201563f0ee7b530f1cda0f171b205cc2&end=87788097b776f8e3662f76627944230684b671bd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-1.1%, -1.1%] | 1     |
| Improvements (secondary) | -7.5% | [-7.5%, -7.5%] | 1     |
| All  (primary)           | -1.1% | [-1.1%, -1.1%] | 1     |


Rollup of 6 pull requests [#101603](https://github.com/rust-lang/rust/pull/101603) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ab32548539ec38a939c1b58599249f3b54130026&end=4a09adf99fff9b009ff517b9cf5bfce363130e16&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.3% | [-1.4%, -1.2%] | 2     |
| Improvements (secondary) | -3.3% | [-3.8%, -2.8%] | 7     |
| All  (primary)           | -1.3% | [-1.4%, -1.2%] | 2     |

* (bimodality in other direction, cranelift-codegen, keccak, and coercions)


Rollup of 6 pull requests [#101652](https://github.com/rust-lang/rust/pull/101652) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2e44c17c12cec45b6a682b1e53a04ac5b5fcc9d2&end=14636887008d9ee67a12b4f05f1e404ed1d64579&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-1.3%, -0.2%] | 7     |
| Improvements (secondary) | -2.6% | [-3.8%, -0.4%] | 8     |
| All  (primary)           | -0.4% | [-1.3%, -0.2%] | 7     |

* largely cranelift-codegen, keccak

Remove ReEmpty [#98559](https://github.com/rust-lang/rust/pull/98559) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4a6ac3c225d6322caaf0ef86623cddc74e5260c6&end=2287107588d92889d282e6cd3c1ca5df34cd34a5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.3%, -0.3%] | 5     |
| Improvements (secondary) | -3.3% | [-3.8%, -3.0%] | 6     |
| All  (primary)           | -0.7% | [-1.3%, -0.3%] | 5     |

* largely cranelift-codegen, keccak

Make `compare_predicate_entailment` no longer a query [#101615](https://github.com/rust-lang/rust/pull/101615) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5338f5f1d4ad9c99706e5cb691f8d5bbac341262&end=1ce51982b8550c782ded466c1abff0d2b2e21c4e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.4%] | 6     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 5     |
| All  (primary)           | -0.4% | [-0.5%, -0.4%] | 6     |


#### Mixed

Make `const_eval_select` a real intrinsic [#100759](https://github.com/rust-lang/rust/pull/100759) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e7cdd4c0909b62f2ee0368fd10e6e244f2af44b4&end=9358d09a55307e47bde0276e2390c603c35d5fb6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.3%, 1.4%]   | 12    |
| Regressions (secondary)  | 2.4%  | [0.2%, 4.1%]   | 9     |
| Improvements (primary)   | -1.2% | [-3.0%, -0.6%] | 7     |
| Improvements (secondary) | -1.4% | [-1.6%, -1.0%] | 10    |
| All  (primary)           | 0.1%  | [-3.0%, 1.4%]  | 19    |

* If you take html5ever, cranelift-codegen, keccak out of the mix here, ...
* ... you are left with the following four primary regressions: ripgrep by 1.37%, clap by 1.34%, cargo by 0.80%, serde_derive by 0.33%.
* The regression to ripgrep does look like it might be legitimate, at least from skimming its [graph](https://perf.rust-lang.org/index.html?start=2022-08-06&end=c84083b08e2db69fcf270c4045837fa02663a3bf&benchmark=ripgrep-13.0.0&profile=opt&scenario=full&stat=instructions:u) and zooming in.

proc_macro/bridge: use the cross-thread executor for nested proc-macros [#101414](https://github.com/rust-lang/rust/pull/101414) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=406e03fd02faf5cc8409a8b6b04c26990d6227e6&end=5b4bd154de6e41d4739914f446349f8201ec3ef9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.4%, 1.4%]   | 10    |
| Regressions (secondary)  | 1.1%  | [0.6%, 1.7%]   | 9     |
| Improvements (primary)   | -1.2% | [-1.3%, -1.2%] | 2     |
| Improvements (secondary) | -3.4% | [-3.9%, -3.0%] | 6     |
| All  (primary)           | 0.5%  | [-1.3%, 1.4%]  | 12    |


* As noted elsewhere https://github.com/rust-lang/rust/pull/101461#issuecomment-1238192638 ...
* ... the regressions flagged here are almost certainly noise from recently arising bimodality in certain benchmarks.
* marked as triaged


Rollup of 6 pull requests [#101439](https://github.com/rust-lang/rust/pull/101439) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5b4bd154de6e41d4739914f446349f8201ec3ef9&end=6e4a9ab650b135ae0ff761e4a37d96c8bcaf7b3d&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.9%, 1.0%]    | 2     |
| Regressions (secondary)  | 2.1%  | [1.8%, 2.4%]    | 6     |
| Improvements (primary)   | -2.9% | [-29.7%, -0.3%] | 18    |
| Improvements (secondary) | -1.2% | [-1.8%, -0.7%]  | 9     |
| All  (primary)           | -2.5% | [-29.7%, 1.0%]  | 20    |

* the regressions flagged here are almost certainly noise from recently arising bimodality in certain benchmarks.
* [already marked as triaged](https://github.com/rust-lang/rust/pull/101439#issuecomment-1238725357)

Rollup of 7 pull requests [#101464](https://github.com/rust-lang/rust/pull/101464) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=676afc514944aa618977bacf8fe28cefc443a13a&end=56b27110e7f72ea01312d99f1b1e0577431cbbd0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.6%  | [1.6%, 1.6%]   | 1     |
| Improvements (primary)   | -0.8% | [-1.3%, -0.3%] | 13    |
| Improvements (secondary) | -1.3% | [-1.7%, -0.8%] | 8     |
| All  (primary)           | -0.8% | [-1.3%, -0.3%] | 13    |

* [already marked as triaged](https://github.com/rust-lang/rust/pull/101464#issuecomment-1238064407) due to ongoing bimodality noise issue.

Rollup of 5 pull requests [#101479](https://github.com/rust-lang/rust/pull/101479) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a594044533b5e309eab7ac6b71f4ba8a909af653&end=3c7278846102bb829c9a789e91bc43f0ed612943&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.4%, 1.3%]   | 10    |
| Regressions (secondary)  | 1.3%  | [0.8%, 1.8%]   | 8     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.4% | [-1.6%, -1.2%] | 6     |
| All  (primary)           | 0.9%  | [0.4%, 1.3%]   | 10    |

* [already marked as triaged](https://github.com/rust-lang/rust/pull/101479#issuecomment-1238517669) due to ongoing bimodality noise issue.

change stdlib circular dependencies handling [#100404](https://github.com/rust-lang/rust/pull/100404) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=78a891d364a7358ed9eb9c93099ba2f3e6817ca6&end=699bfa882b34a73b333e684e96984c1c565d2eff&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [1.1%, 1.3%]   | 2     |
| Regressions (secondary)  | 3.4%  | [3.0%, 3.9%]   | 6     |
| Improvements (primary)   | -0.8% | [-0.9%, -0.7%] | 6     |
| Improvements (secondary) | -1.0% | [-1.0%, -1.0%] | 1     |
| All  (primary)           | -0.3% | [-0.9%, 1.3%]  | 8     |

* [marked as triaged](https://github.com/rust-lang/rust/pull/100404#issuecomment-1246204266) due to ongoing bimodality noise issue.

Add test for #98294 [#101232](https://github.com/rust-lang/rust/pull/101232) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ff479b1f3c77e8312843e7de212253632f4c1a8a&end=0568b0a3de4eb37bf187eb61a9f017ae0018ad8f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.7%, 0.9%]   | 6     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.1% | [-1.1%, -1.1%] | 1     |
| All  (primary)           | 0.8%  | [0.7%, 0.9%]   | 6     |

* [already marked as triaged](https://github.com/rust-lang/rust/pull/101232#issuecomment-1239332094) due to ongoing bimodality noise issue.

Shrink `PredicateS` [#101432](https://github.com/rust-lang/rust/pull/101432) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e7c7aa7288559f8e5ea7ce3543ff946b09783628&end=a4d034126da8ff42590325622b1861c2597e870b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.7%, 0.9%]   | 6     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.4%] | 5     |
| Improvements (secondary) | -1.4% | [-1.4%, -1.4%] | 1     |
| All  (primary)           | 0.2%  | [-0.5%, 0.9%]  | 11    |
  
* [already marked as triaged](https://github.com/rust-lang/rust/pull/101432#issuecomment-1239987405) due to ongoing bimodality noise issue.

Use niche-filling optimization even when multiple variants have data. [#94075](https://github.com/rust-lang/rust/pull/94075) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c2804e6ec2c29a5c7368600ea173b890e2655c3d&end=512bd84f51ba6963c84506f408840e5341abe499&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.2%  | [0.8%, 9.4%]   | 5     |
| Regressions (secondary)  | 1.8%  | [0.2%, 5.2%]   | 27    |
| Improvements (primary)   | -0.6% | [-1.1%, -0.2%] | 23    |
| Improvements (secondary) | -1.5% | [-2.9%, -0.2%] | 16    |
| All  (primary)           | 0.1%  | [-1.1%, 9.4%]  | 28    |

The syn regression sounds bad. Left a [comment](https://github.com/rust-lang/rust/pull/94075#issuecomment-1246210283).


Rollup of 7 pull requests [#101592](https://github.com/rust-lang/rust/pull/101592) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1120c5e01df508de64fe6642f22fadeb574afd6d&end=c6861df8368a35ef3814e0c379754bb4c7013401&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 4.6%  | [4.6%, 4.6%]   | 1     |
| Improvements (primary)   | -1.2% | [-1.3%, -1.1%] | 2     |
| Improvements (secondary) | -3.3% | [-3.8%, -2.9%] | 6     |
| All  (primary)           | -1.2% | [-1.3%, -1.1%] | 2     |

* [Already triaged](https://github.com/rust-lang/rust/pull/101592#issuecomment-1243205092) saying "The coercions regression is only for a single profile/scenario combination, so I don't think it's meaningful."

Initial implementation of return-position `impl Trait` in traits [#101224](https://github.com/rust-lang/rust/pull/101224) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7200da0217f99e929e58d0b40483097db37270ac&end=ab32548539ec38a939c1b58599249f3b54130026&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.4%]   | 19    |
| Regressions (secondary)  | 2.0%  | [0.2%, 4.1%]   | 13    |
| Improvements (primary)   | -0.9% | [-1.1%, -0.8%] | 6     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | 0.2%  | [-1.1%, 1.4%]  | 25    |

* Many of regressions fall in the bimodal noise category.
* The serde regression did not, but it is addressed by the follow-up PR [#101615](https://github.com/rust-lang/rust/pull/101615)
* Marking as triaged.

Update LLVM used in x86 CI dist builds to `15.0.0` [#101527](https://github.com/rust-lang/rust/pull/101527) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4a09adf99fff9b009ff517b9cf5bfce363130e16&end=98f3001eecbe4cbd091c10ffab45b4c164bb507b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.3%  | [1.3%, 1.3%]   | 1     |
| Improvements (primary)   | -0.6% | [-0.8%, -0.5%] | 12    |
| Improvements (secondary) | -0.5% | [-0.6%, -0.3%] | 4     |
| All  (primary)           | -0.6% | [-0.8%, -0.5%] | 12    |

* [Already triaged](https://github.com/rust-lang/rust/pull/101527#issuecomment-1242422341)

The `<*const T>::guaranteed_*` methods now return an option for the unknown case [#101483](https://github.com/rust-lang/rust/pull/101483) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=db9d86b58dff2a19d84d5e557641dfbb4cbb3a8d&end=5197c96c49fc3b7de3ce9a31f7cc62d2cbd1f70c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.6%]   | 5     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-1.4%, -0.9%] | 5     |
| Improvements (secondary) | -2.9% | [-3.8%, -0.7%] | 8     |
| All  (primary)           | -0.4% | [-1.4%, 0.6%]  | 10    |

* The big improvements are just noise from some bimodal behavior we've been observing this week.
* Its possible that there was some regression to cargo here, but I don't think the data shows it to be large enough to be worth investigating. (I admit, my attitude there might be colored by my frustration with the huge noise impact of the aforementioned bimodality on all of the perf results from the last week.)
* [marked as triaged](https://github.com/rust-lang/rust/pull/101483#issuecomment-1246216066)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Empty iterator error" [rust#100751](https://github.com/rust-lang/rust/pull/100751)
  - @**Vadim Petrochenkov** nominated ([comment](https://github.com/rust-lang/rust/pull/100751#issuecomment-1245613835))
- "Random `lifetime may not life long enough` from other part of the code" [rust#96645](https://github.com/rust-lang/rust/issues/96645)
  - @**Esteban Küber** nominated for awareness of a latent bug or regression in incr-comp with nll borrowck ([comment](https://github.com/rust-lang/rust/issues/96645#issuecomment-1247837757))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
- Impl Trait initiative by @**oli**
