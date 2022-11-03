---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-10-20

## Announcements

- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjEwMjFUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-21T09:00:00-04:00>
- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMjEwMjFUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-21T10:00:00-04:00>
- [RustcContributor::explore @compiler-errors session: Return-position impl Trait in traits deep dive](https://www.google.com/calendar/event?eid=NThkN2I4YnY2YjlvaHNyc3FtbG04ZmpvaWEgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-10-20T16:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMjEwMjRUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-24T10:00:00-04:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjEwMjRUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-24T11:30:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjEwMjRUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-24T16:00:00-04:00>
- [Polonius Deep Dive](https://www.google.com/calendar/event?eid=NmEzbzBzbTJkYWUwcnN0N2x2dG9ucmYwamEgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-10-26T09:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 5 months ago)
    - MCP candidate for closing? (seems to not receive any feedback) 
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 2 months ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: about 54 days ago)
  - "Allow informational -Z flags on stable compiler" [compiler-team#542](https://github.com/rust-lang/compiler-team/issues/542) (last review activity: about 54 days ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: about 54 days ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 40 days ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 21 days ago)
  - "New Tier-3 target proposal: powerpc64-ibm-aix" [compiler-team#553](https://github.com/rust-lang/compiler-team/issues/553) (last review activity: about 40 days ago)
    - MCP author pinged for feedback
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 40 days ago)
  - "MCP: Raise UEFI Targets to Tier-2" [compiler-team#555](https://github.com/rust-lang/compiler-team/issues/555) (last review activity: about 40 days ago)
    - MCP author pinged for feedback
  - "Raise minimum supported macOS and iOS versions" [compiler-team#556](https://github.com/rust-lang/compiler-team/issues/556) (last review activity: about 40 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 0 days ago)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) (last review activity: about 0 days ago)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: about 0 days ago)
    - Has an implementation PR ready for review ([rust#102963](https://github.com/rust-lang/rust/pull/102963))
- Pending FCP requests (check your boxes!)
  - "Make PROC_MACRO_DERIVE_RESOLUTION_FALLBACK a hard error" [rust#84022](https://github.com/rust-lang/rust/pull/84022) 
- Things in FCP (make sure you're good with it)
  - "Only apply `ProceduralMasquerade` hack to older versions of `rental`" [rust#94063](https://github.com/rust-lang/rust/pull/94063) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Handle projections as uncovered types during coherence check" [rust#100555](https://github.com/rust-lang/rust/pull/100555) 
  - "Remove save-analysis." [rust#101841](https://github.com/rust-lang/rust/pull/101841) 
  - "make const_err a hard error" [rust#102091](https://github.com/rust-lang/rust/pull/102091) 
  - "Elaborate supertrait bounds when triggering `unused_must_use` on `impl Trait`" [rust#102287](https://github.com/rust-lang/rust/pull/102287) 
  - "make `order_dependent_trait_objects` show up in future-breakage reports" [rust#102635](https://github.com/rust-lang/rust/pull/102635) 

### WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry** ([previous checkin](https://hackmd.io/EewyTLZXQpmtfaH633GU-A#WG-checkins)):
  > Checkin text

- Generic Associated Types initiative by @**Jack Huey** ([previous checkin](https://hackmd.io/P5_PrNfwR6Sp89yQ_S3-jg#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Ensure enum cast moves" [rust#103016](https://github.com/rust-lang/rust/pull/103016) 
  - Fixes #102389, a T-lang `P-critical` regression
  - also nominated for stable backport
- :beta: "Do anonymous lifetimes remapping correctly for nested rpits" [rust#103205](https://github.com/rust-lang/rust/pull/103205) 
  - @**Santiago Pastorino** authored the fix, being reviewed by @**cjgillot**
  - fixes a `P-critical` stable regression #103141
  - also nominated for stable backport
- :beta: "Fix `TyKind::is_simple_path`" [rust#103176](https://github.com/rust-lang/rust/pull/103176)
  - PR authored by @**nnethercote**, fixes a `P-high` regression [rust#103157](https://github.com/rust-lang/rust/issues/103157)
  - nominated by @**apiraino** after reading this user comment [about a 1.64.1 release](https://rust-lang.zulipchat.com/#narrow/stream/122651-general/topic/illegal.20Eq.20derive/near/304914199) for this fix
  - (in retrospect I wonder if #103157 was more a `P-critical`)
  - also nominated for stable backport
- :beta: "linker: Fix weak lang item linking with combination windows-gnu + LLD + LTO" [rust#103092](https://github.com/rust-lang/rust/pull/103092) 
  - complements [rust#100404](https://github.com/rust-lang/rust/pull/100404)
  - nominated by @**Vadim Petrochenkov** to fix the beta
  - PR open but approved by @**Wesley Wiser** 
- :beta: "Add eval hack in `super_relate_consts` back" [rust#103279](https://github.com/rust-lang/rust/pull/103279)
  - authored by @**Michael Goulet (compiler-errors)**, fixes #103242 and #103243 (both beta regressions emerged in crater runs, thus prioritized as `P-critical`)
  - being reviewed by @**lcnr** 
- :stable: "Ensure enum cast moves" [rust#103016](https://github.com/rust-lang/rust/pull/103016)
- :stable: "Fix `TyKind::is_simple_path`" [rust#103176](https://github.com/rust-lang/rust/pull/103176)
- :stable: "Do anonymous lifetimes remapping correctly for nested rpits" [rust#103205](https://github.com/rust-lang/rust/pull/103205)

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Add `-Z instrument-xray` flag" [rust#102963](https://github.com/rust-lang/rust/pull/102963)
  - Ready now for another review from T-compiler
  - MCP [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) waiting to be seconded
- 3 other hidden issues in progress or waiting on other teams 

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Make PROC_MACRO_DERIVE_RESOLUTION_FALLBACK a hard error" [rust#84022](https://github.com/rust-lang/rust/pull/84022) (last review activity: 18 months ago)
  - seems the [RFC comment](https://github.com/rust-lang/rust/pull/84022#issuecomment-1272774041) needs at least one more tick
- "Refactor metadata emission to avoid visiting HIR" [rust#98867](https://github.com/rust-lang/rust/pull/98867) (last review activity: 3 months ago)
  - cc @**cjgillot** (own PR anyway)
- "Implement `std::marker::Tuple`, use it in `extern "rust-call"` and `Fn`-family traits" [rust#99943](https://github.com/rust-lang/rust/pull/99943) (last review activity: 2 months ago)
  - cc: @**Jack Huey**
- "Remove `box_free` lang item" [rust#100036](https://github.com/rust-lang/rust/pull/100036) (last review activity: about 56 days ago)
  - ready for review of perf. results cc: @**Wesley Wiser**

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [3 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [4 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 39 P-high, 85 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ld64.lld: error: too many personalities (4) for compact unwind to encode" [rust#102754](https://github.com/rust-lang/rust/issues/102754)
  - LLD bug will be fixed by [llvm#D135728](https://reviews.llvm.org/D135728)
- "regression: associated consts cannot be referenced in patterns" [rust#103242](https://github.com/rust-lang/rust/issues/103242) 
  - Will be fixed by [rust#103279](https://github.com/rust-lang/rust/pull/103279) (beta nominated)
- "regression: trait bound not satisfied" [rust#103243](https://github.com/rust-lang/rust/issues/103243)
  - Will be fixed by [rust#103279](https://github.com/rust-lang/rust/pull/103279) (beta nominated)
- "regression: attributes on expressions are experimental" [rust#103244](https://github.com/rust-lang/rust/issues/103244)
  - bisection points to #100232
  - @**cjgillot** self-assigned

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-10-18](https://github.com/rust-lang/rustc-perf/blob/260422f9f70ade1d27913fbcb72367e1ea91db4e/triage/2022-10-18.md)

Overall a fairly busy week, with many improvements and regressions, though the
net result ends up being a small regression. Pretty busy week in terms of
regressions in rollups as well, which unfortunately mostly were not followed up
on prior to the report being put together, despite the relative ease of running
perf against individual PRs now.

Triage done by **@simulacrum**.
Revision range: [1e926f06528ecb2503f026e2fd53cb735d487b10..e0f8e60dddfecfc9093ee9d9f42557d8260c0355](https://perf.rust-lang.org/?start=1e926f06528ecb2503f026e2fd53cb735d487b10&end=e0f8e60dddfecfc9093ee9d9f42557d8260c0355&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.7%  | [0.2%, 6.3%]   | 46    |
| Regressions (secondary)  | 1.6%  | [0.3%, 5.4%]   | 46    |
| Improvements (primary)   | -0.6% | [-2.3%, -0.2%] | 45    |
| Improvements (secondary) | -2.0% | [-9.2%, -0.2%] | 32    |
| All  (primary)           | 0.6%  | [-2.3%, 6.3%]  | 91    |

2 Regressions, 4 Improvements, 4 Mixed; 4 of them in rollups
47 artifact comparisons made in total

#### Regressions

Populate effective visibilities in 'rustc_resolve' [#102026](https://github.com/rust-lang/rust/pull/102026) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bf286a82e236e065c67909657e3a35d1511d1864&end=b8b5caee04116c7383eb1c6470fcf15c437a60d4&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.1% | [0.2%, 5.6%] | 65    |
| Regressions (secondary)  | 0.9% | [0.2%, 3.7%] | 32    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.1% | [0.2%, 5.6%] | 65    |

The compiler is doing more work after this PR, but haven't yet narrowed in on a
fix or exact cause for the regression. @petrochenkov expects that we probably
ought to be able to reduce the impact.

Rollup of 7 pull requests [#102915](https://github.com/rust-lang/rust/pull/102915) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1e926f06528ecb2503f026e2fd53cb735d487b10&end=bb93450ec4af83c20e9ba6c8e575aca55423001a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 1.1%]   | 12    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.6%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.2%  | [-0.9%, 1.1%]  | 18    |

The improvements here are in diesel, which is noise; the regressions look
plausibly real. Queued an additional perf run for further investigation.

#### Improvements

Rollup of 11 pull requests [#102926](https://github.com/rust-lang/rust/pull/102926) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cde693cf962f0f606e33eb21242f6bcd2d8d8b7a&end=db0597f5619d5ed93feca28e61226d3581cc7867&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.4% | [-1.0%, -0.2%] | 20    |
| Improvements (secondary) | -0.5% | [-0.6%, -0.3%] | 7     |
| All  (primary)           | -0.4% | [-1.0%, -0.2%] | 20    |

This may not be as much of an improvement as it looks; the diesel-related
changes are all spurious (we are seeing an uptick in noise there).

Remove `TokenStreamBuilder` [#102692](https://github.com/rust-lang/rust/pull/102692) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7e8d64e792543fedb8574ac0a27522dbab66aa52&end=2b91cbe2d4ce90d30520674876e9d700cf7a561b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.6%, -0.3%] | 4     |
| Improvements (secondary) | -4.1% | [-9.5%, -1.2%] | 9     |
| All  (primary)           | -0.5% | [-0.6%, -0.3%] | 4     |

remove type traversal for mir constants [#102355](https://github.com/rust-lang/rust/pull/102355) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=abd77441010d74430be5c34a2e62002e578fa165&end=a9d1cafa878ecc04a4aa7aaa7df0414a29a2bd0b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.8%, -0.2%] | 36    |
| Improvements (secondary) | -1.3% | [-3.7%, -0.2%] | 37    |
| All  (primary)           | -0.4% | [-0.8%, -0.2%] | 36    |

Rollup of 7 pull requests [#103026](https://github.com/rust-lang/rust/pull/103026) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=60bd3f96779dbe6bd206dae09395e9af7d580552&end=edabf59ca4646b3fc1a961c26431215001043f6a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.7%, 1.1%]   | 6     |
| Regressions (secondary)  | 0.4%  | [0.4%, 0.4%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-1.5%, -0.3%] | 7     |
| All  (primary)           | 0.9%  | [0.7%, 1.1%]   | 6     |

Regressions are essentially all in diesel, which are spurious.

#### Mixed


Rollup of 7 pull requests [#102975](https://github.com/rust-lang/rust/pull/102975) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=538f118da1409759ba198acc0ff62070bc6d2dce&end=c0983a9aac889d16722a12602ac678051e62c3fb&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 1.0%]   | 19    |
| Regressions (secondary)  | 1.3%  | [0.2%, 3.8%]   | 41    |
| Improvements (primary)   | -0.9% | [-1.7%, -0.4%] | 14    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.0% | [-1.7%, 1.0%]  | 33    |


Check hidden types in dead code [#102700](https://github.com/rust-lang/rust/pull/102700) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6b3ede3f7bc502eba7bbd202b4b9312d812adcd7&end=60bd3f96779dbe6bd206dae09395e9af7d580552&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.2%  | [1.0%, 1.3%]   | 4     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 13    |
| Improvements (secondary) | -0.6% | [-0.7%, -0.5%] | 4     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 13    |


Get rid of `rustc_query_description!` [#102895](https://github.com/rust-lang/rust/pull/102895) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c93ef33700e4e4f84fd85690df71b14c1d2b0aa3&end=b8c35ca26b191bb9a9ac669a4b3f4d3d52d97fb1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.5%]   | 9     |
| Regressions (secondary)  | 0.6%  | [0.3%, 0.8%]   | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-1.2%, -0.2%] | 6     |
| All  (primary)           | 0.3%  | [0.2%, 0.5%]   | 9     |


Make `overlapping_impls` not generic [#102931](https://github.com/rust-lang/rust/pull/102931) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ddc7fd983736bef0e610e02f5ef08955ecd562bb&end=75dbd5b8c3e3e3e7673caa890422e654d39b815e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]   | 2     |
| Improvements (primary)   | -1.6% | [-2.3%, -1.1%] | 7     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.6% | [-2.3%, -1.1%] | 7     |


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Massive performance regression between nightly-2022-08-12 and nightly-2022-08-13" [rust#102952](https://github.com/rust-lang/rust/issues/102952)
  - issue reporter points out that LLVM upgrades sometimes causes substancial perf. regression in the `wasmi` WASM interpreter, also points to a previous case in [rust#95409](https://github.com/rust-lang/rust/issues/95409))
  - [Instructions to reproduce](https://github.com/rust-lang/rust/issues/102952#issuecomment-1279708220)
  - Suggests a possible idea for these regressions: "Due to missing guaranteed tail calls in Rust wasmi relies heavily on a non-guaranteed optimization for a loop-switch based interpreter hot path"
  - @**The 8472|330154** add some context in [comment](https://github.com/rust-lang/rust/issues/102952#issuecomment-1279725639) 
  - possibly `P-high` or above, should an upstream LLVM issue be reported?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
