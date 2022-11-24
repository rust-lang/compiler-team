---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-11-17

## Announcements

- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMjExMThUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-18T10:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [wg-debugging triage meeting](https://www.google.com/calendar/event?eid=NjAwbDEwNzNmMzVsNDZucnFsdDdwbGJrdDRfMjAyMjExMjFUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-21T10:00:00-05:00>
- [wg-rls-2.0 steering meeting](https://www.google.com/calendar/event?eid=N2NxOWxzYWYxb3NicWNzbGsxYzdxcG9ydTJfMjAyMjExMjFUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-21T10:00:00-05:00>
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMjExMjFUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-21T10:00:00-05:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjExMjFUMTYzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-21T11:30:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjExMjFUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-11-21T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "New tier-3 targets for OpenHarmony" [compiler-team#568](https://github.com/rust-lang/compiler-team/issues/568) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 6 months ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 3 months ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: 2 months ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 2 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: 2 months ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 50 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: 2 months ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 23 days ago)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) (last review activity: about 29 days ago)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: about 29 days ago)
  - "Redefine dropck in terms of bound-like constructs" [compiler-team#563](https://github.com/rust-lang/compiler-team/issues/563) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Change `bindings_with_variant_name` to deny-by-default" [rust#104154](https://github.com/rust-lang/rust/pull/104154) 
  - "Stabilize native library modifier `verbatim`" [rust#104360](https://github.com/rust-lang/rust/pull/104360) 
- Things in FCP (make sure you're good with it)
  - "Reboot Parallel Rustc WG Proposal" [compiler-team#567](https://github.com/rust-lang/compiler-team/issues/567) 
  - "Raw pointer alignment checks in debug" [compiler-team#570](https://github.com/rust-lang/compiler-team/issues/570) 
  - "Unreserve braced enum variants in value namespace" [rust#103578](https://github.com/rust-lang/rust/pull/103578) 
- Accepted MCPs
  - "Raise minimum supported macOS and iOS versions" [compiler-team#556](https://github.com/rust-lang/compiler-team/issues/556) 
  - "Custom THIR -> MIR parser for testing purposes" [compiler-team#564](https://github.com/rust-lang/compiler-team/issues/564) 
  - "Support enum as type of static variable with #[linkage]" [compiler-team#565](https://github.com/rust-lang/compiler-team/issues/565) 
  - "Change the global default for `download-ci-llvm` to `if-available`" [compiler-team#566](https://github.com/rust-lang/compiler-team/issues/566) 
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

- @_*WG-polymorphization* by @**davidtwco** ([previous checkin](https://hackmd.io/Fv3TSalbT_CYVUEonihWzg#WG-checkins)):
  > There's no update from wg-polymorphization again this cycle, we think it'll benefit from the trait system refactor work being spearheaded by lcnr.


- @_*WG-rls2.0* by @**Lukas Wirth** ([previous checkin](https://hackmd.io/tMRw5amiR7GFBATOFLfEkA#WG-checkins)):
    > GAT support in r-a landed just a few days before stabilization of the feature. Some improvements were done for making the linkedProjects config of r-a work better for the rust-lang/rust repo. An [RFC#3344](https://github.com/rust-lang/rfcs/pull/3344) has been written that would allow us to get rid of the `RUSTC_WRAPPER` hack in rust-analyzer. Finally we looked a bit more into whether turning `library` into a separate workspace would be feasible such that r-a can resolve third party crates used by std as that is still blocking a type inference PR from landing in r-a, unfortunately that seems to introduce too much churn [zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/rust-lang.2Frust.2Flibrary.20workspace).

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Revert "Normalize opaques with escaping bound vars"" [rust#103509](https://github.com/rust-lang/rust/pull/103509) 
  - Nominated by @**Michael Goulet (compiler-errors)**
  - approved, just some tests failing
  - Fixes `P-high` perf. regression #103423
- :beta: "Use 64 bits for incremental cache in-file positions" [rust#104164](https://github.com/rust-lang/rust/pull/104164)
  - Nominated by @**Michael Goulet (compiler-errors)**
  - Fixes incr-comp issue #79786
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Stabilize native library modifier `verbatim`" [rust#104360](https://github.com/rust-lang/rust/pull/104360) 
  - [Stabilization report](https://github.com/rust-lang/rust/pull/104360#issuecomment-1312724787)
  - RFC is open ([comment](https://github.com/rust-lang/rust/pull/104360#issuecomment-1312724939))
- "Raise minimum supported Apple OS versions" [rust#104385](https://github.com/rust-lang/rust/pull/104385)
  - RFC is open ([comment](https://github.com/rust-lang/rust/pull/104385#issuecomment-1313325638))
  - Mark Rousskov added some thoughts ([comment](https://github.com/rust-lang/rust/pull/104385#issuecomment-1313695003))
- (other hidden issues in progress or waiting on other teams, [details here](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Fix implied outlives bounds logic for projections" [rust#101680](https://github.com/rust-lang/rust/pull/101680) (last review activity: 2 months ago)
  - cc @**Esteban Küber** for [comment](https://github.com/rust-lang/rust/pull/101680#discussion_r973754561) but otherwise waiting on @**nikomatsakis**?
- "support higher-ranked regions in opaque type inference" [rust#100503](https://github.com/rust-lang/rust/pull/100503) (last review activity: about 52 days ago)
  - assigned now to @**nikomatsakis**
- "Add powerpc64-ibm-aix as Tier-3 target" [rust#102293](https://github.com/rust-lang/rust/pull/102293) (last review activity: about 51 days ago)
  - was waiting on mcp https://github.com/rust-lang/compiler-team/issues/553, now approved (cc @**davidtwco** )
- "Make `missing_copy_implementations` more cautious" [rust#102406](https://github.com/rust-lang/rust/pull/102406) (last review activity: about 49 days ago)
  - @**Wesley Wiser** is this still waiting for review ([comment](https://github.com/rust-lang/rust/pull/102406#discussion_r983615187))?

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [57 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 35 P-high, 82 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ld64.lld: error: too many personalities (4) for compact unwind to encode" [rust#102754](https://github.com/rust-lang/rust/issues/102754)
  - [discussed last week](https://github.com/hoodie/notify-rust/blob/14d10c1a7cb3901456011c26e1d5754883b31af9/src/xdg/dbus_rs.rs#L189) (maybe a downgrade to `P-high`)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Possible codegen regression when matching against nested enums" [rust#104519](https://github.com/rust-lang/rust/issues/104519)
  - issue was filed yesterday. seems a miscompilation in nightly 2022-11-16

## Performance logs

> [triage logs for 2022-11-14](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-11-14.md)

A light week for triage. The biggest of the three regressions has a (hopeful)
fix up already. The second biggest is a regression we are accepting for sake
of correctness of incremental-compilation. The third regression is small and may
well be removed as the type system internals are improved. max-rss seems stable.

Triage done by **@pnkfelix**.
Revision range: [57d3c58e..96ddd32c](https://perf.rust-lang.org/?start=57d3c58ed6e0faf89a62411f96c000ffc9fd3937&end=96ddd32c4bfb1d78f0cd03eb068b1710a8cebeef&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.4%]   | 87    |
| Regressions (secondary)  | 0.7%  | [0.2%, 2.3%]   | 36    |
| Improvements (primary)   | -0.5% | [-1.2%, -0.3%] | 12    |
| Improvements (secondary) | -0.9% | [-2.0%, -0.2%] | 9     |
| All  (primary)           | 0.5%  | [-1.2%, 1.4%]  | 99    |


3 Regressions, 4 Improvements, 3 Mixed; 2 of them in rollups
30 Untriaged Pull Requests
40 artifact comparisons made in total

#### Regressions

Better error for HRTB error from generator interior [#103171](https://github.com/rust-lang/rust/pull/103171) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8d36948b1519c77a54867523453fef3e0c3a648b&end=bc2504a83ca6ee8f6717dedd0721b90ffcbe1300&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 1.6% | [1.3%, 2.1%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

* Already triaged (by two different people).
* Also, according to comment thread, this change is slated to be removed once
  binders support implied bounds, so even if there is a minor regression
  attached to this PR, the PR should nonetheless go away eventually.

Recover wrong-cased keywords that start items [#99918](https://github.com/rust-lang/rust/pull/99918) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c1a859b25a95999ba276075bbd8e284ea675b41a&end=5b82ea74b705799665b5a676b162f30d26f5108c&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.2%, 1.2%] | 80    |
| Regressions (secondary)  | 0.8% | [0.3%, 1.4%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.2%, 1.2%] | 80    |

* Believed to be fixed by https://github.com/rust-lang/rust/pull/104410


Hash spans when interning types [#104282](https://github.com/rust-lang/rust/pull/104282) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=229e875878a682411df8b8adae39372302d2b4c7&end=3be81dd0cedef3c83fba7047857418633708890f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.2%, 0.9%] | 44    |
| Regressions (secondary)  | 0.6% | [0.2%, 0.9%] | 19    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.2%, 0.9%] | 44    |

* already triaged; its a regression we are accepting for sake of correctness

#### Improvements

Remove allow(rustc::potential_query_instability) in rustc_trait_selection [#103723](https://github.com/rust-lang/rust/pull/103723) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0aaad9e757207657064d70bf9e6c1e6eb327bf15&end=cc9b259b5e94e4543b96dca236e3a1af5ec496c9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements (secondary) | -0.8% | [-1.0%, -0.5%] | 7     |
| All  (primary)           | -0.5% | [-0.5%, -0.5%] | 1     |


Rollup of 9 pull requests [#104236](https://github.com/rust-lang/rust/pull/104236) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=11fa0850f03ae49fe1053a21bcdcf8a301668ad8&end=01a6f30324deb8f9c9ec4a70c53690c5d073a244&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 21    |
| Improvements (secondary) | -0.3% | [-0.6%, -0.2%] | 12    |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 21    |


Rollup of 9 pull requests [#104246](https://github.com/rust-lang/rust/pull/104246) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=01a6f30324deb8f9c9ec4a70c53690c5d073a244&end=a3c0a023611fcaf5ae3ec242d7d60e356041d25f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.8%, -0.6%] | 3     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.3%] | 4     |
| All  (primary)           | -0.7% | [-0.8%, -0.6%] | 3     |


Retry failed macro matching for diagnostics [#103898](https://github.com/rust-lang/rust/pull/103898) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5b82ea74b705799665b5a676b162f30d26f5108c&end=b7b7f2716ee1655a696d3d64c3e12638d0dd19c0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.3%, -0.3%] | 11    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.8% | [-1.3%, -0.3%] | 11    |


#### Mixed

resolve: More detailed effective visibility tracking for imports [#103965](https://github.com/rust-lang/rust/pull/103965) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ddfe1e87f7c85c03773c29180a931447fcd03b65&end=c5842b0be783dffa5a49693541acb79115c7eeef&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 4     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 5     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 3     |
| Improvements (secondary) | -0.5% | [-1.1%, -0.4%] | 9     |
| All  (primary)           | 0.1%  | [-0.2%, 0.4%]  | 7     |

* This is an internal refactoring that we need to get more precise tracking of imports in presence of globs.
* treating the regressions as acceptable; marked it as triaged.

rustc_codegen_ssa: Better code generation for niche discriminants. [#102872](https://github.com/rust-lang/rust/pull/102872) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b7b7f2716ee1655a696d3d64c3e12638d0dd19c0&end=742d3f02c243964e5b868d90afd60c2907be5853&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.6%]   | 2     |
| Regressions (secondary)  | 2.1%  | [2.1%, 2.1%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-2.2%, -0.3%] | 4     |
| All  (primary)           | 0.5%  | [0.5%, 0.6%]   | 2     |

* already triaged

Merge crossbeam-channel into `std::sync::mpsc` [#93563](https://github.com/rust-lang/rust/pull/93563) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=928d14bcd1976ffd33e743aa09c7c22a063bf87c&end=afd7977c850d9ce06f1dd2bebb40db8cc2224a51&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.4%, 1.1%]   | 5     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]   | 1     |
| Improvements (primary)   | -0.7% | [-1.1%, -0.3%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.2%  | [-1.1%, 1.1%]  | 8     |

* already triaged

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Panic on invalid usages of `MaybeUninit::uninit().assume_init()`" [rust#100423](https://github.com/rust-lang/rust/pull/100423)
  - @**RalfJ** provides great summary [in this comment](https://github.com/rust-lang/rust/pull/100423#issuecomment-1304781140)
- "const eval interpreter step limit being hit on nightly for long-running while loop" [rust#103814](https://github.com/rust-lang/rust/issues/103814)
  - `#[const_eval_limit]` is now on nightly, people are tripping over it (comments in #93481)
  - @**pnkfelix** says: the lang team *did* discuss #103877 yesterday, and I think we managed to convince niko that shifting from a hard error to a lint is reasonable
  - Felix mentions for context also #67217

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-self-profile* @**mw** and @**Wesley Wiser**
