---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-11-24

## Announcements

- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMjExMjhUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-28T10:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMjExMjRUMTcwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-24T12:00:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjExMjhUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-28T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 6 months ago)
    - :loudspeaker: Stale MCP: candidate for closing in about 2 weeks
    - [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Arbitrary.20annotations.20in.20compiletest.20compiler-team.23513)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 4 months ago)
    - Been suggested this is more a T-lang thing. Opened #**t-lang>MCP #526**
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: 2 months ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 2 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: 2 months ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 57 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: 2 months ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 30 days ago)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) (last review activity: about 36 days ago)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: about 36 days ago)
  - "New tier-3 targets for OpenHarmony" [compiler-team#568](https://github.com/rust-lang/compiler-team/issues/568) (last review activity: about 4 days ago)
- Pending FCP requests (check your boxes!)
  - "Change `bindings_with_variant_name` to deny-by-default" [rust#104154](https://github.com/rust-lang/rust/pull/104154#issuecomment-1307473562) 
- Things in FCP (make sure you're good with it)
  - "Redefine dropck in terms of bound-like constructs" [compiler-team#563](https://github.com/rust-lang/compiler-team/issues/563) 
  - "Stabilize native library modifier `verbatim`" [rust#104360](https://github.com/rust-lang/rust/pull/104360) 
- Accepted MCPs
  - "Raw pointer alignment checks in debug" [compiler-team#570](https://github.com/rust-lang/compiler-team/issues/570) 
  - "Reboot Parallel Rustc WG Proposal" [compiler-team#567](https://github.com/rust-lang/compiler-team/issues/567) 
- Finalized FCPs (disposition merge)
  - "Make PROC_MACRO_DERIVE_RESOLUTION_FALLBACK a hard error" [rust#84022](https://github.com/rust-lang/rust/pull/84022) 
  - "Make `Sized` coinductive, again" [rust#100386](https://github.com/rust-lang/rust/pull/100386) 
  - "Handle projections as uncovered types during coherence check" [rust#100555](https://github.com/rust-lang/rust/pull/100555) 
  - "Elaborate supertrait obligations when deducing closure signatures" [rust#101834](https://github.com/rust-lang/rust/pull/101834) 
  - "make const_err a hard error" [rust#102091](https://github.com/rust-lang/rust/pull/102091) 
  - "make unaligned_reference a hard error" [rust#102513](https://github.com/rust-lang/rust/pull/102513) 
  - "make `order_dependent_trait_objects` show up in future-breakage reports" [rust#102635](https://github.com/rust-lang/rust/pull/102635) 
  - "Stabilize raw-dylib for non-x86" [rust#102793](https://github.com/rust-lang/rust/issues/102793) 
  - "Use `token::Lit` in `ast::ExprKind::Lit`." [rust#102944](https://github.com/rust-lang/rust/pull/102944) 
  - "Remove drop order twist of && and || and make them associative" [rust#103293](https://github.com/rust-lang/rust/pull/103293) 
  - "Unreserve braced enum variants in value namespace" [rust#103578](https://github.com/rust-lang/rust/pull/103578)

### WG checkins

- @_*WG-self-profile* @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/7G80yGgQQjeW-TJCMrOSMA#WG-checkins)):
  > nothing to report this cycle

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Bump the const eval step limit" [rust#104782](https://github.com/rust-lang/rust/pull/104782)
  - Fixes #103814, P-high regression, pending review from @**pnkfelix** 
  - issue was discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-11-17/near/310641367)
  - this PR replaces #103877 - should the beta nomination be removed there @**oli** ? 

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- (hidden issues in progress or waiting on other teams, [details here](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "stop special-casing `'static` in evaluation" [rust#102472](https://github.com/rust-lang/rust/pull/102472) (last review activity: about 55 days ago)
  - waiting for some comments from @**nikomatsakis** 
- "Track `-Cprofile-use` and `-Cprofile-sample-use` value by file hash, not file path" [rust#100413](https://github.com/rust-lang/rust/pull/100413) (last review activity: about 47 days ago)
  - waiting for some comments from @**nikomatsakis** 
- "Inferred lifetimes cleanup" [rust#102673](https://github.com/rust-lang/rust/pull/102673) (last review activity: about 49 days ago)
  - rust highfive added T-compiler: is it the case though?
- "Fix #99684 through autoref in `write!` macro with a two-phased borrows retrocompat workaround" [rust#100202](https://github.com/rust-lang/rust/pull/100202) (last review activity: about 45 days ago)
  - anything more to review from T-compiler @**eddyb** ?
- "make a help text for 'cannot find macro' actionable" [rust#102881](https://github.com/rust-lang/rust/pull/102881) (last review activity: about 43 days ago)
  - pending [comment](https://github.com/rust-lang/rust/pull/102881#discussion_r992200121) for @**Michael Goulet (compiler-errors)** 
  

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [56 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [29 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 3 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 34 P-high, 84 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- (issues #102754 and #103814 recently discussed in past meetings)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-11-22](https://github.com/rust-lang/rustc-perf/blob/582fec0840c91477dd5a66f198a5a666a03902c6/triage/2022-11-22.md)

A fairly quiet week with regressions unfortunately slightly outweighing regressions. There was not any particular change of much note. Many of the regressions were justifiable since they were for critical bug fixes.

Triage done by **@rylev**.
Revision range: [96ddd32c..a78c9bee](https://perf.rust-lang.org/?start=96ddd32c4bfb1d78f0cd03eb068b1710a8cebeef&end=a78c9bee4d9d51a3891bd8ecae1f28a93b83653b&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 3.0%]   | 76    |
| Regressions (secondary)  | 1.5%  | [0.3%, 8.4%]   | 69    |
| Improvements (primary)   | -0.7% | [-1.8%, -0.2%] | 18    |
| Improvements (secondary) | -1.4% | [-3.2%, -0.2%] | 35    |
| All  (primary)           | 0.4%  | [-1.8%, 3.0%]  | 94    |


7 Regressions, 4 Improvements, 6 Mixed; 5 of them in rollups
47 artifact comparisons made in total

#### Regressions

Rollup of 13 pull requests [#104428](https://github.com/rust-lang/rust/pull/104428) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=101e1822c3e54e63996c8aaa014d55716f3937eb&end=ca92d90b5917e7176d5ff06607a2cd5352c088d3&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.2% | [0.3%, 3.3%] | 14    |
| Regressions (secondary)  | 2.1% | [0.3%, 3.3%] | 23    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.2% | [0.3%, 3.3%] | 14    |


Perform simple scalar replacement of aggregates (SROA) MIR opt [#102570](https://github.com/rust-lang/rust/pull/102570) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a00f8ba7fcac1b27341679c51bf5a3271fa82df3&end=79146baa9c7e00b716cc41f8660a56cd2acdf8bd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 2     |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.8%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.4% | [-1.4%, -1.4%] | 1     |
| All  (primary)           | 0.2%  | [0.2%, 0.2%]   | 2     |
- [#104404](https://github.com/rust-lang/rust/pull/104404) is the cause of the regression.
- [Justification](https://github.com/rust-lang/rust/pull/104404#issuecomment-1317574300) for this regression was posted #104404. Effectively this regression is taking us back to the baseline. 


Attempt to reuse `Vec<T>` backing storage for `Rc/Arc<[T]>` [#104205](https://github.com/rust-lang/rust/pull/104205) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7c75fe4c8547c276574cacb144919d67fd8ab302&end=36db030a7c3c51cb4484cbd8c8daebcf5057d61c&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.4% | [0.1%, 1.4%] | 16    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |
- This was reverted in #104571


Rollup of 11 pull requests [#104555](https://github.com/rust-lang/rust/pull/104555) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=30117a1dbb843da1d5ab1258e89a3ed0b1940475&end=9d46c7a3e69966782e163877151c1f0cea8b630a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.4%, 0.5%] | 2     |
| Regressions (secondary)  | 1.3% | [1.3%, 1.3%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.4%, 0.5%] | 2     |
-`externs` is noisy at the moment, and the two `doc` regressions for `syn` and `webrender` are small enough to not worry about.


Rollup of 8 pull requests [#104600](https://github.com/rust-lang/rust/pull/104600) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=becc24a23aed2639db3b78acd93ec6d553898583&end=2f8d8040166a730d0da7bba0f2864f0ef7ff6364&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.7%] | 3     |
| Regressions (secondary)  | 6.1% | [1.3%, 8.8%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 0.7%] | 3     |
- #104411 seems to be causing most of this. 
- The regressions are few enough in number that I don't think this is necessarily worth looking into.

Revert Vec/Rc storage reuse opt [#104571](https://github.com/rust-lang/rust/pull/104571) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5e6de2369c82ed0b36e6b651b041bad5cb5e1ef8&end=62c627c7a3a9b3e193a5ae6e1ec7348bc5136301&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.4%, 0.5%] | 5     |
| Regressions (secondary)  | 1.2% | [1.2%, 1.2%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.4%, 0.5%] | 5     |
- This removes a recently-merged optimization that caused CI failures because it doesn't work reliably on all platforms.


Clean up and harden various methods around trait substs [#104533](https://github.com/rust-lang/rust/pull/104533) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b7bc90fea3b441234a84b49fdafeb75815eebbab&end=28a53cdb4695b71cb9ee39959df88542056479cd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.5%]   | 11    |
| Regressions (secondary)  | 0.6%  | [0.2%, 0.9%]   | 27    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | 0.3%  | [0.2%, 0.5%]   | 11    |
- Currently being investigated by @oli-obk in [#104709](https://github.com/rust-lang/rust/pull/104709)


#### Improvements

Merge basic blocks where possible when generating LLVM IR. [#103138](https://github.com/rust-lang/rust/pull/103138) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bebd57a9602e48431c90274fbf7d96683b0708b6&end=251831ece9601d64172127b6caae9087358c2386&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.4%, -0.4%] | 6     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 2     |
| All  (primary)           | -0.8% | [-1.4%, -0.4%] | 6     |


Record `LocalDefId` in HIR nodes instead of a side table [#104170](https://github.com/rust-lang/rust/pull/104170) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9340e5c1b9dee53fd32a18f7bfb54faabfe00b7b&end=7c75fe4c8547c276574cacb144919d67fd8ab302&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 4     |
| Improvements (secondary) | -1.1% | [-2.3%, -0.6%] | 12    |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 4     |


Remove allow(rustc::potential_query_instability) from rustc_ast_lowering [#104330](https://github.com/rust-lang/rust/pull/104330) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9d46c7a3e69966782e163877151c1f0cea8b630a&end=fd3bfb35511cbcff59ce1454d3db627b576d7e92&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.6% | [-1.3%, -0.3%] | 6     |
| All  (primary)           | -     | -              | 0     |


Factor out `conservative_is_privately_uninhabited` [#103454](https://github.com/rust-lang/rust/pull/103454) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ccde51a912e89478a649dc9e64b5584a5971f75f&end=736c675d2ab65bcde6554e1b73340c2dbc27c85a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.9%, -0.2%] | 22    |
| Improvements (secondary) | -0.7% | [-0.7%, -0.7%] | 2     |
| All  (primary)           | -0.4% | [-0.9%, -0.2%] | 22    |


#### Mixed

Rollup of 9 pull requests [#104437](https://github.com/rust-lang/rust/pull/104437) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=357f66072959f494d5fa2e6a269c6100eed703c1&end=6d651a295e0e0c331153288b10b78344a4ede20b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 4     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | 0.3%  | [0.2%, 0.4%]   | 4     |
- Too small a regression for us to investigate this rollup (this is just barely passing the mark for being considered significant).


Use `token::Lit` in `ast::ExprKind::Lit`. [#102944](https://github.com/rust-lang/rust/pull/102944) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e9493d63c2a57b91556dccd219e21821432c7445&end=bebd57a9602e48431c90274fbf7d96683b0708b6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.7%]   | 16    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -0.5% | [-1.0%, -0.3%] | 10    |
| All  (primary)           | 0.3%  | [-0.2%, 0.7%]  | 17    |
- The wins and losses roughly balance out. Also, this will enable some additional improvements by shrinking the size of `ast::Expr`.


x86_64 SSE2 fast-path for str.contains(&str) and short needles [#103779](https://github.com/rust-lang/rust/pull/103779) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=251831ece9601d64172127b6caae9087358c2386&end=9340e5c1b9dee53fd32a18f7bfb54faabfe00b7b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.6%]   | 4     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 5     |
| Improvements (secondary) | -1.0% | [-1.3%, -0.6%] | 4     |
| All  (primary)           | -0.1% | [-0.5%, 0.6%]  | 9     |
- A few wins, a few losses, it roughly balances out.


Shrink `ast::Expr` harder [#101562](https://github.com/rust-lang/rust/pull/101562) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fd3bfb35511cbcff59ce1454d3db627b576d7e92&end=70fe5f08fffd16dc20506f7d140e47b074f77964&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.8%]   | 10    |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.7%]   | 10    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.6%, -0.2%] | 13    |
| All  (primary)           | 0.4%  | [0.2%, 0.8%]   | 10    |
- Instruction count results are mixed. But the real results are for cycles and wall-time, which show lots of improvements.


Revert "Normalize opaques with escaping bound vars" [#103509](https://github.com/rust-lang/rust/pull/103509) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2f8d8040166a730d0da7bba0f2864f0ef7ff6364&end=5e6de2369c82ed0b36e6b651b041bad5cb5e1ef8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.3%, 0.8%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.6% | [-2.2%, -0.3%] | 6     |
| All  (primary)           | -     | -              | 0     |
- This is a necessary fix for a compiler hang. Additionally the improvements outweigh the regressions and this is all confined to secondary benchmarks.


Rollup of 6 pull requests [#104646](https://github.com/rust-lang/rust/pull/104646) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=911cbf8e46f0f3b044c87fc5cbca922878db757b&end=a28f3c88e50a77bc2a91889241248c4543854e61&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.4%, 0.9%]   | 7     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.4% | [-2.1%, -0.4%] | 9     |
| All  (primary)           | 0.7%  | [0.4%, 0.9%]   | 7     |
- Regressions are noise


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- Generic Associated Types initiative by @**Jack Huey**
- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
