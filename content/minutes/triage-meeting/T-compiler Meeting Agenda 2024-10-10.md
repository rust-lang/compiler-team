---
tags: weekly, rustc
type: docs
note_id: AW9c7Zs-QIih_Wbteo1R2g
---

# T-compiler Meeting Agenda 2024-10-10

## Announcements

- Next week Rust 1.82 is out
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-10-10T22:00:00+01:00>
- wg-rust-analyzer steering meeting on Zulip (https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/Steering.20meeting) <time:2024-10-11T17:00:00+01:00>
- wg-macros triage meeting Zulip (https://rust-lang.zulipchat.com/#narrow/stream/410876-wg-macros.2Ftriage) <time:2024-10-11T18:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785))
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787))
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789))
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790))
  - "Promote tier 3 `arm64e-apple-ios` target to tier 2" [compiler-team#793](https://github.com/rust-lang/compiler-team/issues/793) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20.60arm64e-apple-ios.60.20target.20.E2.80.A6.20compiler-team.23793))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 21 days ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 9 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 34 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Add `--print host-triple` to print host target triple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
- Things in FCP (make sure you're good with it)
  - "Wasm minimal features target" [compiler-team#791](https://github.com/rust-lang/compiler-team/issues/791) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Wasm.20minimal.20features.20target.20compiler-team.23791))
  - "Check ABI target compatibility for function pointers" [rust#128784](https://github.com/rust-lang/rust/pull/128784)
  - "Implement edition 2024 match ergonomics restrictions" [rust#131381](https://github.com/rust-lang/rust/pull/131381)
- Accepted MCPs
  - "Add a new `--orchestrator-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716))
  - "Don't track `--emit=` options as part of crate SVH" [compiler-team#769](https://github.com/rust-lang/compiler-team/issues/769) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Don.27t.20track.20.60--emit.3D.60.20options.20as.20part.20of.20.E2.80.A6.20compiler-team.23769))
  - "`--hint-msrv=version` option so the compiler can take MSRV into account when linting" [compiler-team#772](https://github.com/rust-lang/compiler-team/issues/772) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-C.20msrv.3Dversion.60.20option.20so.20the.20compiler.20.E2.80.A6.20compiler-team.23772))
  - "mark some target features as 'forbidden' so they cannot be (un)set with -Ctarget-feature" [compiler-team#780](https://github.com/rust-lang/compiler-team/issues/780) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/mark.20some.20target.20features.20as.20.27forbidden.27.20.E2.80.A6.20compiler-team.23780))
  - "-Z default-visibility option" [compiler-team#782](https://github.com/rust-lang/compiler-team/issues/782) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/-Z.20default-visibility.20option.20compiler-team.23782))
  - "Test rule annotations" [compiler-team#783](https://github.com/rust-lang/compiler-team/issues/783) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Test.20rule.20annotations.20compiler-team.23783))
  - "New Tier-3 target for OpenHarmony on LoongArch64" [compiler-team#784](https://github.com/rust-lang/compiler-team/issues/784) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.20for.20OpenHarmony.20on.20Loon.E2.80.A6.20compiler-team.23784))
  - "Support tests to use `minicore` std/core prelude stubs" [compiler-team#786](https://github.com/rust-lang/compiler-team/issues/786) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20tests.20to.20use.20.60minicore.60.20std.2Fcore.20.E2.80.A6.20compiler-team.23786))
  - "Remove the `run-pass-valgrind` test suite" [compiler-team#792](https://github.com/rust-lang/compiler-team/issues/792) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20the.20.60run-pass-valgrind.60.20test.20suite.20compiler-team.23792))
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "atomics: allow atomic and non-atomic reads to race" [rust#128778](https://github.com/rust-lang/rust/pull/128778)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "Make deprecated_cfg_attr_crate_type_name a hard error" [rust#129670](https://github.com/rust-lang/rust/pull/129670)
  - "Stabilize expr_2021 fragment specifier in all editions" [rust#129972](https://github.com/rust-lang/rust/pull/129972)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta:"Disable jump threading `UnOp::Not` for non-bool" [rust#131201](https://github.com/rust-lang/rust/pull/131201)
  - Authored by compiler-errors
  - Fixes an unsoundness #131195 (`-Zmir-opt-level=2` miscompiles) and maybe also #131419
  - assuming the issue reproduces on beta and stable since this patch is labelled with both backport requests (didn't find a clear indication of that in #131195) cc @**Michael Goulet (compiler-errors)**
<!--
/poll Approve beta backport of #131201?
approve
don't know
-->
- :beta:"Update LLVM submodule" [rust#131448](https://github.com/rust-lang/rust/pull/131448)
  - Authored by DianQK
  - on target `thumbv7em-none-eabihf` (Tier 2 w/o host tools, see #131164), the `defmt` crate (supposedly widely used on that target) does not compile anymore.
  - But context seems to be a little less common that that (see [comment](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23131164.20non-pub.20function.20no.20longer.20compiled.20in.20debug.20profil.E2.80.A6/near/475868602) on Zulip)
  - Patchset upstream is [here](https://github.com/rust-lang/llvm-project/compare/dd46457da782554454106d48ecd4f6b4c2f9af73...3a17f74904a74565c54cfac0d67026362d038698), also contains a few other changes
  - This fix is still being worked on (some CI issues).
<!--
/poll Approve beta backport of #131448?
approve
don't know
-->
- :stable:"Disable jump threading `UnOp::Not` for non-bool" [rust#131201](https://github.com/rust-lang/rust/pull/131201)
  - Authored by compiler-errors
  - see above
<!--
/poll Approve stable backport of #131201?
approve
approve but does not justify new dot release
decline
don't know
-->

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Add x86 specific hotpatch flag to rustc" [rust#124966](https://github.com/rust-lang/rust/pull/124966)
  - This is waiting on [MCP#745](https://github.com/rust-lang/compiler-team/issues/745), in case anyone has time to look at that (Zulip discussion<https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Add.20Hotpatch.20flag.20compiler-team.23745>)
- "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - @_*petrochenkov* opened RFC to merge this ([link](https://github.com/rust-lang/rust/pull/131080#issuecomment-2403261016))
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [71 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [43 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 5 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 3 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "non-pub function no longer compiled in debug profile, causing link errors on thumbv7em-none-eabihf with defmt" [rust#131164](https://github.com/rust-lang/rust/issues/131164)
  - See backport of #131448

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-10-08](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-10-08.md)

One regression dominated this week (dealing with a correctness fix around type system caching that was deemed necessary), but it luckily did not produce large regressions in any benchmarks. Overall, performance still ended up relatively in the same place as the beginning of the week.

Triage done by **@rylev**.
Revision range: [c87004a1..e6c46db4](https://perf.rust-lang.org/?start=c87004a1f5be671e3f03f69fb13d8915bdbb6a52&end=e6c46db4e9fd11e3183c397a59d946731034ede6&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 1.0%]   | 63    |
| Regressions (secondary)  | 1.1%  | [0.1%, 3.4%]   | 81    |
| Improvements (primary)   | -0.5% | [-3.0%, -0.1%] | 19    |
| Improvements (secondary) | -0.5% | [-1.5%, -0.1%] | 46    |
| All  (primary)           | 0.1%  | [-3.0%, 1.0%]  | 82    |


2 Regressions, 3 Improvements, 7 Mixed; 3 of them in rollups
57 artifact comparisons made in total

#### Regressions

Rollup of 4 pull requests [#131111](https://github.com/rust-lang/rust/pull/131111) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c817d5dc2050ec443516f9700c19b1419593a83d&end=06bb8364aaffefb0ce67e5f5445e66ec99c1f66e&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 4     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.2%] | 4     |
- It seems like https://github.com/rust-lang/rust/pull/130005 would be the only PR that could possibly have introduced any perf variation here though it's not clear to me why.


add caching to most type folders, rm region uniquification [#130821](https://github.com/rust-lang/rust/pull/130821) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5384697e9e73709301850a414e1cc40324e6460b&end=18b1161ec9eeab8927f91405bca0ddf59a4a26c9&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.1%, 0.5%] | 44    |
| Regressions (secondary)  | 0.7% | [0.2%, 2.1%] | 44    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.1%, 0.5%] | 44    |
- Perf regressions were seen before merge and deemed acceptable [here](https://github.com/rust-lang/rust/pull/130821#issuecomment-2386298339).


#### Improvements

Update hashbrown to 0.15 and adjust some methods [#131148](https://github.com/rust-lang/rust/pull/131148) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9c7013c15c189a6978ac8b9dac638581495527de&end=ad9c494835e746fb7c8a26eeed0ad90e4e834058&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 2     |
| Improvements (secondary) | -0.3% | [-2.3%, -0.1%] | 14    |
| All  (primary)           | -0.2% | [-0.2%, -0.1%] | 2     |


Make opaque types regular HIR nodes [#129244](https://github.com/rust-lang/rust/pull/129244) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d30c3924a4ef6ab4f331134562c145d5cec0179a&end=5a4ee43c387110736440cecc375cb5aedc441dbc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 2     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 13    |
| Improvements (secondary) | -0.6% | [-1.4%, -0.2%] | 23    |
| All  (primary)           | -0.2% | [-0.3%, -0.1%] | 13    |


Rollup of 7 pull requests [#131372](https://github.com/rust-lang/rust/pull/131372) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7caad6925314911eefe54b040d4bc5be940e8f92&end=baaf3e65abab5a281715230bcb1785610629ae7d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 3     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 9     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 3     |


#### Mixed

rustdoc: rewrite stability inheritance as a doc pass [#131076](https://github.com/rust-lang/rust/pull/131076) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f79ef02e4bc87eb6dc8374cd4bde8e86f9695cf9&end=07f08ffb2dbc864d2127abedf7a5917b965c0a4b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.8%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 7     |
| Improvements (primary)   | -0.5% | [-0.9%, -0.2%] | 4     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | -0.1% | [-0.9%, 0.8%]  | 6     |
- Documentation correctness fix, but the results are a wash anyway, especially on primary benchmarks.


Rollup of 5 pull requests [#131098](https://github.com/rust-lang/rust/pull/131098) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8dd5cd0bc1d683c30805e1dc831cac546b621a75&end=c817d5dc2050ec443516f9700c19b1419593a83d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.3%]   | 5     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 6     |
| All  (primary)           | 0.3%  | [0.2%, 0.3%]   | 5     |
- The regressions are small and largely a jump back to a previous baseline so I don't think this merits investigation.


interpret: always enable write_immediate sanity checks [#131006](https://github.com/rust-lang/rust/pull/131006) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=18b1161ec9eeab8927f91405bca0ddf59a4a26c9&end=9c7013c15c189a6978ac8b9dac638581495527de&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.2%, 2.3%]   | 15    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.0% | [-2.0%, -2.0%] | 1     |
| All  (primary)           | -     | -              | 0     |
- The perf regressions were deemed acceptable [here](https://github.com/rust-lang/rust/pull/131006#issuecomment-2383332832).


Handle `librustdoc` cases of `rustc::potential_query_instability` lint [#131259](https://github.com/rust-lang/rust/pull/131259) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=96d9d8aa7de9396fe22702ff6df33816ae4d01b6&end=373971abe48287f47ead6304b19279f34b6fcce5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.4%]   | 9     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.4%] | 2     |
| All  (primary)           | 0.5%  | [0.2%, 1.4%]   | 9     |
- 1% regression in exchange for a reproducible build improvement. If we want to claw it back, we need to iterate over hash maps less.


`rustc_infer` cleanups [#131226](https://github.com/rust-lang/rust/pull/131226) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a964a9227787447016894268152bff79ee76a36b&end=8841a3daddd4013c52e8b6de0407fd9b5902583c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.8%  | [0.4%, 1.0%]   | 8     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 40    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 15    |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 40    |
- Perf improvements outweigh the regressions so marking this as triaged


Remove `CombineFields` [#131343](https://github.com/rust-lang/rust/pull/131343) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=baaf3e65abab5a281715230bcb1785610629ae7d&end=3ae715c8c63f9aeac47cbf7d8d9dadb3fa32c638&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | 0.2%  | [0.2%, 0.2%]   | 3     |
- Regressions were determined as acceptable [here](https://github.com/rust-lang/rust/pull/131343#issuecomment-2396836003).


Add precondition checks to ptr::offset, ptr::add, ptr::sub [#130251](https://github.com/rust-lang/rust/pull/130251) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3ae715c8c63f9aeac47cbf7d8d9dadb3fa32c638&end=b8495e5dd22fa16fc86d6871b34c7891a6a3ee27&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.5%]   | 2     |
| Improvements (primary)   | -3.2% | [-3.2%, -3.2%] | 1     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | -3.2% | [-3.2%, -3.2%] | 1     |
- Results are net neutral and not significant enough to worry about. Alternatively, the slowdown is justified by finding bugs in real code.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733)
  - cc: @**Esteban Küber**
- "Fix bug where `option_env!` would return `None` when env var is present but not valid Unicode" [rust#122670](https://github.com/rust-lang/rust/pull/122670)
  - cc: @_**Michael Goulet (compiler-errors)**
- "Suggest cloning `Arc` moved into closure" [rust#124595](https://github.com/rust-lang/rust/pull/124595) (last review activity: 4 months ago)
  - cc: @**pnkfelix**
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784)
  - cc: @**León Orell Liehr (fmease)** but also author cc @**Esteban Küber**
  - this is pretty big diff and needs a rebase. I'm not sure about the best way to proceed

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/SM8ZkqI7Q26ZMuJ67YXC-A)
