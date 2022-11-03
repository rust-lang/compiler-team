---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-10-27

## Announcements

- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjEwMjhUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-28T09:00:00-04:00>
- Next week Nov, 3rd -> new stable release 1.65
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMjEwMzFUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-31T10:00:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjEwMzFUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-31T16:00:00-04:00>
- [Polonius Deep Dive](https://www.google.com/calendar/event?eid=NmEzbzBzbTJkYWUwcnN0N2x2dG9ucmYwamEgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-11-02T09:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Redefine dropck in terms of bound-like constructs" [compiler-team#563](https://github.com/rust-lang/compiler-team/issues/563) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 5 months ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 3 months ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: 2 months ago)
  - "Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools" [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 2 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 47 days ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 28 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 47 days ago)
  - "Raise minimum supported macOS and iOS versions" [compiler-team#556](https://github.com/rust-lang/compiler-team/issues/556) (last review activity: about 47 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 1 days ago)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) (last review activity: about 7 days ago)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: about 7 days ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "New Tier-3 target proposal: powerpc64-ibm-aix" [compiler-team#553](https://github.com/rust-lang/compiler-team/issues/553) 
  - "MCP: Raise UEFI Targets to Tier-2" [compiler-team#555](https://github.com/rust-lang/compiler-team/issues/555) 
  - "Custom THIR -> MIR parser for testing purposes" [compiler-team#564](https://github.com/rust-lang/compiler-team/issues/564) 
  - "Make PROC_MACRO_DERIVE_RESOLUTION_FALLBACK a hard error" [rust#84022](https://github.com/rust-lang/rust/pull/84022) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Only apply `ProceduralMasquerade` hack to older versions of `rental`" [rust#94063](https://github.com/rust-lang/rust/pull/94063) 
  - "Handle projections as uncovered types during coherence check" [rust#100555](https://github.com/rust-lang/rust/pull/100555) 
  - "Remove save-analysis." [rust#101841](https://github.com/rust-lang/rust/pull/101841) 
  - "make const_err a hard error" [rust#102091](https://github.com/rust-lang/rust/pull/102091) 
  - "Elaborate supertrait bounds when triggering `unused_must_use` on `impl Trait`" [rust#102287](https://github.com/rust-lang/rust/pull/102287) 
  - "make unaligned_reference a hard error" [rust#102513](https://github.com/rust-lang/rust/pull/102513) 
  - "make `order_dependent_trait_objects` show up in future-breakage reports" [rust#102635](https://github.com/rust-lang/rust/pull/102635) 
  - "Stabilize raw-dylib for non-x86" [rust#102793](https://github.com/rust-lang/rust/issues/102793) 

### WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/P5_PrNfwR6Sp89yQ_S3-jg#WG-checkins)):
  > * More and more diagnostics are getting ported to the struct-based scheme
  > * Some improvements in greppability of translation slugs (diagnostic identifiers)

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/XpnVKGewRxKfDmxsspenTQ#WG-checkins)):
  > #### Most notable changes
  >
  > - Update `traits/resolution.md` [#1494](https://github.com/rust-lang/rustc-dev-guide/pull/1494)
  > - Update rust-analyzer suggestions [#1487](https://github.com/rust-lang/rustc-dev-guide/pull/1487)
  > 
  > #### Most notable WIPs
  > 
  > - Update outdated queries section [#1483](https://github.com/rust-lang/rustc-dev-guide/pull/1483)
  > - Add sample CodeLLDB launch.json [#1482](https://github.com/rust-lang/rustc-dev-guide/pull/1482)
  > - Add a review checklist and suggest reviews as a way to get started with the project [#1463](https://github.com/rust-lang/rustc-dev-guide/pull/1463)
  > - rewrite bootstrapping stages [#1458](https://github.com/rust-lang/rustc-dev-guide/pull/1458)
  > - Improve documentation of MIR queries & passes [#1434](https://github.com/rust-lang/rustc-dev-guide/pull/1434)
  > - Added detail to codegen section [#1216](https://github.com/rust-lang/rustc-dev-guide/pull/1216)
  > - Update build instructions for rustdoc [#1117](https://github.com/rust-lang/rustc-dev-guide/pull/1117)
  > - Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Support raw-dylib functions being used inside inlined functions" [rust#102988](https://github.com/rust-lang/rust/pull/102988)
  - backport suggested by @**Chris Denton** in [comment](https://github.com/rust-lang/rust/pull/102988#issuecomment-1289384902) (as raw-dylib is stabilized in 1.65)
- :beta: "Add architectures to fn create_object_file" [rust#103240](https://github.com/rust-lang/rust/pull/103240)
  - Fixes [#102290](https://github.com/rust-lang/rust/pull/102290) a `P-medium` on Tier3 platform
  - nominated by @**Vadim Petrochenkov** [in comment](https://github.com/rust-lang/rust/pull/103240#issuecomment-1288107191)
- :beta: "Workaround unstable stmt_expr_attributes for method receiver expressions" [rust#103430](https://github.com/rust-lang/rust/pull/103430)
  - nominated by @**cjgillot**, fixes [#103244](https://github.com/rust-lang/rust/issues/103244), P-critical crater run regressions
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
  - 4 hidden issues in progress or waiting on other teams 

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "fix(generic_const_exprs): Fix predicate inheritance for children of opaque types" [rust#99801](https://github.com/rust-lang/rust/pull/99801) (last review activity: 2 months ago)
  - cc: @**oli** actual status of PR? waiting on review?
- "Fix implied outlives bounds logic for projections" [rust#101680](https://github.com/rust-lang/rust/pull/101680) (last review activity: about 44 days ago)
  - unsure about the status: waiting on review from @**nikomatsakis**?
  - cc @**Esteban Küber** for this [comment](https://github.com/rust-lang/rust/pull/101680#pullrequestreview-1111571335)
- "More distinctive pretty-printing of function item types" [rust#99927](https://github.com/rust-lang/rust/pull/99927) (last review activity: about 40 days ago)
  - After reading this [comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-09-15/near/298983454), was a meeting proposal formalized? cc @**Esteban Küber** / @**pnkfelix**
- "Recover wrong-cased keywords that start items" [rust#99918](https://github.com/rust-lang/rust/pull/99918) (last review activity: about 39 days ago)
  - cc @**Esteban Küber**

## Issues of Note

### Short Summary

- [5 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [3 P-critical, 0 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 39 P-high, 85 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ld64.lld: error: too many personalities (4) for compact unwind to encode" [rust#102754](https://github.com/rust-lang/rust/issues/102754) 
  - LLD bug will be fixed by [llvm#D135728](https://reviews.llvm.org/D135728), (now merged)
  - A ([comment](https://github.com/rust-lang/rust/issues/102754#issuecomment-1285775499)) says that the LLD fix would not help, [suggests that an additional rustc fix is needed](https://github.com/rust-lang/rust/issues/102754#issuecomment-1284345364)
  - note: I assume the above commenter is referring to "us" as in "Brave browser developers" (by looking at their github profile), so unrelated to the issue reporter (Firefox)
- "Rust update from 1.63 to 1.64 introduce lifetime problem on build" [rust#103141](https://github.com/rust-lang/rust/issues/103141) 
  - fixed by #103205, it's open to track beta+stable backports
- "regression: associated consts cannot be referenced in patterns" [rust#103242](https://github.com/rust-lang/rust/issues/103242) 
  - Will be fixed by [rust#103279](https://github.com/rust-lang/rust/pull/103279) (beta accepted)
- "regression: trait bound not satisfied" [rust#103243](https://github.com/rust-lang/rust/issues/103243) 
  - Will be fixed by [rust#103279](https://github.com/rust-lang/rust/pull/103279) (beta accepted)
- "function lifetime elision changed in 1.64" [rust#103330](https://github.com/rust-lang/rust/issues/103330)
  - @**simulacrum** [reports from T-lang](https://github.com/rust-lang/rust/issues/103330#issuecomment-1291136085) that this should be reverted but given that the 1.64 is almost out, the fix will probably slip to 1.65

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-10-26](https://github.com/rust-lang/rustc-perf/blob/5841a42e4edc3b7bebd449c753c4e0d4df1f4c92/triage/2022-10-26.md)

An amazing week. We saw more wins than losses; I want to call out specifically
the wins from removing attributes from metadata (up to 8.2% faster builds for 18
benchmarks) and from enabling LTO for rustc_driver.so (up to 9.6% faster builds
for an epic 230 benchmarks, with *zero* regressions).

Triage done by **@pnkfelix**.
Revision range: [e0f8e60d..629a414d](https://perf.rust-lang.org/?start=e0f8e60dddfecfc9093ee9d9f42557d8260c0355&end=629a414d7ba4caa3ca28b0a46c478e2ecb4c0059&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.7%  | [0.7%, 0.7%]   | 2     |
| Improvements (primary)   | -4.3% | [-9.4%, -0.4%] | 231   |
| Improvements (secondary) | -4.4% | [-9.5%, -0.5%] | 256   |
| All  (primary)           | -4.3% | [-9.4%, -0.4%] | 231   |


2 Regressions, 6 Improvements, 2 Mixed; 2 of them in rollups
30 Untriaged Pull Requests
53 artifact comparisons made in total

#### Regressions

Add default trait implementations for "c-unwind" ABI function pointers [#101263](https://github.com/rust-lang/rust/pull/101263) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=57e2c06a8df3187980801962015a88657abd033d&end=5c8bff74bc1c52bef0c79f3689bb227f51f3e82d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.9% | [0.2%, 2.6%] | 19    |
| Regressions (secondary)  | 1.9% | [0.4%, 3.0%] | 23    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.9% | [0.2%, 2.6%] | 19    |

* already triaged; all doc perf regressions, and already deemed acceptable.


Rollup of 10 pull requests [#103562](https://github.com/rust-lang/rust/pull/103562) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d49e7e7fa13479c11a3733824c78e280e391288b&end=629a414d7ba4caa3ca28b0a46c478e2ecb4c0059&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 43    |
| Regressions (secondary)  | 0.5% | [0.2%, 1.2%] | 25    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.4%] | 43    |

* all of the primary regressions (which seem small) are all in incr-patched scenarios. Most are also check builds, though there is some debug and opt mixed in as well.
* hard to tell from the list of rolled up PR's which one(s) would be to blame here
* w.r.t. the secondary benchmarks, the main contributor (in terms of the max regression observed) is `deeply-nested-multi`, which regressed by 0.74--1.2% depending on the scenario.
  * (In this case, the 1.2% regression is to a full build, not an incremental one.)
* In any case, the sheer number of impacted benchmarks is large enough that this warrants further review. Not marking as triaged. I'll try to dig into it later.

#### Improvements

Use Set instead of Vec in transitive_relation [#103214](https://github.com/rust-lang/rust/pull/103214) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d7dd01fe8b071602510eaac9f676acc0e3cf8e4a&end=4b8f4319954ff2642690b9e5cbe4af352d095bf6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.7%, -0.6%] | 2     |
| Improvements (secondary) | -1.2% | [-1.6%, -0.6%] | 7     |
| All  (primary)           | -0.6% | [-0.7%, -0.6%] | 2     |

* as noted in PR description: "doesn't fix the underlying quadraticness but it makes it a lot faster to an extent where even doubling the amount of nested references still takes less than two seconds (50s on nightly)."

Remove more attributes from metadata [#98450](https://github.com/rust-lang/rust/pull/98450) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=657f246812ab2684e3c3954b1c77f98fd59e0b21&end=ba9d01be67a97dd6762935762172e37ee22083ae&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -2.7% | [-8.2%, -0.2%] | 18    |
| Improvements (secondary) | -5.5% | [-8.4%, -0.8%] | 23    |
| All  (primary)           | -2.7% | [-8.2%, -0.2%] | 18    |

* This PR's comment+development history are pretty epic. :smile:
* anyway, great work from @lqd and @GuillaumeGomez

stop using `ty::UnevaluatedConst` directly [#103227](https://github.com/rust-lang/rust/pull/103227) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3022afe3d144ca6acd34da9846ab74fa51328fda&end=26c96e341639102afacbbcad0dc18ad0ac71ab18&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 10    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 10    |


Enable LTO for rustc_driver.so [#101403](https://github.com/rust-lang/rust/pull/101403) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9be2f35a4c1ed1b04aa4a6945b64763f599259ff&end=1ca6777c014813e3bdb98d155562fc3d111d86dd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -4.2% | [-9.6%, -0.4%] | 230   |
| Improvements (secondary) | -4.0% | [-9.5%, -0.4%] | 257   |
| All  (primary)           | -4.2% | [-9.6%, -0.4%] | 230   |

* Holy cow: 9.6% faster compiling diesel, 7% faster compiling serde, 1.3% faster bootstrap. Epic wins there.
* there is perhaps concern that it caused [#103538](https://github.com/rust-lang/rust/issues/103538): "rustc-dev component recently became a lot bigger"

Rollup of 11 pull requests [#103502](https://github.com/rust-lang/rust/pull/103502) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=758f19645b8ebce61ea52d1f6672fd057bc8dbee&end=f2702e922ba31e49d6167f5651d4545646dcf22d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.3%  | [2.3%, 2.3%]   | 1     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements (secondary) | -0.9% | [-1.2%, -0.8%] | 6     |
| All  (primary)           | -0.5% | [-0.5%, -0.5%] | 1     |



Perf improvements for effective visibility calculating [#103158](https://github.com/rust-lang/rust/pull/103158) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6365e5ad9fa9e2ec867a67aeeae414e7c62d8354&end=a5406feb1cf1a9f2479b72917cf4225e5f6aa240&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 6     |
| Improvements (secondary) | -0.6% | [-2.0%, -0.2%] | 22    |
| All  (primary)           | -0.4% | [-0.5%, -0.3%] | 6     |

* libc build times improved by ~1% in ten scenarios



#### Mixed

Deny hashing ty/re/ct inference variables [#103220](https://github.com/rust-lang/rust/pull/103220) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ebdde35dced40adb46f8aad054fb2adb86b39427&end=4b3b731b55a588dd34a75bbb87fdaaec2e3f5707&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.8%  | [0.5%, 1.2%]   | 8     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 2     |
| Improvements (secondary) | -0.9% | [-1.0%, -0.5%] | 9     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 2     |

* already triaged: "The perf changes are small and the wins balance out the losses. No need to stress on this one, I think."

Remove ParamEnv from uninhabited query [#102660](https://github.com/rust-lang/rust/pull/102660) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6e95b6da885f42a4e1314595089fa4295e329d11&end=6c9c2d862dd10718ba2b2a320c3390995ad414bc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.5%  | [1.2%, 1.7%]   | 7     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 2     |
| Improvements (secondary) | -1.2% | [-1.2%, -1.2%] | 3     |
| All  (primary)           | -0.2% | [-0.2%, -0.2%] | 2     |

* Not sure why this was flagged as Mixed rather than Improvement.
* Marked as triaged.

#### Nags requiring follow up

None

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "libcompiler-builtins contains DWARF5 debuginfo in 1.62.0" [rust#98746](https://github.com/rust-lang/rust/issues/98746)
  - Nominated by Felix, this slipped prioritization and went unnoticed (I assume because not labelled as a regression)
- "Remove save-analysis." [rust#101841](https://github.com/rust-lang/rust/pull/101841)
  - Nominated by Wesley to decide when landing this ([comment](https://github.com/rust-lang/rust/pull/101841#issuecomment-1290609092)) and allow other tooling to migrate to `rust-analyzer` [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Future.20of.20save-analysis/near/304896312)
  - and also how to give proper notice (@**nnethercote** [comment](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Future.20of.20save-analysis/near/305921181))
 
[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- Impl Trait initiative by @**oli**
- @_*WG-llvm* LLVM by @**nagisa** and @**Nikita Popov**
