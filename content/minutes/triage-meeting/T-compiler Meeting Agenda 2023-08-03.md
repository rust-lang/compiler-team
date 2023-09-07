---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-08-03

## Announcements

- Today release of rust stable 1.71.1
- [We're rolling the T-compiler leads!](https://blog.rust-lang.org/inside-rust/2023/08/02/rotating-compiler-leads.html). Congrats @**davidtwco** !
- @**apiraino** signal boot for Zulip topic at [#**t-compiler>Refreshing WG checkins in T-compiler triage meeting** ](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Refreshing.20WG.20checkins.20in.20T-compiler.20triage.20meeting) about refreshing the WG checkins rotation list, thanks!
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA4MDdUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-07T10:00:00-04:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzA4MDdUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-07T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
    - "Add `builtin:$path` option to the `-L` flag" [compiler_team#659](https://github.com/rust-lang/compiler-team/issues/659) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60builtin.3A.24path.60.20option.20to.20the.20.60-L.60.20fl.E2.80.A6.20compiler-team.23659))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
    - "Cell Broadband Engine SPU support" [compiler_team#614](https://github.com/rust-lang/compiler-team/issues/614) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Cell.20Broadband.20Engine.20SPU.20support.20compiler-team.23614))
    - "Add support for Zephyr OS" [compiler_team#629](https://github.com/rust-lang/compiler-team/issues/629) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20Zephyr.20OS.20compiler-team.23629))
    - "Consistently use \"region\" terminology in later stages of the compiler" [compiler_team#634](https://github.com/rust-lang/compiler-team/issues/634) [Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Consistently.20use.20.22region.22.20terminology.20in.20.E2.80.A6.20compiler-team.23634)
    - "Add a new `--build-id` flag to rustc" [compiler_team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - "Add support for visionOS targets" [compiler_team#642](https://github.com/rust-lang/compiler-team/issues/642) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20visionOS.20targets.20compiler-team.23642))
    - "Add illumos Tier3 targets" [compiler_team#644](https://github.com/rust-lang/compiler-team/issues/644) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20illumos.20Tier3.20targets.20compiler-team.23644))
    - "Migrate away from u32 as an offset/length type" [compiler_team#647](https://github.com/rust-lang/compiler-team/issues/647) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Migrate.20away.20from.20u32.20as.20an.20offset.2Flength.E2.80.A6.20compiler-team.23647))
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler_team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
  - "Stabilize `PATH` option for `--print KIND=PATH`" [rust#114183](https://github.com/rust-lang/rust/pull/114183)
- Things in FCP (make sure you're good with it)
    - "Revise error code documentation standard" [compiler_team#615](https://github.com/rust-lang/compiler-team/issues/615) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Revise.20error.20code.20documentation.20standard.20compiler-team.23615))
    - "Add a blanket flag to enable/disable codegen UB checks" [compiler_team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
    - "Report all lints, even if other errors already occurred." [compiler_team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
    - "[MCP] proposing a macros working group" [compiler_team#637](https://github.com/rust-lang/compiler-team/issues/637) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.5BMCP.5D.20proposing.20a.20macros.20woriking.20group.20compiler-team.23637))
    - "Disallow non-identifier-valid --extern crate names " [compiler_team#650](https://github.com/rust-lang/compiler-team/issues/650) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Disallow.20non-identifier-valid.20--extern.20cr.E2.80.A6.20compiler-team.23650))
    - "Windows support schedule 2024" [compiler_team#651](https://github.com/rust-lang/compiler-team/issues/651) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Windows.20support.20schedule.202024.20compiler-team.23651))
    - "New tier-3 targets for TEEOS" [compiler_team#652](https://github.com/rust-lang/compiler-team/issues/652) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20tier-3.20targets.20for.20TEEOS.20compiler-team.23652))
    - "Add option to pass environment variables" [compiler_team#653](https://github.com/rust-lang/compiler-team/issues/653) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20pass.20environment.20variables.20compiler-team.23653))
    - "Expose default_hidden_visibility as a rustc command line option" [compiler_team#656](https://github.com/rust-lang/compiler-team/issues/656) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Expose.20default_hidden_visibility.20as.20a.20rus.E2.80.A6.20compiler-team.23656))
    - "Add tidy rule against `issue-[0-9]+.rs` tests" [compiler_team#658](https://github.com/rust-lang/compiler-team/issues/658) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20tidy.20rule.20against.20.60issue-.5B0-9.5D.2B.2Ers.60.20t.E2.80.A6.20compiler-team.23658))
- Accepted MCPs
    - "Use `FieldIdx` all the way down" [compiler_team#639](https://github.com/rust-lang/compiler-team/issues/639) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60FieldIdx.60.20all.20the.20way.20down.20compiler-team.23639))
    - "Add support for the riscv64-linux-android target" [compiler_team#640](https://github.com/rust-lang/compiler-team/issues/640) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20the.20riscv64-linux-android.E2.80.A6.20compiler-team.23640))
    - "Implement alignment and size niches for references" [compiler_team#641](https://github.com/rust-lang/compiler-team/issues/641) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Implement.20alignment.20and.20size.20niches.20for.20r.E2.80.A6.20compiler-team.23641))
    - "Changes to StatementKind::Coverage" [compiler_team#645](https://github.com/rust-lang/compiler-team/issues/645) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Changes.20to.20StatementKind.3A.3ACoverage.20compiler-team.23645))
    - "KRabcake SANitization (KRSAN) mode" [compiler_team#646](https://github.com/rust-lang/compiler-team/issues/646) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Krabcake.20SANitization.20.28KSAN.29.20mode.20compiler-team.23646))
    - "Drop MIPS to tier 3" [compiler_team#648](https://github.com/rust-lang/compiler-team/issues/648) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Drop.20MIPS.20to.20tier.203.20compiler-team.23648))
    - "Amend target policy to require codegen support" [compiler_team#655](https://github.com/rust-lang/compiler-team/issues/655) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Amend.20target.20policy.20to.20require.20codegen.20su.E2.80.A6.20compiler-team.23655))
- Finalized FCPs (disposition merge)
  - "Add documentation on v0 symbol mangling." [rust#97571](https://github.com/rust-lang/rust/pull/97571)
  - "make `noop_method_call` warn by default" [rust#111916](https://github.com/rust-lang/rust/pull/111916)
  - "Support interpolated block for `try` and `async`" [rust#112953](https://github.com/rust-lang/rust/pull/112953)
  - "Infer type in irrefutable slice patterns with fixed length as array " [rust#113199](https://github.com/rust-lang/rust/pull/113199)
  - "discard default auto trait impls if explicit ones exist (rebase of #85048)" [rust#113312](https://github.com/rust-lang/rust/pull/113312)

### WG checkins

- @_*WG-rls2.0* by @**Lukas Wirth** ([previous checkin](https://hackmd.io/XBOdBRLXR7qFfq526W7gXg#WG-checkins))
  > Nothing to report

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/pdK-8nD2TySu6dw2N7cbgw#WG-checkins))
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.72.0] "Rename and allow `cast_ref_to_mut` lint" [rust#113422](https://github.com/rust-lang/rust/pull/113422)
  - Part of the work on #111567 (uplifting the `clippy::cast_ref_to_mut` lint into rustc, [comment](https://github.com/rust-lang/rust/pull/111567#issue-1709013194))
  - Renames the lint `cast_ref_to_mut` -> `invalid_reference_casting`
  - Temporarily change the default from `deny-by-default` to `allow-by-default` until #112431 is merged
  - `I-lang-nominated` and a T-lang discussion seems to not have happened but @**scottmcm** agrees ([comment](https://github.com/rust-lang/rust/pull/113422#issuecomment-1635271973))
  - Nominated by @**nils (Nilstrieb)** ([comment](https://github.com/rust-lang/rust/pull/113422#issuecomment-1655678962))
<!--
/poll Approve beta backport of #113422?
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

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [54 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [26 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "the trait bound `&[u8]: std::convert::From<&[_; 0]>` is not satisfied" [rust#113238](https://github.com/rust-lang/rust/issues/113238)
  - _probably_ `P-high`, the beta regression breaks a few crates
  - root cause seems to be #106704. As a temporary hotfix to avoid this hitting stable, downgraded the crate `addr2line` in the `std` ([comment](https://github.com/rust-lang/rust/issues/113238#issuecomment-1627338024)) in [1dcfc26](https://github.com/rust-lang/rust/commit/1dcfc263f3a5520bfaa3ca57a730afed692ad051). A durable solution needs to be implemented ([comment](https://github.com/rust-lang/rust/issues/113238#issuecomment-1616744484))

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

N/A this week

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "MSVC and rustc disagree on minimum stack alignment on x86 Windows" [rust#112480](https://github.com/rust-lang/rust/issues/112480)
  - Discussed in the past meetings ([here](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-07-13/near/374961199) and [here](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-07-20/near/377002646)), left nominated for further discussion (maybe in a separate session)
- ""Legacy" tier 2 targets have misplaced or absent maintainer docs" [rust#113739](https://github.com/rust-lang/rust/issues/113739)
  - Discussed in the past meeting ([here](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-07-20/near/377013350)), left nominated for further discussion (maybe in a separate session)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Tait must be constrained if in sig" [rust#113169](https://github.com/rust-lang/rust/pull/113169) (last review activity: about 27 days ago)
  - cc @**oli** (appointed as self reviewer)
- "Report allocation errors as panics, second attempt" [rust#112331](https://github.com/rust-lang/rust/pull/112331) (last review activity: about 26 days ago)
  - cc: @**bjorn3** (T-libs also in the review loop)
- "riscv: Make ELF flags RVE-aware" [rust#112567](https://github.com/rust-lang/rust/pull/112567)
  - @**Nikita Popov** can you have a look when you have a sec.?
- "Add `Future::map`"[rust#111347](https://github.com/rust-lang/rust/pull/111347)
  - `I-async-nominated`: anyone from the WG here with news?

## Next week's WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry**
- Generic Associated Types initiative by @**Jack Huey**

Next meetings' agenda draft: https://hackmd.io/wkRqXjx5RGGJlHIBuCyEwQ
