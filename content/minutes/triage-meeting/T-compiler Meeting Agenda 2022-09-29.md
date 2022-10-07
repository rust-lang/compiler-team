---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-09-29

## Announcements

- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMjA5MjlUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-29T12:00:00-04:00>
- [Types Team: Chalk integration plan](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA5MzBUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-30T09:00:00-04:00>
- [steering: 2022 Q3 P-high review](https://www.google.com/calendar/event?eid=Mm9tM2VzOWszaWw0Z3RudWlhNzF0ZHMwbzMgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-09-30T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
  - Maybe related PR #100685 (mentioned in section oldest PR S-waiting-for-review)

### Other WG meetings
- [wg-debugging status & design meeting](https://www.google.com/calendar/event?eid=N2RodjAwbTdrZDAzNWhyZjJsZWJqbzU4ZTAgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-10-03T10:00:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMjEwMDNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-03T11:00:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjEwMDNUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-03T16:00:00-04:00>
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjEwMDVUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-05T09:00:00-04:00>
- [MIR Formality Walkthroughs](https://www.google.com/calendar/event?eid=NWtvMGpxaTZ1dTc2YzEwZWcxb2d0dHE3N2tfMjAyMjEwMDVUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-05T12:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 4 months ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 2 months ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: about 33 days ago)
  - "Allow informational -Z flags on stable compiler" [compiler-team#542](https://github.com/rust-lang/compiler-team/issues/542) (last review activity: about 33 days ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: about 33 days ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 19 days ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 0 days ago)
  - "New Tier-3 target proposal: powerpc64-ibm-aix" [compiler-team#553](https://github.com/rust-lang/compiler-team/issues/553) (last review activity: about 19 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 19 days ago)
  - "MCP: Raise UEFI Targets to Tier-2" [compiler-team#555](https://github.com/rust-lang/compiler-team/issues/555) (last review activity: about 19 days ago)
  - "Raise minimum supported macOS and iOS versions" [compiler-team#556](https://github.com/rust-lang/compiler-team/issues/556) (last review activity: about 19 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Remove save-analysis." [rust#101841](https://github.com/rust-lang/rust/pull/101841) 
- Things in FCP (make sure you're good with it)
  - "`DROP` to `DROP_IF`" [compiler-team#558](https://github.com/rust-lang/compiler-team/issues/558) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Neither require nor imply lifetime bounds on opaque type for well formedness" [rust#95474](https://github.com/rust-lang/rust/pull/95474)

### WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Nikita Popov:
  > - we've dropped support for the legacy pass manager in rust.
  > - I have a pending patch for loop peeling (https://reviews.llvm.org/D134803) that I expect to fix quite a few optimization fails involving external iteration over iterator adapters (skip etc). Relevant issue #101814.
  > - cuviper: I'm also working on stack probes -- https://reviews.llvm.org/D134494 fixed the last blocker for inline-asm probes on x86, and #102328 turned on PowerPC and SystemZ.
- Types team by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Continued work on various initiatives. Continued work on incremental trait solver improvements and smaller soundness fixes. RPIT refactor (https://github.com/rust-lang/rust/pull/101345) didn't work and needs a re-think. Work has been started to (slowly!) introduce `PredicateTy` from a-mir-formality.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "implied_bounds: deal with inference vars" [rust#102016](https://github.com/rust-lang/rust/pull/102016)
  - Fixes [rust#101951](https://github.com/rust-lang/rust/issues/101951), a bad diagnostic regression now in 1.65
  - Nominated by Wesley
- :beta: "Fix wrongly refactored Lift impl" [rust#102088](https://github.com/rust-lang/rust/pull/102088)
  - Fixes a regression mentioned [in this comment](https://github.com/rust-lang/rust/pull/101858#issuecomment-1252713639)
  - Fix authored and nominated by Oli
- :beta: "Fix a typo “pararmeter” in error message" [rust#102119](https://github.com/rust-lang/rust/pull/102119)
  - Well, it fixes a typo
  - @**Esteban Küber**  nominated for backporting
- :beta: "Deny associated type bindings within associated type bindings" [rust#102338](https://github.com/rust-lang/rust/pull/102338)
  - Fixes a regression [rust#102335](https://github.com/rust-lang/rust/issues/102335), now in beta (where GATs are stable)
  - Patch authored and nominated by @**Michael Goulet (compiler-errors)** 
- :beta: "Fix unwind drop glue for if-then scopes" [rust#102394](https://github.com/rust-lang/rust/pull/102394)
  - Fixes [rust-lang#102317](https://github.com/rust-lang/rust/issues/102317), an ICE in a feature stabilized on beta
  - nominated by @**est31** (also [Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/beta.201.2E65.20backports))
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Only apply `ProceduralMasquerade` hack to older versions of `rental`" [rust#94063](https://github.com/rust-lang/rust/pull/94063)
  - PR is `I-compiler-nominated`
- 2 other hidden issue waiting on teams

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Allow `impl Fn() -> impl Trait` in return position" [rust#93582](https://github.com/rust-lang/rust/pull/93582) (last review activity: about 41 days ago)
  - ping @**nikomatsakis** for another round of review 
- "Overhaul `ThinVec` usage" [rust#100666](https://github.com/rust-lang/rust/pull/100666) (last review activity: about 41 days ago)
  - soft-ping to @**nnethercote** for this (seems not intended yet for general review)
- "Fix off-by-one error in X87DoubleExtended::from_bits" [rust#100685](https://github.com/rust-lang/rust/pull/100685) (last review activity: about 40 days ago)
  - @**eddyb** changes review assignment to @**Wesley Wiser** for licensing about the tests in this PR
- "Track `-Cprofile-use` and `-Cprofile-sample-use` value by file hash, not file path" [rust#100413](https://github.com/rust-lang/rust/pull/100413) (last review activity: about 38 days ago)
  - ping reviewer @**mw**, left [a comment about some suggestion](https://github.com/rust-lang/rust/pull/100413#issuecomment-1220817475) to leave to the author? 

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [43 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 40 P-high, 83 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "codegen regression for bool" [rust#101048](https://github.com/rust-lang/rust/issues/101048)
  - depends on resolution of upstream [llvm-project#57448](https://github.com/llvm/llvm-project/issues/57448)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Regression: false positive from unreachable_pub lint" [rust#102352](https://github.com/rust-lang/rust/issues/102352)
  - affects also an external crate CI

## Performance logs

> [triage logs for 2022-09-27](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-09-27.md)

Overall a fairly quiet week in terms of new changes; the majority of the delta
this week was due to reverting
[#101620](https://github.com/rust-lang/rust/pull/101620), which was a
regression noted in last week's report.

Triage done by **@simulacrum**.
Revision range: [8fd6d03e22fba2930ad377b87299de6a37076074..d9297d22ad9edc2b56f0dd8734c1187a0c88be69](https://perf.rust-lang.org/?start=8fd6d03e22fba2930ad377b87299de6a37076074&end=d9297d22ad9edc2b56f0dd8734c1187a0c88be69&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 5.6%  | [0.4%, 32.9%]   | 32    |
| Regressions (secondary)  | 7.4%  | [0.7%, 25.3%]   | 22    |
| Improvements (primary)   | -4.0% | [-13.4%, -0.3%] | 135   |
| Improvements (secondary) | -4.3% | [-19.4%, -0.1%] | 123   |
| All  (primary)           | -2.2% | [-13.4%, 32.9%] | 167   |


2 Regressions, 7 Improvements, 3 Mixed; 3 of them in rollups
53 artifact comparisons made in total

#### Regressions

a fn pointer doesn't implement `Fn`/`FnMut`/`FnOnce` if its return type isn't sized [#100096](https://github.com/rust-lang/rust/pull/100096) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4ecfdfac51b159f68fce608792affb34a70e6f73&end=1de00d1ac5247a02184ef7ad044f6521ade7e0cc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 23.0% | [21.3%, 25.2%] | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -     | -              | 0     |

Perf regression is being investigated by @compiler-errors. No positive fix yet
though; due to the reported regression
([#102289](https://github.com/rust-lang/rust/pull/102289)) we are thinking that
just reverting may be the better option. This is a soundness fix though so the
perf regression may be OK, but further investigation is warranted.


Require `#[const_trait]` on `Trait` for `impl const Trait` [#100982](https://github.com/rust-lang/rust/pull/100982) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=626b02a8f97a9e35a647aa18fcdb67cbcb3b09c8&end=7a8636c843bd24038fe1d1f69b4a8e4b0ea55d4e&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.4%, 0.5%] | 6     |
| Regressions (secondary)  | 1.5% | [1.5%, 1.5%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.4%, 0.5%] | 6     |

This regression was known prior to merging the PR, but the reviewer concluded
that the small wall-clock delta wasn't worth further investigation. Left a
comment asking for a better justification of the regression.

#### Improvements

use partition_point instead of binary_search when looking up source lines [#101999](https://github.com/rust-lang/rust/pull/101999) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7a8636c843bd24038fe1d1f69b4a8e4b0ea55d4e&end=3e50038a2d4029bd1484af75dbf144c4b0da6c74&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.7%, -0.2%] | 62    |
| Improvements (secondary) | -0.6% | [-1.6%, -0.2%] | 41    |
| All  (primary)           | -0.3% | [-0.7%, -0.2%] | 62    |


Rollup of 10 pull requests [#102150](https://github.com/rust-lang/rust/pull/102150) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=77e7e88567691068f5fba288618023368882d60b&end=bc4d574ff2ffcfe76db36116cc4f193384065985&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 4     |


Use internal iteration in `Iterator` comparison methods [#100845](https://github.com/rust-lang/rust/pull/100845) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e1c28e0c857280ce829beab16ef6082cd518db98&end=06968954f7e11454d49377629bb57d13253384b9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-1.1%, -1.1%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.1% | [-1.1%, -1.1%] | 1     |


Move DepKindStruct from rustc_middle to rustc_query_system [#101710](https://github.com/rust-lang/rust/pull/101710) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f5193a9fcc73dc09e41a90c5a2c97fc9acc16032&end=ff40f2ec95923c4d45366e85bcff17d75df68d68&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.9%, -0.2%] | 66    |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] | 18    |
| All  (primary)           | -0.5% | [-0.9%, -0.2%] | 66    |


Rollup of 5 pull requests [#102297](https://github.com/rust-lang/rust/pull/102297) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fe217c28ffc6955f0927d8e8715d43d727debe5a&end=72f4923979979abb5d6b975353e9b3053d257e60&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 1     |
| Improvements (secondary) | -1.3% | [-1.5%, -1.2%] | 6     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 1     |


Fix lint scoping for let-else. [#102257](https://github.com/rust-lang/rust/pull/102257) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e1d7dec558d863fb76f98453088b36cb1a926d48&end=1d1f1426604b7d79138cdfbb31f82f7f44756fba&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 1     |
| Improvements (secondary) | -1.4% | [-1.6%, -1.2%] | 6     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 1     |


Improve code example for Option::unwrap_or_default [#102283](https://github.com/rust-lang/rust/pull/102283) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8b705839cd656d202e920efa8769cbe43a5ee269&end=f3a6fbf2f2e898ca4d788b3e686726fa9770c676&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 1     |
| Improvements (secondary) | -1.3% | [-1.6%, -1.2%] | 6     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 1     |


#### Mixed

Revert perf-regression 101620 [#102064](https://github.com/rust-lang/rust/pull/102064) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=199fe1d169b5aeeca0e527ded26542b7a05ebd79&end=bb5a01617589b5e3ece5a36435fc285bfd13c9a4&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 5.6%  | [0.3%, 33.5%]   | 33    |
| Regressions (secondary)  | 1.1%  | [0.3%, 1.5%]    | 11    |
| Improvements (primary)   | -3.7% | [-12.3%, -0.3%] | 129   |
| Improvements (secondary) | -4.1% | [-19.0%, -0.2%] | 121   |
| All  (primary)           | -1.8% | [-12.3%, 33.5%] | 162   |

This fixes a perf regression from last week and the overall trend is an improvement, so as expected.

Use function pointers instead of macro-unrolled loops in rustc_query_impl [#101785](https://github.com/rust-lang/rust/pull/101785) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ff40f2ec95923c4d45366e85bcff17d75df68d68&end=3288d3a305ad15cfcdcd9ef72404be6d2a2887b5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.2%  | [1.2%, 1.2%]   | 2     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -1.1% | [-1.5%, -0.6%] | 9     |
| All  (primary)           | -0.4% | [-0.4%, -0.4%] | 1     |

Overall mixed results and generally a slight improvement. The seemingly more
important goal of reducing bootstrap times isn't really achieved by this PR
though it may help future iteration on these functions by avoiding some LLVM sensitivity.

Rollup of 5 pull requests [#102324](https://github.com/rust-lang/rust/pull/102324) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d1f1426604b7d79138cdfbb31f82f7f44756fba&end=8b705839cd656d202e920efa8769cbe43a5ee269&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | 1.4%  | [1.3%, 1.6%]   | 6     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.6%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.5% | [-0.9%, 0.7%]  | 7     |

keccak, the primary regression, is within its suspected noise level bar.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Only apply `ProceduralMasquerade` hack to older versions of `rental`" [rust#94063](https://github.com/rust-lang/rust/pull/94063)
  - nominated by @**aaron1011**, asking for a opinion on the latest changes -> [comment](https://github.com/rust-lang/rust/pull/94063#issuecomment-1261106395)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-mir-opt* MIR Optimizations by @**oli**
- @_*WG-polymorphization* Polymorphization by @**davidtwco**
