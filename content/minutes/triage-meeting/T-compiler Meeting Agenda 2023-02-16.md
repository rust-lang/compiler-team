---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-02-16

## Announcements

- [T-compiler: dealing with PR review latency](https://www.google.com/calendar/event?eid=Nzk5YW5ybjZhZHI5c243cjllZmdhc2RkMG8gNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) ([compiler-team#589](https://github.com/rust-lang/compiler-team/issues/589)) at <time:2023-02-17T10:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- Question from @**jyn**: Does T-compiler want to be on the review rotation for PRs modifying `compiletest`?
  - (this fell through the cracks, sorry!)
  - Some context at this [Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/reminder.20for.20next.20meeting/near/323068523)
  - Also [comment](https://rust-lang.zulipchat.com/#narrow/stream/326414-t-infra.2Fbootstrap/topic/Meeting.202023-01-23/near/323064181) from @__**simulacrum**

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMzAyMTZUMTcwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-16T12:00:00-05:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzAyMjBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-20T10:00:00-05:00>
- [wg-debugging triage meeting](https://www.google.com/calendar/event?eid=NjAwbDEwNzNmMzVsNDZucnFsdDdwbGJrdDRfMjAyMzAyMjBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-20T10:00:00-05:00>
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMzAyMjBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-20T10:00:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMzAyMjBUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-02-20T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Clone "copyables" using copy codegen" [compiler-team#588](https://github.com/rust-lang/compiler-team/issues/588) 
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 2 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 34 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 35 days ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: about 42 days ago)
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580) (last review activity: about 22 days ago)
  - "Switch PLT default to "yes" for all targets except x86_64." [compiler-team#581](https://github.com/rust-lang/compiler-team/issues/581) (last review activity: about 12 days ago)
  - "Synthetic Partial Drop Glue" [compiler-team#585](https://github.com/rust-lang/compiler-team/issues/585) (last review activity: about 12 days ago)
- Pending FCP requests (check your boxes!)
  - "Make `unused_allocation` lint against `Box::new` too" [rust#104363](https://github.com/rust-lang/rust/pull/104363#issuecomment-1376858371) 
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850) 
  - "Update the version of musl used on `*-linux-musl` targets to 1.2.3" [rust#107129](https://github.com/rust-lang/rust/pull/107129#issuecomment-1407200120) 
- Things in FCP (make sure you're good with it)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) 
  - "Store ICE backtraces to disk and point end users at the file location" [compiler-team#578](https://github.com/rust-lang/compiler-team/issues/578) 
  - "Teach `rustc` to use OSC8 on nightly / Embedded links in terminal output" [compiler-team#587](https://github.com/rust-lang/compiler-team/issues/587) 
  - "Opportunistically show code snippet on panic" [compiler-team#591](https://github.com/rust-lang/compiler-team/issues/591) 
- Accepted MCPs
  - "New Tier 3 Targets for Trusty OS" [compiler-team#582](https://github.com/rust-lang/compiler-team/issues/582) 
  - "MCP: Resolve documentation links in rustc and store the results in metadata" [compiler-team#584](https://github.com/rust-lang/compiler-team/issues/584) 
- Finalized FCPs (disposition merge)
  - "fix: Unexpected trait bound not satisfied in HRTB and Associated Type" [rust#103695](https://github.com/rust-lang/rust/pull/103695) 
  - "rework min_choice algorithm of member constraints" [rust#105300](https://github.com/rust-lang/rust/pull/105300) 
  - "Relax ordering rules for `asm!` operands" [rust#105798](https://github.com/rust-lang/rust/pull/105798) 
  - "Support `true` and `false` as boolean flag params" [rust#107043](https://github.com/rust-lang/rust/pull/107043) 
  - "rustdoc: compute maximum Levenshtein distance based on the query" [rust#107141](https://github.com/rust-lang/rust/pull/107141) 
  - "rustdoc: remove inconsistently-present sidebar tooltips" [rust#107490](https://github.com/rust-lang/rust/pull/107490)
  
### WG checkins

- @_*WG-rls2.0* by @**Lukas Wirth** ([previous checkin](https://hackmd.io/G07oxu2fTJaYnrMyh6Mjgg#WG-checkins)):
  > Lukas writes: We got a PR that implements a bit of MIR for r-a for better const evaluation and we are currently looking into making our macro spans work similar to rustc's as our current span representation is currently not powerful enough (its basically just IDs assigned to tokens, instead of text ranges).

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/7G80yGgQQjeW-TJCMrOSMA#WG-checkins)):
  > Wesley writes: we shipped a new release with some bug fixes https://github.com/rust-lang/measureme/releases/tag/10.1.1
    
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
- "Preserve DebugInfo in DeadStoreElimination." [rust#106852](https://github.com/rust-lang/rust/pull/106852) (last review activity: about 29 days ago)
  - cc: @**Jak{e,ob} Degen**
- "Implement SSA-based reference propagation" [rust#106285](https://github.com/rust-lang/rust/pull/106285) (last review activity: about 29 days ago)
  - PR r+d by @_**oli**, so probably cc: @**RalfJ** and @**Jak{e,ob} Degen**?
- "Implement jump threading MIR opt" [rust#107009](https://github.com/rust-lang/rust/pull/107009) (last review activity: about 28 days ago)
  - cc: @**Wesley Wiser** (new assignee)
- "rustc_codegen_ssa: Set e_flags for AVR architecture based on target CPU" [rust#106619](https://github.com/rust-lang/rust/pull/106619)
  - probably waiting for another round of review cc: @**bjorn3** and github user [@rahix](https://github.com/Rahix) (not on Zulip)
- "enable `rust_2018_idioms` lint group for doctests" [rust#106621](https://github.com/rust-lang/rust/pull/106621) (last review activity: about 21 days ago)
  - mostly `T-libs` but cc: @**nils (Nilstrieb)**

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [53 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [22 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 30 P-high, 92 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Windows builds fail to link C++ static library" [rust#107162](https://github.com/rust-lang/rust/issues/107162)
  - mentioned last week
  - fixed by reverting the thin archiver reading (#107609)
- "1.67 regression with `……::{opaque#0}<'_> does not live long enough` error" [rust#107516](https://github.com/rust-lang/rust/issues/107516)
  - mentioned last week
  - needs MCVE, @**Michael Goulet (compiler-errors)** will take point from @**pnkfelix** on that in short term

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` at this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` at this time.

### Other P-high issues

- "Miscompilation: Equal pointers comparing as unequal" [rust#107975](https://github.com/rust-lang/rust/issues/107975)
  - Unsoundness bug, not a regression, not really new it seems (from this [comment](https://github.com/rust-lang/rust/issues/107975#issuecomment-1432404918))
  - many reproducibles are piling on, seem to suggest an issue on LLVM side
  - should it be prioritized/investigated?

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Regression in Beta/Nightly: implementation of `Trait` is not general enough" [rust#106630](https://github.com/rust-lang/rust/issues/106630)
  - #106759 was backported (IIUC should also adjust the tests): needs more work or can be closed?

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2023-02-14](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-02-14.md)

Overall a good week for performance with 77 real world crates benchmarks showing an average of nearly 1% performance improvement. Unfortunately, the largest regressions are not yet fully understood and require additional investigation. Of particular interest were some large improvements in doc builds due to storing additional metadata. However, this change might cause some crates to compile slightly slower in incremental check builds, but this is still being investigated.

Triage done by **@rylev**.
Revision range: [e4dd9edb..9bb6e60](https://perf.rust-lang.org/?start=e4dd9edb76a34ecbca539967f9662b8c0cc9c7fb&end=9bb6e60d1f1360234aae90c97964c0fa5524f141&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.4%  | [0.4%, 11.0%]  | 13    |
| Regressions (secondary)  | 0.8%  | [0.2%, 1.6%]   | 4     |
| Improvements (primary)   | -1.4% | [-7.9%, -0.3%] | 64    |
| Improvements (secondary) | -2.1% | [-5.6%, -0.3%] | 73    |
| All  (primary)           | -0.9% | [-7.9%, 11.0%] | 77    |


3 Regressions, 4 Improvements, 9 Mixed; ??? of them in rollups
46 artifact comparisons made in total

#### Regressions

Rollup of 6 pull requests [#107870](https://github.com/rust-lang/rust/pull/107870) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a6975734632c4771edd45ef10e7d4753541d0f3a&end=9b8dbd558c1c4b25c55d987e22baba312ae980ad&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.5%, 1.0%] | 7     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.5%, 1.0%] | 7     |


Implement `deferred_projection_equality` for erica solver [#107507](https://github.com/rust-lang/rust/pull/107507) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5a8dfd933a70cc47e44502a20fd67dfaec6555d5&end=1623ab0246deebec4fe32dc525d20bf8a88096f2&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.7%, 1.0%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.7%, 1.0%] | 6     |


rustdoc: Remove cache for preprocessed markdown links [#107933](https://github.com/rust-lang/rust/pull/107933) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=adb4bfd25d3c1190b0e7433ef945221d8aeea427&end=00cf19a75a7055171a4ffc8cc557ff63953c9754&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.2% | [1.2%, 1.2%] | 1     |
| Regressions (secondary)  | 3.9% | [3.9%, 3.9%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.2% | [1.2%, 1.2%] | 1     |
- Deemed an [acceptable trade off](https://github.com/rust-lang/rust/pull/107933#issuecomment-1426963682) for the simplification it brings.


#### Improvements

ReErased regions are local [#107688](https://github.com/rust-lang/rust/pull/107688) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3f059f60467419823e2a63d6d20f414829040f2f&end=b082e80e20475b1ec5b0bd0dd1dac3e6759c8022&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.2%, -0.3%] | 8     |
| Improvements (secondary) | -1.5% | [-2.6%, -0.4%] | 6     |
| All  (primary)           | -0.8% | [-1.2%, -0.3%] | 8     |


Rollup of 8 pull requests [#107811](https://github.com/rust-lang/rust/pull/107811) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9433ba63942a736f068baacf19e5cffaff6dccc9&end=ef934d9b632b8ac00276558824664c104b92b5f0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.4%, -0.2%] | 7     |
| Improvements (secondary) | -3.4% | [-4.2%, -1.6%] | 7     |
| All  (primary)           | -0.6% | [-1.4%, 0.6%]  | 8     |


Rollup of 9 pull requests [#107828](https://github.com/rust-lang/rust/pull/107828) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=575d424c94e0d4feea8cf4fcf04d47b83f28eaef&end=e7acd078f443156b95cee11759a735db1cfc796e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.3% | [-1.4%, -1.2%] | 2     |
| Improvements (secondary) | -3.6% | [-4.1%, -3.2%] | 6     |
| All  (primary)           | -1.3% | [-1.4%, -1.2%] | 2     |


Reduce interning [#107869](https://github.com/rust-lang/rust/pull/107869) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=59083c57d450d5be49db460fa395e472c09ff393&end=7740f9a571b3c6510607b17b29c81eeb24a7c79a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.4% | [-2.6%, -0.4%] | 12    |
| All  (primary)           | -     | -              | 0     |


#### Mixed

Rollup of 8 pull requests [#107768](https://github.com/rust-lang/rust/pull/107768) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bd39bbb4bb92df439bf6d85470e296cc6a47ffbd&end=3f059f60467419823e2a63d6d20f414829040f2f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.7%  | [1.7%, 1.7%]   | 2     |
| Improvements (primary)   | -1.0% | [-1.5%, -0.4%] | 3     |
| Improvements (secondary) | -3.7% | [-4.2%, -3.2%] | 6     |
| All  (primary)           | -1.0% | [-1.5%, -0.4%] | 3     |
- Small number of regressions in secondary benchmarks in a rollup - I think we're fine calling this triaged.


Update cargo [#107778](https://github.com/rust-lang/rust/pull/107778) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b082e80e20475b1ec5b0bd0dd1dac3e6759c8022&end=7ba4e95368b2a71018cd995f5254ba3e7422954e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.4%, 1.5%]   | 3     |
| Regressions (secondary)  | 3.3%  | [1.7%, 4.4%]   | 8     |
| Improvements (primary)   | -2.4% | [-7.7%, -0.4%] | 8     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.4% | [-7.7%, 1.5%]  | 11    |
- Most of the regressions are due to noise


Optimize query_cache_hit to reduce code size of the query hot path. [#107529](https://github.com/rust-lang/rust/pull/107529) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6eb9f2dd6752f591906281d8aa5e16a8c51a8801&end=a00e24d76a9ac03b146d3bf89e2161b2466c6551&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.1% | [-0.4%, 0.5%]  | 5     |
- Regression is small 


Optimize `TyKind::eq`. [#107717](https://github.com/rust-lang/rust/pull/107717) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ef934d9b632b8ac00276558824664c104b92b5f0&end=575d424c94e0d4feea8cf4fcf04d47b83f28eaef&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [1.0%, 1.2%]   | 2     |
| Regressions (secondary)  | 3.6%  | [3.3%, 4.2%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.5% | [-1.6%, -1.3%] | 2     |
| All  (primary)           | 1.1%  | [1.0%, 1.2%]   | 2     |
- From @nnethercote: keccak and cranelift-codegen are noisy. wg-grammar saw the expected benefit, but it's now considered non-significant, I guess it must have been a bit noisy recently as well.


Resolve documentation links in rustc and store the results in metadata [#94857](https://github.com/rust-lang/rust/pull/94857) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=71f6675de1faa2a8e897a8faaa861a0157b0e355&end=5b450244876154bc1bd134694398e80c12e00b5c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.3%, 1.5%]   | 28    |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -2.4% | [-5.7%, -0.6%] | 17    |
| Improvements (secondary) | -3.4% | [-5.2%, -0.6%] | 21    |
| All  (primary)           | -0.6% | [-5.7%, 1.5%]  | 45    |
- Landed after an MCP and some analysis of the regressions which were deemed acceptable: https://github.com/rust-lang/rust/pull/94857#issuecomment-1414293572


simplify layout calculations in rawvec [#107167](https://github.com/rust-lang/rust/pull/107167) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5b450244876154bc1bd134694398e80c12e00b5c&end=8dabf5da9e0318f8c324dc224ad49dc91472c2ec&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.7%, -0.2%] | 11    |
| Improvements (secondary) | -0.6% | [-1.4%, -0.2%] | 9     |
| All  (primary)           | -0.3% | [-0.7%, 0.3%]  | 13    |
- Improvements greatly exceed regressions here.


Reverse Timsort scan direction [#107191](https://github.com/rust-lang/rust/pull/107191) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7740f9a571b3c6510607b17b29c81eeb24a7c79a&end=96834f0231277e8feb8dcf185b2af082ad2e39f6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 2     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.1% | [-0.4%, 0.6%]  | 3     |
- Regressions are small enough that I think we don't need to investigate this closely.


Improve the `array::map` codegen [#107634](https://github.com/rust-lang/rust/pull/107634) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=20081880ad2a98bbc8c8293f96c5b284d1584d86&end=2d91939bb7130a8e6c092a290b7d37f654e3c23c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.4%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 4     |
| All  (primary)           | -     | -              | 0     |
Perf is a wash 


rustc/rustdoc: Perform name resolver cleanups enabled by #94857 [#107765](https://github.com/rust-lang/rust/pull/107765) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c3c6d73b04a718aceabc314bf231a20c90ccd601&end=e9ab7872fd77861e3d182ea85a82c4649c5bb3f8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 13.4% | [13.4%, 13.4%] | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 3     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | 3.1%  | [-0.4%, 13.4%] | 4     |
- Being investigated by @petrochenkov

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

## Next week meeting

Checkins:
- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry**
- Generic Associated Types initiative by @**Jack Huey**

Agenda draft: https://hackmd.io/lPakJ5w3S1GH3V0vyAVZfQ