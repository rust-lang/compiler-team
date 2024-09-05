---
tags: weekly, rustc
type: docs
note_id: exhhhyzVQj2DC6qLuLFG4g
---

# T-compiler Meeting Agenda 2024-08-29

## Announcements

- Next week stable Rust 1.81 is out
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- None

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 6 months ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 4 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 3 months ago)
  - "Don't track `--emit=` options as part of crate SVH" [compiler-team#769](https://github.com/rust-lang/compiler-team/issues/769) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Don.27t.20track.20.60--emit.3D.60.20options.20as.20part.20of.20.E2.80.A6.20compiler-team.23769)) (last review activity: about 13 days ago)
  - "Opt-in flag for absolute paths in diagnostics" [compiler-team#770](https://github.com/rust-lang/compiler-team/issues/770) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Opt-in.20flag.20for.20absolute.20paths.20in.20diagnos.E2.80.A6.20compiler-team.23770)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Add `--print host-triple` to print host target triple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
- Things in FCP (make sure you're good with it)
  - "`--hint-msrv=version` option so the compiler can take MSRV into account when linting" [compiler-team#772](https://github.com/rust-lang/compiler-team/issues/772) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-C.20msrv.3Dversion.60.20option.20so.20the.20compiler.20.E2.80.A6.20compiler-team.23772))
  - "Don't warn empty branches unreachable for now" [rust#129103](https://github.com/rust-lang/rust/pull/129103)
- Accepted MCPs
  - "Enable `deny(unreachable_pub)` on `rustc_*` crates" [compiler-team#773](https://github.com/rust-lang/compiler-team/issues/773) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23773))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 7 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.
- Other teams finalized FCPs
  - "stabilize const_fn_floating_point_arithmetic" [rust#128596](https://github.com/rust-lang/rust/pull/128596)
  - "Lint at `deny-by-default` against references to `static mut`" [rust#128794](https://github.com/rust-lang/rust/issues/128794)
  - "Non-exhaustive structs may be empty" [rust#128934](https://github.com/rust-lang/rust/pull/128934)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta:"Emit specific message for time<=0.3.35" [rust#129343](https://github.com/rust-lang/rust/pull/129343)
  - Authored by estebank
  - Discussed extensively last week, it's a ad-hoc diag message to hint at the recent libs breakage when using (or pulling) the `time` crate
  - Note: this patch injects a [ticking timebomb](https://github.com/rust-lang/rust/pull/129343/files#diff-bdfd572a68289bb48bc930d5e66952517d3b87b9cfe3a498b3a326de00edd9fdR635-R640) that will trigger a compile error on 1.89 when we - hopefully - assume the ecosystem has upgraded the dependency on that crate
<!--
/poll Approve beta backport of #129343?
approve
don't know
-->
- :beta:"Use a reduced recursion limit in the MIR inliner's cycle breaker" [rust#129714](https://github.com/rust-lang/rust/pull/129714)
  - Authored by saethlin
  - fixes a p-high regression from a recent crater run (though a bit flaky to reproduce)
  - as @**Ben Kimock (Saethlin)** [points out](https://github.com/rust-lang/rust/pull/129714#issue-2493149084), "this probably papers over #128887, but primarily I'm opening this PR because multiple compiler people have thought about making this change which probably means it's a good idea."
<!--
/poll Approve beta backport of #129714?
approve
deny
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 t-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [66 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 6 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "regression: adding a def'n for node-id NodeId(597) and def kind AnonConst but a previous def'n exists" [rust#128901](https://github.com/rust-lang/rust/issues/128901)
  - Solved by #128760 (included in #129033, merged straight in beta)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: overflow evaluating the requirement" [rust#128887](https://github.com/rust-lang/rust/issues/128887)
  - solved by #129714 (beta backport above)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

Will be posted later today

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Remove `HasLocalDecls`." [rust#129681](https://github.com/rust-lang/rust/pull/129681)
  - T-compiler is called to judge if this a useful change (a counter-argument is expressed f.e. by @**Michael (compiler-errors) Goulet** in [comment](https://github.com/rust-lang/rust/pull/129681#pullrequestreview-2266247994))
- "Tracking issue for release notes of #128034: exhaustiveness: Explain why a given pattern is considered unreachable" [rust#129574](https://github.com/rust-lang/rust/issues/129574)
- "Tracking issue for release notes of #125834: treat `&raw (const|mut) UNSAFE_STATIC` implied deref as safe" [rust#129578](https://github.com/rust-lang/rust/issues/129578)
  - These new tracking issues are automatically created by a new internal tool geared at improving the release notes workflow.
  - I am unsure though if the `I-compiler-nominated` is really useful here at this time (see @_**apiraino** comments [here](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/release.20note.20changes/near/465964613)).
  - How this could work: PR author adds some verbiage for the release notes + blog post. Around release date `T-*` can review if the release notes of changes relevant to them are complete and clear.
  - Opinions?


[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Consistently use the highest bit of vector masks when converting to i1 vectors" [rust#104693](https://github.com/rust-lang/rust/pull/104693)
  - cc: @**Wesley Wiser** (though not 100% sure)
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733) (last review activity: 8 months ago)
  - 29-08-2024 cc: @**Esteban Küber**
- "Apply dllimport in ThinLTO for -Z dylib-lto" [rust#122790](https://github.com/rust-lang/rust/pull/122790)
  - cc @**Wesley Wiser**
- "Issue 83060 fix" [rust#119798](https://github.com/rust-lang/rust/pull/119798) (last review activity: 4 months ago)
  - cc @**Wesley Wiser**

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/68SAwhUVRmC5oPTrsheiBg)
