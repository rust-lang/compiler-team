---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2023-03-02

## Announcements

- [T-compiler: P-high Q1 review ](https://www.google.com/calendar/event?eid=MDk5ZDhtMjAzcmt2ZDlmMmR0ZWE0cXB2ZjUgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2023-03-03T10:00:00-05:00>
- Next week Thursday, 9th next Rust stable (1.68) release 
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- The [Governance RFC](https://github.com/rust-lang/rfcs/pull/3392) has been posted

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMzAzMDJUMTcwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-02T12:00:00-05:00>
- [Types team: extended updates](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzAzMDZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-06T10:00:00-05:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzAzMDZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-06T10:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add New Values To MIPS_ALLOWED_FEATURES" [compiler-team#595](https://github.com/rust-lang/compiler-team/issues/595) 
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 6 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 48 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 48 days ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: about 55 days ago)
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580) (last review activity: about 1 days ago)
  - "Synthetic Partial Drop Glue" [compiler-team#585](https://github.com/rust-lang/compiler-team/issues/585) (last review activity: about 25 days ago)
  - "Clone "copyables" using copy codegen" [compiler-team#588](https://github.com/rust-lang/compiler-team/issues/588) (last review activity: about 12 days ago)
  - "New tier-2 target for `wasm32-wasi-preview2`" [compiler-team#594](https://github.com/rust-lang/compiler-team/issues/594) (last review activity: about 4 days ago)
- Pending FCP requests (check your boxes!)
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850)
  - "Update the version of musl used on `*-linux-musl` targets to 1.2.3" [rust#107129](https://github.com/rust-lang/rust/pull/107129#issuecomment-1407200120) 
- Things in FCP (make sure you're good with it)
  - "Switch PLT default to "yes" for all targets except x86_64." [compiler-team#581](https://github.com/rust-lang/compiler-team/issues/581) 
  - "Implementing "<test_binary> --list --format json" for use by IDE test explorers / runners" [compiler-team#592](https://github.com/rust-lang/compiler-team/issues/592) 
  - "Add `internal_features` lint for internal unstable features" [compiler-team#596](https://github.com/rust-lang/compiler-team/issues/596) 
  - "Make `unused_allocation` lint against `Box::new` too" [rust#104363](https://github.com/rust-lang/rust/pull/104363) 
- Accepted MCPs
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) 
  - "Store ICE backtraces to disk and point end users at the file location" [compiler-team#578](https://github.com/rust-lang/compiler-team/issues/578) 
  - "Opportunistically show code snippet on panic" [compiler-team#591](https://github.com/rust-lang/compiler-team/issues/591) 
- Finalized FCPs (disposition merge)
  - "Stabilize rustdoc `--test-run-directory`" [rust#103682](https://github.com/rust-lang/rust/pull/103682) 
  - "Treat `str` as containing `[u8]` for auto trait purposes" [rust#107941](https://github.com/rust-lang/rust/pull/107941) 
  - "rustdoc: search by macro when query ends with `!`" [rust#108143](https://github.com/rust-lang/rust/pull/108143) 

### WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/7_-L3fsnTxCu_5tkRJcJIg#WG-checkins)):
  > Translation infrastructure is now per-crate. You can now find the relevant `.ftl` files within each crate and modifying them only recompiles your current crate.

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/cMs0zeMOQSK1zoDDo2LEFg#WG-checkins)):
  > #### Most notable changes
  > 
  > - new solver: write canonicalization chapter [#1595](https://github.com/rust-lang/rustc-dev-guide/pull/1595)
  > - update bootstrap guide [#1583](https://github.com/rust-lang/rustc-dev-guide/pull/1583)
  > - Add section on comparing types [#1570](https://github.com/rust-lang/rustc-dev-guide/pull/1570)
  > - extend bootstrap related documentations [#1563](https://github.com/rust-lang/rustc-dev-guide/pull/1563)
  > 
  > #### Most notable WIPs
  > 
  > - new chapter with examples of diagnostic translation PRs [#1621](https://github.com/rust-lang/rustc-dev-guide/pull/1621)
  > - Add back the `canonicalization` chapter. [#1532](https://github.com/rust-lang/rustc-dev-guide/pull/1532)
  > - Improve documentation of MIR queries & passes [#1434](https://github.com/rust-lang/rustc-dev-guide/pull/1434)
  > - Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
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
- "Parse unnamed struct and union fields" [rust#99754](https://github.com/rust-lang/rust/pull/99754) (last review activity: 3 months ago)
  - unsure, reroll reviewer?
- "Add consts for `AssocConst` w/ body & ignore regions in `is_satisfied_from_param_env`" [rust#106965](https://github.com/rust-lang/rust/pull/106965) (last review activity: about 27 days ago)
  - cc @**Boxy [she/her]** 
- "Require `type_map::stub` callers to supply file information" [rust#104342](https://github.com/rust-lang/rust/pull/104342) (last review activity: about 29 days ago)
  - are you @**Wesley Wiser** waiting for the author to reply to your comment on perf. run? Can switch review flag?
- "Split implied and super predicate queries, then allow elaborator to filter only supertraits" [rust#107614](https://github.com/rust-lang/rust/pull/107614) (last review activity: about 26 days ago)
  - unsure about the status. @**lcnr** / @**Jack Huey** did your comments imply some more design work?
- "Stabilize movbe and cmpxchg16b target features" [rust#107711](https://github.com/rust-lang/rust/pull/107711) (last review activity: about 23 days ago)
  - autoassigned to @**pnkfelix**, reroll?

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [53 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [24 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 6 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 32 P-high, 94 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "1.67 regression with `……::{opaque#0}<'_> does not live long enough` error" [rust#107516](https://github.com/rust-lang/rust/issues/107516) 
  - mentioned last meeting, @**Jack Huey** offered to help ([comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-02-23/near/329755324))
  - downgrade to `P-high`? (~1 week to beta branching)
- "`#[target_feature]` is allowed on `main`" [rust#108645](https://github.com/rust-lang/rust/issues/108645)
  - @**nils (Nilstrieb)** suggested to high prioritize this unsoundness before it lands into beta
  - Related to [rust#108646](https://github.com/rust-lang/rust/issues/108646), not unsound but probably `P-high` and [rust#108655](https://github.com/rust-lang/rust/issues/108655) as well
  - @**Léo Lanteri Thauvin** will prepare a revert PR or [rust#99767](https://github.com/rust-lang/rust/issues/99767) (RFC #69098) (~1 week to beta branching)
      - Revert in [rust#108654](https://github.com/rust-lang/rust/pull/108654)
      - Fix in [rust#108655](https://github.com/rust-lang/rust/pull/108655)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "1.67 regression with `……::{opaque#0}<'_> does not live long enough` error" [rust#107516](https://github.com/rust-lang/rust/issues/107516) 
  - (see above)

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` at this time.

### P-high regressions

[P-high stable regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-stable+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-03-01](https://github.com/rust-lang/rustc-perf/blob/f3e2553fb029d0adc50d6043933d5f9600d2e1a0/triage/2023-02-28.md)

Some noisy benchmarks impeded performance review this week. There was a notable
improvement to a broad range of primary benchmarks, first from PR #108440, which
revised the encodable proc macro to handle the discriminant separately from its
fields, and second from PR #108375, which inlined a number of methods that had
only a single caller. Both of these PR's were authored by the same contributor;
many thanks Zoxc!

Triage done by **@pnkfelix**.
Revision range: [3fee48c1..31f858d9](https://perf.rust-lang.org/?start=3fee48c161a48b0c142d3998fff56faee96bd56c&end=31f858d9a511f24fedb8ed997b28304fec809630&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.4%, 1.5%]    | 16    |
| Regressions (secondary)  | 0.6%  | [0.3%, 0.9%]    | 18    |
| Improvements (primary)   | -0.8% | [-17.1%, -0.3%] | 112   |
| Improvements (secondary) | -0.7% | [-1.8%, -0.1%]  | 50    |
| All  (primary)           | -0.6% | [-17.1%, 1.5%]  | 128   |


5 Regressions, 4 Improvements, 6 Mixed; 6 of them in rollups
39 artifact comparisons made in total
30 Untriaged Pull Requests

#### Regressions

errors: generate typed identifiers in each crate [#103042](https://github.com/rust-lang/rust/pull/103042) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3b4d6e080404560f63599deeb328dfa27fe081a6&end=b869e84e581612f4a30a4bca63bd9e90e9a17003&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.1% | [1.0%, 1.2%] | 2     |
| Regressions (secondary)  | 2.2% | [2.0%, 2.6%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.1% | [1.0%, 1.2%] | 2     |

* already triaged, believed to be noise.

Rollup of 10 pull requests [#108421](https://github.com/rust-lang/rust/pull/108421) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=07c993eba8b76eae497e98433ae075b00f01be10&end=c5c7d2b37780dac1092e75f12ab97dd56c30861d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.3%, 1.3%] | 4     |
| Regressions (secondary)  | 2.2% | [2.0%, 2.6%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.3%, 1.3%] | 4     |

* already triaged, believed to be noise.

Print a backtrace when query forcing fails. [#91742](https://github.com/rust-lang/rust/pull/91742) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c5c7d2b37780dac1092e75f12ab97dd56c30861d&end=f0bc76ac41a0a832c9ee621e31aaf1f515d3d6a5&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.7%] | 65    |
| Regressions (secondary)  | 0.5% | [0.2%, 2.3%] | 14    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.7%] | 65    |

* The compiler team [anticipated fallout here](https://github.com/rust-lang/rust/pull/91742#issuecomment-1435790317)
* the [actual fallout](https://github.com/rust-lang/rust/pull/91742#issuecomment-1444980590) seems to roughly match.
* marked as triaged.

Rollup of 9 pull requests [#108488](https://github.com/rust-lang/rust/pull/108488) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=43ee4d15bf201f72c36abd7f02961df87dead441&end=c4e0cd966062ca67daed20775f4e8a60c28e57df&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.4% | [0.8%, 2.0%] | 2     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.4% | [0.8%, 2.0%] | 2     |

* two doc,full regressions: 2% on hyper, 0.76% on serde...
* not worth teasing out of rollup; marked as triaged

MIR-Validate StorageLive. [#108175](https://github.com/rust-lang/rust/pull/108175) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=49b9cc5139dd4d11ef78dc08c1f9170de5b1ca39&end=7d782b7ff4d57170e110211565209ecc5bbb3907&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.6%, 0.7%] | 3     |
| Regressions (secondary)  | 0.3% | [0.3%, 0.5%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.6%, 0.7%] | 3     |

* regressed helloworld check by 0.6% in three incremental scenarios.
* note though that these regressions did not show up in the timer run before the PR landed.
* marked as triaged.

#### Improvements

Rollup of 6 pull requests [#108357](https://github.com/rust-lang/rust/pull/108357) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fdbc4329cb781c7768ffa6d76c8fa2d032d3fe20&end=da439d98749e7c94f3ecf355fdd616253ee08359&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.8%  | [1.8%, 1.8%]   | 1     |
| Improvements (primary)   | -1.0% | [-1.1%, -0.9%] | 2     |
| Improvements (secondary) | -2.2% | [-2.5%, -1.9%] | 6     |
| All  (primary)           | -1.0% | [-1.1%, -0.9%] | 2     |


Use `tcx.ty_error_with_guaranteed` in more places, rename variants [#108369](https://github.com/rust-lang/rust/pull/108369) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eb909d81464900597b91f3bbf2a6bef10006c9ff&end=07c993eba8b76eae497e98433ae075b00f01be10&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-1.2%, -1.0%] | 2     |
| Improvements (secondary) | -2.2% | [-2.5%, -2.0%] | 6     |
| All  (primary)           | -1.1% | [-1.2%, -1.0%] | 2     |


Emit the enum discriminant separately for the Encodable macro [#108440](https://github.com/rust-lang/rust/pull/108440) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d962ea57899d64dc8a57040142c6b498a57c8064&end=58136ffa92c81ec9e6ac1f91773254914da2ca01&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.0%, -0.3%] | 91    |
| Improvements (secondary) | -0.6% | [-0.9%, -0.4%] | 22    |
| All  (primary)           | -0.6% | [-1.0%, -0.3%] | 91    |


rustdoc: reduce allocations when generating tooltips [#108098](https://github.com/rust-lang/rust/pull/108098) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fd1f1fa0d10430885478276341e4afa2e2875adb&end=5157d938c49af1248a21e7ed2fbc5c6f71963276&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -5.1% | [-17.0%, -0.6%] | 4     |
| Improvements (secondary) | -0.9% | [-0.9%, -0.9%]  | 1     |
| All  (primary)           | -5.1% | [-17.0%, -0.6%] | 4     |


#### Mixed

Rollup of 8 pull requests [#108339](https://github.com/rust-lang/rust/pull/108339) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bd4a96a12d0bf6dc12edf20a45df3a33052c9d7d&end=3b4d6e080404560f63599deeb328dfa27fe081a6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.6%]   | 4     |
| Regressions (secondary)  | 0.8%  | [0.7%, 0.9%]   | 6     |
| Improvements (primary)   | -0.8% | [-3.0%, -0.2%] | 8     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 2     |
| All  (primary)           | -0.4% | [-3.0%, 0.6%]  | 12    |


* seems like a wash, in terms of mix of regressions and improvements. the one outlier was the 3% improvement to opt-full on cranelift-codegen.
* the primary regressions were to ripgrep opt-full (0.59%), image opt-full (0.51%), cranelift-codegen check-full (0.42%), and cranelift-codegen check-incr-full (0.27%)
* I do not think its worth trying to dissect the rollup at this point though. Marking as triaged.

diagnostics: if AssocFn has self argument, describe as method [#108324](https://github.com/rust-lang/rust/pull/108324) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=da439d98749e7c94f3ecf355fdd616253ee08359&end=0978711950b77582e4f8f334f6e9848d48ab7790&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [1.0%, 1.2%]   | 2     |
| Regressions (secondary)  | 2.2%  | [2.0%, 2.6%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.3% | [-2.3%, -2.3%] | 1     |
| All  (primary)           | 1.1%  | [1.0%, 1.2%]   | 2     |

* already triaged as noise.

Update cargo [#108330](https://github.com/rust-lang/rust/pull/108330) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0978711950b77582e4f8f334f6e9848d48ab7790&end=8b1dbf728add722d4db894b9b986ec24e1cdb0a1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.5%  | [2.5%, 2.5%]   | 1     |
| Improvements (primary)   | -1.0% | [-1.1%, -0.9%] | 2     |
| Improvements (secondary) | -2.2% | [-2.5%, -1.9%] | 6     |
| All  (primary)           | -1.0% | [-1.1%, -0.9%] | 2     |

* already triaged as noise

Rollup of 7 pull requests [#108386](https://github.com/rust-lang/rust/pull/108386) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8b1dbf728add722d4db894b9b986ec24e1cdb0a1&end=eb909d81464900597b91f3bbf2a6bef10006c9ff&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.9%, 1.1%]   | 2     |
| Regressions (secondary)  | 2.0%  | [0.4%, 2.6%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.5% | [-2.5%, -2.5%] | 1     |
| All  (primary)           | 1.0%  | [0.9%, 1.1%]   | 2     |

* primary cranelift-codegen; secondary keccak, coercions, unused-warnings
* seems like the same cases that were already categorized as noise by nnethercote in several other cases
* marking as triaged.

Rollup of 7 pull requests [#108464](https://github.com/rust-lang/rust/pull/108464) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=34e6673a0473e90ef01a18eb575392c9e3859747&end=f37f9f6512cb6b295acb70938302704a80c29b2b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.4%, 0.4%]   | 1     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.6%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.7% | [-0.9%, -0.6%] | 6     |

* already triaged

Add inlining attributes for query system functions [#108375](https://github.com/rust-lang/rust/pull/108375) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=70fd012439d75fd6ce561a6518b9b8fd399f455f&end=43ee4d15bf201f72c36abd7f02961df87dead441&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.7%]   | 5     |
| Improvements (primary)   | -0.4% | [-1.1%, -0.2%] | 38    |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] | 12    |
| All  (primary)           | -0.4% | [-1.1%, -0.2%] | 38    |

* wins clearly outweigh losses here.
* marking as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

## Next week meeting

Checkins:
- Impl Trait initiative by @**oli**
- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**

Agenda draft: https://hackmd.io/Y3MpcGIXRuKpDGmYZV-TJg
