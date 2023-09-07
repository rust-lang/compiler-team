---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-08-31

## Announcements

- [Compiler Team Steering Meeting - External Dependency Timelines](https://www.google.com/calendar/event?eid=NWRmN3BmcnQ4dDFpdDFtbHVubnY5MXZqaGYgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2023-09-01T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async sprint planning](https://www.google.com/calendar/event?eid=ajVtNGowYjlzdDNhM2VwZG9vNjg4OTlzNDBfMjAyMzA4MzFUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-31T12:00:00-04:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA4MzFUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-31T16:00:00-04:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA5MDRUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-04T10:00:00-04:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzA5MDRUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-04T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Match the behavior of `strip` and `split-debuginfo` across platforms" [compiler-team#669](https://github.com/rust-lang/compiler-team/issues/669)
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634)(last review activity: 3 months ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635)(last review activity: 3 months ago)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636)(last review activity: 2 months ago)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642)(last review activity: 2 months ago)
  - "Add illumos Tier3 targets" [compiler-team#644](https://github.com/rust-lang/compiler-team/issues/644)(last review activity: about 38 days ago)
  - "Promote loongarch64-unknown-none* to Tier 2" [compiler-team#664](https://github.com/rust-lang/compiler-team/issues/664)(last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649)
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991#issuecomment-1670127912)
  - "stabilize combining +bundle and +whole-archive link modifiers" [rust#113301](https://github.com/rust-lang/rust/pull/113301#issuecomment-1679904521)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307#issuecomment-1621305927)
- Things in FCP (make sure you're good with it)
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler_team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Add support for Zephyr OS" [compiler_team#629](https://github.com/rust-lang/compiler-team/issues/629) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20Zephyr.20OS.20compiler-team.23629))
  - "Report all lints, even if other errors already occurred." [compiler_team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
  - "Add option to pass environment variables" [compiler_team#653](https://github.com/rust-lang/compiler-team/issues/653) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20pass.20environment.20variables.20compiler-team.23653))
  - "Add tidy rule against `issue-[0-9]+.rs` tests" [compiler_team#658](https://github.com/rust-lang/compiler-team/issues/658) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20tidy.20rule.20against.20.60issue-.5B0-9.5D.2B.2Ers.60.20t.E2.80.A6.20compiler-team.23658))
  - "Add `builtin:$path` option to the `-L` flag" [compiler_team#659](https://github.com/rust-lang/compiler-team/issues/659) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60builtin.3A.24path.60.20option.20to.20the.20.60-L.60.20fl.E2.80.A6.20compiler-team.23659))
  - "Support larger sizes in rmeta tables and incr comp alloc offsets" [compiler_team#666](https://github.com/rust-lang/compiler-team/issues/666) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20larger.20sizes.20in.20rmeta.20tables.20and.20.E2.80.A6.20compiler-team.23666))
  - "Make unknown/renamed/removed lints passed via command line respect lint levels" [compiler_team#667](https://github.com/rust-lang/compiler-team/issues/667) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20unknown.2Frenamed.2Fremoved.20lints.20passed.E2.80.A6.20compiler-team.23667))
  - "Condemn `asmjs-unknown-emscripten` to push a boulder up a hill for eternity" [compiler_team#668](https://github.com/rust-lang/compiler-team/issues/668) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Condemn.20.60asmjs-unknown-emscripten.60.20to.20pus.E2.80.A6.20compiler-team.23668))
  - "Stabilize `PATH` option for `--print KIND=PATH`" [rust#114183](https://github.com/rust-lang/rust/pull/114183)
- Accepted MCPs
  - "Move a `wasm32-wasi-preview1-threads` target to tier 2" [compiler-team#661](https://github.com/rust-lang/compiler-team/issues/661)
- Finalized FCPs (disposition merge)
  - "stop adding dropck outlives requirements for `[T; 0]`" [rust#110288](https://github.com/rust-lang/rust/issues/110288)
  - "Allow explicit `#[repr(Rust)]`" [rust#114201](https://github.com/rust-lang/rust/pull/114201)
  - "style-guide: Add guidance for defining formatting for specific macros" [rust#114919](https://github.com/rust-lang/rust/pull/114919)

### WG checkins

- @_*T-rust-analyzer* by @**Lukas Wirth** ([previous checkin](https://hackmd.io/XBOdBRLXR7qFfq526W7gXg#WG-checkins)):
  > nothing to report at this time

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.73] "Do not forget to pass DWARF fragment information to LLVM." [rust#115139](https://github.com/rust-lang/rust/pull/115139)
  - Fixes (what we think is) P-critical #115113, seems to affect 
  - also nominated for stable backport
<!--
/poll Approve beta backport of #115139?
approve
decline
don't know
-->
- :beta: [1.73] "Stop emitting non-power-of-two vectors in (non-portable-SIMD) codegen" [rust#115236](https://github.com/rust-lang/rust/pull/115236)
  - Fixes a significant perf. regression #115212 on stable by disabling ([comment](https://github.com/rust-lang/rust/pull/115236#issuecomment-1694495552))
  > It should be very safe, since it's only one line of product code, and all it does is disable #111999 in more cases, leaving those cases to use the same codepath as in 1.71.
  - seems that the fix is working well on nightly
<!--
/poll Approve beta backport of #115236?
approve
decline
don't know
-->
- :stable: [1.72.1] "Normalize before checking if local is freeze in `deduced_param_attrs`" [rust#114948](https://github.com/rust-lang/rust/pull/114948)
  - Perf. regression linked to this PR (#113372) is nightly-only but this PR also fixes other perf. regressions _on stable_ (#115216, #115207) ([comment](https://github.com/rust-lang/rust/pull/114948#issuecomment-1695408078) and following) 
<!--
/poll Approve stable backport of #114948?
approve
approve but does not justify new dot release
decline
don't know
-->
- :stable: [1.72.1] "Do not forget to pass DWARF fragment information to LLVM." [rust#115139](https://github.com/rust-lang/rust/pull/115139)
  - this issue seems impacting. The fix missed the 1.72 train ([comment](https://github.com/rust-lang/rust/issues/115113#issuecomment-1690728612) so f.e. rustc 1.72.0 will be patched [by Fedora in their 1.72](https://github.com/rust-lang/rust/issues/115113#issuecomment-1688956644))
  - @**apiraino** nominated: seems a good candidate to queue into an 1.72.1
  - _if_ T-release will discuss a 1.72.1
<!--
/poll Approve stable backport of #115139?
approve
approve but does not justify new dot release
decline
don't know
-->
- :stable: [1.72.1] "Stop emitting non-power-of-two vectors in (non-portable-SIMD) codegen" [rust#115236](https://github.com/rust-lang/rust/pull/115236)
<!--
/poll Approve stable backport of #115236?
approve
approve but does not justify new dot release
decline
don't know
-->

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [3 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [32 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [4 P-critical, 38 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE: unexpected initial operand type." [rust#114858](https://github.com/rust-lang/rust/issues/114858)
  - IIUC (@**apiraino**) the issue should be addressed (at least partially) by [rust#115215](https://github.com/rust-lang/rust/pull/115215) ([comment](https://github.com/rust-lang/rust/issues/114858#issuecomment-1697446671))
- "ScalarReplacementOfAggregates causes rustc to emit invalid LLVM debuginfo (and sometimes rustc segfaults)" [rust#115113](https://github.com/rust-lang/rust/issues/115113)
  - Fixed by [rust#115139](https://github.com/rust-lang/rust/pull/115139)
- "Failed assert `2 != 2` after update to LLVM 17" [rust#115385](https://github.com/rust-lang/rust/issues/115385)
  - Not assigned, opened yesterday
  - has eyes on it, ex. [this bisection](https://github.com/rust-lang/rust/issues/115385#issuecomment-1699916149) from @**lqd** 

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "RPIT hidden types can be ill-formed" [rust#114728](https://github.com/rust-lang/rust/issues/114728)
  - UB originated in #94081
  - handled by @**Michael Goulet (compiler-errors)** in [rust#114740](https://github.com/rust-lang/rust/pull/114740)
  - also #114933 by @**aliemjay** 

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- "ICE when building documentation: DefId(20:797 ...) does not have a "object_lifetime_default"" [rust#115179](https://github.com/rust-lang/rust/issues/115179)
  - reported a crate cannot generate documentation anymore, at least since 1.72.0
  - regressed in #107637
  - handled by @_**León Orell Liehr (fmease)** in [rust#115276](https://github.com/rust-lang/rust/pull/115276)

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023--08-29](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-08-29.md)

A fairly quiet week, with improvements exceeding a small scattering of
regressions. Memory usage and artifact size held fairly steady across the week,
with no regressions or improvements.

Triage done by **@simulacrum**.
Revision range: [d4a881e1433cd10e424843353e1f939f5a798f4e..cedbe5c715c1fa9359683c5f108bed2054ac258b](https://perf.rust-lang.org/?start=d4a881e1433cd10e424843353e1f939f5a798f4e&end=cedbe5c715c1fa9359683c5f108bed2054ac258b&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.6%  | [0.3%, 2.2%]   | 6     |
| Regressions (secondary)  | 1.4%  | [0.8%, 1.9%]   | 19    |
| Improvements (primary)   | -1.0% | [-8.0%, -0.3%] | 70    |
| Improvements (secondary) | -1.6% | [-4.2%, -0.2%] | 56    |
| All  (primary)           | -0.8% | [-8.0%, 2.2%]  | 76    |


2 Regressions, 3 Improvements, 2 Mixed; 0 of them in rollups
108 artifact comparisons made in total

#### Regressions

rustdoc: Add lint `redundant_explicit_links` [#113167](https://github.com/rust-lang/rust/pull/113167) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f32ced648191cc67efdf6001585687ad22ed00d2&end=9c699a40cc2680b876c32ee69b402ee34bf7989a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.4%, 0.9%] | 7     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.4%, 0.9%] | 7     |

Small regression in libc compilation, primarily incremental non-doc scenarios.
Unclear cause but sufficiently limited in scope that further investigation is
not warranted.

Fix races conditions with `SyntaxContext` decoding [#115082](https://github.com/rust-lang/rust/pull/115082) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aa5dbee3ebff8703456e8be3b5fb368fc68fe0d1&end=b60e31b673b0d36c50f8e0a3b6f8f077221d983d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.3%] | 4     |
| Regressions (secondary)  | 0.3% | [0.3%, 0.4%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.3%] | 4     |

Some small regressions, but this is a correctness fix for parallel compilation
so warranted. (Parallel compilation is not on here but the fix affects both
non-parallel and parallel scenarios).

#### Improvements

Speed up compilation of `type-system-chess` [#114611](https://github.com/rust-lang/rust/pull/114611) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fe3eae3f310b2f709aa5b39d76a94fc1ea843854&end=a1e1dba9cc40a90409bccb8b19e359c4bdf573e5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.7% | [-1.7%, -1.7%] | 1     |
| Improvements (secondary) | -2.2% | [-4.2%, -0.7%] | 28    |
| All  (primary)           | -1.7% | [-1.7%, -1.7%] | 1     |

> Perf results look good, various small improvements in secondary benchmarks.
> The real driver was the type-system-chess program I mentioned above, where
> the walltime and max-rss changes were both about -85% when I measured them
> locally.

(https://github.com/rust-lang/rust/pull/114611#issuecomment-1670713067)

Add MIR validation for unwind out from nounwind functions + fixes to make validation pass [#113124](https://github.com/rust-lang/rust/pull/113124) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b6ab01a7131481b52131a9bd814dc8084052f643&end=ff55fa30267d7963146c52026b4f4f5396484675&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.1%, -0.5%] | 6     |
| Improvements (secondary) | -0.3% | [-0.6%, -0.2%] | 3     |
| All  (primary)           | -0.7% | [-1.1%, -0.5%] | 6     |


Update x64 Linux host compiler to LLVM 17 [#114297](https://github.com/rust-lang/rust/pull/114297) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9bd60a60cefdddca1f507083dda37e1664b295c5&end=0b31792ef1c15538b07c7b83585dc2fb371c239f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.0%, -0.2%] | 41    |
| Improvements (secondary) | -0.9% | [-1.5%, -0.2%] | 22    |
| All  (primary)           | -0.6% | [-1.0%, -0.2%] | 41    |


#### Mixed

Remove references in VarDebugInfo [#114904](https://github.com/rust-lang/rust/pull/114904) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=07688726805d5db0a4bca445a6651d09708041ea&end=ccc3ac0cae0d901a360c4f93f6d41d87ed459d20&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.3%, 1.3%]   | 10    |
| Regressions (secondary)  | 1.4%  | [1.3%, 1.4%]   | 4     |
| Improvements (primary)   | -1.0% | [-7.3%, -0.3%] | 32    |
| Improvements (secondary) | -2.1% | [-2.4%, -1.6%] | 4     |
| All  (primary)           | -0.6% | [-7.3%, 1.3%]  | 42    |

Fixed a bug in codegen. The regressions appear to be within noise range for the
relevant benchmarks.

Add a new helper to avoid calling io::Error::kind [#115228](https://github.com/rust-lang/rust/pull/115228) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c5035271acc7e140893c1dcdb5a83bf4ddf04593&end=9334ec93541fd6963a3bfa2d2d09e3e33ac93131&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.8%, -0.5%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-0.8%, 0.3%]  | 4     |

Regression is within noise range of the relevant benchmark.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "SIGILL Illegal Instruction on PPC64" [rust#110278](https://github.com/rust-lang/rust/issues/110278)
  - the `xvor` instruction (an AltiVec optimisation) in cargo and rustup-init binaries prevents anything to compile under PPC64 (POWER5+ class) ([comment](https://github.com/rust-lang/rust/issues/110278#issuecomment-1692479965))
  - Issue was reported for Tier 2 family of platform (`powerpc64-unknown-linux-gnu`, discontinued in 2019, only about that particular server model, see [comment](https://github.com/rust-lang/rust/issues/110278#issuecomment-1692479965)) but is also visible in more recent POWER architectures
  - nomination by @**Josh Stone (cuviper)** Do we actually support this/these arch(s)?
  - (issue reporter seems for now to be able to handle the situation by crosscompiling without that AltiVec opt.)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "Rebased: Mark drop calls in landing pads cold instead of noinline" [rust#102099](https://github.com/rust-lang/rust/pull/102099)
  - probably needs a second look from someone ([comment](https://github.com/rust-lang/rust/pull/102099#issuecomment-1671103591))
- "Fix ICE when trying to convert `ConstKind::Error` to usize" [rust#113712](https://github.com/rust-lang/rust/pull/113712)(last review activity: about 46 days ago)
  - cc: @**uwu**
- "rustc_llvm: Link to libkstat on Solaris/SPARC" [rust#114224](https://github.com/rust-lang/rust/pull/114224)(last review activity: about 32 days ago)
  - cc: @**Josh Stone (cuviper)** (probably needs a bit of SPARC/Solaris context)
- "Pretty-print argument-position impl trait to name it." [rust#113955](https://github.com/rust-lang/rust/pull/113955)(last review activity: about 31 days ago)
  - cc @**Waffle Lapkin** 

## Next week's WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**

Next meetings' agenda draft: `https://hackmd.io/Ly5571uCSUSm6Uib-f5K8Q`