---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-10-05

## Announcements

- :loudspeaker: Today Oct, 5th release of Rust stable 1.73
- [Compiler Team Steering Meeting - P-high review](https://www.google.com/calendar/event?eid=NWk1dW9uc2dkM2dxZG1uZ21xMmo4Mzcxa2wgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2023-10-06T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=ajVtNGowYjlzdDNhM2VwZG9vNjg4OTlzNDBfMjAyMzEwMDVUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-05T12:00:00-04:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzEwMDVUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-05T16:00:00-04:00>
- [Stable MIR Weekly Meeting](https://www.google.com/calendar/event?eid=N25kMTM2Z3NxbXJjNTE5ZWJpM2traHNpa21fMjAyMzEwMDZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-06T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634) (last review activity: 4 months ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) (last review activity: 4 months ago)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) (last review activity: about 0 days ago)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642) (last review activity: about 33 days ago)
  - "Match the behavior of `strip` and `split-debuginfo` across platforms" [compiler-team#669](https://github.com/rust-lang/compiler-team/issues/669) (last review activity: about 30 days ago)
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649)
  - " Add `type` field to distinguish json diagnostic outputs" [compiler-team#673](https://github.com/rust-lang/compiler-team/issues/673)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674)
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "Remove support for compiler plugins." [rust#116412](https://github.com/rust-lang/rust/pull/116412)
- Things in FCP (make sure you're good with it)
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625)
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633)
  - "Add tidy rule against `issue-[0-9]+.rs` tests" [compiler-team#658](https://github.com/rust-lang/compiler-team/issues/658)
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674)
  - "Have `rustc` produce a local log of execution metrics" [compiler-team#679](https://github.com/rust-lang/compiler-team/issues/679)
- Accepted MCPs
  - "Add support for Zephyr OS" [compiler-team#629](https://github.com/rust-lang/compiler-team/issues/629)
  - "Add illumos Tier3 targets" [compiler-team#644](https://github.com/rust-lang/compiler-team/issues/644)
  - "Add option to pass environment variables" [compiler-team#653](https://github.com/rust-lang/compiler-team/issues/653)
  - "Condemn `asmjs-unknown-emscripten` to push a boulder up a hill for eternity" [compiler-team#668](https://github.com/rust-lang/compiler-team/issues/668)
  - "Allow overriding default codegen backend on a per-target basis" [compiler-team#670](https://github.com/rust-lang/compiler-team/issues/670)
  - "Change how closure and generator types are printed to avoid clash with slice types" [compiler-team#675](https://github.com/rust-lang/compiler-team/issues/675)
  - "Offload dep graph encoding to a thread" [compiler-team#677](https://github.com/rust-lang/compiler-team/issues/677)
- Finalized FCPs (disposition merge)
  - "stabilize combining +bundle and +whole-archive link modifiers" [rust#113301](https://github.com/rust-lang/rust/pull/113301)

### WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Checkin text

- Impl Trait initiative by @**oli** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 41 P-high, 100 P-medium, 19 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "ICE: "no errors encountered even though `delay_span_bug` issued" on tantivy v0.21 in release mode" [rust#116333](https://github.com/rust-lang/rust/issues/116333)
  - PR [rust#116415](https://github.com/rust-lang/rust/pull/116415) should take care of that (among other similar reported regressions) ([comment](https://github.com/rust-lang/rust/pull/116415#issuecomment-1746692465))
  - PR authored by @**Oguz** (thanks), review in progress

## Performance logs

> [triage logs for 2023-10-03](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-10-03.md)

A week completely free of pure regressions! The compiler has definitely come out of this week a decent amount faster and less memory hungry than before with the large gain coming from building the compiler with a single CGU on x64 Linux. This not only allows LLVM to do more optimizations across the entire compiler, but should hopefully also result in less non-deterministic performance regressions in the future. This improvement largely comes only at the expense of a few more minutes spent when bootstrapping the compiler.

Triage done by **@rylev**.
Revision range: [27b4eb..9998f4](https://perf.rust-lang.org/?start=27b4eb96d13106332d511be2ea6d0c008a57aa6e&end=9998f4add08c3d09c82e00975cf3a293b30160ec&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.3%, 6.1%]   | 41    |
| Regressions (secondary)  | 2.0%  | [0.9%, 7.8%]   | 21    |
| Improvements (primary)   | -1.3% | [-5.1%, -0.2%] | 134   |
| Improvements (secondary) | -1.8% | [-6.9%, -0.2%] | 175   |
| All  (primary)           | -0.8% | [-5.1%, 6.1%]  | 175   |


0 Regressions, 2 Improvements, 4 Mixed; 0 of them in rollups
74 artifact comparisons made in total

#### Regressions


#### Improvements

rustdoc: speed up processing of cross-crate fns to fix a perf regression [#116195](https://github.com/rust-lang/rust/pull/116195) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=177091258c039398d30137b52e1c575a98aa7597&end=5282e5e120128ba589728ee4bcb4f18511ba9fb0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 6     |
| Improvements (secondary) | -0.6% | [-0.8%, -0.3%] | 11    |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 6     |


Cleanup number handling in match exhaustiveness [#116281](https://github.com/rust-lang/rust/pull/116281) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=51ddc7467978e265d2004d58980580293734ca93&end=e0d7ed1f453fb54578cc96dfea859b0e7be15016&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.5%, -0.3%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.7% | [-1.5%, -0.3%] | 3     |


#### Mixed

Don't use a thread to load the dep graph [#116109](https://github.com/rust-lang/rust/pull/116109) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d23062b5be6bbf5be15226c7f497c89cf7d3d6e1&end=8bf0dec101dc458a411401a826994006abd2f022&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.5%, 1.1%]   | 2     |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.2%]   | 3     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.1%  | [-0.3%, 1.1%]  | 6     |
- A very small regression that basically results in net zero change to performance.


Build `rustc` with a single CGU on x64 Linux [#115554](https://github.com/rust-lang/rust/pull/115554) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c16823d757b376f90c5f5cbd542ce83235befbc4&end=871407a0341262d2a86703ca43b449d35fa5f236&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.3%, 2.6%]   | 39    |
| Regressions (secondary)  | 1.6%  | [0.7%, 2.5%]   | 23    |
| Improvements (primary)   | -1.2% | [-3.9%, -0.2%] | 89    |
| Improvements (secondary) | -1.6% | [-3.5%, -0.4%] | 124   |
| All  (primary)           | -0.6% | [-3.9%, 2.6%]  | 128   |
- The change is overwhelmingly positive (especially when taking other measures like max RSS and artifact size) making the small regressions acceptable
- Take a [look at cycles](https://perf.rust-lang.org/compare.html?start=c16823d757b376f90c5f5cbd542ce83235befbc4&end=871407a0341262d2a86703ca43b449d35fa5f236&stat=cycles%3Au) for a nearly completely regression free view of the positive nature of this change.


Rebased: Mark drop calls in landing pads cold instead of noinline [#102099](https://github.com/rust-lang/rust/pull/102099) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5333b878c8bc1c4267a67ea3682663629e47541a&end=2e5a9dd6c9eaa42f0684b4b760bd68fc27cbe51b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.5%  | [0.3%, 5.9%]   | 12    |
| Regressions (secondary)  | 2.7%  | [0.4%, 7.7%]   | 5     |
| Improvements (primary)   | -0.5% | [-4.5%, -0.2%] | 78    |
| Improvements (secondary) | -0.9% | [-6.9%, -0.1%] | 65    |
| All  (primary)           | -0.2% | [-4.5%, 5.9%]  | 90    |
- Largely positive with a few large regressions caused by more time spent in LLVM. This seems to be expected and acceptable.


Make subtyping explicit in MIR [#115025](https://github.com/rust-lang/rust/pull/115025) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9998f4add08c3d09c82e00975cf3a293b30160ec&end=eb0f3ed59c6508a37c6598bc9762987f053993a7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.4%, 0.8%]   | 2     |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.1%]   | 17    |
| Improvements (primary)   | -0.5% | [-0.6%, -0.5%] | 2     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 1     |
| All  (primary)           | 0.0%  | [-0.6%, 0.8%]  | 4     |
- Small regression that is basically only seen in some secondary benchmarks. Unlikely to be worth deep investigation.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Improve `print_tts`" [rust#114571](https://github.com/rust-lang/rust/pull/114571) (last review activity: about 48 days ago)
  - Some review talks with @**Vadim Petrochenkov**, seems this is waiting on him? (see [last comments](https://github.com/rust-lang/rust/pull/114571#issuecomment-1682486307))
- "compiler: be more clear about transparent layout violations" [rust#114015](https://github.com/rust-lang/rust/pull/114015) (last review activity: about 41 days ago)
  - cc: @**pnkfelix**
- "Remove -Zfuel." [rust#115293](https://github.com/rust-lang/rust/pull/115293) (last review activity: about 38 days ago)
  - *seems* to be ready for a review (though not 100% sure since it receives updates) cc: @**Wesley Wiser** 
- "Remove -Zfuel." [rust#115293](https://github.com/rust-lang/rust/pull/115293) (last review activity: about 38 days ago)
  - cc: @**Wesley Wiser** 
- "Suggest adding `return` if the for semi which can coerce to the fn return type" [rust#115196](https://github.com/rust-lang/rust/pull/115196) (last review activity: about 33 days ago)
  - cc @**Esteban Küber** 
- "Extract suitable code from rustc_query_impl into a new crate rustc_query_misc" [rust#115118](https://github.com/rust-lang/rust/pull/115118) (last review activity: about 32 days ago)
  - probably ready for another round review cc: @**cjgillot** 
- "Parse unnamed fields and anonymous structs or unions" [rust#115732](https://github.com/rust-lang/rust/pull/115732) (last review activity: about 24 days ago)
  - cc: @**Vadim Petrochenkov** 

## Next week's WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**
- @_*WG-mir-opt* by @**oli**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/Eq0n1oBvTaajzXK5WvKPng)
