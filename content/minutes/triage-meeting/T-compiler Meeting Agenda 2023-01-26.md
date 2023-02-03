---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-01-26

## Announcements

- Today - release of Rust stable 1.67! 
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMzAxMzBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-30T10:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- @**jyn** : Does T-compiler want to be on the review rotation for PRs modifying `compiletest`?
  - Some context at this [Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/reminder.20for.20next.20meeting)
  - Also [comment](https://rust-lang.zulipchat.com/#narrow/stream/326414-t-infra.2Fbootstrap/topic/Meeting.202023-01-23/near/323064181) from @__**simulacrum**

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMzAxMjZUMTcwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-26T12:00:00-05:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzAxMzBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-30T10:00:00-05:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMzAxMzBUMTYzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-30T11:30:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMzAxMzBUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-30T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Stale MCPs (tracked on [HackMD](https://hackmd.io/n53PZVXnSxSrvEcp1zrohA). Candidate for closing, see [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 5 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 33 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 13 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 14 days ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: about 20 days ago)
  - "Store ICE backtraces to disk and point end users at the file location" [compiler-team#578](https://github.com/rust-lang/compiler-team/issues/578) (last review activity: about 12 days ago)
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580) (last review activity: about 1 days ago)
- Pending FCP requests (check your boxes!)
  - "Make `unused_allocation` lint against `Box::new` too" [rust#104363](https://github.com/rust-lang/rust/pull/104363#issuecomment-1376858371)
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850)
  - "Support `true` and `false` as boolean flag params" [rust#107043](https://github.com/rust-lang/rust/pull/107043#issuecomment-1397607649)
- Things in FCP (make sure you're good with it)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) 
- Accepted MCPs
  - "Upgrade `*-linux-musl` targets to musl 1.2" [compiler-team#572](https://github.com/rust-lang/compiler-team/issues/572) 
  - "New tier-2 target for `wasm32-wasi` + threads" [compiler-team#574](https://github.com/rust-lang/compiler-team/issues/574) 
- Finalized FCPs (disposition merge)
  - "rustdoc: change trait bound formatting" [rust#102842](https://github.com/rust-lang/rust/pull/102842) 
  - "Add `SEMICOLON_IN_EXPRESSIONS_FROM_MACROS` to future-incompat report" [rust#103418](https://github.com/rust-lang/rust/pull/103418) 
  - "Check ADT fields for copy implementations considering regions" [rust#105102](https://github.com/rust-lang/rust/pull/105102) 

### WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/5APqeR9MSjebq_xZjZjxKA#WG-checkins)):
  > #### Most notable changes
  > 
  > - Add a section for how to review code more easily [#1538](https://github.com/rust-lang/rustc-dev-guide/pull/1538)
  > - Add help for when you update a submodule by accident [#1537](https://github.com/rust-lang/rustc-dev-guide/pull/1537)
  > - Add more rebasing help [#1536](https://github.com/rust-lang/rustc-dev-guide/pull/1536)
  > - Add documentation for LLVM KCFI support [#1529](https://github.com/rust-lang/rustc-dev-guide/pull/1529)
  > - Simplify "how to build and run" section [#1528](https://github.com/rust-lang/rustc-dev-guide/pull/1528)
  > - Remove TyS [#1526](https://github.com/rust-lang/rustc-dev-guide/pull/1526)
  > 
  > #### Most notable WIPs
  > 
  > - wip: extend bootstrap related documentations [#1563](https://github.com/rust-lang/rustc-dev-guide/pull/1563)
  > - bootsrapping stages overview list [#1555](https://github.com/rust-lang/rustc-dev-guide/pull/1555)
  > - add section for the new trait solver [#1551](https://github.com/rust-lang/rustc-dev-guide/pull/1551)
  > - Add Neovim configuration information [#1545](https://github.com/rust-lang/rustc-dev-guide/pull/1545)
  > - Add back the `canonicalization` chapter. [#1532](https://github.com/rust-lang/rustc-dev-guide/pull/1532)
  > - Create a chapter for AST validation [#1524](https://github.com/rust-lang/rustc-dev-guide/pull/1524)
  > - Add a review checklist and suggest reviews as a way to get started with the project [#1463](https://github.com/rust-lang/rustc-dev-guide/pull/1463)
  > - Improve documentation of MIR queries & passes [#1434](https://github.com/rust-lang/rustc-dev-guide/pull/1434)
  > - Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)

- Impl Trait initiative by @**oli** ([previous checkin](https://hackmd.io/5APqeR9MSjebq_xZjZjxKA#WG-checkins)):
  > TAIT stabilization FCP started. Leftover blockers: more documentation and landing open PRs

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
- None ([issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "add `with_hash_task` to generate `DepNode` deterministically" [rust#100987](https://github.com/rust-lang/rust/pull/100987) (last review activity: 3 months ago)
  - ping @**cjgillot** for another look
- "Parse unnamed struct and union fields" [rust#99754](https://github.com/rust-lang/rust/pull/99754) (last review activity: 2 months ago)
  - cc: @**cjgillot**
- "Remove dead unwinds before drop elaboration" [rust#106430](https://github.com/rust-lang/rust/pull/106430) (last review activity: about 21 days ago)
  - assigned to ~~@**nils (Nilstrieb)**~~ @**Wesley Wiser** 

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [49 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [20 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 4 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 29 P-high, 90 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "regression: failed to resolve proc macro definition" [rust#106337](https://github.com/rust-lang/rust/issues/106337)
  - already discussed: #107133 will revert #84022
  - [Was also discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-01-19/near/322310016) whether to revert #103760 (unsure if it was reverted)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Regression in Beta/Nightly: implementation of `Trait` is not general enough" [rust#106630](https://github.com/rust-lang/rust/issues/106630) 
  - Reverted by [#106759](https://github.com/rust-lang/rust/pull/106759) by @**Michael Goulet (compiler-errors)** 
- "Windows builds fail to link C++ static library" [rust#107162](https://github.com/rust-lang/rust/issues/107162)
  - Assigned `P-high` (though not completely sure, see [comment](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23107162.20Windows.20builds.20fail.20to.20link.20C.2B.2B.20static.20library))
  - opened recently, seems caused by #97485

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-01-24](https://github.com/rust-lang/rustc-perf/blob/c1288eb644a7681842dbb885686366d5af64a71f/triage/2023-01-24.md)

Largely a win for compiler performance with 100 test cases in real-world crates showing some sort of change in performance with an average 1% improvement. These wins were a combination of many different changes including how `doc(hidden)` gets more efficiently encoded in metadata, some optimizations in the borrow checker, and simplification of the output from `derive(Debug)` for fieldless enums.

Triage done by **@rylev**.
Revision range: [1f72129f..c8e6a9e8](https://perf.rust-lang.org/?start=1f72129ffe5e8c495113f9a2d4e1730f7fad3209&end=c8e6a9e8b6251bbc8276cb78cabe1998deecbed7&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.7%]    | 19    |
| Regressions (secondary)  | 0.9%  | [0.2%, 1.5%]    | 34    |
| Improvements (primary)   | -1.3% | [-17.2%, -0.2%] | 81    |
| Improvements (secondary) | -2.1% | [-7.1%, -0.2%]  | 64    |
| All  (primary)           | -1.0% | [-17.2%, 0.7%]  | 100   |


2 Regressions, 5 Improvements, 3 Mixed; 1 of them in rollups
34 artifact comparisons made in total

#### Regressions

Check ADT fields for copy implementations considering regions [#105102](https://github.com/rust-lang/rust/pull/105102) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5ce39f42bd2c8bca9c570f0560ebe1fce4eddb14&end=94a300b9b8eb253c1b809fc44b8c213fd591c537&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.4%, 0.5%] | 6     |
| Regressions (secondary)  | 1.7% | [1.4%, 2.0%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.4%, 0.5%] | 6     |
- Soundness fix, combined with a small regression means we likely don't need to worry too much about this one.
- [Asked the author and reviewer to comment.](https://github.com/rust-lang/rust/pull/105102#issuecomment-1403713334)


ci: upgrade mingw-check to ubuntu:22.04 [#106948](https://github.com/rust-lang/rust/pull/106948) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=52372f9c71d8ade4cb815524f179119656f0aa2e&end=1c394e1b9abf83f26d68f441e9f0ef0062bde703&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 2     |
| Regressions (secondary)  | 0.7% | [0.6%, 0.8%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.3%] | 2     |
- This is noise correcting from [spurious improvements in the previous run](https://perf.rust-lang.org/compare.html?start=005fc0f00f2d4ceaf523b67a8f9c5665b8ac5baf&end=52372f9c71d8ade4cb815524f179119656f0aa2e&stat=instructions:u).


#### Improvements

rustdoc: Revert #104889 [#107083](https://github.com/rust-lang/rust/pull/107083) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a2bf475d01d0112ded3aa17e40cb335e1524aa8f&end=51d50ea96ecc9c681a0054e5eb8e5e1d4ab38906&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -4.4% | [-15.7%, -0.5%] | 7     |
| Improvements (secondary) | -1.5% | [-1.6%, -1.4%]  | 3     |
| All  (primary)           | -4.4% | [-15.7%, -0.5%] | 7     |


Remove some `ref` patterns from the compiler [#106090](https://github.com/rust-lang/rust/pull/106090) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=51d50ea96ecc9c681a0054e5eb8e5e1d4ab38906&end=56ee85274e5a3a4dda92f3bf73d1664c74ff9c15&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 3     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.3%] | 5     |
| All  (primary)           | -0.2% | [-0.2%, -0.1%] | 3     |


Lazy dominator tree construction in borrowck [#106976](https://github.com/rust-lang/rust/pull/106976) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b22aa57fd54c240131c9a31b78213de9f3bee64b&end=21f683935257713eae8549e8b328367006097053&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.3%] | 26    |
| Improvements (secondary) | -0.7% | [-1.0%, -0.3%] | 14    |
| All  (primary)           | -0.4% | [-0.6%, -0.3%] | 26    |


Remap paths in UI tests by default [#105924](https://github.com/rust-lang/rust/pull/105924) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=005fc0f00f2d4ceaf523b67a8f9c5665b8ac5baf&end=52372f9c71d8ade4cb815524f179119656f0aa2e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 2     |
| Improvements (secondary) | -0.6% | [-0.8%, -0.3%] | 7     |
| All  (primary)           | -0.3% | [-0.3%, -0.3%] | 2     |


rustc_metadata: Encode `doc(hidden)` flag to metadata [#107136](https://github.com/rust-lang/rust/pull/107136) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6b3cd03fdb285781c60f5962194719fdfd46d910&end=5bef91c6e902f3bded724713bd2a64ea50abbd25&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -1.9% | [-5.7%, -0.5%] | 18    |
| Improvements (secondary) | -3.3% | [-5.8%, -0.8%] | 28    |
| All  (primary)           | -1.9% | [-5.7%, -0.5%] | 18    |


#### Mixed

Rollup of 9 pull requests [#107143](https://github.com/rust-lang/rust/pull/107143) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0726909f6d219951ba15ac2f65656eff96bb1867&end=e098eb17e1514bcd604ac4bd57cec362944687af&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.8%]   | 57    |
| Regressions (secondary)  | 0.5%  | [0.2%, 1.4%]   | 28    |
| Improvements (primary)   | -0.7% | [-1.1%, -0.3%] | 2     |
| Improvements (secondary) | -0.7% | [-1.2%, -0.5%] | 8     |
| All  (primary)           | 0.3%  | [-1.1%, 0.8%]  | 59    |
- This rollup contains a perf regression due to #104672
- Probably caused by some changes to inlining. 


Simplify `derive(Debug)` output for fieldless enums [#106884](https://github.com/rust-lang/rust/pull/106884) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e098eb17e1514bcd604ac4bd57cec362944687af&end=b22aa57fd54c240131c9a31b78213de9f3bee64b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.8%  | [0.7%, 1.0%]   | 7     |
| Improvements (primary)   | -0.5% | [-1.7%, -0.2%] | 22    |
| Improvements (secondary) | -1.7% | [-2.9%, -0.5%] | 8     |
| All  (primary)           | -0.5% | [-1.7%, -0.2%] | 22    |
- Improvements outweigh the regressions so I think it's fine if we just take this performance as is.


Use UnordMap and UnordSet for id collections (DefIdMap, LocalDefIdMap, etc) [#106977](https://github.com/rust-lang/rust/pull/106977) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=21f683935257713eae8549e8b328367006097053&end=005fc0f00f2d4ceaf523b67a8f9c5665b8ac5baf&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.3%]   | 2     |
| Regressions (secondary)  | 0.6%  | [0.4%, 0.8%]   | 7     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%] | 3     |
| Improvements (secondary) | -0.3% | [-0.7%, -0.2%] | 20    |
| All  (primary)           | -0.2% | [-0.5%, 0.3%]  | 5     |
- perf got slightly worse from the original perf run, but it's still enough of a wash that I don't think it needs investigating.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Default to -Z plt=yes" [rust#106380](https://github.com/rust-lang/rust/pull/106380)
  - nominated by @**Nikita Popov** ([comment](https://github.com/rust-lang/rust/pull/106380#issuecomment-1399296426))
  - commit [6009da0](https://github.com/rust-lang/rust/commit/6009da079419c9693fe4965ecacbd473c2553173) defaulted to `-Z plt=no` 
  - original discussion that enabled `-fno-plt` by default: #54592
- "Remove a few `actually_rustdoc` uses" [rust#107289](https://github.com/rust-lang/rust/pull/107289)
  - nominated by @**jyn** ([comment](https://github.com/rust-lang/rust/pull/107289#issuecomment-1403544909)), asks for FCP
  - T-rustdoc needs to also sign-off

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**
- Types team by @**nikomatsakis** and @**Jack Huey**
