---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-11-10

## Announcements
- [Types Team: Review #103491](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjExMTFUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-11T11:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMjExMTRUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-14T10:00:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjExMTRUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-14T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 6 months ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 3 months ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: 2 months ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 2 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: 2 months ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 43 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: 2 months ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 16 days ago)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) (last review activity: about 22 days ago)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: about 22 days ago)
  - "Redefine dropck in terms of bound-like constructs" [compiler-team#563](https://github.com/rust-lang/compiler-team/issues/563) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Change `bindings_with_variant_name` to deny-by-default" [rust#104154](https://github.com/rust-lang/rust/pull/104154#issuecomment-1307473562) 
- Things in FCP (make sure you're good with it)
  - "Raise minimum supported macOS and iOS versions" [compiler-team#556](https://github.com/rust-lang/compiler-team/issues/556) 
  - "Custom THIR -> MIR parser for testing purposes" [compiler-team#564](https://github.com/rust-lang/compiler-team/issues/564) 
  - "Support enum as type of static variable with #[linkage]" [compiler-team#565](https://github.com/rust-lang/compiler-team/issues/565) 
  - "Change the global default for `download-ci-llvm` to `if-available`" [compiler-team#566](https://github.com/rust-lang/compiler-team/issues/566) 
  - "Unreserve braced enum variants in value namespace" [rust#103578](https://github.com/rust-lang/rust/pull/103578) 
- Accepted MCPs
  - No new accepted proposals this time.
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

### WG checkins

- Types team by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/Q16ULE5gQG6embjLHEFREg#WG-checkins)):
  > * GATs stable: https://blog.rust-lang.org/2022/10/28/gats-stabilization.html
  > * Refactor rustc trait system initiative accepted: https://github.com/rust-lang/types-team/issues/58
  > * Meetup planned for Nov 30-Dec 2 for types team members
  >   * We're planning to do roadmap planning
  >   * Potentially doing some zoom sessions with different groups; any suggestions welcome!

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/sjgGAPLvSu-Fe5xMgY4SAg#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Don't silently eat label before block in block-like expr" [rust#103986](https://github.com/rust-lang/rust/pull/103986) 
  - nominated by @**Michael Goulet (compiler-errors)** ([comment](https://github.com/rust-lang/rust/pull/103986#issuecomment-1304273800))
  - an easy fix for #103983, better if removed asap
- :beta: "Use `nominal_obligations_without_const` in wf for FnDef" [rust#104180](https://github.com/rust-lang/rust/pull/104180)
  - Fixes #104155, `P-critical`
- :stable: "Don't silently eat label before block in block-like expr" [rust#103986](https://github.com/rust-lang/rust/pull/103986)
  - in case a 1.65.1 was discussed for other important stable backports (if any)

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Support endianness mark in test case check files" [rust#104135](https://github.com/rust-lang/rust/pull/104135)
  - Most of this PR seems to be for T-infra but there are some small bits also in `./tools/compiletest/src` 
- (other hidden issues in progress or waiting on other teams, [details here](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Refactor metadata emission to avoid visiting HIR" [rust#98867](https://github.com/rust-lang/rust/pull/98867) (last review activity: 4 months ago)
  - ping @**cjgillot** (self-assigned)
- "Fix implied outlives bounds logic for projections" [rust#101680](https://github.com/rust-lang/rust/pull/101680) (last review activity: about 59 days ago)
  - ping @**Esteban Küber** on [comment](https://github.com/rust-lang/rust/pull/101680#discussion_r973754561) but otherwise ping @**aliemjay** ?
- "Implement the `+whole-archive` modifier for `wasm-ld`" [rust#102215](https://github.com/rust-lang/rust/pull/102215) (last review activity: about 46 days ago)
  - ping @**Esteban Küber**
  
## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 3 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 39 P-high, 82 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ld64.lld: error: too many personalities (4) for compact unwind to encode" [rust#102754](https://github.com/rust-lang/rust/issues/102754) 
  - Waiting for T-release on including a mention about this ([comment](https://github.com/rust-lang/rust/issues/102754#issuecomment-1293749481))
  - unsure if in the end an action was taken
- "Rust update from 1.63 to 1.64 introduce lifetime problem on build" [rust#103141](https://github.com/rust-lang/rust/issues/103141)
  - #103141 previously discussed and *should* be in stable ([left a comment](https://github.com/rust-lang/rust/issues/103141#issuecomment-1309331512) about that)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-11-08](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-11-08.md)

A relatively noisy week (most of those have been dropped below, and comments
left on GitHub), but otherwise a quiet one in terms of performance changes,
with essentially no significant changes occuring.

Triage done by **@simulacrum**.
Revision range: [822f8c22f540b12f296d844ad5bf39aaa47bfeb4..57d3c58ed6e0faf89a62411f96c000ffc9fd3937](https://perf.rust-lang.org/?start=822f8c22f540b12f296d844ad5bf39aaa47bfeb4&end=57d3c58ed6e0faf89a62411f96c000ffc9fd3937&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.2%, 1.8%]   | 13    |
| Regressions (secondary)  | 1.2%  | [0.2%, 2.1%]   | 47    |
| Improvements (primary)   | -1.5% | [-4.0%, -0.2%] | 21    |
| Improvements (secondary) | -1.8% | [-3.9%, -0.3%] | 61    |
| All  (primary)           | -0.4% | [-4.0%, 1.8%]  | 34    |


2 Regressions, 2 Improvements, 3 Mixed; 3 of them in rollups
39 artifact comparisons made in total

#### Regressions

Rollup of 6 pull requests [#103998](https://github.com/rust-lang/rust/pull/103998) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5b3e9090757da9a95b22f589fe39b6a4b5455b96&end=452cf4f7109f58433ac38be7d3da527408571054&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.5%  | [0.3%, 3.9%]   | 6     |
| Regressions (secondary)  | 1.4%  | [0.4%, 3.5%]   | 43    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-1.5%, -1.0%] | 2     |
| All  (primary)           | 2.5%  | [0.3%, 3.9%]   | 6     |

Appears to be a genuine regression. Mostly limited to smaller benchmarks, so
most likely just a slight increase in the minimum work rustc does. Suspected to
be due to the changes in sysroot detection; have enqueued a build to try and
find out.

std: sync "Dependencies of the `backtrace` crate" with `backtrace` [#103934](https://github.com/rust-lang/rust/pull/103934) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d69c33ad4c65e42a7a2d018a5c2ee1c7dbd0fc15&end=73c9eaf21454b718e7c549984d9eb6e1f75e995c&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.4% | [0.9%, 1.8%] | 10    |
| Regressions (secondary)  | 1.5% | [0.3%, 3.3%] | 47    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.4% | [0.9%, 1.8%] | 10    |

Some of this may be noise, but it's also possible that the newer dependencies
are doing slightly different things causing some regressions -- it's possible
we're computing backtraces somewhere, and even modulo that, the changes to the
standard library may cause different inlining decisions, etc.

#### Improvements

Make rustdoc Item::visibility computed on-demand [#103690](https://github.com/rust-lang/rust/pull/103690) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=822f8c22f540b12f296d844ad5bf39aaa47bfeb4&end=c0a76127283bc963b085f54a1b275a8e281e81e6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.7%, -0.4%] | 11    |
| Improvements (secondary) | -1.6% | [-2.7%, -0.6%] | 23    |
| All  (primary)           | -0.8% | [-1.7%, -0.4%] | 11    |


Rollup of 7 pull requests [#103962](https://github.com/rust-lang/rust/pull/103962) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=47c008e440e59d793c2883f7dd712481dc965045&end=6330c27ae24ec1556cf2b97eeac333dc23391686&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 6     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.3%] | 4     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 6     |


#### Mixed

Revert "ci: Bring back ninja for dist builders" [#103846](https://github.com/rust-lang/rust/pull/103846) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=edf0182213a9e30982eb34f3925ddc4cf5ed3471&end=5b1304a03bbefe618cf16d6f4b3c41f4bd8e390a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.5%  | [2.5%, 2.5%]   | 1     |
| Improvements (primary)   | -1.7% | [-7.4%, -0.2%] | 19    |
| Improvements (secondary) | -2.0% | [-6.6%, -0.2%] | 71    |
| All  (primary)           | -1.7% | [-7.4%, -0.2%] | 19    |

This change was reverted precisely due to the performance regression it introduced, so this is no surprise.

Rollup of 5 pull requests [#104017](https://github.com/rust-lang/rust/pull/104017) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6b8d9dd0a09851b3e4f400ddd1303857945be25d&end=371100b1fb811e604f7451eff3b06960587fe1af&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.4%  | [1.4%, 1.4%]   | 1     |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.8%]   | 2     |
| Improvements (primary)   | -1.0% | [-3.2%, -0.3%] | 13    |
| Improvements (secondary) | -2.3% | [-3.1%, -0.6%] | 19    |
| All  (primary)           | -0.9% | [-3.2%, 1.4%]  | 14    |

Minor regressions in two secondary benchmarks and in libc don't seem to warrant
further investigation, especially given the general improvement across the
board.

Some tracing and comment cleanups [#103975](https://github.com/rust-lang/rust/pull/103975) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e6fead46dc21ba017f7c1a5130ff3d31535acb16&end=a4ab2e064306c2c3e5b1d2efe1d5c0e1a6e0346a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.2%, 1.5%]   | 3     |
| Regressions (secondary)  | 1.9%  | [0.3%, 4.2%]   | 13    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.6% | [-0.6%, -0.6%] | 3     |
| All  (primary)           | 1.0%  | [0.2%, 1.5%]   | 3     |

Most of the regressions are probably noise, so this change is likely actually an improvement or neutral.

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
- "Panic on invalid usages of `MaybeUninit::uninit().assume_init()`" [rust#100423](https://github.com/rust-lang/rust/pull/100423)
  - @**RalfJ** provides great summary [in this comment](https://github.com/rust-lang/rust/pull/100423#issuecomment-1304781140)
- "const eval interpreter step limit being hit on nightly for long-running while loop" [rust#103814](https://github.com/rust-lang/rust/issues/103814)
  - `#[const_eval_limit]` is now on nightly, people are tripping over it (comments in #93481)
  - @**pnkfelix** says: the lang team *did* discuss #103877 yesterday, and I think we managed to convince niko that shifting from a hard error to a lint is reasonable
  - Felix mentions for context also #67217

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-polymorphization* by @**davidtwco**
- @_*WG-rls2.0* by @**Lukas Wirth**
