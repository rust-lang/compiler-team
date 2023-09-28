---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-09-21

## Announcements

- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzA5MjJUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-22T10:00:00-04:00>
- [Types team meeting: backlog bonanza](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA5MjVUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-25T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async reading club](https://www.google.com/calendar/event?eid=ajVtNGowYjlzdDNhM2VwZG9vNjg4OTlzNDBfMjAyMzA5MjFUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-21T12:00:00-04:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA5MjFUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-21T16:00:00-04:00>
- [Stable MIR Weekly Meeting](https://www.google.com/calendar/event?eid=N25kMTM2Z3NxbXJjNTE5ZWJpM2traHNpa21fMjAyMzA5MjJUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-22T11:00:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzA5MjVUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-25T11:00:00-04:00>
- [Types Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzA5MjVUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-25T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634) (last review activity: 3 months ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) (last review activity: 3 months ago)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) (last review activity: 3 months ago)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642) (last review activity: about 19 days ago)
  - "Match the behavior of `strip` and `split-debuginfo` across platforms" [compiler-team#669](https://github.com/rust-lang/compiler-team/issues/669) (last review activity: about 16 days ago)
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672) (last review activity: about 13 days ago)
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
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674)
  - "Change how closure and generator types are printed to avoid clash with slice types" [compiler-team#675](https://github.com/rust-lang/compiler-team/issues/675)
  - "Offload dep graph encoding to a thread" [compiler-team#677](https://github.com/rust-lang/compiler-team/issues/677)
  - "Add allow-by-default lint for unit bindings" [rust#112380](https://github.com/rust-lang/rust/pull/112380)
  - "stabilize combining +bundle and +whole-archive link modifiers" [rust#113301](https://github.com/rust-lang/rust/pull/113301)
- Accepted MCPs
  - "Promote loongarch64-unknown-none* to Tier 2" [compiler-team#664](https://github.com/rust-lang/compiler-team/issues/664)
  - "Make unknown/renamed/removed lints passed via command line respect lint levels" [compiler-team#667](https://github.com/rust-lang/compiler-team/issues/667)
  - "Create a binary-size working group" [compiler-team#671](https://github.com/rust-lang/compiler-team/issues/671)
- Finalized FCPs (disposition merge)
  - "Enable -Zdrop-tracking-mir by default" [rust#107421](https://github.com/rust-lang/rust/pull/107421)
  - "Accept additional user-defined syntax classes in fenced code blocks" [rust#110800](https://github.com/rust-lang/rust/pull/110800)
  - "rustdoc-search: add support for type parameters" [rust#112725](https://github.com/rust-lang/rust/pull/112725)
  - "rustdoc: show inner enum and struct in type definition for concrete type" [rust#114855](https://github.com/rust-lang/rust/pull/114855)
  - "Don't resolve generic impls that may be shadowed by dyn built-in impls" [rust#114941](https://github.com/rust-lang/rust/pull/114941)
  - "closure field capturing: don't depend on alignment of packed fields" [rust#115315](https://github.com/rust-lang/rust/pull/115315)
  
### WG checkins

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Checkin text

- @_*T-rust-analyzer* by @**Lukas Wirth** ([previous checkin](https://hackmd.io/XBOdBRLXR7qFfq526W7gXg#WG-checkins)):
  > One small thing, unfortunately the rustc_abi crate got broken for us in https://github.com/rust-lang/rust/pull/107163 (as in we can't upgrade to newer versions) and we noticed that too late so the change can't be rolled back too easily anymore :sweat_smile: So we'll have to think about how to prevent that from happening again, https://github.com/rust-lang/rust-analyzer/issues/15569 

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.73.0-beta.6] "Don't modify libstd to dump rustc ICEs" [rust#115627](https://github.com/rust-lang/rust/pull/115627)
  - fixes regression #115610 about an increased binary size
  - Also T-libs camp (they approved the backport [on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/259402-t-libs.2Fmeetings/topic/Meeting.202023-09-20/near/392135579))
<!--
/poll Approve beta backport of #115627?
approve
decline
don't know
-->
- :beta: [1.73.0-beta.6] "Expose try_destructure_mir_constant_for_diagnostics directly to clippy" [rust#115819](https://github.com/rust-lang/rust/pull/115819)
  - commented briefly last week, left some comments
<!--
/poll Approve beta backport of #115819?
approve
decline
don't know
-->
- :beta: [1.73.0-beta.6] "Paper over an accidental regression" [rust#115844](https://github.com/rust-lang/rust/pull/115844)
  - merged last week, fixes [rust#115781](https://github.com/rust-lang/rust/issues/115781) a p-medium regression found in a beta crater run
<!--
/poll Approve beta backport of #115844?
approve
decline
don't know
-->
- :beta: [1.73.0-beta.6] "Update to LLVM 17.0.0" [rust#115959](https://github.com/rust-lang/rust/pull/115959)
  - fixes a p-critical miscompile (#115681)
<!--
/poll Approve beta backport of #115959?
approve
decline
don't know
-->
- :beta: [1.73.0-beta.6] "Update LLVM submodule to 17.0.0-rc4" [rust#115581](https://github.com/rust-lang/rust/pull/115581)
  - fixes #115385 a p-critical unsoundness MIRI issue ([comment](https://github.com/rust-lang/rust/issues/115385#issuecomment-1699855795))
  - goes hand in hand with the LLVM 17.0.0 upgrade (#115959)
<!--
/poll Approve beta backport of #115581?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "More distinctive pretty-printing of function item types" [rust#99927](https://github.com/rust-lang/rust/pull/99927)
  - @**Frank Steffahn** (PR author) left some comments, seemingly addressed to T-compiler? Not too sure about the current status
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 39 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE: unexpected initial operand type." [rust#114858](https://github.com/rust-lang/rust/issues/114858)
  - Seems to be already fixed in nightly ([comment](https://github.com/rust-lang/rust/issues/114858#issuecomment-1717299038))
  - still to be fully investigated the side-effects of PR #112307 that are behind this regression ([comment](https://github.com/rust-lang/miri/commit/15497b255a97f59fda24079fcb1e8756e780e4fa))

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "RPIT hidden types can be ill-formed" [rust#114728](https://github.com/rust-lang/rust/issues/114728)
  - Should be fixed by @**aliemjay** in [rust#115008](https://github.com/rust-lang/rust/pull/115008)
  - Downgrade to P-high? Filed in August, regressed in 1.61, likely not a release blocker at this point

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: as_place unwrap None" [rust#115778](https://github.com/rust-lang/rust/issues/115778)
  - found during the latest beta crater run
  - bisected to commit [34ccd04](https://github.com/rust-lang/rust/commit/34ccd0485966c3933288cd30a076bef63e3298c5)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-09-19](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-09-19.md)

A pretty quiet week, with relatively few statistically significant changes, though some good improvements to a number of benchmarks, particularly in cycle counts rather than instructions.

Triage done by **@simulacrum**.
Revision range: [7e0261e7ea2085bdc0bc3d0fd6776bf343473858..af78bae565e85b9c5698ee909af0652674eca6d4](https://perf.rust-lang.org/?start=7e0261e7ea2085bdc0bc3d0fd6776bf343473858&end=af78bae565e85b9c5698ee909af0652674eca6d4&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.3%, 0.8%]   | 14    |
| Regressions (secondary)  | 0.5%  | [0.2%, 0.8%]   | 5     |
| Improvements (primary)   | -1.2% | [-6.4%, -0.3%] | 22    |
| Improvements (secondary) | -2.1% | [-8.1%, -0.2%] | 37    |
| All  (primary)           | -0.5% | [-6.4%, 0.8%]  | 36    |

3 Regressions, 3 Improvements, 2 Mixed; 2 of them in rollups
56 artifact comparisons made in total

#### Regressions

Accept additional user-defined syntax classes in fenced code blocks [#110800](https://github.com/rust-lang/rust/pull/110800) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=42dead4d23309234802390aca16763f353920cf6&end=41bafc4ff3eb6a73aa40e60c3bd4494302c7ec57&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.5%, 0.9%] | 3     |
| Regressions (secondary)  | 0.9% | [0.5%, 1.4%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.5%, 0.9%] | 3     |

Some slight regressions, limited to doc benchmarks, for a new feature in rustdoc.

Store a index per dep node kind [#115733](https://github.com/rust-lang/rust/pull/115733) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4514fb98d58eb0bcd65a16266875ef031c373cdf&end=341ef15eeed243dce9a30e800173450393bf776b&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.5%] | 9     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.5%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 0.5%] | 9     |

Slight instruction regressions but overall an improvement -- max-rss and cycle
counts are both down in aggregate.

#### Improvements

Rollup of 6 pull requests [#115909](https://github.com/rust-lang/rust/pull/115909) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8ed1d4a02ddd840a1efaca4e5e66881cbec5b0b3&end=db9c21fd944b942a3a83e1fbce0d7c1c9164bc2a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.0%, -0.5%] | 6     |
| Improvements (secondary) | -1.1% | [-1.5%, -0.4%] | 19    |
| All  (primary)           | -0.6% | [-1.0%, -0.5%] | 6     |


Rollup of 8 pull requests [#115929](https://github.com/rust-lang/rust/pull/115929) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=078eb1120a3f576598b976d9470701363f48fccc&end=de68911f4adaed19ac662880cf1a5ded9e44d685&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.7%, -0.2%] | 19    |
| Improvements (secondary) | -0.5% | [-0.6%, -0.2%] | 12    |
| All  (primary)           | -0.4% | [-0.7%, 0.2%]  | 20    |


move required_consts check to general post-mono-check function [#115748](https://github.com/rust-lang/rust/pull/115748) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b1575cb72ef40459666f802af8636faf8428e3eb&end=cebb9cfd4f0052fbb5e98f9b6f3a61dae8fd96a7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]   | 1     |
| Improvements (primary)   | -5.0% | [-6.3%, -3.6%] | 2     |
| Improvements (secondary) | -6.1% | [-6.6%, -5.7%] | 6     |
| All  (primary)           | -5.0% | [-6.3%, -3.6%] | 2     |

Cache reachable_set on disk [#115740](https://github.com/rust-lang/rust/pull/115740) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=790309b102a0f0459f0ca0ac0386cec2b8a9b0db&end=fd70f7eea23636d4ce83656f5c8c2b24cd56998c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | 0.4%  | [0.4%, 0.6%]   | 4     |
| Improvements (primary)   | -1.0% | [-2.4%, -0.3%] | 8     |
| Improvements (secondary) | -2.6% | [-8.2%, -0.8%] | 4     |
| All  (primary)           | -0.9% | [-2.4%, 0.4%]  | 9     |

Regressions are actually just noise, so moved this to improvements.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Implement a global value numbering MIR optimization" [rust#109597](https://github.com/rust-lang/rust/pull/109597) (last review activity: 4 months ago)
  - cc: @**Jack Huey**
- "Require `type_map::stub` callers to supply file information" [rust#104342](https://github.com/rust-lang/rust/pull/104342) (last review activity: 3 months ago)
  - cc @**Wesley Wiser**
- "Fix ICE when trying to convert `ConstKind::Error` to usize" [rust#113712](https://github.com/rust-lang/rust/pull/113712) (last review activity: about 32 days ago)
  - cc: @**uwu** (reassign?)
- "Suggest `pin!()` instead of `Pin::new()` when appropriate" [rust#114654](https://github.com/rust-lang/rust/pull/114654) (last review activity: about 40 days ago)
  - cc @**davidtwco** 

## Next week's WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry**
- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/wECFXOb-SGaJN2Doz0jIag)
