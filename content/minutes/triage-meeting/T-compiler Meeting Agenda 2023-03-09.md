---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2023-03-09

## Announcements

- Today Rust stable (1.68) release! :tada:
- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzAzMTBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-10T10:00:00-05:00>
- Rust Foundation will be putting out a call for Grant/Fellowship proposals in the near future, and has asked T-compiler for the following (by April 1st at latest): 1. a list of suggested compiler-related projects we would like grantees to take on, and 2. a statement as to whether we have bandwidth to take on "a fellow" this year. Message either @_**pnkfelix** or @_**Sage Griffin (they/them)**  (or both) if you want more details.
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=M2xpa29pZjl1Z2NvazdhZXRzbDlmNnVsZWFfMjAyMzAzMDlUMTkwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-09T14:00:00-05:00>
- [Types team: types-team#62 or types-team#57](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzAzMTNUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-13T10:00:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzAzMTNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-13T11:00:00-04:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMzAzMTNUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-13T11:30:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMzAzMTNUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-13T16:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add New Values To MIPS_ALLOWED_FEATURES" [compiler-team#595](https://github.com/rust-lang/compiler-team/issues/595) 
  - "Use `ControlFlow` in HIR `Visitor`" [compiler-team#597](https://github.com/rust-lang/compiler-team/issues/597) 
  - "Take MIR `Analysis` by `&mut`" [compiler-team#598](https://github.com/rust-lang/compiler-team/issues/598) 
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 12 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 54 days ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: 2 months ago)
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580) (last review activity: about 7 days ago)
  - "Synthetic Partial Drop Glue" [compiler-team#585](https://github.com/rust-lang/compiler-team/issues/585) (last review activity: about 31 days ago)
  - "Clone "copyables" using copy codegen" [compiler-team#588](https://github.com/rust-lang/compiler-team/issues/588) (last review activity: about 18 days ago)
  - "New tier-2 target for `wasm32-wasi-preview2`" [compiler-team#594](https://github.com/rust-lang/compiler-team/issues/594) (last review activity: about 10 days ago)
- Pending FCP requests (check your boxes!)
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850)
  - "Update the version of musl used on `*-linux-musl` targets to 1.2.3" [rust#107129](https://github.com/rust-lang/rust/pull/107129#issuecomment-1407200120)
- Things in FCP (make sure you're good with it)
  - "Add `internal_features` lint for internal unstable features" [compiler-team#596](https://github.com/rust-lang/compiler-team/issues/596) 
  - "MCP: New Tier-3 target for `x86_64h-apple-darwin`" [compiler-team#599](https://github.com/rust-lang/compiler-team/issues/599) 
  - "Make `unused_allocation` lint against `Box::new` too" [rust#104363](https://github.com/rust-lang/rust/pull/104363) 
  - "Remove `box_syntax`" [rust#108471](https://github.com/rust-lang/rust/pull/108471) 
- Accepted MCPs
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) 
  - "Store ICE backtraces to disk and point end users at the file location" [compiler-team#578](https://github.com/rust-lang/compiler-team/issues/578) 
  - "Switch PLT default to "yes" for all targets except x86_64." [compiler-team#581](https://github.com/rust-lang/compiler-team/issues/581) 
  - "Opportunistically show code snippet on panic" [compiler-team#591](https://github.com/rust-lang/compiler-team/issues/591) 
  - "Implementing "<test_binary> --list --format json" for use by IDE test explorers / runners" [compiler-team#592](https://github.com/rust-lang/compiler-team/issues/592) 
- Finalized FCPs (disposition merge)
  - "Stabilize rustdoc `--test-run-directory`" [rust#103682](https://github.com/rust-lang/rust/pull/103682) 
  - "Treat `str` as containing `[u8]` for auto trait purposes" [rust#107941](https://github.com/rust-lang/rust/pull/107941) 
  - "rustdoc: search by macro when query ends with `!`" [rust#108143](https://github.com/rust-lang/rust/pull/108143)

### WG checkins

- Impl Trait initiative by @**oli** ([previous checkin](https://hackmd.io/cMs0zeMOQSK1zoDDo2LEFg?view=#WG-checkins)):
  > Significant changes to TAIT defining scopes coming up: https://github.com/rust-lang/rust/pull/107809 . The new design is more limited, but forward compatible to all other considered designs.

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/PEWPUGJFQYGmj7V73vXdLg#WG-checkins)):
  > @**Nikita Popov** :
  > * Update to LLVM 16 is in progress (https://github.com/rust-lang/rust/pull/107224).
  > * Support for LLVM 13 has been dropped (https://github.com/rust-lang/rust/pull/107573).
  > * I have an open GSoC project for Rust optimizations in LLVM (https://discourse.llvm.org/t/llvm-addressing-rust-optimization-failures-in-llvm/68096).

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "fix multiple issues when promoting type-test subject" [rust#108691](https://github.com/rust-lang/rust/pull/108691)
  - PR authored by @**aliemjay** 
  - @**Jack Huey** [nominated](https://github.com/rust-lang/rust/pull/108691#issuecomment-1457248880) for both beta and stable backport (next release cycle)
  - Fixes a number of regressions (see [comment](https://github.com/rust-lang/rust/pull/108691#issue-1607959956)), (#107516 P-critical)
  - mentioned in this [review](https://github.com/rust-lang/rust/pull/108691#pullrequestreview-1325525542) work about a follow-up patch
- :beta: "Retry `pred_known_to_hold_modulo_regions` with fulfillment if ambiguous" [rust#108754](https://github.com/rust-lang/rust/pull/108754)
  - PR author and nominated by @**Michael Goulet (compiler-errors)**
  - Fixes [rust#108721](https://github.com/rust-lang/rust/issues/108721), a P-critical regression (blocking code using a crate to compile)
  - Difficult to produce an MCVE for #108721 but a test would be desirable 
- :beta: "fix: evaluate with wrong obligation stack" [rust#108901](https://github.com/rust-lang/rust/pull/108901)
  - Fixes an unsoundness, [rust#108897](https://github.com/rust-lang/rust/issues/108897)
- :stable:-1.68 "fix multiple issues when promoting type-test subject" [rust#108691](https://github.com/rust-lang/rust/pull/108691)
  - see above
- ~~:stable:-1.68 "fix: evaluate with wrong obligation stack" [rust#108901](https://github.com/rust-lang/rust/pull/108901)~~


[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Implement a lint for implicit autoref of raw pointer dereference" [rust#103735](https://github.com/rust-lang/rust/pull/103735)
  - @**Jak{e,ob} Degen** suggested a way forward ([comment](https://github.com/rust-lang/rust/pull/103735#issuecomment-1370420305))
  - `T-lang` discussed, it seems ([comment](https://github.com/rust-lang/rust/pull/103735#issuecomment-1402525086))
  - Unsure current status, maybe there's now some actionable for the author?
- "Account for late-bound lifetimes in generics" [rust#103448](https://github.com/rust-lang/rust/pull/103448)
  - Waiting on `T-types`
  - Split into [#108782](https://github.com/rust-lang/rust/pull/108782) (now waiting on review)
- "Lint ambiguous glob re-exports" [rust#107880](https://github.com/rust-lang/rust/pull/107880)
  - Proposed FCP ([comment](https://github.com/rust-lang/rust/pull/107880#issuecomment-1458758224))
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Require TAITs to appear in the signature of items that register a hidden type" [rust#107809](https://github.com/rust-lang/rust/pull/107809) (last review activity: about 28 days ago)
  - cc: @**cjgillot** 
- "Move the WorkerLocal type from the rustc-rayon fork into rustc_data_structures" [rust#107782](https://github.com/rust-lang/rust/pull/107782) (last review activity: about 27 days ago)
  - cc: @**cjgillot** 
- "rustdoc: Skip doc link resolution for non-exported items" [rust#107932](https://github.com/rust-lang/rust/pull/107932) (last review activity: about 25 days ago)
  - mostly T-rustdoc, does it needs a check from T-compiler?
- "Erase late bound regions for dropped instances" [rust#107936](https://github.com/rust-lang/rust/pull/107936) (last review activity: about 18 days ago)
  - pending comments from PR author? cc: @**Jack Huey** / @**cjgillot** 
- "Allow to feed a value in another query's cache and remove `WithOptConstParam`" [rust#96840](https://github.com/rust-lang/rust/pull/96840) (last review activity: about 17 days ago)
  - cc @**oli** 

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [56 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [23 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 33 P-high, 94 P-medium, 14 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` at this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` at this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` at this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-03-07](https://github.com/rust-lang/rustc-perf/blob/37a1dbfd554c486498112e8f1850e6579a25b105/triage/2023-03-07.md)

A really quiet week with almost all regressions being due to noise in benchmarks that show "bimodality" in codegen that can cause swings in performance from one change to the other. The only true performance change was a two-line change by @nnethercote to remove a 2redundant function call which led to a 0.3% improvement in performance across roughly 15 benchmarks.

Triage done by **@rylev**.
Revision range: [31f858d9..8f9e09ac](https://perf.rust-lang.org/?start=31f858d9a511f24fedb8ed997b28304fec809630&end=8f9e09ac3ef3fa85d23ad6a0c920d49987144b13&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.0%  | [1.2%, 2.8%]   | 8     |
| Improvements (primary)   | -0.4% | [-0.7%, -0.2%] | 7     |
| Improvements (secondary) | -1.0% | [-1.8%, -0.1%] | 31    |
| All  (primary)           | -0.4% | [-0.7%, -0.2%] | 7     |


7 Regressions, 8 Improvements, 2 Mixed; 7 of them in rollups
35 artifact comparisons made in total

#### Regressions

Rollup of 5 pull requests [#108640](https://github.com/rust-lang/rust/pull/108640) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=18caf88956ecf454e24307e598b8ac9967f10b07&end=7e966bcd03f6d0fae41f58cf80bcb10566ab971a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 3.2% | [2.1%, 4.4%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |
- @nnethercote expects that `deep-vector` may have become susceptible to bimodal codegen which can cause swings in perf performance. 


Revert stabilization of `#![feature(target_feature_11)]` [#108654](https://github.com/rust-lang/rust/pull/108654) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7e966bcd03f6d0fae41f58cf80bcb10566ab971a&end=13471d3b2046cce78181dde6cfc146c09f55e29e&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.6%, 0.7%] | 3     |
| Regressions (secondary)  | 0.4% | [0.3%, 0.5%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.6%, 0.7%] | 3     |
- Noise: small regressions are immediately reversed in the next run.


Add vectored positioned I/O on Unix [#89518](https://github.com/rust-lang/rust/pull/89518) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=70adb4e5b4c8f8bde4ade0edcb0435ff7bf31281&end=0fbfc3e76916521b509b63286296dd0762170d34&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.3%] | 4     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.3%] | 4     |
- Small regression in Diesel which has started to show some bimodality. I think it's safe to call this triaged.


Remove `NormalizationError::ConstantKind` [#108689](https://github.com/rust-lang/rust/pull/108689) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0fbfc3e76916521b509b63286296dd0762170d34&end=01b7a6a9eac151f82831c402f91894552f5ca36d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [1.0%, 1.1%]   | 2     |
| Regressions (secondary)  | 2.3%  | [2.1%, 2.7%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.6% | [-0.6%, -0.6%] | 1     |
| All  (primary)           | 1.1%  | [1.0%, 1.1%]   | 2     |
- more `keccak` and `cranelift-codegen` noise. 


Bump version to 1.70.0 [#108740](https://github.com/rust-lang/rust/pull/108740) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b1719530f44e3c8ec903f76020a52bd8764d5d10&end=f15f0ea73972786e426732c5b92ba9a904b866c4&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.4%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.4%] | 6     |
- Perhaps due to shuffled hashes? In any case, not much that can be done.


Add more debug assertions to unsafe functions [#105117](https://github.com/rust-lang/rust/pull/105117) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=73c8d2df7b36387553442a815d2b72f7ea5878aa&end=7820b62d20bc548096d4632a3487987308cb4b5d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.0% | [0.9%, 1.1%] | 2     |
| Regressions (secondary)  | 2.3% | [2.0%, 2.7%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.0% | [0.9%, 1.1%] | 2     |
- more `cranelift-codegen` noise. 


Rollup of 7 pull requests [#108789](https://github.com/rust-lang/rust/pull/108789) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=816f958ac3db8931855c42649809aead01d20d9b&end=8c0f83d773370150a6ea1b40b36b55566e40a73c&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.1% | [1.0%, 1.1%] | 2     |
| Regressions (secondary)  | 2.3% | [2.1%, 2.7%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.1% | [1.0%, 1.1%] | 2     |
- more `keccak` and `cranelift-codegen` noise. 


#### Improvements

Remove or document uses of #[rustc_box] in library [#108476](https://github.com/rust-lang/rust/pull/108476) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bcb610da7fae8297689883782601ecb8645604e2&end=64165aac68af780182ff89a6eb3982e3c262266e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.7%, -0.5%] | 4     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 3     |
| All  (primary)           | -0.6% | [-0.7%, -0.5%] | 4     |
- Revert of noise


Rollup of 8 pull requests [#108677](https://github.com/rust-lang/rust/pull/108677) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=13471d3b2046cce78181dde6cfc146c09f55e29e&end=7a809ce8997a1697b166b4bb2594993e87d69f31&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.7%, -0.6%] | 3     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 4     |
| All  (primary)           | -0.6% | [-0.7%, -0.6%] | 3     |
- Revert of noise


Rollup of 8 pull requests [#108709](https://github.com/rust-lang/rust/pull/108709) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=44cfafe2fafe816395d3acc434663a45d5178c41&end=70adb4e5b4c8f8bde4ade0edcb0435ff7bf31281&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.1%, -0.9%] | 2     |
| Improvements (secondary) | -2.3% | [-2.6%, -2.0%] | 6     |
| All  (primary)           | -1.0% | [-1.1%, -0.9%] | 2     |
- Revert of noise


Rollup of 6 pull requests [#108732](https://github.com/rust-lang/rust/pull/108732) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=01b7a6a9eac151f82831c402f91894552f5ca36d&end=276b75a843af8822ffe4e395266d9445679a57a4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.4%, -0.3%] | 6     |
- Revert of noise


Don't call `temporary_scope` twice. [#108692](https://github.com/rust-lang/rust/pull/108692) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=276b75a843af8822ffe4e395266d9445679a57a4&end=b1719530f44e3c8ec903f76020a52bd8764d5d10&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.2%] | 15    |
| Improvements (secondary) | -1.0% | [-1.5%, -0.4%] | 27    |
| All  (primary)           | -0.3% | [-0.6%, -0.2%] | 15    |


Desugaring of drop and replace at MIR build [#107844](https://github.com/rust-lang/rust/pull/107844) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=35636f9459720513ca4ed19373a4a7c9e0ea3c46&end=14c54b637b18f74680d0c0441216714b5e9c150d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.1%, -1.0%] | 2     |
| Improvements (secondary) | -2.0% | [-2.6%, -0.3%] | 7     |
| All  (primary)           | -1.0% | [-1.1%, -1.0%] | 2     |


Use `partial_cmp` to implement tuple `lt`/`le`/`ge`/`gt` [#108157](https://github.com/rust-lang/rust/pull/108157) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7820b62d20bc548096d4632a3487987308cb4b5d&end=816f958ac3db8931855c42649809aead01d20d9b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.2% | [-1.6%, -0.6%] | 3     |
| Improvements (secondary) | -2.2% | [-2.6%, -2.0%] | 6     |
| All  (primary)           | -1.2% | [-1.6%, -0.6%] | 3     |


Erase regions even when failing to normalize type in MIR opts [#108787](https://github.com/rust-lang/rust/pull/108787) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c0f83d773370150a6ea1b40b36b55566e40a73c&end=ac4379fea9e83465d814bb05005689f49bd2141e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.1%, -1.0%] | 2     |
| Improvements (secondary) | -2.2% | [-2.6%, -2.0%] | 6     |
| All  (primary)           | -1.0% | [-1.1%, -1.0%] | 2     |


#### Mixed

Rollup of 10 pull requests [#108587](https://github.com/rust-lang/rust/pull/108587) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5983a3a99ea631da9d7d1ce510a6761913f92a89&end=bcb610da7fae8297689883782601ecb8645604e2&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.8%]   | 4     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.6%]   | 4     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.8% | [-0.8%, -0.8%] | 1     |
| All  (primary)           | 0.7%  | [0.7%, 0.8%]   | 4     |
- Noise that is counter balanced by [#108476](https://github.com/rust-lang/rust/pull/108476).


Rollup of 7 pull requests [#108707](https://github.com/rust-lang/rust/pull/108707) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7a809ce8997a1697b166b4bb2594993e87d69f31&end=44cfafe2fafe816395d3acc434663a45d5178c41&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.6%, 0.7%]   | 2     |
| Regressions (secondary)  | 1.5%  | [1.3%, 1.7%]   | 6     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.3%] | 3     |
| Improvements (secondary) | -0.7% | [-1.0%, -0.5%] | 9     |
| All  (primary)           | 0.1%  | [-0.4%, 0.7%]  | 5     |
- Regressions are just noise in the historically noisy benchmarks

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

## Next week's WG checkins

- Types team by @**nikomatsakis** and @**Jack Huey**
- @_*WG-mir-opt* by @**oli**

Agenda draft: https://hackmd.io/gl1iwQGMR-qHwraZPc2c9A
