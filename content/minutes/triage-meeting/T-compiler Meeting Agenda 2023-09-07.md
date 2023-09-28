---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-09-07

## Announcements

- Rust stable 1.72.1 is planned for **Sept. 14th** ([Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/1.2E72.2E1.20.3F/near/388550117))
- [Compiler Team Steering Meeting - Review of open T-compiler RFCs](https://www.google.com/calendar/event?eid=MW0xcDhpc3Y0bXE0NTRlZ2JiMWhmam83NDEgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) ([issue](https://github.com/rust-lang/compiler-team/issues/665)) at <time:2023-09-08T10:00:00-04:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA5MTFUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-11T10:00:00-04:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzA5MTFUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-11T11:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly: Sprint goal work session](https://www.google.com/calendar/event?eid=ajVtNGowYjlzdDNhM2VwZG9vNjg4OTlzNDBfMjAyMzA5MDdUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-07T12:00:00-04:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA5MDdUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-07T16:00:00-04:00>
- [wg-rls-2.0 steering meeting](https://www.google.com/calendar/event?eid=N2NxOWxzYWYxb3NicWNzbGsxYzdxcG9ydTJfMjAyMzA5MTFUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-09-11T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Allow overriding default codegen backend on a per-target basis" [compiler-team#670](https://github.com/rust-lang/compiler-team/issues/670)
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672)
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634) (last review activity: 3 months ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) (last review activity: 3 months ago)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) (last review activity: 2 months ago)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642) (last review activity: about 5 days ago)
  - "Add illumos Tier3 targets" [compiler-team#644](https://github.com/rust-lang/compiler-team/issues/644) (last review activity: about 44 days ago)
  - "Promote loongarch64-unknown-none* to Tier 2" [compiler-team#664](https://github.com/rust-lang/compiler-team/issues/664)(last review activity: about 20 days ago)
  - "Match the behavior of `strip` and `split-debuginfo` across platforms" [compiler-team#669](https://github.com/rust-lang/compiler-team/issues/669)(last review activity: about 2 days ago)
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler_team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - "stabilize combining +bundle and +whole-archive link modifiers" [rust#113301](https://github.com/rust-lang/rust/pull/113301)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
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
  - "Create a binary-size working group" [compiler_team#671](https://github.com/rust-lang/compiler-team/issues/671) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20binary-size.20working.20group.20compiler-team.23671))
  - "Stabilize `PATH` option for `--print KIND=PATH`" [rust#114183](https://github.com/rust-lang/rust/pull/114183)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([latest checkin](https://hackmd.io/0I_xYjKMSc6lYT655FpWbg#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.73.0-beta.4] "fix version for abi_thiscall to 1.73.0, which was forgotten to change when stabilized and (later) moved to beta" [rust#115446](https://github.com/rust-lang/rust/pull/115446)
  - updates the `abi_thiscall` version
<!--
/poll Approve beta backport of #115446?
approve
decline
don't know
-->
- :beta: [1.73.0-beta.4] "Don't require `Drop` for `[PhantomData<T>; N]` where `N` and `T` are generic, if `T` requires `Drop`" [rust#115527](https://github.com/rust-lang/rust/pull/115527)
  - patch authored by @**oli**
  - fixes #115403 and #115410, probably `P-high` regressions
<!--
/poll Approve beta backport of #115527?
approve
decline
don't know
-->
- :beta: [1.73.0-beta.4] "implied bounds: do not ICE on unconstrained region vars" [rust#115559](https://github.com/rust-lang/rust/pull/115559)
  - patch authored by @**lcnr** 
  - fixes #112832 (unclear the priority evaluation, [comment](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23112832.20ICE.3A.20assertion.20failed.3A.20!ty.2Eneeds_infer.28.29))
  - also nominated for stable backport
<!--
/poll Approve beta backport of #115559?
approve
decline
don't know
-->
- :beta: "Remove assert that checks type equality" [rust#115215](https://github.com/rust-lang/rust/pull/115215)
  - still open and being reviewed. nominated by @**apiraino** since already candidate for backports ([comment](https://github.com/rust-lang/rust/pull/115215#issuecomment-1701177094))
<!--
/poll Approve beta backport of #115215?
approve
decline
don't know
-->
- :stable: [1.72.1] "implied bounds: do not ICE on unconstrained region vars" [rust#115559](https://github.com/rust-lang/rust/pull/115559)
<!--
/poll Approve stable backport of #115559?
approve
approve but does not justify new dot release
decline
don't know
-->


## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Add new simpler and more explicit syntax for check-cfg" [rust#111072](https://github.com/rust-lang/rust/pull/111072)
  - MCP [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) is not seconded (not a lot of discussion either)
  - This PR probably needs a look from someone other than @**Urgau** / @**Vadim Petrochenkov**
  - issue was discussed a while ago [in a prev. meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-07-13/near/374949906)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [32 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 39 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

Note: Rust stable 1.72.1 is planned for **Sept. 14th**

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE: unexpected initial operand type." [rust#114858](https://github.com/rust-lang/rust/issues/114858)
  - Originated in #113108 ([comment](https://github.com/rust-lang/rust/issues/114858#issuecomment-1697446671))
  - Should be addressed by #115215, authored by @**Onur (onur-ozkan)**, being reviewed by @**Michael Goulet (compiler-errors)** (PR likely candidate for a backport)
- "ScalarReplacementOfAggregates causes rustc to emit invalid LLVM debuginfo (and sometimes rustc segfaults)" [rust#115113](https://github.com/rust-lang/rust/issues/115113)
  - addressed in #115113, just waiting for the next beta ([comment](https://github.com/rust-lang/rust/issues/115113#issuecomment-1694776268))
- "Failed assert `2 != 2` after update to LLVM 17" [rust#115385](https://github.com/rust-lang/rust/issues/115385)
  - regressed in the latest LLVM17 upgrade
  - fixed by upstream [llvm-project#65195](https://github.com/llvm/llvm-project/issues/65195) ([comment](https://github.com/rust-lang/rust/issues/115385#issuecomment-1703683749))

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "RPIT hidden types can be ill-formed" [rust#114728](https://github.com/rust-lang/rust/issues/114728)
  - hits some real world crates ([comment](https://github.com/rust-lang/rust/pull/114933#issuecomment-1695739605))
  - should be addressed by [#114470](https://github.com/rust-lang/rust/pull/114740) by @**Michael Goulet (compiler-errors)**, subject to [RFC t-type consensus](https://github.com/rust-lang/rust/pull/114740#issuecomment-1677961830)
  - a parallel effort to fix in [#114933](https://github.com/rust-lang/rust/pull/114933) by @**aliemjay**, being reviewed by @**lcnr** (suggests waiting for this PR, [comment](https://github.com/rust-lang/rust/pull/114740#issuecomment-1684422384))

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-09-05](https://github.com/rust-lang/rustc-perf/blob/master/triage/20r23-09-05.md)

A lot of spurious noise this week from a few benchmarks (bitmaps-3.1.0, libc,
and even cargo-0.60.0 at a few points). Beyond that, we had a few small
improvements associated with the trait system and with parallel-rustc.

Triage done by **@pnkfelix**.
Revision range: [cedbe5c7..15e52b05](https://perf.rust-lang.org/?start=cedbe5c715c1fa9359683c5f108bed2054ac258b&end=15e52b05ca8f63e0da27c808680388717e5b997e&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 1.2%]    | 11    |
| Regressions (secondary)  | 1.0%  | [0.2%, 2.0%]    | 40    |
| Improvements (primary)   | -1.9% | [-10.2%, -0.3%] | 69    |
| Improvements (secondary) | -1.5% | [-3.7%, -0.4%]  | 26    |
| All  (primary)           | -1.5% | [-10.2%, 1.2%]  | 80    |


4 Regressions, 7 Improvements, 8 Mixed; 2 of them in rollups
66 artifact comparisons made in total

#### Regressions

Adapt table sizes to the contents, accommodating u64 rmeta offsets [#113542](https://github.com/rust-lang/rust/pull/113542) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6e8f677c6a20bee7025f6c0a93a7dc9daced92bc&end=d64c84562f634efde5eb5506942b6af293d8358d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.2%, 1.2%] | 11    |
| Regressions (secondary)  | 0.8% | [0.2%, 1.3%] | 26    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.2%, 1.2%] | 11    |

* already marked as triaged.

Use conditional synchronization for Lock [#111713](https://github.com/rust-lang/rust/pull/111713) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7659abc63d33223fa366c8781c81698e28a21e6c&end=61efe9d2981b87ec7f2800d62f98c594de151713&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 2.3% | [2.3%, 2.3%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 2.3% | [2.3%, 2.3%] | 1     |

* the measured regression appears spurious
* marked as triaged

update Miri [#115496](https://github.com/rust-lang/rust/pull/115496) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7cc5ac267f536ee2cf2f38961d9db8304a419d5a&end=b89d7d6882532686fd90a89cec1a0fd386f0ade3&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 4     |
| Regressions (secondary)  | 0.5% | [0.3%, 0.6%] | 5     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.4%] | 4     |

* believe to be spurious, marking as triaged


Rollup of 5 pull requests [#115553](https://github.com/rust-lang/rust/pull/115553) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=626a6ab93fafd01b37b1e26c96cb6eec0d39f3eb&end=8cfaf70c320297dd1831a12351fcfeab7a231328&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.7%, 0.8%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.7%, 0.8%] | 6     |

* believe to be spurious, marking as triaged

#### Improvements

Don't record spans for predicates in coherence [#115392](https://github.com/rust-lang/rust/pull/115392) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b1b244da6527cf2ba36e88d02275f4c64a0c90d8&end=e51c5ea16f84ef811bf0aecbdc0ac48821d52cc9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-2.5%, -0.3%] | 18    |
| Improvements (secondary) | -0.8% | [-1.0%, -0.2%] | 8     |
| All  (primary)           | -1.1% | [-2.5%, -0.3%] | 18    |

* undoes regression introduced by [PR 115392](https://github.com/rust-lang/rust/pull/115392)

Use `OnceLock` for `SingleCache` [#115422](https://github.com/rust-lang/rust/pull/115422) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f9ba43ce147707fb90d038983789d8e57451eb6d&end=9dc11a13fa848c1b09b7248c540528190dcb79c5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 2     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.3%] | 8     |
| All  (primary)           | -0.4% | [-0.4%, -0.4%] | 2     |


Fall through when resolving elided assoc const lifetimes [#115429](https://github.com/rust-lang/rust/pull/115429) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=585bb5e68d85c1e4f32da3e2499343372626a436&end=9229b1eab44046253971445be47423ef779b178f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.5%, -0.6%] | 7     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.0% | [-1.5%, -0.6%] | 7     |


Don't manually compute param indices when adding implicit `Sized` and `ConstParamHasTy` [#115361](https://github.com/rust-lang/rust/pull/115361) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b89d7d6882532686fd90a89cec1a0fd386f0ade3&end=53a03978a7402d20ce8254fa1493929d67e01d07&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 5     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.4%] | 2     |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 5     |


Encode DepKind as u16 [#115391](https://github.com/rust-lang/rust/pull/115391) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=abfc6c44381fb033c6b3b0a6bfb804a799f39afd&end=b14b0745ad4913a21f00795738c047d0107dff4a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 5     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 3     |
| All  (primary)           | -0.3% | [-0.3%, -0.3%] | 5     |


Move RawOsError defination to sys [#115493](https://github.com/rust-lang/rust/pull/115493) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b14b0745ad4913a21f00795738c047d0107dff4a&end=ce798a52c30528366764a5993783b4e9ccfa46ee&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.6%, -0.6%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.6% | [-0.6%, -0.6%] | 3     |

* (I suspect this is spurious)

read_via_copy: don't prematurely optimize away the read [#115531](https://github.com/rust-lang/rust/pull/115531) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9c609ae158aab27f1e7df446de6f2c09414012a9&end=626a6ab93fafd01b37b1e26c96cb6eec0d39f3eb&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 5     |

* (I suspect this is spurious)

#### Mixed

interpret: fix projecting into an unsized field of a local [#114483](https://github.com/rust-lang/rust/pull/114483) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=61efe9d2981b87ec7f2800d62f98c594de151713&end=26089ba0a2d9dab8381ccb0d7b99e704bc5cb3ed&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.0%  | [1.9%, 2.1%]   | 6     |
| Improvements (primary)   | -2.2% | [-2.2%, -2.2%] | 1     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 3     |
| All  (primary)           | -2.2% | [-2.2%, -2.2%] | 1     |

* Ralf notes: "Regressions only affect our ctfe stress test, so it's likely some exaggerated consequence of a tiny change."
* marked as triaged

Lower `Or` pattern without allocating place [#111752](https://github.com/rust-lang/rust/pull/111752) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d6b4d35d5e94f6a1577e0e645fb23afc84615a6c&end=f4555ef5e14e8f0630fc5ad4e8efaef56d4acd4b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.0%]   | 8     |
| Regressions (secondary)  | 0.9%  | [0.5%, 1.6%]   | 21    |
| Improvements (primary)   | -1.0% | [-3.7%, -0.3%] | 10    |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 3     |
| All  (primary)           | -0.3% | [-3.7%, 1.0%]  | 18    |

* nnethercote notes: "Performance-wise, icounts/cycles/wall-times have a mix of wins and losses that more or less balance out. But binary size has lots of wins, which is nice."
* marked as triaged

Skip rendering metadata strings from include_str!/include_bytes! [#115286](https://github.com/rust-lang/rust/pull/115286) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9dc11a13fa848c1b09b7248c540528190dcb79c5&end=1fb6947abc68683db05f837f07531a2f7d7ed8b3&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]    | 1     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.7%]    | 6     |
| Improvements (primary)   | -2.9% | [-10.3%, -0.3%] | 28    |
| Improvements (secondary) | -2.6% | [-3.7%, -1.7%]  | 9     |
| All  (primary)           | -2.8% | [-10.3%, 0.3%]  | 29    |

* saethlin notes: "Regressions look like recovery from a spurious improvement in the previous run, and are way less significant than the improvements."
* already marked as triaged

bootstrap: use git merge-base for LLVM CI download logic [#115409](https://github.com/rust-lang/rust/pull/115409) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ad8f601ca2ba6186de6e1b2b5f46f47e18013961&end=585bb5e68d85c1e4f32da3e2499343372626a436&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.6%, 1.5%]   | 7     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 2     |
| All  (primary)           | 0.8%  | [-0.4%, 1.5%]  | 8     |


* this is a collection of spurious regressions to bitmaps-3.1.0
    * see e.g. [this graph](https://perf.rust-lang.org/index.html?start=2023-08-31&end=2023-09-05&benchmark=bitmaps-3.1.0&profile=check&scenario=full&stat=instructions%3Au&kind=raw) and note the blip.
* marked as triaged

Add note on non-exhaustiveness when matching on str and nested non-exhaustive enums [#115270](https://github.com/rust-lang/rust/pull/115270) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2a1af898b2cb535a45cefe67acf9d023eff16b27&end=21305f4d5f32bcbc97f3b8e66dc23b03f3d948c4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.8%, 1.4%]   | 6     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 1     |
| All  (primary)           | 1.1%  | [0.8%, 1.4%]   | 6     |

* seems like continued spurious noise on bitmaps-3.1.0
* marked as triaged

Rollup of 5 pull requests [#115518](https://github.com/rust-lang/rust/pull/115518) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=21305f4d5f32bcbc97f3b8e66dc23b03f3d948c4&end=58e967a9cc3bd39122e8cb728e8cec6e3a4eeef2&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 7.1%  | [0.7%, 13.6%]  | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-1.5%, -0.7%] | 7     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.8%  | [-1.5%, 13.6%] | 9     |

* 13.6% regression to cargo-0.60.0 seems spurious (!), since it immediately returned to normal in #115491
* marked as triaged

Outline panicking code for `RefCell::borrow` and `RefCell::borrow_mut` [#115491](https://github.com/rust-lang/rust/pull/115491) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=58e967a9cc3bd39122e8cb728e8cec6e3a4eeef2&end=abfc6c44381fb033c6b3b0a6bfb804a799f39afd&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.6%, 1.5%]    | 8     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -6.3% | [-12.0%, -0.6%] | 2     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.5%]  | 4     |
| All  (primary)           | -0.4% | [-12.0%, 1.5%]  | 10    |

* as lqd notes: "bitmaps and cargo opt incr-unchanged kinda look noisy atm"
* marked as triaged

Do not require associated types with Self: Sized to uphold bounds when confirming object candidate [#115467](https://github.com/rust-lang/rust/pull/115467) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=04374cd74264b9d3b7d2d3df08ae38df8af4d020&end=9c609ae158aab27f1e7df446de6f2c09414012a9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.2%, -0.8%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.6% | [-1.2%, 0.6%]  | 7     |

* all these changes (for better or for worse) look like yet more spurious noise.
* marked as triaged

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "SIGILL Illegal Instruction on PPC64" [rust#110278](https://github.com/rust-lang/rust/issues/110278)
  - from last week ([notes](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-08-31/near/388344933))
  - the `xvor` instruction (an AltiVec optimisation) in cargo and rustup-init binaries prevents anything to compile under PPC64 on IBM hardware (9406-520) and similar POWER5 machines ([comment](https://github.com/rust-lang/rust/issues/110278#issuecomment-1703346118)), that model being discontinued in 2019
  - Platform is "Tier 2 with Host tools" (`powerpc64-unknown-linux-gnu`)
  - nomination by @**Josh Stone (cuviper)**: do we want to reduce the default CPU target to something that supports that very old model?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Rebased: Mark drop calls in landing pads cold instead of noinline" [rust#102099](https://github.com/rust-lang/rust/pull/102099)
  - probably needs a second look from someone with more MSVC expertise ([comment](https://github.com/rust-lang/rust/pull/102099#issuecomment-1671093686))
- "Fix ICE when trying to convert `ConstKind::Error` to usize" [rust#113712](https://github.com/rust-lang/rust/pull/113712)(last review activity: about 46 days ago)
  - cc: @**uwu**
- "Pretty-print argument-position impl trait to name it." [rust#113955](https://github.com/rust-lang/rust/pull/113955)(last review activity: about 31 days ago)
  - cc @**Waffle Lapkin** 

## Next week's WG checkins

- Impl Trait initiative by @**oli**
- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**

Next meetings' agenda draft: https://hackmd.io/FuBR9iC1T4ukhQ8QPFod3Q
