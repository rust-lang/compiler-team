---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2023-02-02

## Announcements

- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMzAyMDZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-06T10:00:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMzAyMDZUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-06T16:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMzAyMDJUMTcwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-02T12:00:00-05:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzAyMDZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-06T10:00:00-05:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=M25uN2RsYTUyMjFsdWM1aTgwMDZpcXY5aDZfMjAyMzAyMDhUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-08T10:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Switch PLT default to "yes" for all targets except x86_64." [compiler-team#581](https://github.com/rust-lang/compiler-team/issues/581) 
  - "Synthetic Partial Drop Glue" [compiler-team#585](https://github.com/rust-lang/compiler-team/issues/585) 
- Old MCPs (not seconded, take a look)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (requested review: 5 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (requested review: about 5 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (requested review: about 20 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (requested review: about 21 days ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (requested review: about 28 days ago)
  - "Store ICE backtraces to disk and point end users at the file location" [compiler-team#578](https://github.com/rust-lang/compiler-team/issues/578) (requested review: about 20 days ago)
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580) (requested review: about 8 days ago)
- Pending FCP requests (check your boxes!)
  - "Make `unused_allocation` lint against `Box::new` too" [rust#104363](https://github.com/rust-lang/rust/pull/104363#issuecomment-1376858371)
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850)
  - "Update the version of musl used on `*-linux-musl` targets to 1.2.3" [rust#107129](https://github.com/rust-lang/rust/pull/107129#issuecomment-1407200120)
- Things in FCP (make sure you're good with it)
  - "New Tier 3 Targets for Trusty OS" [compiler-team#582](https://github.com/rust-lang/compiler-team/issues/582) 
  - "MCP: Resolve documentation links in rustc and store the results in metadata" [compiler-team#584](https://github.com/rust-lang/compiler-team/issues/584) 
  - "Support `true` and `false` as boolean flag params" [rust#107043](https://github.com/rust-lang/rust/pull/107043) 
- Accepted MCPs
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) 
  - "Upgrade `*-linux-musl` targets to musl 1.2" [compiler-team#572](https://github.com/rust-lang/compiler-team/issues/572) 
  - "New tier-2 target for `wasm32-wasi` + threads" [compiler-team#574](https://github.com/rust-lang/compiler-team/issues/574) 
- Finalized FCPs (disposition merge)
  - "rustdoc: change trait bound formatting" [rust#102842](https://github.com/rust-lang/rust/pull/102842) 
  - "Add `SEMICOLON_IN_EXPRESSIONS_FROM_MACROS` to future-incompat report" [rust#103418](https://github.com/rust-lang/rust/pull/103418) 
  - "Check ADT fields for copy implementations considering regions" [rust#105102](https://github.com/rust-lang/rust/pull/105102) 
  - "Add missing normalization for union fields types" [rust#106938](https://github.com/rust-lang/rust/pull/106938)
  
### WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/PEWPUGJFQYGmj7V73vXdLg#WG-checkins)):
  > Checkin text

- Types team by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/PEWPUGJFQYGmj7V73vXdLg#WG-checkins)):
  > - Announcement blog post: https://blog.rust-lang.org/2023/01/20/types-announcement.html
  > - Also, lots of work happeneing on trait solver refactor
  > - TAITs nearing stabilization

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix thin archive reading" [rust#107360](https://github.com/rust-lang/rust/pull/107360)
  - Fixes `P-critical` #107162, #107334 by reverting #105221
- :stable: "Fix thin archive reading" [rust#107360](https://github.com/rust-lang/rust/pull/107360)

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- None ([issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Be more careful about elaboration around trait aliases" [rust#104745](https://github.com/rust-lang/rust/pull/104745) (requested review: 2 months ago)
  - unsure about the status? cc @**Jack Huey**: needs more work?
- "Suggest `move` in nested closure when appropriate" [rust#106575](https://github.com/rust-lang/rust/pull/106575) (requested review: about 25 days ago)
  - @**Wesley Wiser**  autoassigned 

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [52 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [22 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 30 P-high, 90 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Closure with a typed function argument and top level struct constructor break in nightly" [rust#107461](https://github.com/rust-lang/rust/issues/107461) 
  - handled by @**Michael Goulet (compiler-errors)** in #107478 (in progress)
- "1.67 regression with `……::{opaque#0}<'_> does not live long enough` error" [rust#107516](https://github.com/rust-lang/rust/issues/107516)
  - Opened 2 days ago , needs a MCVE
  - unsure about priority (main issue: breaks compiling a crate)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` at this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- Nothing new (#106337 and #106630 discussed last week)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-01-31](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-01-31.md)

Overall a positive week, with relatively few regressions overall and a number of improvements.

Triage done by **@simulacrum**.
Revision range: [c8e6a9e8b6251bbc8276cb78cabe1998deecbed7..a64ef7d07d0411315be85a646586cb85eeb9c136](https://perf.rust-lang.org/?start=c8e6a9e8b6251bbc8276cb78cabe1998deecbed7&end=a64ef7d07d0411315be85a646586cb85eeb9c136&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -0.8% | [-2.0%, -0.2%] | 27    |
| Improvements (secondary) | -0.9% | [-1.9%, -0.5%] | 11    |
| All  (primary)           | -0.8% | [-2.0%, 0.6%]  | 28    |


2 Regressions, 4 Improvements, 6 Mixed; 2 of them in rollups
44 artifact comparisons made in total

#### Regressions

Fix thin archive reading [#107360](https://github.com/rust-lang/rust/pull/107360) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6cd6bad51fb34a0d89e97c27814041fe4d0838b5&end=252741673b9c2b06267cd3a036d77489e92f963a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.3%, 0.6%] | 13    |
| Regressions (secondary)  | 0.5% | [0.4%, 0.5%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.3%, 0.6%] | 13    |

Revert of previous PR to fix behavior. Regressions are minor and hopefully the
relanding of the original PR will fix them too.

Use stable metric for const eval limit instead of current terminator-based logic [#106227](https://github.com/rust-lang/rust/pull/106227) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bcb064a7f4aee705c97ce1b74beb9af0f9b5adb2&end=3cdd0197e78e2ca3403157617709bbfe18a3f0b5&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.4%] | 3     |
| Regressions (secondary)  | 0.8% | [0.5%, 1.0%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.4%] | 3     |

The new metric adds new MIR instructions, which increases the size of MIR and
slightly hurts performance. However, this is in service of a concrete feature,
so acceptable.


#### Improvements

use `LocalDefId` instead of `HirId` in trait resolution to simplify the obligation clause resolution [#103902](https://github.com/rust-lang/rust/pull/103902) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=95b61d16d4bd2e46b0a110c1bda703f026f0a94f&end=027c8507b4265dcf285b0b503e2a49214b929f7b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 4     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 3     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 4     |


InstCombine away intrinsic validity assertions [#105582](https://github.com/rust-lang/rust/pull/105582) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2a17174ee639f8e0a3cee307d5685d38beb474ba&end=885bf628879310b885721e1fdd91ea2cbca9311f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 6     |
| Improvements (secondary) | -0.6% | [-1.3%, -0.3%] | 4     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 6     |


Only compute mir_generator_witnesses query in drop_tracking_mir mode. [#107406](https://github.com/rust-lang/rust/pull/107406) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9f82651a5fa4b1d96f55ce5507dd2aa204c7fb61&end=bcb064a7f4aee705c97ce1b74beb9af0f9b5adb2&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -3.7% | [-5.7%, -1.1%] | 10    |
| All  (primary)           | -     | -              | 0     |


Test drop_tracking_mir before querying generator. [#107443](https://github.com/rust-lang/rust/pull/107443) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=487e83b711b96d84ce2edfc4cb4ba792c10b589e&end=dc3e59cb3fe05ebd752d3a2269f501c00327be22&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.6%, -0.2%] | 14    |
| Improvements (secondary) | -0.7% | [-1.0%, -0.4%] | 8     |
| All  (primary)           | -0.5% | [-0.6%, -0.2%] | 14    |


#### Mixed

Move format_args!() into AST (and expand it during AST lowering) [#106745](https://github.com/rust-lang/rust/pull/106745) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=40fda7b3fe2b10c6e1a0568b59516f5e7f381886&end=3e977638728922d3a6cc7bea34a2fdb8ae97f7c0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 0.8%]   | 4     |
| Regressions (secondary)  | 0.8%  | [0.3%, 1.3%]   | 3     |
| Improvements (primary)   | -0.6% | [-2.3%, -0.2%] | 51    |
| Improvements (secondary) | -0.7% | [-0.8%, -0.7%] | 6     |
| All  (primary)           | -0.6% | [-2.3%, 0.8%]  | 55    |

Overall mostly an improvement, not worth further investigation.

Rollup of 8 pull requests [#107343](https://github.com/rust-lang/rust/pull/107343) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=db137ba7d4415ac77e2b7601ef017ff2ca41b335&end=18890f05f6cea40fd25bb4bb9aa6f7372b69f641&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.5%, 0.8%]   | 7     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)           | 0.7%  | [0.5%, 0.8%]   | 7     |

Regressions are limited to a single primary benchmark (bitmaps), and don't seem
large enough to warrant spending further time investigating.

rustdoc: Collect "rustdoc-reachable" items during early doc link resolution [#107054](https://github.com/rust-lang/rust/pull/107054) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=18890f05f6cea40fd25bb4bb9aa6f7372b69f641&end=6874f4e3fc2a16be7c78e702d068bbc1daa90e16&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.0%, -0.3%] | 4     |
| Improvements (secondary) | -0.6% | [-0.9%, -0.2%] | 14    |
| All  (primary)           | -0.2% | [-1.0%, 0.4%]  | 6     |

Wins generally outweigh small regressions.

Compute generator saved locals on MIR [#101692](https://github.com/rust-lang/rust/pull/101692) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7d4df2d30eb342af1ef136d83d70d281f34adcd7&end=6cd6bad51fb34a0d89e97c27814041fe4d0838b5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.4%, 0.6%]   | 14    |
| Regressions (secondary)  | 2.2%  | [0.3%, 6.0%]   | 22    |
| Improvements (primary)   | -0.4% | [-0.7%, -0.2%] | 12    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.1%  | [-0.7%, 0.6%]  | 26    |

Follow-up in #107406 has resolved 5% regression here, leaving ~1% regressions,
but those are likely overall OK.

Rollup of 9 pull requests [#107408](https://github.com/rust-lang/rust/pull/107408) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d8da51366817317d19be9bd138943eafb30bc987&end=bca8b4dc32ec20f9a4e0ca55f54e5b2a531936fc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.8%  | [1.5%, 2.1%]   | 6     |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.8%]   | 5     |
| Improvements (primary)   | -0.6% | [-0.6%, -0.6%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 1.2%  | [-0.6%, 2.1%]  | 8     |


Remove HirId -> LocalDefId map from HIR. [#107206](https://github.com/rust-lang/rust/pull/107206) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bca8b4dc32ec20f9a4e0ca55f54e5b2a531936fc&end=d6f0642827e21a088b0130c84857d84f5433301d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 5     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 7     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.3%] | 7     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 7     |


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Support linking to rust dylib with --crate-type staticlib" [rust#106560](https://github.com/rust-lang/rust/pull/106560)
  - Nominated by @**Jack Huey** to find an owner
  - Does it need a `T-lang` opinion first?
- "Add `rust.lto=off` to bootstrap and set as compiler/library default" [rust#107241](https://github.com/rust-lang/rust/pull/107241)
  - nominated by @**simulacrum** ([relevant comment](https://github.com/rust-lang/rust/pull/107241#issuecomment-1405282961)) as a FYI about next perf. results
  - These seem to be the perf. hit ([comment](https://github.com/rust-lang/rust/pull/107241#issuecomment-1404880749))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

## Next week's WG checkins

- @_*WG-mir-opt* by @**oli**
- @_*WG-polymorphization* by @**davidtwco**
