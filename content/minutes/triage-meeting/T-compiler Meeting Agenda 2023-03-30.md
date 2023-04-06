---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2023-03-30

## Announcements

- [Types team: Planning meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA0MDNUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-04-03T10:00:00-04:00>
- Rust 1.68.2 released last Tuesday ([Blog post](https://blog.rust-lang.org/2023/03/28/Rust-1.68.2.html))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- **Heads-up**: we will be testing Zulip polls to vote {beta|stable} backports. Please report if something looks funny on mobile devices!

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=N211N3RrYzVqcnVvNnBycGFrcW9mcjNocTNfMjAyMzAzMzBUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-30T12:00:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzA0MDNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-04-03T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: 2 months ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: 2 months ago)
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580) (last review activity: about 29 days ago)
  - "Synthetic Partial Drop Glue" [compiler-team#585](https://github.com/rust-lang/compiler-team/issues/585) (last review activity: about 53 days ago)
  - "Clone "copyables" using copy codegen" [compiler-team#588](https://github.com/rust-lang/compiler-team/issues/588) (last review activity: about 40 days ago)
  - "New tier-2 target for `wasm32-wasi-preview2`" [compiler-team#594](https://github.com/rust-lang/compiler-team/issues/594) (last review activity: about 32 days ago)
  - "Add New Values To MIPS_ALLOWED_FEATURES" [compiler-team#595](https://github.com/rust-lang/compiler-team/issues/595) (last review activity: about 5 days ago)
  - "Take MIR `Analysis` by `&mut`" [compiler-team#598](https://github.com/rust-lang/compiler-team/issues/598) (last review activity: about 5 days ago)
  - "-C linker-flavor=clang" [compiler-team#601](https://github.com/rust-lang/compiler-team/issues/601) (last review activity: about 5 days ago)
  - "Add `TyCtxt` wrappers to sort its methods into groups and improve documentation" [compiler-team#603](https://github.com/rust-lang/compiler-team/issues/603) (last review activity: about 5 days ago)
  - "Stable -C binary-dep-depinfo flag" [compiler-team#604](https://github.com/rust-lang/compiler-team/issues/604) (last review activity: about 5 days ago)
  - "Add `force` option for `--extern` flag" [compiler-team#605](https://github.com/rust-lang/compiler-team/issues/605) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - "Evaluate place expression in `PlaceMention`" [rust#104844](https://github.com/rust-lang/rust/pull/104844#issuecomment-1468653609)
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850)
  - "Update the version of musl used on `*-linux-musl` targets to 1.2.3" [rust#107129](https://github.com/rust-lang/rust/pull/107129#issuecomment-1407200120)
    - **Note**: is this blocked on writing the blog post? Other blockers?
- Things in FCP (make sure you're good with it)
  - "Use `ControlFlow` in HIR `Visitor`" [compiler-team#597](https://github.com/rust-lang/compiler-team/issues/597) 
  - "Add `rustc_abi::FieldIdx`" [compiler-team#606](https://github.com/rust-lang/compiler-team/issues/606) 
- Accepted MCPs
  - "MCP: New Tier-3 target for `x86_64h-apple-darwin`" [compiler-team#599](https://github.com/rust-lang/compiler-team/issues/599) 
  - "Add `--print=all-target-specs-json` unstable flag" [compiler-team#600](https://github.com/rust-lang/compiler-team/issues/600) 
- Finalized FCPs (disposition merge)
  - "Clarify stability guarantee for lifetimes in enum discriminants" [rust#104299](https://github.com/rust-lang/rust/pull/104299) 
  - "rustdoc: run more HIR validation to mirror rustc" [rust#108576](https://github.com/rust-lang/rust/pull/108576)

### WG checkins

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/DzXUoPG6T-S5NfXcl8h1yg#WG-checkins)):
  > Nothing to report at this time.

## Backport nominations

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- [1.69.0] :beta: "Move const trait bounds checks to MIR constck" [rust#109557](https://github.com/rust-lang/rust/pull/109557)
  - nominated by @**oli**
  - fixes [rust#109543](https://github.com/rust-lang/rust/issues/109543) a P-high T-libs-api regression on stable, fixed on the compiler by @_**fee1-dead**
<!-- to open the poll, copy the following 3 lines as they are :)
thanks!
/poll Approve beta backport of #109557?
yes
no
don't know
-->
- [1.69.0] :beta: "Do not consider `#` an emoji in the lexer" [rust#109754](https://github.com/rust-lang/rust/pull/109754)
  - nominated by @**Esteban Küber**, authored also the fix
  - fixes a beta regression #109746 (around `P-medium` priority)
<!--
/poll Approve stable backport of #109754?
yes
no
don't know
-->
- [1.68.3?] :stable: "Correct suggestions for closure arguments that need a borrow" [rust#107306](https://github.com/rust-lang/rust/pull/107306)
  - nominated by @**aliemjay**
  - fixes [rust#107301](https://github.com/rust-lang/rust/issues/107301), an ICE (not a regression AFAICT)
<!--
/poll Approve stable backport of #107306?
yes
no
don't know
-->
- [1.68.3?] :stable: "Move const trait bounds checks to MIR constck" [rust#109557](https://github.com/rust-lang/rust/pull/109557)
  - nominated by @**oli**
<!--
/poll Approve stable backport of #109557?
yes
no
don't know
-->

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Change Wasm's `cdylib` etc. to be a "reactor"." [rust#108097](https://github.com/rust-lang/rust/pull/108097) (last review activity: about 41 days ago)
  - who has the context to review this? review assignment has been bouncing for a while
- "Run various queries from other queries instead of explicitly in phases" [rust#108118](https://github.com/rust-lang/rust/pull/108118) (last review activity: about 40 days ago)
  - who has the review staff here? what's the current status?
  - @_**oli** do you want to keep the conversation with @_**cjgillot**?
- "Stop handling opaque types in queries and leave it to typeck" [rust#107891](https://github.com/rust-lang/rust/pull/107891) (last review activity: about 35 days ago)
  - unsure about the status? probably can be reviewed again? maybe reroll?
- "Shrink `process_obligations`" [rust#108380](https://github.com/rust-lang/rust/pull/108380) (last review activity: about 34 days ago)
  - this PR seems to be meant to proceed on its own, right @**nnethercote**? 

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [26 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 3 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 95 P-medium, 13 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs for 2023-03-28](https://github.com/rust-lang/rustc-perf/blob/aa368a8e5438837d01f309fbd5f9910242342d65/triage/2023-03-28.md)

A busy week with lots of real performance gains. Most regressions seemed to be due to noise. The biggest highlight was large wins in incremental compilation leading to a lot of (albeit modest gains) of 1% performance in a majority of incremental compilation test scenarios. Other than that most performance gains were smaller and more incremental. One of the biggest performance regressions came in an update too LLVM. However, nearly just as many test cases showed improvements as regressions.

Triage done by **@rylev**.
Revision range: [ef03fda3..cbc064b3](https://perf.rust-lang.org/?start=ef03fda339923e659d3d3ca3321de887316d2807&end=cbc064b341be231403d181402a786cce7f1c73f1&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.7%  | [0.5%, 3.5%]    | 24    |
| Regressions (secondary)  | 1.2%  | [0.2%, 2.6%]    | 18    |
| Improvements (primary)   | -1.5% | [-10.9%, -0.3%] | 168   |
| Improvements (secondary) | -4.0% | [-65.3%, -0.4%] | 119   |
| All  (primary)           | -1.1% | [-10.9%, 3.5%]  | 192   |


3 Regressions, 7 Improvements, 8 Mixed; 5 of them in rollups
46 artifact comparisons made in total

#### Regressions

Add RANLIB_x86_64_unknown_illumos env for dist-x86_64-illumos dockerfile [#109163](https://github.com/rust-lang/rust/pull/109163) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6502613a8199cab4cb68b08c7ddce6f210d8d69c&end=439292bc7913399e406d9bb7e8da0f70c6317c6e&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.7%, 0.8%] | 4     |
| Regressions (secondary)  | 0.5% | [0.4%, 0.7%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.7%, 0.8%] | 4     |
- Noise


Make NLL Type Relating Eager [#108861](https://github.com/rust-lang/rust/pull/108861) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8859fde21fa4e059c71a843cc7ee995c189a97c0&end=1c771fec3329ef1d8c66697daf9517501d0c129a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.3%, 0.8%]   | 7     |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.6%]   | 10    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.8% | [-0.8%, -0.8%] | 1     |
| All  (primary)           | 0.6%  | [0.3%, 0.8%]   | 7     |
- A good chunk of the regressions are noise, and the rest are small enough that I don't think it's worth looking too deeply into.


Refactor `try_execute_query` [#109100](https://github.com/rust-lang/rust/pull/109100) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e10eab5956f91c26dcc5ae29a19cfcd747047e4d&end=b72e896268bd741a2a2bb10028dca9e6f8d0ae63&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.7%, 0.8%] | 4     |
| Regressions (secondary)  | 0.5% | [0.3%, 0.7%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.7%, 0.8%] | 4     |
- Noise


#### Improvements

Rollup of 10 pull requests [#109442](https://github.com/rust-lang/rust/pull/109442) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ef03fda339923e659d3d3ca3321de887316d2807&end=a01b4cc9f375f1b95fa8195daeea938d3d9c4c34&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-0.5%, -0.3%] | 4     |


mv tests/codegen/issue-* tests/codegen/issues/ [#109172](https://github.com/rust-lang/rust/pull/109172) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1c771fec3329ef1d8c66697daf9517501d0c129a&end=cf811810fe8dc92b3ff25e7dd29fb3178c91d409&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.7%, -0.6%] | 4     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.4%] | 2     |
| All  (primary)           | -0.6% | [-0.7%, -0.6%] | 4     |


Rollup of 7 pull requests [#109517](https://github.com/rust-lang/rust/pull/109517) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9a6b0c3326f3577f330d8828d3b706c0eea9cf29&end=99c49d95cd7d704d2226859cfdc419c930cde9c6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -0.5% | [-0.7%, -0.4%] | 6     |
| All  (primary)           | -0.4% | [-0.4%, -0.4%] | 1     |


Don't pass `TreatProjections` separately to `fast_reject` [#109202](https://github.com/rust-lang/rust/pull/109202) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1459b3128e288a85fcc4dd1fee7ada2cdcf28794&end=cf073ec2cbf0b90ded7893f429020b81dd28e6c3&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.4%  | [0.4%, 0.4%]    | 1     |
| Improvements (primary)   | -0.9% | [-2.3%, -0.2%]  | 17    |
| Improvements (secondary) | -2.6% | [-10.5%, -0.4%] | 24    |
| All  (primary)           | -0.9% | [-2.3%, -0.2%]  | 17    |


Add #[inline] to the Into for From impl [#109546](https://github.com/rust-lang/rust/pull/109546) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d012d2f96e2959267b14812929b85e17a155f653&end=24a69af213f4bf23014dc91903e7a934c88f6b9e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.8%, 0.8%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.5%, -0.4%] | 15    |
| Improvements (secondary) | -0.9% | [-1.4%, -0.3%] | 19    |
| All  (primary)           | -0.7% | [-1.5%, 0.8%]  | 16    |


Optimize `incremental_verify_ich` [#109371](https://github.com/rust-lang/rust/pull/109371) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9fa6b3c15758e85657d5be051cfa57022a8bbe57&end=e10eab5956f91c26dcc5ae29a19cfcd747047e4d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.6%, -0.4%] | 78    |
| Improvements (secondary) | -1.1% | [-2.2%, -0.5%] | 39    |
| All  (primary)           | -0.9% | [-1.6%, -0.4%] | 78    |


Rollup of 7 pull requests [#109581](https://github.com/rust-lang/rust/pull/109581) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b72e896268bd741a2a2bb10028dca9e6f8d0ae63&end=96bd50dd47b645efa52d1312b9cc32e507d9cd76&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 2     |
| Improvements (secondary) | -0.6% | [-0.7%, -0.6%] | 5     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 2     |


#### Mixed

Only clear written-to locals in ConstProp [#109087](https://github.com/rust-lang/rust/pull/109087) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6dc3999c2699461aa930b8c1e00f99e73dcc0174&end=5fa73a75ce94faf1d1008ec96c043134ef0df427&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | -      | -               | 0     |
| Regressions (secondary)  | 0.5%   | [0.5%, 0.5%]    | 3     |
| Improvements (primary)   | -2.7%  | [-6.1%, -0.8%]  | 27    |
| Improvements (secondary) | -15.8% | [-63.2%, -0.2%] | 17    |
| All  (primary)           | -2.7%  | [-6.1%, -0.8%]  | 27    |
- Given the overall positive impact of this PR and the complex relationship it has with some other PRs, I think it's safe to say the perf results are fine here.


Rollup of 11 pull requests [#109496](https://github.com/rust-lang/rust/pull/109496) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=439292bc7913399e406d9bb7e8da0f70c6317c6e&end=a266f11990d9544ee408e213e1eec8cc9eb032b7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.8%]   | 4     |
| Improvements (primary)   | -0.7% | [-0.8%, -0.7%] | 4     |
| Improvements (secondary) | -0.6% | [-0.7%, -0.4%] | 4     |
| All  (primary)           | -0.7% | [-0.8%, -0.7%] | 4     |
- Unfortunately most of the positives here seem to be correction from noise. The regressions are really small though so I don't think investigation is worth it.


Rollup of 9 pull requests [#109503](https://github.com/rust-lang/rust/pull/109503) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cf811810fe8dc92b3ff25e7dd29fb3178c91d409&end=84dd6dfd9d19176cc3c94bc1448a841e44d57890&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.5% | [-1.7%, -1.4%] | 2     |
| Improvements (secondary) | -2.4% | [-5.3%, -0.3%] | 13    |
| All  (primary)           | -0.9% | [-1.7%, 0.5%]  | 3     |
- The one regression is outweighed by many other improvements. Given this is a rollup which requires extra steps to investigate regressions, I think it's safe to mark this as triaged.


Add `CastKind::Transmute` to MIR [#108442](https://github.com/rust-lang/rust/pull/108442) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=df7fd9995f10627f25ccb325f693a11b3395a73c&end=e2163008763c326ec4003e07b8e6eef0c98f6204&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.7%  | [0.3%, 1.5%]   | 4     |
| Improvements (primary)   | -1.6% | [-1.6%, -1.6%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.6% | [-1.6%, -1.6%] | 1     |
- The regressions are small enough that I don't think this is worth investigating.


rustdoc: Optimize impl sorting during rendering [#109399](https://github.com/rust-lang/rust/pull/109399) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8be3c2bda6b683f87b24714ba595e8b04faef54c&end=d012d2f96e2959267b14812929b85e17a155f653&stat=instructions:u)

| (instructions:u)         | mean   | range            | count |
|:------------------------:|:------:|:----------------:|:-----:|
| Regressions (primary)    | -      | -                | 0     |
| Regressions (secondary)  | 0.7%   | [0.7%, 0.7%]     | 1     |
| Improvements (primary)   | -10.1% | [-10.1%, -10.1%] | 1     |
| Improvements (secondary) | -      | -                | 0     |
| All  (primary)           | -10.1% | [-10.1%, -10.1%] | 1     |
- The one regression is noise.


Implement Default for some alloc/core iterators [#99929](https://github.com/rust-lang/rust/pull/99929) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=24a69af213f4bf23014dc91903e7a934c88f6b9e&end=9fa6b3c15758e85657d5be051cfa57022a8bbe57&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 4     |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.6%]   | 9     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.3%] | 6     |
| All  (primary)           | 0.7%  | [0.7%, 0.7%]   | 4     |
- Given the nature of this PR (adding APIs) and the fact that the primary benchmark impacted is noisy, I think we can triage this.


Use `SmallVec` in bitsets [#109458](https://github.com/rust-lang/rust/pull/109458) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=96bd50dd47b645efa52d1312b9cc32e507d9cd76&end=2d429f3064cb67710fe64dee293329089871d92b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.8%  | [0.7%, 1.0%]   | 8     |
| Improvements (primary)   | -0.8% | [-1.4%, -0.3%] | 15    |
| Improvements (secondary) | -0.7% | [-1.4%, -0.3%] | 15    |
| All  (primary)           | -0.8% | [-1.4%, -0.3%] | 15    |
- Improvements outweigh the regressions and [for some of the regressions, it should be fine to ignore the result as noise](https://github.com/rust-lang/rust/pull/109458#issuecomment-1483148687). 


Upgrade to LLVM 16, again [#109474](https://github.com/rust-lang/rust/pull/109474) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2d429f3064cb67710fe64dee293329089871d92b&end=0c61c7a978fe9f7b77a1d667c77d2202dadd1c10&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.3%, 3.6%]   | 64    |
| Regressions (secondary)  | 0.9%  | [0.2%, 2.5%]   | 23    |
| Improvements (primary)   | -1.0% | [-2.9%, -0.5%] | 49    |
| Improvements (secondary) | -1.1% | [-4.1%, -0.3%] | 75    |
| All  (primary)           | 0.2%  | [-2.9%, 3.6%]  | 113   |
- Given that the perf results are somewhat even (though regressions do win out), I think we sort of have to take this as is. I don't imagine we would revert an LLVM upgrade unless the perf results were really bad.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Tracking issue for RFC 2603, "Rust Symbol Mangling (v0)"" [rust#60705](https://github.com/rust-lang/rust/issues/60705) 
  - nominated by @**jyn** ([comment](https://github.com/rust-lang/rust/issues/60705#issuecomment-1483919068)), to stimulate creating this ([exhaustive](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-03-30/near/345706041)?) list of tools that should support v0 mangling
  - [previously visited by T-compiler](https://github.com/rust-lang/rust/issues/60705#issuecomment-1213168334)
  - [Past Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-01-13.20.2354818/near/267886210)
  - A starting point could be [the opening comment](https://github.com/rust-lang/rust/issues/60705#issue-442790471)
  - But also this [comment](https://github.com/rust-lang/rust/issues/60705#issuecomment-1484247817) from @**nnethercote** about v0 breaking `cargo llvm-lines`

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

## Next week's WG checkins

- Generic Associated Types initiative by @**Jack Huey**
- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**

Agenda draft: https://hackmd.io/1yvNT5QMQLeHxEoMBaULJw
