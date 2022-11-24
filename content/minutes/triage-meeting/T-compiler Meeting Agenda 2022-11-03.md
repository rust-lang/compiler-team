---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-11-03

## Announcements

- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjExMDRUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-04T09:00:00-04:00>
- Today: new stable release 1.65!
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMjExMDdUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-07T10:00:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjExMDdUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-07T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Redefine dropck in terms of bound-like constructs" [compiler-team#563](https://github.com/rust-lang/compiler-team/issues/563) 
  - "Support enum as type of static variable with #[linkage]" [compiler-team#565](https://github.com/rust-lang/compiler-team/issues/565) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 6 months ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 3 months ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: 2 months ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 2 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 56 days ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 36 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 56 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 9 days ago)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) (last review activity: about 15 days ago)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: about 16 days ago)
- Pending FCP requests (check your boxes!)
  - "Unreserve braced enum variants in value namespace" [rust#103578](https://github.com/rust-lang/rust/pull/103578) 
- Things in FCP (make sure you're good with it)
  - "Raise minimum supported macOS and iOS versions" [compiler-team#556](https://github.com/rust-lang/compiler-team/issues/556) 
  - "Custom THIR -> MIR parser for testing purposes" [compiler-team#564](https://github.com/rust-lang/compiler-team/issues/564) 
- Accepted MCPs
  - "New Tier-3 target proposal: powerpc64-ibm-aix" [compiler-team#553](https://github.com/rust-lang/compiler-team/issues/553) 
  - "MCP: Raise UEFI Targets to Tier-2" [compiler-team#555](https://github.com/rust-lang/compiler-team/issues/555) 
- Finalized FCPs (disposition merge)
  - "Make PROC_MACRO_DERIVE_RESOLUTION_FALLBACK a hard error" [rust#84022](https://github.com/rust-lang/rust/pull/84022) 
  - "Handle projections as uncovered types during coherence check" [rust#100555](https://github.com/rust-lang/rust/pull/100555) 
  - "make const_err a hard error" [rust#102091](https://github.com/rust-lang/rust/pull/102091) 
  - "make unaligned_reference a hard error" [rust#102513](https://github.com/rust-lang/rust/pull/102513) 
  - "make `order_dependent_trait_objects` show up in future-breakage reports" [rust#102635](https://github.com/rust-lang/rust/pull/102635) 
  - "Stabilize raw-dylib for non-x86" [rust#102793](https://github.com/rust-lang/rust/issues/102793)

### WG checkins

- Impl Trait initiative by @**oli** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Checkin text

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Unreserve braced enum variants in value namespace" [rust#103578](https://github.com/rust-lang/rust/pull/103578)
  - opened by @**Vadim Petrochenkov**
  - T-lang approved the change
  - it is now pending approval from @**pnkfelix** ([comment](https://github.com/rust-lang/rust/pull/103578#issuecomment-1298942489))
- "Make rustc_target usable outside of rustc" [rust#103693](https://github.com/rust-lang/rust/pull/103693)
  - @**Vadim Petrochenkov** nominated for T-compiler discussion ([comment](https://github.com/rust-lang/rust/pull/103693#issuecomment-1295351860))
  - @**oli** clarifies that from the compiler point of view no compatibility guarantees are needed ([comment](https://github.com/rust-lang/rust/pull/103693#issuecomment-1295893260))
  - @**eddyb** suggests some implementation details ([comment](https://github.com/rust-lang/rust/pull/103693#issuecomment-1298299663))
- (4 other hidden issues in progress or waiting on other teams)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- skipped this week

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [3 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 38 P-high, 85 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ld64.lld: error: too many personalities (4) for compact unwind to encode" [rust#102754](https://github.com/rust-lang/rust/issues/102754) 
  - Waiting for T-release on including a mention about this ([comment](https://github.com/rust-lang/rust/issues/102754#issuecomment-1293749481))
  - Current draft of [release notes](https://github.com/rust-lang/blog.rust-lang.org/blob/1b4e24bf1f8058a69090542e464c3ad6419a43c2/posts/2022-11-03-Rust-1.65.0.md)
- (#103141, #103242, #103243 previously discussed and fixed in next stable)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-11-02](https://github.com/rust-lang/rustc-perf/blob/4e189e88fd41b8a55de2588f79c8e53f113718ed/triage/2022-11-02.md)

Noise continues to make triaging a bit tedious. We've become good at identifying noise, but we may need to invest in trying to reduce it or automate some of the triaging needed to identify it. In terms of performance, this week ending up being positive albeit with improvements only outweighing regressions by a little. Some of the largest improvements were in reverts of previous regressions as well.

Triage done by **@rylev**.
Revision range: [629a414d..822f8](https://perf.rust-lang.org/?start=629a414d7ba4caa3ca28b0a46c478e2ecb4c0059&end=822f8c22f540b12f296d844ad5bf39aaa47bfeb4&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.7%  | [0.2%, 7.9%]   | 28    |
| Regressions (secondary)  | 1.7%  | [0.2%, 7.0%]   | 97    |
| Improvements (primary)   | -1.2% | [-4.6%, -0.2%] | 73    |
| Improvements (secondary) | -1.3% | [-2.6%, -0.3%] | 61    |
| All  (primary)           | -0.4% | [-4.6%, 7.9%]  | 101   |

13 Regressions, 9 Improvements, 5 Mixed; 9 of them in rollups
41 artifact comparisons made in total

#### Regressions

Rollup of 6 pull requests [#103572](https://github.com/rust-lang/rust/pull/103572) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=43dd3d514b6b11c5195de2fd8e665828801d0972&end=0a6b941df354c59b546ec4c0d27f2b9b0cb1162c&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.3%] | 3     |
| Regressions (secondary)  | 0.3% | [0.3%, 0.3%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.3%] | 3     |
- Small number and severity of regressions means that we don't need to follow up on this.


Rollup of 5 pull requests [#103671](https://github.com/rust-lang/rust/pull/103671) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=898f463c93e72dac9b7a28ae662dd12fd71be0b7&end=a9ef10019fd3be6e03afb4b213368f4af1917f9b&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 1.5%] | 14    |
| Regressions (secondary)  | 2.0% | [0.5%, 4.1%] | 18    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 1.5%] | 14    |
- Most of the secondary regressions seem to be noise, but the primary regressions are unlikely to be.
- A perf run was done for #103641, but nothing showed up. 
- A new attempt for #103550 was kicked off. 

Fix line numbers for MIR inlined code [#103071](https://github.com/rust-lang/rust/pull/103071) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5237c4d83db0a04a0119918b174ee642acd82d9c&end=77e7b74ad5c0c449fa378faf5edf33dd2e6fed87&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.0% | [0.6%, 2.2%] | 8     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.0% | [0.6%, 2.2%] | 8     |
- Perf regression seems real and @wesleywiser has committed to investigate.

poll_fn and Unpin: fix pinning [#102737](https://github.com/rust-lang/rust/pull/102737) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9565dfeb4e6225177bbe78f18cd48a7982f34401&end=7174231ae66aa3e938cbe0b84e23e79d867fec20&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [1.2%, 1.4%] | 2     |
| Regressions (secondary)  | 2.0% | [0.4%, 4.1%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [1.2%, 1.4%] | 2     |
- This is very likely noise as [described here](https://github.com/rust-lang/rust/pull/102737#issuecomment-1295789750).

Introduce UnordMap, UnordSet, and UnordBag (MCP 533) [#102698](https://github.com/rust-lang/rust/pull/102698) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=33b55ac39fa633d0983fad014469e1036669bf28&end=607878d069267e1402ad792c9331b426e4c6d0f9&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [1.2%, 1.4%] | 2     |
| Regressions (secondary)  | 1.8% | [0.4%, 4.1%] | 14    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [1.2%, 1.4%] | 2     |
- This is very likely noise as [described here](https://github.com/rust-lang/rust/pull/102698#issuecomment-1295802732).

Rollup of 8 pull requests [#103727](https://github.com/rust-lang/rust/pull/103727) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=33b530e04099465a8029ef581202d52f4075558e&end=68c836a904e5a421712db311421c5266f9ce71c0&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [1.2%, 1.4%] | 2     |
| Regressions (secondary)  | 1.9% | [0.4%, 4.1%] | 13    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [1.2%, 1.4%] | 2     |
- This is very likely noise as [described here](https://github.com/rust-lang/rust/pull/103727#issuecomment-1296095218).

Bump to 1.67.0 [#103731](https://github.com/rust-lang/rust/pull/103731) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5e9772042948002f9c6f60c4c81603170035fffa&end=15ee24a2fab6a29dd2235d7c4e383c9011f5900f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [1.2%, 1.4%] | 2     |
| Regressions (secondary)  | 2.1% | [0.5%, 4.1%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [1.2%, 1.4%] | 2     |
- This is very likely noise as [described here](https://github.com/rust-lang/rust/pull/103731#issuecomment-1296094665).

update Miri [#103721](https://github.com/rust-lang/rust/pull/103721) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4827ceecb9ee9bc0508fecf7059bcc134ca187d0&end=b03502b35d111bef0399a66ab3cc765f0802e8ba&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [1.2%, 1.4%] | 2     |
| Regressions (secondary)  | 3.1% | [0.4%, 4.1%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [1.2%, 1.4%] | 2     |
- This is very likely noise as [described here](https://github.com/rust-lang/rust/pull/103721#issuecomment-1296185580).

ci: Bring back ninja for dist builders [#103295](https://github.com/rust-lang/rust/pull/103295) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fab0432952b24df769459d4c973dbb8d08561a83&end=5ab74459b86465e751fc8f6fa9934687423ce2a6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.5%  | [0.2%, 7.2%]   | 22    |
| Regressions (secondary)  | 2.0%  | [0.2%, 6.5%]   | 68    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.0% | [-1.0%, -1.0%] | 1     |
| All  (primary)           | 1.5%  | [0.2%, 7.2%]   | 22    |
- Currently unclear why this would cause regressions, but it seems real.
- A PR reverting this one was filed and [improvements in performance were clear](https://github.com/rust-lang/rust/pull/103846#issuecomment-1299483877).
- A [call to revert has been made](https://github.com/rust-lang/rust/pull/103295#issuecomment-1300333035).

Don't use usub.with.overflow intrinsic [#103299](https://github.com/rust-lang/rust/pull/103299) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5ab74459b86465e751fc8f6fa9934687423ce2a6&end=f42b6fa7cad0d221b0c5407dca70b085784b1b5e&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [1.2%, 1.4%] | 2     |
| Regressions (secondary)  | 3.6% | [3.2%, 4.1%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [1.2%, 1.4%] | 2     |
- This is very likely noise as [described here](https://github.com/rust-lang/rust/pull/103299#issuecomment-1296371614).

Include both benchmarks and tests in the numbers given to `TeFiltered{,Out}` [#103795](https://github.com/rust-lang/rust/pull/103795) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2afca78a0b03db144c5d8b9f8868feebfe096309&end=95a3a7277b44bbd2dd3485703d9a05f64652b60e&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [1.2%, 1.4%] | 2     |
| Regressions (secondary)  | 3.6% | [3.2%, 4.1%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [1.2%, 1.4%] | 2     |
- This is very likely noise as [described here](https://github.com/rust-lang/rust/pull/103795#issuecomment-1298008230).

(almost) Always use `ObligationCtxt` when dealing with canonical queries [#103590](https://github.com/rust-lang/rust/pull/103590) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c493bae0d8efd75723460ce5c371f726efa93f15&end=e70cbef0c5db81079f4b5643380d6047ccd34a10&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 2.2% | [1.6%, 2.9%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |
- This could be noise, but it might not be - either way it's too small of a regression to worry about [as discussed here](https://github.com/rust-lang/rust/pull/103590#issuecomment-1299184031).

Track where diagnostics were created. [#103217](https://github.com/rust-lang/rust/pull/103217) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ab5a2bc7316012ee9b2a4a4f3821673f2677f3d5&end=11ebe6512b4c77633c59f8dcdd421df3b79d1a9f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 2.2% | [1.6%, 2.8%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |
- The likelihood that this is noise is pretty high as you can see from the end of [this graph](https://perf.rust-lang.org/index.html?start=2022-10-29&end=11ebe6512b4c77633c59f8dcdd421df3b79d1a9f&benchmark=deeply-nested-multi&profile=check&scenario=full&stat=instructions%3Au&kind=percentrelative).

#### Improvements

Revert "Unify tcx.constness and param env constness checks" [#103284](https://github.com/rust-lang/rust/pull/103284) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=629a414d7ba4caa3ca28b0a46c478e2ecb4c0059&end=43dd3d514b6b11c5195de2fd8e665828801d0972&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-1.0%, -0.2%] | 43    |
| Improvements (secondary) | -1.0% | [-2.7%, -0.1%] | 36    |
| All  (primary)           | -0.4% | [-1.0%, -0.2%] | 43    |


privacy: Rename "accessibility levels" to "effective visibilities" [#102233](https://github.com/rust-lang/rust/pull/102233) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7174231ae66aa3e938cbe0b84e23e79d867fec20&end=33b55ac39fa633d0983fad014469e1036669bf28&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.3% | [-1.4%, -1.2%] | 2     |
| Improvements (secondary) | -2.0% | [-4.0%, -0.4%] | 12    |
| All  (primary)           | -1.3% | [-1.4%, -1.2%] | 2     |


Do not consider repeated lifetime params for elision. [#103450](https://github.com/rust-lang/rust/pull/103450) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=68c836a904e5a421712db311421c5266f9ce71c0&end=5e9772042948002f9c6f60c4c81603170035fffa&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.4%, -0.2%] | 3     |
| Improvements (secondary) | -1.9% | [-4.0%, -0.4%] | 13    |
| All  (primary)           | -0.9% | [-1.4%, -0.2%] | 3     |


Rollup of 8 pull requests [#103745](https://github.com/rust-lang/rust/pull/103745) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=15ee24a2fab6a29dd2235d7c4e383c9011f5900f&end=4827ceecb9ee9bc0508fecf7059bcc134ca187d0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.3% | [-1.4%, -1.2%] | 2     |
| Improvements (secondary) | -2.0% | [-4.0%, -0.5%] | 12    |
| All  (primary)           | -1.3% | [-1.4%, -1.2%] | 2     |


Rollup of 5 pull requests [#103755](https://github.com/rust-lang/rust/pull/103755) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b03502b35d111bef0399a66ab3cc765f0802e8ba&end=e96c330af5e3baebe7a80999744e2e082b279d0a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.3% | [-1.4%, -1.2%] | 2     |
| Improvements (secondary) | -3.5% | [-4.0%, -3.1%] | 6     |
| All  (primary)           | -1.3% | [-1.4%, -1.2%] | 2     |


rustdoc: Simplify modifications of effective visibility table [#103010](https://github.com/rust-lang/rust/pull/103010) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e96c330af5e3baebe7a80999744e2e082b279d0a&end=fab0432952b24df769459d4c973dbb8d08561a83&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.1%  | [1.1%, 1.1%]   | 1     |
| Improvements (primary)   | -0.6% | [-1.3%, -0.3%] | 21    |
| Improvements (secondary) | -1.1% | [-1.5%, -0.3%] | 21    |
| All  (primary)           | -0.6% | [-1.3%, -0.3%] | 21    |


Update LLVM submodule [#103479](https://github.com/rust-lang/rust/pull/103479) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f42b6fa7cad0d221b0c5407dca70b085784b1b5e&end=77e57db384aca99444c3b5f6a9c86bc58a804d89&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.3% | [-1.4%, -1.2%] | 2     |
| Improvements (secondary) | -3.4% | [-3.9%, -3.1%] | 6     |
| All  (primary)           | -1.3% | [-1.4%, -1.2%] | 2     |


Use `br` instead of `switch` in more cases. [#103331](https://github.com/rust-lang/rust/pull/103331) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=77e57db384aca99444c3b5f6a9c86bc58a804d89&end=d726c8467c06088d5d4488edf6b015ec9698c1ea&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.0% | [-4.6%, -0.4%] | 34    |
| Improvements (secondary) | -2.2% | [-3.3%, -1.0%] | 12    |
| All  (primary)           | -2.0% | [-4.6%, -0.4%] | 34    |


Enable `x.py check` for miri [#102950](https://github.com/rust-lang/rust/pull/102950) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=95a3a7277b44bbd2dd3485703d9a05f64652b60e&end=024207ab43aceb49f2ca957509c503ccf12089d7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.3% | [-1.4%, -1.2%] | 2     |
| Improvements (secondary) | -3.5% | [-4.0%, -3.1%] | 6     |
| All  (primary)           | -1.3% | [-1.4%, -1.2%] | 2     |


#### Mixed

Remove allow(rustc::potential_query_instability) in rustc_const_eval [#102674](https://github.com/rust-lang/rust/pull/102674) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a9ef10019fd3be6e03afb4b213368f4af1917f9b&end=5237c4d83db0a04a0119918b174ee642acd82d9c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | 0.6%  | [0.3%, 0.8%]   | 18    |
| Improvements (primary)   | -0.6% | [-1.4%, -0.2%] | 5     |
| Improvements (secondary) | -2.7% | [-3.9%, -0.3%] | 8     |
| All  (primary)           | -0.5% | [-1.4%, 0.4%]  | 6     |
- A mix of noise and some accetpable regressions [as described here](https://github.com/rust-lang/rust/pull/102674#issuecomment-1296373084).

Rollup of 7 pull requests [#103714](https://github.com/rust-lang/rust/pull/103714) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=607878d069267e1402ad792c9331b426e4c6d0f9&end=33b530e04099465a8029ef581202d52f4075558e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.4%, 0.7%]   | 5     |
| Improvements (primary)   | -1.3% | [-1.4%, -1.2%] | 2     |
| Improvements (secondary) | -1.9% | [-4.0%, -0.4%] | 12    |
| All  (primary)           | -1.3% | [-1.4%, -1.2%] | 2     |
- A mix of noise and some accetpable regressions [as described here](https://github.com/rust-lang/rust/pull/103714#issuecomment-1300409938).


Rollup of 10 pull requests [#103829](https://github.com/rust-lang/rust/pull/103829) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=024207ab43aceb49f2ca957509c503ccf12089d7&end=dc05f60c1ff4e2cb2e6eb80c9b3afa612ce28c7f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.3%  | [1.2%, 1.4%]   | 2     |
| Regressions (secondary)  | 3.6%  | [3.2%, 4.1%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.0% | [-2.0%, -0.2%] | 13    |
| All  (primary)           | 1.3%  | [1.2%, 1.4%]   | 2     |
- A mix of noise and some accetpable regressions [as described here](https://github.com/rust-lang/rust/pull/103829#issuecomment-1298313603).


Rollup of 6 pull requests [#103832](https://github.com/rust-lang/rust/pull/103832) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dc05f60c1ff4e2cb2e6eb80c9b3afa612ce28c7f&end=c493bae0d8efd75723460ce5c371f726efa93f15&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.3%  | [0.4%, 2.2%]   | 2     |
| Regressions (secondary)  | 0.6%  | [0.3%, 0.9%]   | 2     |
| Improvements (primary)   | -1.3% | [-1.4%, -1.2%] | 2     |
| Improvements (secondary) | -1.9% | [-3.9%, -0.3%] | 14    |
| All  (primary)           | 0.0%  | [-1.4%, 2.2%]  | 4     |
- A mix of noise and some accetpable regressions [as described here](https://github.com/rust-lang/rust/pull/103832#issuecomment-1299188855).


Rollup of 5 pull requests [#103841](https://github.com/rust-lang/rust/pull/103841) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4c736a21ae317086871094b1671d6535be593502&end=ab5a2bc7316012ee9b2a4a4f3821673f2677f3d5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.4%, 0.6%]   | 8     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.1% | [-2.8%, -1.7%] | 7     |
| All  (primary)           | 0.5%  | [0.4%, 0.6%]   | 8     |
- Seems like [#103760](https://github.com/rust-lang/rust/commit/e418a044dfe47ef6422a4b0bbc28279af757add2) is the culprit.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "libcompiler-builtins contains DWARF5 debuginfo in 1.62.0" [rust#98746](https://github.com/rust-lang/rust/issues/98746)
  - (from previous meeting): nominated by @**pnkfelix**, slipped prioritization and went unnoticed (was not labelled as regression)
  - [comment](https://github.com/rust-lang/rust/issues/98746#issuecomment-1289379708) with some context
- "Upgrade mingw-w64 on CI" [rust#100178](https://github.com/rust-lang/rust/pull/100178)
  - here is some context on versions: [comment](https://github.com/rust-lang/rust/pull/100178#issuecomment-1264488768)
  - nominated by @**cuviper** ([comment](https://github.com/rust-lang/rust/pull/100178#issuecomment-1301500693)) for weighing in the compatibility point of view, also considering the upcoming LLVM16 [comment](https://github.com/rust-lang/rust/pull/100178#issuecomment-1281284869)
  - provides a [summary of options](https://github.com/rust-lang/rust/pull/100178#issuecomment-1299331918)
- "Remove save-analysis." [rust#101841](https://github.com/rust-lang/rust/pull/101841)
  - from last week: nominated by Wesley to decide when landing this ([comment](https://github.com/rust-lang/rust/pull/101841#issuecomment-1290609092)) and allow other tooling to migrate to `rust-analyzer` [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Future.20of.20save-analysis/near/304896312)
- "Android NDK r25b changes will break developers using r22b or older" [rust#103673](https://github.com/rust-lang/rust/issues/103673)
  - First comment has a lot of useful context
  - Nominated by @**simulacrum** ([comment](https://github.com/rust-lang/rust/issues/103673#issuecomment-1294946457)), suggests a rollback of #102332 or tweak the new min. version threshold 
  - Discussed also on [Zulip](https://rust-lang.zulipchat.com/#narrow/stream/122651-general/topic/Formalizing.20Rust's.20Android.20NDK.2FAPI.20Support/near/291907407)
  - @**apiraino**: maybe an FCP? perhaps worth mentioning that the suggested new Android NDK min. version would be a jump (`r15c` -> `r25b`) to the latest LTS (released in Oct. 2022)
- "Make rustc_target usable outside of rustc" [rust#103693](https://github.com/rust-lang/rust/pull/103693)
  - Context [mentioned before](https://hackmd.io/8q_psJ4xTfiHTeb8k4EcJw?view=#PRs-S-waiting-on-team) in this meeting

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- Types team by @**nikomatsakis** and @**Jack Huey**
- @_*WG-mir-opt* MIR Optimizations by @**oli**
