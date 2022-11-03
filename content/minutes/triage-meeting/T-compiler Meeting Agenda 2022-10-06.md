---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-10-06

## Announcements

- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjEwMDdUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-07T09:00:00-04:00>
- [steering: survey retrospective](https://www.google.com/calendar/event?eid=NnA2bWtoaGQ5NnVudGkwdnM5aWZ1YmpqNG0gNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-10-07T10:00:00-04:00>
- [RustcContributor::explore @lcnr session: rustc trait solver](https://www.google.com/calendar/event?eid=NjYwaDB0Mmg1a2cwcmZhMHZ0Z3Zub2JzZW0gNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw)  at <time:2022-10-07T10:30:00-04:00>
  - [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/344822-RustcContributor.3A.3Aexplore/topic/first.20session.20with.20.40lcnr/near/302080510)
  - Open to rustc contributors
  - Topic: "rustc trait solver: exploring how evaluate, fulfill, and select fit together"
  - Zoom link: TBA
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMjEwMTBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-10T11:00:00-04:00>
- [wg-rls-2.0 steering meeting](https://www.google.com/calendar/event?eid=N2NxOWxzYWYxb3NicWNzbGsxYzdxcG9ydTJfMjAyMjEwMTBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-10T11:00:00-04:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjEwMTBUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-10T11:30:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjEwMTBUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-10T16:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) 
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 5 months ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 2 months ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: about 40 days ago)
  - "Allow informational -Z flags on stable compiler" [compiler-team#542](https://github.com/rust-lang/compiler-team/issues/542) (last review activity: about 40 days ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: about 40 days ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 26 days ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 7 days ago)
  - "New Tier-3 target proposal: powerpc64-ibm-aix" [compiler-team#553](https://github.com/rust-lang/compiler-team/issues/553) (last review activity: about 26 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 26 days ago)
  - "MCP: Raise UEFI Targets to Tier-2" [compiler-team#555](https://github.com/rust-lang/compiler-team/issues/555) (last review activity: about 26 days ago)
  - "Raise minimum supported macOS and iOS versions" [compiler-team#556](https://github.com/rust-lang/compiler-team/issues/556) (last review activity: about 26 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Only apply `ProceduralMasquerade` hack to older versions of `rental`" [rust#94063](https://github.com/rust-lang/rust/pull/94063) 
  - "Remove save-analysis." [rust#101841](https://github.com/rust-lang/rust/pull/101841) 
- Things in FCP (make sure you're good with it)
  - "Elaborate supertrait bounds when triggering `unused_must_use` on `impl Trait`" [rust#102287](https://github.com/rust-lang/rust/pull/102287) 
- Accepted MCPs
  - "`DROP` to `DROP_IF`" [compiler-team#558](https://github.com/rust-lang/compiler-team/issues/558) 
- Finalized FCPs (disposition merge)
  - "Tracking Issue for asm_sym" [rust#93333](https://github.com/rust-lang/rust/issues/93333) 
  - "Allow transmutes between the same types after erasing lifetimes" [rust#101520](https://github.com/rust-lang/rust/pull/101520) 

### WG checkins

- @_*WG-mir-opt* MIR Optimizations by @**oli** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Checkin text

- @_*WG-polymorphization* Polymorphization by @**davidtwco** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > No updates, wg members are busy elsewhere.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Revert perf-regression 101620" [rust#102064](https://github.com/rust-lang/rust/pull/102064) 
  - Reverts #101862 and #101620
  - nominated by @**cjgillot** ([comment](https://github.com/rust-lang/rust/pull/102064#issuecomment-1264451469)) to backport the perf. regression fix
  - some benchmarks still show a minus sign (triaged and acceptable, see [comment](https://github.com/rust-lang/rust/pull/102064#issuecomment-1254356737))
- :beta: "Fix associated type bindings with anon const in GAT position" [rust#102336](https://github.com/rust-lang/rust/pull/102336)
  - fixes #102333, a `P-medium` ICEs with GATs (on nightly+beta)
  - nominated by Wesley to let it go with GATs stabilization
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Only apply `ProceduralMasquerade` hack to older versions of `rental`" [rust#94063](https://github.com/rust-lang/rust/pull/94063) 
  - PR is now waiting for T-compiler to approve (or raise concerns)
- 2 other hidden issue waiting on teams or progressing

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Allow `impl Fn() -> impl Trait` in return position" [rust#93582](https://github.com/rust-lang/rust/pull/93582) (last review activity: about 41 days ago)
  - ping @**nikomatsakis** for another round of review 
- "Fix off-by-one error in X87DoubleExtended::from_bits" [rust#100685](https://github.com/rust-lang/rust/pull/100685) (last review activity: about 40 days ago)
  - @**eddyb** changes review assignment to @**Wesley Wiser** for licensing about the tests in this PR ([comment](https://github.com/rust-lang/rust/pull/100685#issuecomment-1220718236))
- "Support #[global_allocator] without the allocator shim" [rust#86844](https://github.com/rust-lang/rust/pull/86844) (last review activity: 2 months ago)
  - @**pnkfelix** ready for another round of review
- "Track `-Cprofile-use` and `-Cprofile-sample-use` value by file hash, not file path" [rust#100413](https://github.com/rust-lang/rust/pull/100413) (last review activity: about 38 days ago)
  - ping reviewer @**mw**, left [a comment about some suggestion](https://github.com/rust-lang/rust/pull/100413#issuecomment-1220817475) to leave to the author? 
- "Add `kernel-address` sanitizer support for freestanding targets" [rust#99679](https://github.com/rust-lang/rust/pull/99679) (last review activity: 2 months ago)
  - @**cuviper** ready for another round of review 
 
## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 39 P-high, 85 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Performance regression in 1.64+ when `BufReader` inner reader doesn't fill the buffer" [rust#102727](https://github.com/rust-lang/rust/issues/102727)
  - regression shows only on debug runs (primarily from evaluating the predicates of `intrinsics::assume`)
  - issue priority not completely clear: is this a `P-critical`?

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "codegen regression for bool" [rust#101048](https://github.com/rust-lang/rust/issues/101048) 
  - @**Nikita Popov** self-assigned
- "ICE: Broken MIR in Item(...) with `let_else` usage (use of local which has no storage here)" [rust#102317](https://github.com/rust-lang/rust/issues/102317) 
  - assigned `P-high` out of caution and for visibility (priority can be lowered if it's the case)
  - @__**Ding Xiang Fei** self-assigned for investigation 

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-10-04](https://github.com/rust-lang/rustc-perf/blob/4bcac25cd5d9a385da6dee196296c95aea1a8fa2/triage/2022-10-04.md)

A great week, with 170 primary benchmark scenarios seeing improvement. Every PR
flagged by perf provided at least some wins, and perhaps more impressive: No
rollup PR's were flagged by perf this week! Furthermore, cjgillot fixed an issue
where incremental compilation was being unnecessarily hindered by our span and
lint system. Great work everyone!

Triage done by **@pnkfelix**.
Revision range: [d9297d22..02cd79af](https://perf.rust-lang.org/?start=d9297d22ad9edc2b56f0dd8734c1187a0c88be69&end=02cd79afb8080fce8c8ce35533c54d8ecf8f390e&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.4%, 1.9%]    | 2     |
| Regressions (secondary)  | 0.5%  | [0.4%, 0.6%]    | 6     |
| Improvements (primary)   | -2.4% | [-31.0%, -0.2%] | 170   |
| Improvements (secondary) | -1.5% | [-5.8%, -0.3%]  | 159   |
| All  (primary)           | -2.4% | [-31.0%, 1.9%]  | 172   |


0 Regressions, 2 Improvements, 7 Mixed; 0 of them in rollups
30 Untriaged Pull Requests
54 artifact comparisons made in total

#### Regressions

None ‽

#### Improvements

More lexer improvements [#102302](https://github.com/rust-lang/rust/pull/102302) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=837bf370de144a682041e68bb67469b9f68a55ce&end=6201eabde85db854c1ebb57624be5ec699246b50&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.2%  | [2.2%, 2.2%]   | 1     |
| Improvements (primary)   | -0.5% | [-1.0%, -0.2%] | 80    |
| Improvements (secondary) | -0.8% | [-1.8%, -0.3%] | 75    |
| All  (primary)           | -0.5% | [-1.0%, -0.2%] | 80    |


Inline a few functions. [#102387](https://github.com/rust-lang/rust/pull/102387) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b3aa4997d4817c5ea2b33ba20f6fe7c695e4f64c&end=4a0ee3cdc66573c8b46471462db7088a89d25183&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-1.0%, -0.2%] | 60    |
| Improvements (secondary) | -0.8% | [-2.3%, -0.3%] | 42    |
| All  (primary)           | -0.4% | [-1.0%, -0.2%] | 60    |


#### Mixed

Rewrite and refactor format_args!() builtin macro. [#100996](https://github.com/rust-lang/rust/pull/100996) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=90c34fafcfa1d00ae25a165dc006e688761a5776&end=d6734be398fde0b078cde298e0d84eeccd71d08e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.5%  | [1.1%, 2.0%]   | 6     |
| Improvements (primary)   | -0.3% | [-0.7%, -0.2%] | 7     |
| Improvements (secondary) | -1.2% | [-1.5%, -0.6%] | 7     |
| All  (primary)           | -0.3% | [-0.7%, -0.2%] | 7     |

* [already triaged](https://github.com/rust-lang/rust/pull/100996#issuecomment-1260438437)

rustdoc: Remove `clean::TraitWithExtraInfo` and queryify `is_notable_trait` [#102384](https://github.com/rust-lang/rust/pull/102384) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ce7f0f1aa0f02c45cad0749e63f3086234b1f422&end=b30c88623cf1f8f3e67b189fb2c5df5a0d89aaed&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | 2.7%  | [2.7%, 2.7%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.4% | [-1.7%, -1.2%] | 12    |
| All  (primary)           | 0.3%  | [0.3%, 0.3%]   | 1     |

* [already triaged](https://github.com/rust-lang/rust/pull/102384#issuecomment-1261912595)

Fix perf regression from TypeVisitor changes [#101893](https://github.com/rust-lang/rust/pull/101893) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=65445a571c11f07f4ca1ed0f63bad247ae295bd0&end=9f1a21ae2bd41b3dd335c44f38f29a1fb8712ddc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.4%  | [1.2%, 1.6%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-2.9%, -0.5%] | 9     |
| All  (primary)           | -     | -              | 0     |

* [already triaged](https://github.com/rust-lang/rust/pull/101893#issuecomment-1262863099)

Shrink `hir::def::Res` [#101887](https://github.com/rust-lang/rust/pull/101887) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9c56d9d6fec6262bbb1549cfe466a812ae2c6523&end=1bb8d276c94c77a5fada815c5fad3b8d324adac4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.2%  | [0.6%, 1.6%]   | 7     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 5     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.3%] | 2     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 5     |

* [already triaged](https://github.com/rust-lang/rust/pull/101887#issuecomment-1263228790)

Move lint level source explanation to the bottom [#101986](https://github.com/rust-lang/rust/pull/101986) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=277bb6653b55475b5fbce6309e9852fa2100dabe&end=744e397d8855f7da87d70aa8d0bd9e0f5f0b51a1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.0%  | [0.9%, 1.0%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 3     |
| Improvements (secondary) | -0.9% | [-1.4%, -0.3%] | 8     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 3     |

* [already triaged](https://github.com/rust-lang/rust/pull/101986#issuecomment-1264764911)

Compute lint levels by definition [#102236](https://github.com/rust-lang/rust/pull/102236) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=56a35bc906be1250a76fdb9a4b70e9261e10aec5&end=57f097ea25f2c05f424fc9b9dc50dbd6d399845c&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.3%, 0.9%]    | 14    |
| Regressions (secondary)  | 1.0%  | [0.2%, 2.0%]    | 20    |
| Improvements (primary)   | -3.2% | [-30.2%, -0.2%] | 84    |
| Improvements (secondary) | -1.1% | [-2.8%, -0.3%]  | 52    |
| All  (primary)           | -2.7% | [-30.2%, 0.9%]  | 98    |


* based on reading of [#101620](https://github.com/rust-lang/rust/issues/101620), this was an important step for making incremental compilation apply to a much broader set of input code.
* the performance gains reported by perf seem well worth the cost that it registered.
* marked as triaged.

Mark Cell::replace() as #[inline] [#102548](https://github.com/rust-lang/rust/pull/102548) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c2590e6e892cce1105cc57b480aa07a51ae95fe5&end=756e7be5eb923ec955dfd8dec2a0d3ac81cfdf55&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.4%, 1.8%]   | 3     |
| Regressions (secondary)  | 0.9%  | [0.2%, 1.3%]   | 10    |
| Improvements (primary)   | -0.3% | [-1.2%, -0.2%] | 14    |
| Improvements (secondary) | -0.4% | [-1.9%, -0.2%] | 12    |
| All  (primary)           | -0.1% | [-1.2%, 1.8%]  | 17    |

* PR had intermediate perf run reported stats that are somewhat better than what we actually ended up with in the end.
* did not mark as triaged; pinged a reviewer to confirm that this still meets acceptable criteria from their POV.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Example iterator fold vs. loop emit different code" [rust#99656](https://github.com/rust-lang/rust/issues/99656)
  - perf. regression affecting WASM and x86_64 targets 
  - shows intermittently and fluctuates since quite old releases (1.33 ~ 1.56)
  - @_**mqudsi** suggests it could to be caused by multiple issues ([comment](https://github.com/rust-lang/rust/issues/99656#issuecomment-1193529023))
  - nominated by @**apiraino**: does it need to be prioritized i.e. does it look bad enough to require a closer look?
- "Constify `TypeId` ordering impls" [rust#101698](https://github.com/rust-lang/rust/pull/101698)
  - @**raldone01** adds some background ([comment](https://github.com/rust-lang/rust/pull/101698#issuecomment-1256937861))
  - @**scottmcm**: `T-lang` sees no blockers for nightly but stabilization should be well thought first ([comment](https://github.com/rust-lang/rust/pull/101698#issuecomment-1261198812))
  - @**Mara** nominated for T-compiler: "will this get in the way of any future plans there might be with future typeid implementations? (And if so, is that a problem?)" ([comment](https://github.com/rust-lang/rust/pull/101698#issuecomment-1267168062))
- "extern "C" functions don't generate the same IR definitions as clang on x86, causing problems with cross-language LTO" [rust#102174](https://github.com/rust-lang/rust/issues/102174)
  - an LLVM upgrade led to inlining code that breaks stuff (affects Firefox builds)
  - @**Nikita Popov** mentions that the issue is limited to the cross-language LTO case only" ([comment](https://github.com/rust-lang/rust/issues/102174#issuecomment-1257650472))
  - @**eddyb** adds more insights ([comment](https://github.com/rust-lang/rust/issues/102174#issuecomment-1257553982)) 
  - nominated by @**apiraino**: I need context to understand the priority of this regression, what the actionable could be (and perhaps find an owner?)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-rls2.0* by @**Lukas Wirth**
- @_*WG-self-profile* by @**mw** and @**Wesley Wiser**