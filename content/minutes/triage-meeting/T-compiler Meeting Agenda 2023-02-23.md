---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2023-02-23

## Announcements

- [T-compiler: scope and goals of rust-lang/rust optimizations](https://www.google.com/calendar/event?eid=MDFpY2NtNmFxbWZ1Y2tpN3Fka2Vqa251YWkgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2023-02-24T10:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMzAyMjNUMTcwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-23T12:00:00-05:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzAyMjdUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-27T10:00:00-05:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzAyMjdUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-27T10:00:00-05:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMzAyMjdUMTYzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-27T11:30:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMzAyMjdUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-27T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Derive noop impls of TypeFoldable/Visitable" [compiler-team#593](https://github.com/rust-lang/compiler-team/issues/593) 
  - "New tier-2 target for `wasm32-wasi-preview2`" [compiler-team#594](https://github.com/rust-lang/compiler-team/issues/594) 
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 0 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 41 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 41 days ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: about 48 days ago)
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580) (last review activity: about 28 days ago)
  - "Synthetic Partial Drop Glue" [compiler-team#585](https://github.com/rust-lang/compiler-team/issues/585) (last review activity: about 18 days ago)
  - "Clone "copyables" using copy codegen" [compiler-team#588](https://github.com/rust-lang/compiler-team/issues/588) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - "Make `unused_allocation` lint against `Box::new` too" [rust#104363](https://github.com/rust-lang/rust/pull/104363#issuecomment-1376858371)
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850)
  - "Update the version of musl used on `*-linux-musl` targets to 1.2.3" [rust#107129](https://github.com/rust-lang/rust/pull/107129#issuecomment-1407200120)
- Things in FCP (make sure you're good with it)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) 
  - "Store ICE backtraces to disk and point end users at the file location" [compiler-team#578](https://github.com/rust-lang/compiler-team/issues/578) 
  - "Switch PLT default to "yes" for all targets except x86_64." [compiler-team#581](https://github.com/rust-lang/compiler-team/issues/581) 
  - "Opportunistically show code snippet on panic" [compiler-team#591](https://github.com/rust-lang/compiler-team/issues/591) 
  - "Implementing "<test_binary> --list --format json" for use by IDE test explorers / runners" [compiler-team#592](https://github.com/rust-lang/compiler-team/issues/592) 
- Accepted MCPs
  - "Teach `rustc` to use OSC8 on nightly / Embedded links in terminal output" [compiler-team#587](https://github.com/rust-lang/compiler-team/issues/587) 
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry** ([previous checkin](https://hackmd.io/EewyTLZXQpmtfaH633GU-A#WG-checkins)):
  > Checkin text

- Generic Associated Types initiative by @**Jack Huey** ([previous checkin](https://hackmd.io/IvuR59rBR2Ka9opecmfaJQ#WG-checkins)):
  > No updates

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix index out of bounds ICE in `point_at_expr_source_of_inferred_type`" [rust#108050](https://github.com/rust-lang/rust/pull/108050)
  - backport asked by @**est31** [on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/.E2.9C.94.20backport.20for.20ICE.20fix)
  - Fixes this ICE in #108042
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Print a backtrace when query forcing fails." [rust#91742](https://github.com/rust-lang/rust/pull/91742) (last review activity: 14 months ago)
  - r+ed by @**Esteban Küber**, suggested having also another view [from someone else](https://github.com/rust-lang/rust/pull/91742#issuecomment-992705487)? Has anything changed since then?
- "[`unused_braces`] Lint multiline blocks as long as not in arms" [rust#102432](https://github.com/rust-lang/rust/pull/102432) (last review activity: 4 months ago)
  - cc: @**Caleb Cartwright**
- "add `with_hash_task` to generate `DepNode` deterministically" [rust#100987](https://github.com/rust-lang/rust/pull/100987) (last review activity: 4 months ago)
  - cc: @**cjgillot**
- "Introduce a no-op `PlaceMention` statement for `let _ =`." [rust#102256](https://github.com/rust-lang/rust/pull/102256) (last review activity: 2 months ago)
  - cc: @**Michael Goulet (compiler-errors)** (new review assignee by rustbot)
- "Avoid wrong code suggesting for attribute macro" [rust#107254](https://github.com/rust-lang/rust/pull/107254) (last review activity: about 28 days ago)
  - cc: @**Esteban Küber** 
- "Preprocess dominator tree to answer queries in O(1)" [rust#107157](https://github.com/rust-lang/rust/pull/107157) (last review activity: about 28 days ago)
  - @**tm|352985** self-assigned review?
- "Add consts for `AssocConst` w/ body & ignore regions in `is_satisfied_from_param_env`" [rust#106965](https://github.com/rust-lang/rust/pull/106965) (last review activity: about 27 days ago)
  - cc @**Boxy [she/her]** 
- "Add ability to transmute (somewhat) with generic consts in arrays" [rust#106281](https://github.com/rust-lang/rust/pull/106281) (last review activity: about 24 days ago)
  - cc: @**eddyb**. Re-roll for T-lang review?

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [51 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [22 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 5 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 30 P-high, 95 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` at this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No new `P-critical` issues for `T-types`, (#107516 discussed last week)

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` at this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-02-21](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-02-21.md)

Overall a fairly positive week, with few noise-related regressions or
improvements and many benchmarks showing significant improvements. The one large
regression is limited to documentation builds and has at least a partial fix
already planned.

Other wins this week include an average [improvement][memopt] of around 1% in
maximum memory usage of optimized builds, and a 2% average [reduction][sizeopt]
in compiled binary sizes. These are fairly significant wins for these metrics.

[memopt]: https://perf.rust-lang.org/?start=9bb6e60d1f1360234aae90c97964c0fa5524f141&end=3fee48c161a48b0c142d3998fff56faee96bd56c&absolute=false&stat=max-rss&kind=percentfromfirst
[sizeopt]: https://perf.rust-lang.org/?start=9bb6e60d1f1360234aae90c97964c0fa5524f141&end=3fee48c161a48b0c142d3998fff56faee96bd56c&absolute=false&stat=size%3Alinked_artifact&kind=percentfromfirst

Triage done by **@simulacrum**.
Revision range: [9bb6e60..3fee48c1](https://perf.rust-lang.org/?start=9bb6e60d1f1360234aae90c97964c0fa5524f141&end=3fee48c161a48b0c142d3998fff56faee96bd56c&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 9.0%  | [0.3%, 79.8%]  | 10    |
| Regressions (secondary)  | 0.9%  | [0.4%, 2.1%]   | 14    |
| Improvements (primary)   | -1.7% | [-5.0%, -0.2%] | 128   |
| Improvements (secondary) | -1.6% | [-5.2%, -0.2%] | 61    |
| All  (primary)           | -0.9% | [-5.0%, 79.8%] | 138   |


3 Regressions, 3 Improvements, 3 Mixed; 2 of them in rollups
45 artifact comparisons made in total

#### Regressions

Rollup of 10 pull requests [#108052](https://github.com/rust-lang/rust/pull/108052) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9bb6e60d1f1360234aae90c97964c0fa5524f141&end=6e0115778b0aedc90b59e035476c38e1b8c5c29b&stat=instructions:u)

| (instructions:u)         | mean | range         | count |
|:------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 9.5% | [0.3%, 80.7%] | 10    |
| Regressions (secondary)  | 2.7% | [2.7%, 2.7%]  | 1     |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)           | 9.5% | [0.3%, 80.7%] | 10    |

This regression is limited to doc builds and is likely caused by the tooltip
expansion in "rustdoc: add more tooltips to intra-doc links
[#108025](https://github.com/rust-lang/rust/pull/108025)". An initial reduction
in overhead is proposed in
[#108098](https://github.com/rust-lang/rust/pull/108098).

use semantic equality for const param type equality assertion  [#107940](https://github.com/rust-lang/rust/pull/107940) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0416b1a6f6d5c42696494e1a3a33580fd3f669d8&end=068161ea483b1a80a959476cb3e31e6619a72737&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.5%] | 5     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.5%] | 5     |

Relatively small significance threshold in a single benchmark -- likely a real
regression, but not worth intense scrutiny.

give the resolver access to TyCtxt [#105462](https://github.com/rust-lang/rust/pull/105462) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8f55d6025fec5fb648948fbe4fb6dcb4184c67bc&end=2deff71719a32af76eb4493ddb1dc4653fb88cad&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 1.4%] | 94    |
| Regressions (secondary)  | 0.6% | [0.2%, 2.6%] | 25    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 1.4%] | 94    |

Regressions are being pursued in follow-up PRs, this architectural change
benefits incremental compilation and in general is on the right path even if in
the short term we are seeing some regressions due to increased locking.

#### Improvements

Avoid accessing HIR when it can be avoided [#108006](https://github.com/rust-lang/rust/pull/108006) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=999ac5f7770bff68bd65f490990d32c3ec1faaa6&end=2d14db321b043ffc579a7461464c88d7e3f54f83&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 3     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | -0.4% | [-0.4%, -0.4%] | 3     |


Rollup of 6 pull requests [#108211](https://github.com/rust-lang/rust/pull/108211) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3701bdc6333145410f009c83bd03f424eca05009&end=3eb5c4581a386b13c414e8c8bd73846ef37236d1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 3     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 3     |


Use `ThinVec` more in the AST [#104754](https://github.com/rust-lang/rust/pull/104754) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f715e430aac0de131e2ad21804013ea405722a66&end=3fee48c161a48b0c142d3998fff56faee96bd56c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.4%, 0.6%]   | 9     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.5%, -0.2%] | 80    |
| Improvements (secondary) | -0.8% | [-3.3%, -0.2%] | 44    |
| All  (primary)           | -0.4% | [-1.5%, 0.6%]  | 89    |


#### Mixed

Enable CopyProp [#107449](https://github.com/rust-lang/rust/pull/107449) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dc7a676778706bde3b50ff6d4fe81e2955bd4847&end=639377ed737b25830ec44dc6acf93467c980316a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | 1.2%  | [0.1%, 2.7%]   | 5     |
| Improvements (primary)   | -1.4% | [-4.4%, -0.3%] | 151   |
| Improvements (secondary) | -1.7% | [-5.5%, -0.3%] | 57    |
| All  (primary)           | -1.4% | [-4.4%, 0.4%]  | 153   |

The improvements here massively outweigh the tiny number of regressions.

(https://github.com/rust-lang/rust/pull/107449#issuecomment-1432772163)

Factor query arena allocation out from query caches [#107833](https://github.com/rust-lang/rust/pull/107833) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9a7cc6c32f1a690f86827e4724bcda85e506ef35&end=947b696ce0ce42c98b8fb82ffa0735ade051466c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.0%  | [0.2%, 1.9%]   | 4     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 3     |
| All  (primary)           | -0.3% | [-0.3%, -0.3%] | 1     |

Enable instcombine for mutable reborrows [#105274](https://github.com/rust-lang/rust/pull/105274) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9aa5c24b7d763fb98d998819571128ff2eb8a3ca&end=231bcd131d109d41e5705f48b9c5a6e70c98ff80&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 3.1%]   | 16    |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.5%]   | 11    |
| Improvements (primary)   | -0.7% | [-2.3%, -0.3%] | 32    |
| Improvements (secondary) | -1.0% | [-1.7%, -0.3%] | 17    |
| All  (primary)           | -0.3% | [-2.3%, 3.1%]  | 48    |

This also provides significant wins for binary size, up to 8.8% in stm32f4.



## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

## Next week meeting

Checkins:
- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**

Agenda draft: https://hackmd.io/4CKNflTQQIKOxk7jiuh7NQ