---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-09-14

## Announcements

- Rust stable dot release 1.72.1 will likely be postponed to next week ([Zulip comment](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/1.2E72.2E1.20.3F/near/390810337) in #t-release)
- [Types team meeting: backlog bonanza](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA5MThUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-18T10:00:00-04:00>
- [Types team meeting: Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzA5MThUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-18T11:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the council know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=ajVtNGowYjlzdDNhM2VwZG9vNjg4OTlzNDBfMjAyMzA5MTRUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-14T12:00:00-04:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA5MTRUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-14T16:00:00-04:00>
- [wg-debugging triage meeting](https://www.google.com/calendar/event?eid=NjAwbDEwNzNmMzVsNDZucnFsdDdwbGJrdDRfMjAyMzA5MThUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-18T10:00:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzA5MThUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-18T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Consistently use \"region\" terminology in later stages of the compiler" [compiler_team#634](https://github.com/rust-lang/compiler-team/issues/634) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Consistently.20use.20.22region.22.20terminology.20in.20.E2.80.A6.20compiler-team.23634)) (last review activity: 3 months ago)
  - "Add a new `--build-id` flag to rustc" [compiler_team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))) (last review activity: 3 months ago)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler_team#636](https://github.com/rust-lang/compiler-team/issues/636) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Simplify.20and.20improve.20explicitness.20of.20the.20.E2.80.A6.20compiler-team.23636)) (last review activity: 3 months ago)
  - "Add support for visionOS targets" [compiler_team#642](https://github.com/rust-lang/compiler-team/issues/642) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20visionOS.20targets.20compiler-team.23642)) (last review activity: about 12 days ago)
  - "Add illumos Tier3 targets" [compiler_team#644](https://github.com/rust-lang/compiler-team/issues/644) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20illumos.20Tier3.20targets.20compiler-team.23644)) (last review activity: about 51 days ago)
  - "Match the behavior of `strip` and `split-debuginfo` across platforms" [compiler_team#669](https://github.com/rust-lang/compiler-team/issues/669) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Match.20the.20behavior.20of.20.60strip.60.20and.20.60split-.E2.80.A6.20compiler-team.23669)) (last review activity: about 9 days ago)
  - "Allow overriding default codegen backend on a per-target basis" [compiler_team#670](https://github.com/rust-lang/compiler-team/issues/670) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20overriding.20default.20codegen.20backend.20.E2.80.A6.20compiler-team.23670)) (last review activity: about 6 days ago)
  - "Add infrastructure to \"compute the ABI of a Rust type, described as a C type\"" [compiler_team#672](https://github.com/rust-lang/compiler-team/issues/672) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20infrastructure.20to.20.22compute.20the.20ABI.20of.E2.80.A6.20compiler-team.23672)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler_team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
  - " Add `type` field to distinguish json diagnostic outputs" [compiler_team#673](https://github.com/rust-lang/compiler-team/issues/673) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - "Add allow-by-default lint for unit bindings" [rust#112380](https://github.com/rust-lang/rust/pull/112380)
  - "stabilize combining +bundle and +whole-archive link modifiers" [rust#113301](https://github.com/rust-lang/rust/pull/113301)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
- Things in FCP (make sure you're good with it)
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler_team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Add support for Zephyr OS" [compiler_team#629](https://github.com/rust-lang/compiler-team/issues/629) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Report all lints, even if other errors already occurred." [compiler_team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Add option to pass environment variables" [compiler_team#653](https://github.com/rust-lang/compiler-team/issues/653) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Add tidy rule against `issue-[0-9]+.rs` tests" [compiler_team#658](https://github.com/rust-lang/compiler-team/issues/658) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Add `builtin:$path` option to the `-L` flag" [compiler_team#659](https://github.com/rust-lang/compiler-team/issues/659) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Promote loongarch64-unknown-none* to Tier 2" [compiler_team#664](https://github.com/rust-lang/compiler-team/issues/664) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch64-unknown-none.2A.20to.20Tier.E2.80.A6.20compiler-team.23664))
  - "Support larger sizes in rmeta tables and incr comp alloc offsets" [compiler_team#666](https://github.com/rust-lang/compiler-team/issues/666) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch64-unknown-none.2A.20to.20Tier.E2.80.A6.20compiler-team.23664))
  - "Condemn `asmjs-unknown-emscripten` to push a boulder up a hill for eternity" [compiler_team#668](https://github.com/rust-lang/compiler-team/issues/668) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch64-unknown-none.2A.20to.20Tier.E2.80.A6.20compiler-team.23664))
  - "Create a binary-size working group" [compiler_team#671](https://github.com/rust-lang/compiler-team/issues/671) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch64-unknown-none.2A.20to.20Tier.E2.80.A6.20compiler-team.23664))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler_team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch64-unknown-none.2A.20to.20Tier.E2.80.A6.20compiler-team.23664))
  - "Change how closure and generator types are printed to avoid clash with slice types" [compiler_team#675](https://github.com/rust-lang/compiler-team/issues/675) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch64-unknown-none.2A.20to.20Tier.E2.80.A6.20compiler-team.23664))
- Accepted MCPs
  - "Make unknown/renamed/removed lints passed via command line respect lint levels" [compiler-team#667](https://github.com/rust-lang/compiler-team/issues/667)
- Finalized FCPs (disposition merge)
  - None

### WG checkins

- T-types checkin by  @**Jack Huey** ([HackMD link](https://hackmd.io/1S12RB_hQQ24jzNcdman4w))
  > * General team things
  >     * We have an in-person meetup in Brussels next month prior to EuroRust
  >         * Let us know if there's anything you'd like us to discuss
  > * Planning to open a stabilization report "any day now" for AFIT/RPITIT
  > * #114740, #115008, #114933 all open to try to fix unsoundness w.r.t TAITs
  > * Ongoing work to generate a-mir-formality code via SMIR
  > * Work on new trait solver: overflow handling and provisional cache
  > * There's a WIP stabilization report for trait upcasting
  > * Open FCP for negative impls
  > * @**lqd** has prepared a PR that reimplements the existing borrow-check in a polonius style

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.73] "MCP661: Move wasm32-wasi-preview1-threads target to Tier 2" [rust#115345](https://github.com/rust-lang/rust/pull/115345)
  - (previously Tier 3)
  - nominated by @**Wesley Wiser** ([comment](https://github.com/rust-lang/rust/pull/115345#issuecomment-1716258534)): PR author recommends backport as this PR bumps the version of wasi-libc we use which fixes some issues with the target. The target is now Tier 2 in 1.73 so backporting the fix will improve the state of the target in its first Tier 2 release.
<!--
/poll Approve beta backport of #115345?
approve
decline
don't know
-->
- :beta: [1.73] "fix(resolve): update def if binding is warning ambiguity" [rust#115389](https://github.com/rust-lang/rust/pull/115389)
  - Fixes beta regression #115774 from the latest crater run, hitting a few crates (so potentially annoying?)
<!--
/poll Approve beta backport of #115389?
approve
decline
don't know
-->
- :beta: [1.73] "Don't require `Drop` for `[PhantomData<T>; N]` where `N` and `T` are generic, if `T` requires `Drop`" [rust#115527](https://github.com/rust-lang/rust/pull/115527)
  - authored by @**oli**
  - Closes fixes #115403 and #115410 (also raised an error in the latest crater run, see [comment](https://github.com/rust-lang/rust/pull/115527#issuecomment-1715747550))
<!--
/poll Approve beta backport of #115527?
approve
decline
don't know
-->
- :beta: [1.73] "Only suggest turbofish in patterns if we may recover" [rust#115785](https://github.com/rust-lang/rust/pull/115785)
  - authored by @**fmease**
  - closes #115780 a perhaps P-high regression (produces an error falsely suggesting to use the `::` operator)
<!--
/poll Approve beta backport of #115785?
approve
decline
don't know
-->
- :beta: [1.73] "Expose try_destructure_mir_constant_for_diagnostics directly to clippy" [rust#115819](https://github.com/rust-lang/rust/pull/115819)
  - fresh from @**oli**
  - hopefully squashing #83085: avoid clippy trying to use the query in ways that incremental caching will inevitably cause problems with
<!--
/poll Approve beta backport of #115819?
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

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 38 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE: unexpected initial operand type." [rust#114858](https://github.com/rust-lang/rust/issues/114858)
  - partially fixed in [rust#115215](https://github.com/rust-lang/rust/pull/115215), needs more work though ([comment](https://github.com/rust-lang/rust/pull/115215#issuecomment-1710401747))
- "Miscompile with `-Copt-level=1` after update to LLVM 17" [rust#115681](https://github.com/rust-lang/rust/issues/115681)
  - Upstream fix in progress at [llvm-project#65882](https://github.com/llvm/llvm-project/pull/65882)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "RPIT hidden types can be ill-formed" [rust#114728](https://github.com/rust-lang/rust/issues/114728)
  - will be fixed by [rust#114933](https://github.com/rust-lang/rust/pull/114933), authored by @**aliemjay**, being reviewed 

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- "ICE when building documentation: DefId(20:797 ...) does not have a "object_lifetime_default"" [rust#115179](https://github.com/rust-lang/rust/issues/115179)
  - fixed by [rust#115276](https://github.com/rust-lang/rust/pull/115276) (beta accepted)

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: as_place unwrap None" [rust#115778](https://github.com/rust-lang/rust/issues/115778)
  - @**apiraino** assigned P-high (but unsure about priority), needs bisection and maybe a bit more context. Might be related to #110453
- "regression: generic args in patterns require the turbofish syntax" [rust#115780](https://github.com/rust-lang/rust/issues/115780)
  - fixed by #115785

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-09-13](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-09-13.md)

An interesting week. We saw a massive improvement to instruction-counts across
over a hundred benchmarks, thanks to #110050 an improved encoding scheme for the
dependency graphs that underlie incremental-compilation. However, these
instruction-count improvements did not translate to direct cycle time
improvements. We also saw an improvement to our artifact sizes due to #115306.
Beyond that, we had a scattering of small regressions to instruction-counts that
were justified because they were associated with bug fixes.

Triage done by **@pnkfelix**.
Revision range: [15e52b05..7e0261e7](https://perf.rust-lang.org/?start=15e52b05ca8f63e0da27c808680388717e5b997e&end=7e0261e7ea2085bdc0bc3d0fd6776bf343473858&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.8%  | [0.7%, 10.2%]  | 11    |
| Regressions (secondary)  | 1.5%  | [0.4%, 7.7%]   | 9     |
| Improvements (primary)   | -1.7% | [-5.9%, -0.2%] | 112   |
| Improvements (secondary) | -1.3% | [-2.7%, -0.4%] | 41    |
| All  (primary)           | -1.3% | [-5.9%, 10.2%] | 123   |


3 Regressions, 2 Improvements, 5 Mixed; 2 of them in rollups
84 artifact comparisons made in total

#### Regressions

Add `FreezeLock` type and use it to store `Definitions` [#115401](https://github.com/rust-lang/rust/pull/115401) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c1d80ba9e28a9248158ab09fe593b0724647e642&end=a0c28cd9dc99d9acb015d06f6b27c640adad3550&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 11    |
| Regressions (secondary)  | 0.3% | [0.3%, 0.3%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.4%] | 11    |

* The impact here is [hypothesized to be](https://github.com/rust-lang/rust/pull/115401#issuecomment-1709461275) due to serial/parallel trade-off; we benchmark the serial case and observe a small regression, while the parallel case is observing an improvement of roughly the same caliber.
* Marked as triaged

Rollup of 6 pull requests [#115672](https://github.com/rust-lang/rust/pull/115672) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cd71a37f320c379df47ff64abd934f3a2da94c26&end=309af3442a1808888e3ceb2eacccbf4140eba1e0&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 4.2% | [0.8%, 9.8%] | 5     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 4.2% | [0.8%, 9.8%] | 5     |

* already marked as triaged
* all five regressions are to doc benchmarks, due to new feature added in https://github.com/rust-lang/rust/pull/115201

Use the same DISubprogram for each instance of the same inlined function within a caller [#115417](https://github.com/rust-lang/rust/pull/115417) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ffc48e3eda36e288f76b4022d72d94321887ebf5&end=62ebe3a2b177d50ec664798d731b8a8d1a9120d1&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.0% | [0.6%, 1.3%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.0% | [0.6%, 1.3%] | 3     |

* already marked as triaged
* regression was expected, though we may be able to claw back performance after resolving rust#115455

#### Improvements

Span tweaks [#115594](https://github.com/rust-lang/rust/pull/115594) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=38bbc2ce03a2369d96898d58cc0aa06f1a4b5dcf&end=6cc1898f5f4f3ffec96ce2b7c3be723db558d470&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 6     |
| All  (primary)           | -0.4% | [-0.4%, -0.4%] | 1     |


Disentangle `Debug` and `Display` for `Ty`. [#115661](https://github.com/rust-lang/rust/pull/115661) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e39976ff89f91b742916349859e8d877a4876783&end=7d1e416d3234bdfed6443dc2e4301f2d6f063525&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 4     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 3     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 4     |


#### Mixed

Represent MIR composite debuginfo as projections instead of aggregates [#115252](https://github.com/rust-lang/rust/pull/115252) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a0c28cd9dc99d9acb015d06f6b27c640adad3550&end=a5b2ac6906d2b688db4938f842057cde6054449c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.9%  | [3.9%, 3.9%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 2     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.3%] | 4     |
| All  (primary)           | 1.1%  | [-0.3%, 3.9%]  | 3     |

* The single regression is to exa-0.10.1-opt-full
* However, nnethercote noted that this PR introduced broad (if small)
  regressions to linked artifact (aka binary) sizes (in both opt and debug settings)
* not marking as triaged

Use a specialized varint + bitpacking scheme for DepGraph encoding [#110050](https://github.com/rust-lang/rust/pull/110050) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4e5b31c2b0023dba53a1b2827f4b7ac42aaaa18f&end=f00c1399987c60b4e884afc42f4aa6226855e9ae&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.8%]   | 4     |
| Improvements (primary)   | -1.7% | [-5.8%, -0.3%] | 104   |
| Improvements (secondary) | -1.4% | [-2.9%, -0.5%] | 32    |
| All  (primary)           | -1.7% | [-5.8%, -0.3%] | 104   |

* on its surface, the improvements to instruction counts here clearly outweigh the regressions
* it is worth noting that the cycle counts did not see the same trends;
  there were zero improvements and 7 primary regressions to cycle counts.
* still, marking as triaged; this PR has gone through enough performance evaluation already.

Rollup of 7 pull requests [#115665](https://github.com/rust-lang/rust/pull/115665) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3d249706aa8b0167dd49efa1b3ce7cc0e9cbba08&end=de4cba3a98a15a891ad708a049c7fb5682083d97&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.6%, 0.7%]   | 2     |
| Regressions (secondary)  | 0.6%  | [0.5%, 0.7%]   | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | 0.7%  | [0.6%, 0.7%]   | 2     |

* primary regressions were helloworld-check (incr-unchanged and incr-patched:println)
* marking as triaged; not worth investigating a rollup for that benchmark.

Avoid a `source_span` query when encoding Spans into query results [#115657](https://github.com/rust-lang/rust/pull/115657) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5ede9408945b46ab183dd228253297bdf62304f7&end=38bbc2ce03a2369d96898d58cc0aa06f1a4b5dcf&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | 0.7%  | [0.4%, 1.0%]   | 7     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 2     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.4%] | 4     |
| All  (primary)           | -0.0% | [-0.4%, 0.4%]  | 4     |

* primary regressions are to diesel-check (full and incr-full).
* This is fixing a soundness issue with the dep-graph maintenance; therefore, these regressions seem tolerable.
* Marking as triaged

Encode only MIR reachable from other crates [#115306](https://github.com/rust-lang/rust/pull/115306) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8e37c509fda1f7387895e33783cba94ea3960a29&end=7418413a7fad1c4e8b82f970bd78af030e5f813e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.3%, 2.4%]   | 15    |
| Regressions (secondary)  | 1.9%  | [0.3%, 9.1%]   | 7     |
| Improvements (primary)   | -1.3% | [-2.7%, -0.4%] | 12    |
| Improvements (secondary) | -0.9% | [-1.2%, -0.7%] | 5     |
| All  (primary)           | -0.1% | [-2.7%, 2.4%]  | 27    |

* the big (>1%) primary regressions were to three check-incr-unchanged cases: cranelift-codegen-0.82.1, html5ever-0.26.0, and hyper-0.14.18
* the regressions seem unfortunate, but tolerable given the improvement to linked artifact sizes
* marking as triaged

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Fix ICE when trying to convert `ConstKind::Error` to usize" [rust#113712](https://github.com/rust-lang/rust/pull/113712)(last review activity: about 46 days ago)
  - cc: @**uwu**
- "Pretty-print argument-position impl trait to name it." [rust#113955](https://github.com/rust-lang/rust/pull/113955)(last review activity: about 31 days ago)
  - cc @**Waffle Lapkin** 

## Next week's WG checkins

- @_*WG-mir-opt* by @**oli**
- @_*T-rust-analyzer* by @**Lukas Wirth**

Next meetings' agenda draft: https://hackmd.io/CG_A-TBVTBqsH_mfID3Fvg
