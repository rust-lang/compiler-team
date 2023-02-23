---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-02-09

## Announcements

- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzAyMTBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-10T10:00:00-05:00>
- pnkfelix unilaterally approved the stable-backport of [#105624](https://github.com/rust-lang/rust/pull/105624), "Fix unsoundness in bootstrap cache code", to Rust 1.67.1-stable.
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMzAyMDlUMTcwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-09T12:00:00-05:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzAyMTNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-13T10:00:00-05:00>
- [wg-rls-2.0 steering meeting](https://www.google.com/calendar/event?eid=N2NxOWxzYWYxb3NicWNzbGsxYzdxcG9ydTJfMjAyMzAyMTNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-13T10:00:00-05:00>
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMzAyMTNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-13T10:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 5 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 12 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 26 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 27 days ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: about 34 days ago)
  - "Store ICE backtraces to disk and point end users at the file location" [compiler-team#578](https://github.com/rust-lang/compiler-team/issues/578) (last review activity: about 26 days ago)
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580) (last review activity: about 14 days ago)
  - "Switch PLT default to "yes" for all targets except x86_64." [compiler-team#581](https://github.com/rust-lang/compiler-team/issues/581) (last review activity: about 4 days ago)
  - "Synthetic Partial Drop Glue" [compiler-team#585](https://github.com/rust-lang/compiler-team/issues/585) (last review activity: about 4 days ago)
- Pending FCP requests (check your boxes!)
  - "Make `unused_allocation` lint against `Box::new` too" [rust#104363](https://github.com/rust-lang/rust/pull/104363#issuecomment-1376858371) 
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850) 
  - "Update the version of musl used on `*-linux-musl` targets to 1.2.3" [rust#107129](https://github.com/rust-lang/rust/pull/107129#issuecomment-1407200120) 
- Things in FCP (make sure you're good with it)
  - "MCP: Resolve documentation links in rustc and store the results in metadata" [compiler-team#584](https://github.com/rust-lang/compiler-team/issues/584) 
  - "Support `true` and `false` as boolean flag params" [rust#107043](https://github.com/rust-lang/rust/pull/107043) 
- Accepted MCPs
  - "New Tier 3 Targets for Trusty OS" [compiler-team#582](https://github.com/rust-lang/compiler-team/issues/582) 
- Finalized FCPs (disposition merge)
  - "rustdoc: compute maximum Levenshtein distance based on the query" [rust#107141](https://github.com/rust-lang/rust/pull/107141)

### WG checkins

@_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > `#[custom_mir]` supports more constructs now, allowing you to actually write some useful MIR directly from Rust source code. See the [examples](https://github.com/rust-lang/rust/tree/master/tests/mir-opt/building/custom) in our test suite for details.
  > We're reworking how drop works to simplify the analyses (and as a side effect allow const code to handle matching on `Option` of `Drop` types nicely)

@_*WG-polymorphization* by @**davidtwco** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Do not eagerly recover for bad `impl Trait` types in macros" [rust#107813](https://github.com/rust-lang/rust/pull/107813)
  - Fixes [rust#107813](https://github.com/rust-lang/rust/pull/107813), P-high
  - This also fixes a separate regression from #99915
  - work by @**Michael Goulet (compiler-errors)**, should be safe to backport ([nomination comment](https://github.com/rust-lang/rust/pull/107813#issuecomment-1423027057)) 
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Add `-Z instrument-xray` flag" [rust#102963](https://github.com/rust-lang/rust/pull/102963)
  - @**Esteban Küber** PR was just rebased (as per your comment)
- "Remove proc-macro back-compat hack for rental" [rust#106060](https://github.com/rust-lang/rust/pull/106060)
  - @**pnkfelix** self-assigned
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Support #[global_allocator] without the allocator shim" [rust#86844](https://github.com/rust-lang/rust/pull/86844)
  - by reading [comment](https://github.com/rust-lang/rust/pull/86844#issuecomment-1416635668) from @**Jack Huey**: could this be merged?
- "Fix #99684 through autoref in `write!` macro with a two-phased borrows retrocompat workaround" [rust#100202](https://github.com/rust-lang/rust/pull/100202) (last review activity: about 53 days ago)
  - @**pnkfelix** self-assigned
- "Remove dead unwinds before drop elaboration" [rust#106430](https://github.com/rust-lang/rust/pull/106430) (last review activity: about 33 days ago)
  - ping @**Wesley Wiser** (some new perf. results awaiting triage)
- "Implement RFC 3323: restrictions" [rust#106074](https://github.com/rust-lang/rust/pull/106074) (last review activity: about 32 days ago)
  - ping @**Michael Goulet (compiler-errors)**

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [52 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [21 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 30 P-high, 91 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "1.67 regression with ……::{opaque#0}<'_> does not live long enough error" [rust#107516](https://github.com/rust-lang/rust/issues/107516)
  - needs MCVE, compiler-errors will take point from pnkfelix on that in short term
- "Windows builds fail to link C++ static library" [rust#107162](https://github.com/rust-lang/rust/issues/107162)
  - fixed by reverting the thin archiver reading (#107609)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- [rust#106337](https://github.com/rust-lang/rust/issues/106337) and [rust#106630](https://github.com/rust-lang/rust/issues/106630) discussed in past meetings

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-02-07](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-02-07.md)

Much noise in benchmarks this week, which makes it hard to tell what the real
improvements were and what they were due to. A query cache change (PR #107667)
is part of the story. In addition, much improvement was reaped from the change
to *not* deaggregate MIR (PR #107267). Finally, microoptimizing `fold_ty`
(PR #107627) yielded a small improvement to a broad set of benchmarks.

Triage done by **@pnkfelix**.
Revision range: [a64ef7d0..e4dd9edb](https://perf.rust-lang.org/?start=a64ef7d07d0411315be85a646586cb85eeb9c136&end=e4dd9edb76a34ecbca539967f9662b8c0cc9c7fb&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 2.4%  | [0.3%, 18.8%]   | 18    |
| Regressions (secondary)  | 1.8%  | [0.2%, 4.1%]    | 21    |
| Improvements (primary)   | -1.0% | [-3.2%, -0.3%]  | 88    |
| Improvements (secondary) | -4.0% | [-13.1%, -0.1%] | 47    |
| All  (primary)           | -0.4% | [-3.2%, 18.8%]  | 106   |


3 Regressions, 3 Improvements, 8 Mixed; 3 of them in rollups
41 artifact comparisons made in total
30 Untriaged Pull Requests

#### Regressions

Fix handling of items inside a `doc(hidden)` block [#107000](https://github.com/rust-lang/rust/pull/107000) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f3126500f25114ba4e0ac3e76694dd45a22de56d&end=6c991b07403a3234dd1ec0ac973b8ef97055e605&stat=instructions:u)

| (instructions:u)         | mean | range         | count |
|:------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 4.1% | [0.2%, 18.9%] | 9     |
| Regressions (secondary)  | 1.1% | [0.2%, 1.7%]  | 5     |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)           | 4.1% | [0.2%, 18.9%] | 9     |

* a number of doc benchmarks regressed, but only doc benchmarks.
* the big hit was a 18.9% regression to doc on hyper.
* rustdoc developer says the issue cannot be resolved without *some* amount of regression, so marked as triaged.

  don't point at nonexisting code beyond EOF when warning about delims [#107663](https://github.com/rust-lang/rust/pull/107663) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=319b88c463fe6f51bb6badbbd3bb97252a60f3a5&end=a67649675014546ce454d65bc8fe3ebd18e6a319&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 1     |
| Regressions (secondary)  | 0.9% | [0.2%, 1.3%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.2%] | 1     |

* already marked as triaged


Run `expand-yaml-anchors` in `x test tidy` [#107704](https://github.com/rust-lang/rust/pull/107704) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dffea43fc1102bdfe16d88ed412c23d4f0f08d9d&end=e4dd9edb76a34ecbca539967f9662b8c0cc9c7fb&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.0% | [0.4%, 1.5%] | 3     |
| Regressions (secondary)  | 3.7% | [3.4%, 4.3%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.0% | [0.4%, 1.5%] | 3     |

* PR author says PR touched only CI code, and therefore this must be noise
* primary regressions are on cranelift variations; secondary are on keccak
* graphs for cranelift and keccak both have up-and-down swings that both begun with #107627; will check with nnethercote about that
* marked as triaged.

#### Improvements
  
emit `ConstEquate` in `TypeRelating<D>` [#107434](https://github.com/rust-lang/rust/pull/107434) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=50d3ba5bcbf5c7e13d4ce068d3339710701dd603&end=2a6ff729233c62d1d991da5ed4d01aa29e59d637&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.3%] | 2     |
| Improvements (secondary) | -0.8% | [-1.3%, -0.2%] | 10    |
| All  (primary)           | -0.4% | [-0.4%, -0.3%] | 2     |

  
Recover form missing expression in `for` loop [#107526](https://github.com/rust-lang/rust/pull/107526) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a67649675014546ce454d65bc8fe3ebd18e6a319&end=75a0be98f25a4b9de5afa0e15eb016e7f9627032&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 2     |
| Improvements (secondary) | -1.0% | [-1.3%, -0.6%] | 7     |
| All  (primary)           | -0.3% | [-0.3%, -0.3%] | 2     |


Remove `OnHit` callback from query caches. [#107667](https://github.com/rust-lang/rust/pull/107667) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0c13c172507f01d921808107d2c4ec37b43b982d&end=e7813fee92c56621d08e8dbe83948d9f4a30a9ec&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.7%, -0.2%] | 49    |
| Improvements (secondary) | -2.0% | [-5.9%, -0.3%] | 36    |
| All  (primary)           | -0.6% | [-1.7%, -0.2%] | 49    |

* as [already noted](https://github.com/rust-lang/rust/pull/107667#issuecomment-1419760041) by nnethercote, these results appear better than reality
* much of the delta is noise (namely inverse of #107627 (see below)).

#### Mixed

  Don't generate unecessary `&&self.field` in deriving Debug [#107599](https://github.com/rust-lang/rust/pull/107599) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a94b9fd0ace1336a3dd93f51f1c0db6ca0fd7f92&end=9545094994f1ab45cab5799d5b45980871a9e97b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | 1.0%  | [0.2%, 4.9%]   | 7     |
| Improvements (primary)   | -1.0% | [-2.9%, -0.4%] | 9     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.8% | [-2.9%, 0.4%]  | 11    |

* [already triaged](https://github.com/rust-lang/rust/pull/107599#issuecomment-1416528826) as noise

Rollup of 6 pull requests [#107642](https://github.com/rust-lang/rust/pull/107642) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9545094994f1ab45cab5799d5b45980871a9e97b&end=658fad6c5506f41c35b64fb1a22ceb0992697ff3&stat=instructions:u)
  
| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.8%]   | 9     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 8     |
| Improvements (secondary) | -0.8% | [-1.1%, -0.5%] | 7     |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 8     |

* sole regressions are to (secondary) deep-vector and match-stress.
* perf graph for deep-vector hints that this might not be noise, but it is also minor.
* marking as triaged.

Rollup of 8 pull requests [#107650](https://github.com/rust-lang/rust/pull/107650) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=658fad6c5506f41c35b64fb1a22ceb0992697ff3&end=886b2c3e005b153b3c8263f48193e0df7de0f5b3&stat=instructions:u)
  
| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 4.4%  | [0.3%, 6.2%]   | 8     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -7.4% | [-7.4%, -7.4%] | 1     |
| All  (primary)           | -     | -              | 0     |

* the vast bulk regressions are on six variations of secondary benchmarks match-stress
* and *all* of those appear to to have all been resolved by follow-on PR #107667 (see above)
* marking as triaged.

  Do not deaggregate MIR [#107267](https://github.com/rust-lang/rust/pull/107267) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4aa6afa7f8a418a7dae5dbe4c95371d4f3bcc0e1&end=9dee4e4c42d23b0c5afd6d8fed025181f70fbe12&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.1%]    | 51    |
| Regressions (secondary)  | 0.8%  | [0.1%, 2.0%]    | 30    |
| Improvements (primary)   | -1.4% | [-2.6%, -0.3%]  | 25    |
| Improvements (secondary) | -6.0% | [-12.9%, -0.6%] | 27    |
| All  (primary)           | -0.1% | [-2.6%, 1.1%]   | 76    |

* already marked as triaged (wins far outweigh losses)


  Rollup of 3 pull requests [#107672](https://github.com/rust-lang/rust/pull/107672) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3de7d7fb22a579a3d59ddb1c959d1b3da224aafa&end=50d3ba5bcbf5c7e13d4ce068d3339710701dd603&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.8%  | [0.8%, 0.8%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.6% | [-1.1%, -0.4%] | 7     |
| All  (primary)           | -     | -              | 0     |

* regressions are to secondary benchmark externs.
* whatever this regression was, it has since been more than recovered by #107667
  
Less import overhead for errors [#107679](https://github.com/rust-lang/rust/pull/107679) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2a6ff729233c62d1d991da5ed4d01aa29e59d637&end=7f97aeaf73047268299ab55288b3dd886130be47&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.5%]   | 2     |
| Regressions (secondary)  | 0.9%  | [0.3%, 1.3%]   | 11    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-0.7%, -0.7%] | 2     |
| All  (primary)           | 0.4%  | [0.3%, 0.5%]   | 2     |

* already marked as triaged (its obvious noise)

  rustdoc: change trait bound formatting [#102842](https://github.com/rust-lang/rust/pull/102842) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7f97aeaf73047268299ab55288b3dd886130be47&end=319b88c463fe6f51bb6badbbd3bb97252a60f3a5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.7%  | [0.7%, 0.7%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 2     |
| Improvements (secondary) | -0.9% | [-1.3%, -0.3%] | 11    |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 2     |

* already marked as triaged (and its noise)


Optimize `fold_ty` [#107627](https://github.com/rust-lang/rust/pull/107627) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=75a0be98f25a4b9de5afa0e15eb016e7f9627032&end=14ea63a7e005f9ca48bc13df6cb4fc5afe32febe&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [1.0%, 1.1%]   | 2     |
| Regressions (secondary)  | 2.3%  | [0.6%, 4.2%]   | 12    |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 18    |
| Improvements (secondary) | -0.7% | [-1.6%, -0.2%] | 30    |
| All  (primary)           | -0.3% | [-0.5%, 1.1%]  | 20    |

* [already marked as triaged](https://github.com/rust-lang/rust/pull/107627#issuecomment-1419762439)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/labels/I-compiler-nominated)
- "Stabilize f16c_target_feature" [#106323](https://github.com/rust-lang/rust/pull/106323)
  - we missed this one because nominated when already closed
  - context provided by @**pnkfelix** ([in this comment](https://github.com/rust-lang/rust/pull/106323#issuecomment-1382318296))
  - related PR [rust#107711](https://github.com/rust-lang/rust/pull/107711) is waiting for review
  - needs to be discussed?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week meeting

Checkins:

- @_*WG-rls2.0* by @**Lukas Wirth**
- @_*WG-self-profile* by @**mw** and @**Wesley Wiser**

Agenda draft: https://hackmd.io/DzXUoPG6T-S5NfXcl8h1yg
