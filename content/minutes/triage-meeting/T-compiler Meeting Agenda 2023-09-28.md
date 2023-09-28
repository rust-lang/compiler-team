---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-09-28

## Announcements

- :loudspeaker: Next week Oct, 5th release of Rust stable 1.73
- :loudspeaker: Rust survey 2023 works are starting again: the questionnaire is open to feedback from `T-*`! ([Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Rust.20survey.202023))
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA5MjhUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-28T16:00:00-04:00>
- [Compiler Team Steering Meeting - RFC Review](https://www.google.com/calendar/event?eid=MTN0ZmpuYjlpdGRoODFyMzFjOGI4M21tcjAgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2023-09-29T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async open discussion](https://www.google.com/calendar/event?eid=ajVtNGowYjlzdDNhM2VwZG9vNjg4OTlzNDBfMjAyMzA5MjhUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-28T12:00:00-04:00>
- [Types team meeting: agenda for meetup](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzEwMDJUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-02T10:00:00-04:00>
- [Types Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzEwMDJUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-02T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Have `rustc` produce a local log of execution metrics" [compiler-team#679](https://github.com/rust-lang/compiler-team/issues/679)
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634)(last review activity: 4 months ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635)(last review activity: 4 months ago)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636)(last review activity: 3 months ago)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642)(last review activity: about 26 days ago)
  - "Match the behavior of `strip` and `split-debuginfo` across platforms" [compiler-team#669](https://github.com/rust-lang/compiler-team/issues/669)(last review activity: about 23 days ago)
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649)
  - " Add `type` field to distinguish json diagnostic outputs" [compiler-team#673](https://github.com/rust-lang/compiler-team/issues/673)
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
- Things in FCP (make sure you're good with it)
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625)
  - "Add support for Zephyr OS" [compiler-team#629](https://github.com/rust-lang/compiler-team/issues/629)
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633)
  - "Add illumos Tier3 targets" [compiler-team#644](https://github.com/rust-lang/compiler-team/issues/644)
  - "Add option to pass environment variables" [compiler-team#653](https://github.com/rust-lang/compiler-team/issues/653)
  - "Add tidy rule against `issue-[0-9]+.rs` tests" [compiler-team#658](https://github.com/rust-lang/compiler-team/issues/658)
  - "Condemn `asmjs-unknown-emscripten` to push a boulder up a hill for eternity" [compiler-team#668](https://github.com/rust-lang/compiler-team/issues/668)
  - "Allow overriding default codegen backend on a per-target basis" [compiler-team#670](https://github.com/rust-lang/compiler-team/issues/670)
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674)
  - "Offload dep graph encoding to a thread" [compiler-team#677](https://github.com/rust-lang/compiler-team/issues/677)
  - "stabilize combining +bundle and +whole-archive link modifiers" [rust#113301](https://github.com/rust-lang/rust/pull/113301)
- Accepted MCPs
  - "Change how closure and generator types are printed to avoid clash with slice types" [compiler-team#675](https://github.com/rust-lang/compiler-team/issues/675)
- Finalized FCPs (disposition merge)
  - "Add allow-by-default lint for unit bindings" [rust#112380](https://github.com/rust-lang/rust/pull/112380)
  - "Amend style guide section for formatting where clauses in type aliases" [rust#114901](https://github.com/rust-lang/rust/pull/114901)

### WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Checkin text

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.73] "Add a way to decouple the implementation and the declaration of a TyCtxt method." [rust#116052](https://github.com/rust-lang/rust/pull/116052)
  - patch authored by @***oli*
  - addresses #115819, which is meant to fix #83085
  - [Note](https://github.com/rust-lang/rust/pull/116052#issuecomment-1734348940): either beta backport this or patch #115819 into beta branch (beta backport approved last week)
  - T-rustdoc is tagged but there seems to be little under `./src/librustdoc`. Under `./tools/miri` there's more: Should also some other team check this?
<!--
/poll Approve beta backport of #116052?
approve
decline
don't know
-->
- :beta: [1.73] "Only prevent field projections into opaque types, not types containing opaque types" [rust#116156](https://github.com/rust-lang/rust/pull/116156)
  - patch authored by @**oli**
  - fixes #115778, P-high
  - perf. bench result seems neutral (slight improvement on secondary bench)
<!--
/poll Approve beta backport of #116156?
approve
decline
don't know
-->
- :beta: [1.73] "Update LLVM submodule" [rust#116227](https://github.com/rust-lang/rust/pull/116227)
  - Just opened, needs review
  - Fixes a few miscompilation regressions
<!--
/poll Approve beta backport of #116227?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [35 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 40 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE: unexpected initial operand type." [rust#114858](https://github.com/rust-lang/rust/issues/114858)
  - Discussed last week ([meeting notes](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-09-21/near/392337305))
  - Agreed to leave it P-critical until today to measure impact after merging of #115215 (happened 2w ago). If no more people pile on this issue, evaluate a P-high downgrade

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-09-26](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-09-26.md)

A very quiet week with the only large change in performance being improvements brought on by @saethlin's work on cleaning up the `FileEncoder` used in various places like `rustc_metadata` and `rustc_serialize`.

Triage done by **@rylev**.
Revision range: [af78bae..27b4eb9](https://perf.rust-lang.org/?start=af78bae565e85b9c5698ee909af0652674eca6d4&end=27b4eb96d13106332d511be2ea6d0c008a57aa6e&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.3%, 1.1%]   | 15    |
| Regressions (secondary)  | 2.0%  | [0.2%, 7.1%]   | 32    |
| Improvements (primary)   | -0.7% | [-1.3%, -0.3%] | 70    |
| Improvements (secondary) | -0.9% | [-3.5%, -0.2%] | 31    |
| All  (primary)           | -0.4% | [-1.3%, 1.1%]  | 85    |


2 Regressions, 3 Improvements, 4 Mixed; 0 of them in rollups
73 artifact comparisons made in total

#### Regressions

Fix `ui-fulldeps --stage=1` with `-Zignore-directory-in-diagnostics-source-blocks` [#116009](https://github.com/rust-lang/rust/pull/116009) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4fda889bf8735755573b27e6116ce025f3ded5f9&end=0a689c1be85d635bf61ffb7922ef9ce02587a3b1&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.4%, 0.5%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.4%, 0.5%] | 3     |
- This only modified tests so this is noise


rustdoc: correctly render the return type of cross-crate async fns [#116084](https://github.com/rust-lang/rust/pull/116084) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6f13ea0d1a0687073d36b5b1f7dd0e41e67665fb&end=0288f2e1955b154262e0669ec5f7bb9a4c6cf5aa&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.3%, 0.8%] | 9     |
| Regressions (secondary)  | 0.7% | [0.3%, 0.9%] | 17    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.3%, 0.8%] | 9     |


#### Improvements

Pretty-print argument-position impl trait to name it. [#113955](https://github.com/rust-lang/rust/pull/113955) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ac5ac4754a4a837f7138a1fa5ab01475b63fc9fe&end=bdb0fa3ee5ffb4cc1a1b53cbe8344a2b83b1ae2a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 2     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 3     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 2     |


compiletest: load supported sanitizers from target spec [#115695](https://github.com/rust-lang/rust/pull/115695) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e4133ba9b1a150ef624f5d189913a37405f4414c&end=55b5c7bfde6247db5e4d2e3efe353e13849bb233&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -0.6% | [-0.8%, -0.5%] | 6     |
| All  (primary)           | -0.3% | [-0.3%, -0.3%] | 1     |


Do not create a DerefLen place for `Box<[T]>`. [#115794](https://github.com/rust-lang/rust/pull/115794) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8a6bae28247fbaa3257856e00d084ac8c90712f3&end=551c7183f8ae46c4b4fd0237acbdc937670bf74a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.6%] | 4     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.5%] | 3     |
| All  (primary)           | -0.7% | [-0.7%, -0.6%] | 4     |


#### Mixed

Simplify/Optimize FileEncoder [#115542](https://github.com/rust-lang/rust/pull/115542) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ad36b5a622b0d6d6f0f3260049b2245ee1f27a07&end=3223b0b5e8dadda3f76c3fd1a8d6c5addc09599e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.7%, 1.3%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.2%, -0.2%] | 95    |
| Improvements (secondary) | -0.6% | [-1.2%, -0.3%] | 28    |
| All  (primary)           | -0.6% | [-1.2%, 1.3%]  | 97    |
- looks like a small regression snuck back in. The regressions seem real, but perhaps it's not worth it given the much larger amount of improvements.


Enable effects for libcore [#114776](https://github.com/rust-lang/rust/pull/114776) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aace2dfa37f4589b0071530d2ed7b352f6196704&end=8759de0a4935e677fdce99a849addea2d5318da9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.4%]   | 4     |
| Regressions (secondary)  | 0.6%  | [0.3%, 0.8%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 4     |
| All  (primary)           | 0.3%  | [0.3%, 0.4%]   | 4     |
- Per Oli: The perf run shows a few extra executions of queries and metadata encoding, which seems unavoidable to me. We may get the perf back when ripping out the const checker's logic that is only needed until we enable effects by default for doing const fn callability checks


Enable -Zdrop-tracking-mir by default [#107421](https://github.com/rust-lang/rust/pull/107421) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=19c65022fc1ad9cc3d3dcf50a0bdf50e4ab572ab&end=13e6f24b9adda67852fb86538541adaa68aff6e8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.5%]   | 2     |
| Regressions (secondary)  | 4.5%  | [0.3%, 6.5%]   | 9     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -2.5% | [-3.3%, -1.9%] | 5     |
| All  (primary)           | 0.2%  | [-0.4%, 0.5%]  | 3     |
- it seems the regressions to await-call-tree are real, but it's unclear what the underlying cause is.


Add the `cfg_match!` macro [#115416](https://github.com/rust-lang/rust/pull/115416) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=42ca6e4e5760a548a6fa858482de6d237f6fb3b8&end=8a6bae28247fbaa3257856e00d084ac8c90712f3&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.5%, 0.7%]   | 4     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.6%]   | 2     |
| Improvements (primary)   | -1.3% | [-1.3%, -1.3%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.2%  | [-1.3%, 0.7%]  | 5     |
- This is noise

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Fixes error count display is different when there's only one error left" [rust#114759](https://github.com/rust-lang/rust/pull/114759) (last review activity: about 46 days ago)
  - cc: @**cjgillot** (the diff is scary, maybe coordinate the effort on this one? See [comment](https://github.com/rust-lang/rust/pull/114759#issuecomment-1682762510))
- "Also consider call and yield as MIR SSA." [rust#113915](https://github.com/rust-lang/rust/pull/113915) (last review activity: about 46 days ago)
  - cc: @**Wesley Wiser** (+ pending a perf run triage with negative numbers)
- "Show more information when multiple `impl`s apply" [rust#114811](https://github.com/rust-lang/rust/pull/114811)(last review activity: about 44 days ago)
  - There's [a mention](https://github.com/rust-lang/rust/pull/114811#issuecomment-1677507762) to @**lcnr**. Then rebase and review cc: @**Wesley Wiser**?

## Next week's WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
- Impl Trait initiative by @**oli**

Next meetings' agenda draft: `https://hackmd.io/CGSTpw4WRFec9SDNE58p-A`
