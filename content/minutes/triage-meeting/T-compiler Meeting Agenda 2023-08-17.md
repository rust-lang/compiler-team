---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-08-17

## Announcements

- One week to the 1.72 stable release
- [wg-async deep dive: IntoFuture autoderef + #42940](https://www.google.com/calendar/event?eid=ajVtNGowYjlzdDNhM2VwZG9vNjg4OTlzNDBfMjAyMzA4MTdUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-17T12:00:00-04:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA4MTdUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-17T16:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA4MjFUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-21T10:00:00-04:00>
- [wg-debugging triage meeting](https://www.google.com/calendar/event?eid=NjAwbDEwNzNmMzVsNDZucnFsdDdwbGJrdDRfMjAyMzA4MjFUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-21T10:00:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzA4MjFUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-21T11:00:00-04:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzA4MjFUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-21T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Allow anonymous constants to be folded across crates (weak linkage + COMDAT)" [compiler_team#662](https://github.com/rust-lang/compiler-team/issues/662) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20anonymous.20constants.20to.20be.20folded.20ac.E2.80.A6.20compiler-team.23662))
  - "Promote loongarch64-unknown-none* to Tier 2" [compiler_team#664](https://github.com/rust-lang/compiler-team/issues/664) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch64-unknown-none.2A.20to.20Tier.E2.80.A6.20compiler-team.23664))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Cell Broadband Engine SPU support" [compiler-team#614](https://github.com/rust-lang/compiler-team/issues/614) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Cell.20Broadband.20Engine.20SPU.20support.20compiler-team.23614)) (last review activity: 4 months ago)
  - "Add support for Zephyr OS" [compiler-team#629](https://github.com/rust-lang/compiler-team/issues/629) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20Zephyr.20OS.20compiler-team.23629)) (last review activity: about 56 days ago)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Consistently.20use.20.22region.22.20terminology.20in.20.E2.80.A6.20compiler-team.23634)) (last review activity: 2 months ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635)(last review activity: 2 months ago)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Simplify.20and.20improve.20explicitness.20of.20the.20.E2.80.A6.20compiler-team.23636)) (last review activity: 2 months ago)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20visionOS.20targets.20compiler-team.23642)) (last review activity: about 48 days ago)
  - "Add illumos Tier3 targets" [compiler-team#644](https://github.com/rust-lang/compiler-team/issues/644) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20illumos.20Tier3.20targets.20compiler-team.23644)) (last review activity: about 23 days ago)
  - "Migrate away from u32 as an offset/length type" [compiler-team#647](https://github.com/rust-lang/compiler-team/issues/647) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Migrate.20away.20from.20u32.20as.20an.20offset.2Flength.E2.80.A6.20compiler-team.23647)) (last review activity: about 41 days ago)
  - "Add `builtin:$path` option to the `-L` flag" [compiler-team#659](https://github.com/rust-lang/compiler-team/issues/659) - "Add `builtin:$path` option to the `-L` flag" [compiler_team#659](https://github.com/rust-lang/compiler-team/issues/659) 
([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60builtin.3A.24path.60.20option.20to.20the.20.60-L.60.20fl.E2.80.A6.20compiler-team.23659)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - "stabilize combining +bundle and +whole-archive link modifiers" [rust#113301](https://github.com/rust-lang/rust/pull/113301)
    - Note: also `I-compiler-nominated`
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
  - "Stabilize `PATH` option for `--print KIND=PATH`" [rust#114183](https://github.com/rust-lang/rust/pull/114183)
- Things in FCP (make sure you're good with it)
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler_team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Report all lints, even if other errors already occurred." [compiler_team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
  - "Add option to pass environment variables" [compiler_team#653](https://github.com/rust-lang/compiler-team/issues/653) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20pass.20environment.20variables.20compiler-team.23653))
  - "Add tidy rule against `issue-[0-9]+.rs` tests" [compiler_team#658](https://github.com/rust-lang/compiler-team/issues/658) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20tidy.20rule.20against.20.60issue-.5B0-9.5D.2B.2Ers.60.20t.E2.80.A6.20compiler-team.23658))
  - "Move a `wasm32-wasi-preview1-threads` target to tier 2" [compiler_team#661](https://github.com/rust-lang/compiler-team/issues/661) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20a.20.60wasm32-wasi-preview1-threads.60.20tar.E2.80.A6.20compiler-team.23661))
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Document soundness of Integer -> Pointer -> Integer conversions in `const` contexts." [rust#113510](https://github.com/rust-lang/rust/pull/113510#issuecomment-1660907140)
  - "Warn on inductive cycle in coherence leading to impls being considered not overlapping" [rust#114023](https://github.com/rust-lang/rust/pull/114023)

### WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** [prev. checkin](https://hackmd.io/4CKNflTQQIKOxk7jiuh7NQ#WG-checkins)
  > Esteban reports: The diagnostics namespace is now on nightly. Not useful yet for anything, but that unblocks `on_type_error` and `on_unimplemented` to be implemented for non rustc usecases

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Permit pre-evaluated constants in simd_shuffle" [rust#113529](https://github.com/rust-lang/rust/pull/113529)
  - Fixes #113500 and #114844 (and a few others), can't compile crate `packed_simd_2-0`
<!--
/poll Approve beta backport of #113529?
approve
decline
don't know
-->

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [draft] "Perform autoref/autoderef on `.await`" [rust#111773](https://github.com/rust-lang/rust/pull/111773)
  - Scheduled for discussion today ([comment](https://github.com/rust-lang/rust/pull/111773#issuecomment-1678019220))
- "stabilize combining +bundle and +whole-archive link modifiers" [rust#113301](https://github.com/rust-lang/rust/pull/113301)
  - See `I-compiler-nominated` 
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [52 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [27 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 33 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "regex miscompiles with aggressive optimization flags" [rust#114488](https://github.com/rust-lang/rust/issues/114488)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-08-10/near/383652524), @**Wesley Wiser** self-assigned

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "RPIT hidden types can be ill-formed" [rust#114728](https://github.com/rust-lang/rust/issues/114728)
  - @**Michael Goulet (compiler-errors)** authored PR #114740 to fix
  - @**lcnr** proposes to merge that PR ([comment](https://github.com/rust-lang/rust/pull/114740#issuecomment-1677961021)) though not void of breaking changes (ref: @**aliemjay** [comment](https://github.com/rust-lang/rust/pull/114740#issuecomment-1678369359))
  - cc: `T-types`

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2023-08-14 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-08-14.md)

A light week. Main thing to report is we got some improvements from telling LLVM
that the negation in `<*const T>::sub` cannot overflow.

Triage done by **@pnkfelix**.
Revision range: [443c3161..e8459109](https://perf.rust-lang.org/?start=443c3161dd04f4c1b656a626f9079921bee9c326&end=e8459109bbb440764c1c877032189a27b9e76c4e&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.6%, -0.4%] | 11    |
| Improvements (secondary) | -0.5% | [-1.6%, -0.3%] | 8     |
| All  (primary)           | -0.7% | [-1.6%, -0.4%] | 11    |


0 Regressions, 1 Improvements, 4 Mixed; 1 of them in rollups
49 artifact comparisons made in total
30 Untriaged Pull Requests

#### Regressions

None

#### Improvements

Tell LLVM that the negation in `<*const T>::sub` cannot overflow [#114720](https://github.com/rust-lang/rust/pull/114720) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a6f8aa5a092c5e46fcbdafe4c80b4e55ba0de41c&end=b08dd92552d663e3c877c8e5ce859e212205a09f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 9     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 4     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 9     |


#### Mixed

Rollup of 7 pull requests [#114604](https://github.com/rust-lang/rust/pull/114604) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=443c3161dd04f4c1b656a626f9079921bee9c326&end=8e7fd551311d424e4e63fa45906a2a928fce96a7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.4%  | [0.4%, 2.0%]   | 3     |
| Regressions (secondary)  | 1.2%  | [1.1%, 1.3%]   | 6     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.4%] | 2     |
| Improvements (secondary) | -1.0% | [-1.5%, -0.5%] | 2     |
| All  (primary)           | 0.5%  | [-0.9%, 2.0%]  | 5     |

* already marked as triaged due to follow-up PR #114648


Only resolve target type in `try_coerce` in new solver [#114648](https://github.com/rust-lang/rust/pull/114648) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=832db2fcee27ee1079608ac78f82b7c14394e89b&end=fd1698860086db56e047f38d74337cf24dac5f24&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [1.0%, 1.0%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.7% | [-1.8%, -1.6%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.8% | [-1.8%, 1.0%]  | 3     |

* This was specifically added to undo regressions flagged in PR #114604
* it did indeed undo the big changes: e.g. cranelift-codegen-0.82.1 had regressed by {2%, 1.7%}, and this improved it back by {-1.84%, -1.59%}
* likewise cargo-0.60.0 had improved by -0.93%, and this regressed it back by 0.99%. (I.e. we returned to prior status quo.)
* some other effects were not addressed by this PR, but they are all minor.
* marking as triaged.

Only check outlives goals on impl compared to trait [#109356](https://github.com/rust-lang/rust/pull/109356) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b08dd92552d663e3c877c8e5ce859e212205a09f&end=f1b854818db00bec14accbc9d1c72e6ebefe64db&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.4%, 0.4%]   | 2     |
| Improvements (primary)   | -0.9% | [-1.6%, -0.6%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.9% | [-1.6%, -0.6%] | 6     |

* regression is solely to the opt and debug profiles externs secondary benchmark, by a small amount.
* marked as triaged

Respect `#[expect]` the same way `#[allow]` is with the `dead_code` lint [#114710](https://github.com/rust-lang/rust/pull/114710) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f1b854818db00bec14accbc9d1c72e6ebefe64db&end=1e836d12d39ea09b1d86ebda70cb11b41564cead&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.3%, 0.7%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.6% | [-0.8%, -0.5%] | 3     |
| All  (primary)           | 0.5%  | [0.3%, 0.7%]   | 2     |

* seems like noise
* marked as triaged

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "stabilize combining +bundle and +whole-archive link modifiers" [rust#113301](https://github.com/rust-lang/rust/pull/113301)
  - [Summary](https://github.com/rust-lang/rust/pull/113301#issuecomment-1679603430) from author @**Be** 
  - @**Vadim Petrochenkov** proposes to merge this [comment](https://github.com/rust-lang/rust/pull/113301#issuecomment-1679904514)
- "Associated type constraints on super traits allowing for unsound transmutation to trait objects" [rust#114389](https://github.com/rust-lang/rust/issues/114389)
  - nominated by @**apiraino** ([comment](https://github.com/rust-lang/rust/issues/114389#issuecomment-1669310386))
  - discussed last week

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "Preserve DebugInfo in DeadStoreElimination." [rust#106852](https://github.com/rust-lang/rust/pull/106852) (last review activity: about 34 days ago)
  - cc: @**Jak{e,ob} Degen** 
- "Make SIGSEGV handler emit nicer backtraces" [rust#113565](https://github.com/rust-lang/rust/pull/113565) (last review activity: about 33 days ago)
  - seems like this PR has been jumping assignment for a bit: any takers?
- "Fix ICE when trying to convert `ConstKind::Error` to usize" [rust#113712](https://github.com/rust-lang/rust/pull/113712)(last review activity: about 32 days ago)
  - cc: @**uwu**
- "Replace the \01__gnu_mcount_nc to LLVM intrinsic for ARM" [rust#113814](https://github.com/rust-lang/rust/pull/113814)(last review activity: about 30 days ago)
  - needs an LLVM expert? (doesn't seem urgent, tho)

## Next week's WG checkins

TBA

Next meetings' agenda draft: `https://hackmd.io/EoH5hPsnTdaD1dcKEVbYug`
