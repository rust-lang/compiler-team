---
tags: weekly, rustc
type: docs
note_id: szi5IXJzROqRtix7BOJjZQ
---

# T-compiler Meeting Agenda 2024-10-03

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

None

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785))
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787))
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789))
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 13 days ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 1 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 26 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--orchestrator-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Add `--print host-triple` to print host target triple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "Check ABI target compatibility for function pointers" [rust#128784](https://github.com/rust-lang/rust/pull/128784)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
- Things in FCP (make sure you're good with it)
  - "Add a new `--orchestrator-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716))
  - "Support tests to use `minicore` std/core prelude stubs" [compiler-team#786](https://github.com/rust-lang/compiler-team/issues/786) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20tests.20to.20use.20.60minicore.60.20std.2Fcore.20.E2.80.A6.20compiler-team.23786))
- Accepted MCPs
  - "Don't track `--emit=` options as part of crate SVH" [compiler-team#769](https://github.com/rust-lang/compiler-team/issues/769) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Don.27t.20track.20.60--emit.3D.60.20options.20as.20part.20of.20.E2.80.A6.20compiler-team.23769))
  - "`--hint-msrv=version` option so the compiler can take MSRV into account when linting" [compiler-team#772](https://github.com/rust-lang/compiler-team/issues/772) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-C.20msrv.3Dversion.60.20option.20so.20the.20compiler.20.E2.80.A6.20compiler-team.23772))
  - "mark some target features as 'forbidden' so they cannot be (un)set with -Ctarget-feature" [compiler-team#780](https://github.com/rust-lang/compiler-team/issues/780) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/mark.20some.20target.20features.20as.20.27forbidden.27.20.E2.80.A6.20compiler-team.23780))
  - "-Z default-visibility option" [compiler-team#782](https://github.com/rust-lang/compiler-team/issues/782) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/-Z.20default-visibility.20option.20compiler-team.23782))
  - "Test rule annotations" [compiler-team#783](https://github.com/rust-lang/compiler-team/issues/783) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Test.20rule.20annotations.20compiler-team.23783))
  - "New Tier-3 target for OpenHarmony on LoongArch64" [compiler-team#784](https://github.com/rust-lang/compiler-team/issues/784) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.20for.20OpenHarmony.20on.20Loon.E2.80.A6.20compiler-team.23784))
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.
- Other teams finalized FCPs
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "atomics: allow atomic and non-atomic reads to race" [rust#128778](https://github.com/rust-lang/rust/pull/128778)
  - "Make deprecated_cfg_attr_crate_type_name a hard error" [rust#129670](https://github.com/rust-lang/rust/pull/129670)
  - "Stabilize expr_2021 fragment specifier in all editions" [rust#129972](https://github.com/rust-lang/rust/pull/129972)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Only add an automatic SONAME for Rust dylibs" [rust#130960](https://github.com/rust-lang/rust/pull/130960)
  - Authored by cuviper
  - Fixes #126094, a stable regression (AFAICS). Context as per [RedHat issue](https://bugzilla.redhat.com/show_bug.cgi?id=2314879):
  > This causes RPM to improperly generate Provides for this shared object / .so file where previously no such metadata was added automatically.
  - @_**apiraino**: I /think/ this means that the `rustc` Fedora package dependency metadata are broken
  - Nominated by @**Vadim Petrochenkov** for both beta+stable backport
<!--
/poll Approve beta backport of #130960?
approve
don't know
-->
- :beta: "Reject leading unsafe in `cfg!(...)` and `--check-cfg`" [rust#131057](https://github.com/rust-lang/rust/pull/131057)
  - Authored by Urgau
  - Fixes #131055, inconsistent validation of `unsafe(..)` attributes
<!--
/poll Approve beta backport of #131057?
approve
don't know
-->
- :stable: "Only add an automatic SONAME for Rust dylibs" [rust#130960](https://github.com/rust-lang/rust/pull/130960)
  - Authored by cuviper
  - See above (also beta nominated)
<!--
/poll Approve stable backport of #130960?
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
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [69 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 6 P-medium, 3 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: overflow evaluating the requirement" [rust#128887](https://github.com/rust-lang/rust/issues/128887)
  - Fixed, just needs a test (see [comment](https://github.com/rust-lang/rust/issues/128887#issuecomment-2361152008)). Any taker?

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-10-01](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-10-01.md)

A quiet week without too many perf. changes, although there was a nice perf. win on documentation
builds thanks to [#130857](https://github.com/rust-lang/rust/pull/130857). Overall the results were positive.

Triage done by **@kobzol**.
Revision range: [4cadeda9..c87004a1](https://perf.rust-lang.org/?start=4cadeda932d5c261a9a0b1bbd25c4486e4e0a4c6&end=c87004a1f5be671e3f03f69fb13d8915bdbb6a52&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.8%]    | 11    |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.6%]    | 19    |
| Improvements (primary)   | -1.2% | [-14.9%, -0.2%] | 21    |
| Improvements (secondary) | -1.0% | [-2.3%, -0.3%]  | 5     |
| All  (primary)           | -0.6% | [-14.9%, 0.8%]  | 32    |


3 Regressions, 4 Improvements, 3 Mixed; 2 of them in rollups
47 artifact comparisons made in total

#### Regressions

Add `optimize_for_size` variants for stable and unstable sort as well as select_nth_unstable [#129587](https://github.com/rust-lang/rust/pull/129587) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=67bb749c2e1cf503fee64842963dd3e72a417a3f&end=363ae4188316b8b22cf6c1890bc73d84d05f70a4&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.3%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.3%] | 3     |

- This PR improved the binary size of stdlib's sorting algorithms when compiled with the `optimize_for_size`
cfg option.
- It caused some small codegen perturbations, but it does not seem to warrant further changes.
- Marked as triaged.

Rollup of 6 pull requests [#130847](https://github.com/rust-lang/rust/pull/130847) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b5117538e934f81e39eb9c326fdcc6574d144cb7&end=0399709cdc3c5cc22327e9f657dc7956546a0457&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.3%, 0.9%] | 9     |
| Regressions (secondary)  | 0.6% | [0.3%, 1.8%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.3%, 0.9%] | 9     |

- Regression comes from [#130735](https://github.com/rust-lang/rust/pull/130735), which implements
a new form of MIR validation.
- Marked as triaged.

bump few deps [#130874](https://github.com/rust-lang/rust/pull/130874) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b6576e3f63916034810d24172c35a5ac1c0ef704&end=851f698682aa2e4c226e1a2c1af30adbcb63aae2&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 3.4% | [3.4%, 3.4%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 3.4% | [3.4%, 3.4%] | 1     |

- Noise, marked as triaged.

#### Improvements

Run `cargo update` in the project root [#129624](https://github.com/rust-lang/rust/pull/129624) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4428a051679ec6194a118424f4616d922249a1e6&end=2bd1e894efde3b6be857ad345914a3b1cea51def&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.2%, -0.1%] | 14    |
| Improvements (secondary) | -1.0% | [-2.5%, -0.2%] | 7     |
| All  (primary)           | -0.5% | [-1.2%, -0.1%] | 14    |


rustdoc perf: clone `clean::Item` less [#130857](https://github.com/rust-lang/rust/pull/130857) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b9dc4a30e116c6bd1b873fa79379ea70e102c47b&end=a3f76a26e045a760bb1163b7eab36872985242d5&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -9.3% | [-15.5%, -3.1%] | 2     |
| Improvements (secondary) | -     | -               | 0     |
| All  (primary)           | -9.3% | [-15.5%, -3.1%] | 2     |


library: Compute `RUST_EXCEPTION_CLASS` from native-endian bytes [#130897](https://github.com/rust-lang/rust/pull/130897) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=851f698682aa2e4c226e1a2c1af30adbcb63aae2&end=150247c338a54cb3d08614d8530d1bb491fa90db&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -3.3% | [-3.3%, -3.3%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -3.3% | [-3.3%, -3.3%] | 1     |


Improve autovectorization of to_lowercase / to_uppercase functions [#123778](https://github.com/rust-lang/rust/pull/123778) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ed04567ba1d5956d1080fb8121caa005ce059e12&end=55cb7359c7a43fb084d4717088e4f6ad7d7964f4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 21    |
| Improvements (secondary) | -1.2% | [-2.2%, -0.2%] | 2     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 21    |


#### Mixed

Revert "Apply EarlyOtherwiseBranch to scalar value #129047" [#130775](https://github.com/rust-lang/rust/pull/130775) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4cbfcf1b7f16245176488e581f57b39a7e32bc31&end=67bb749c2e1cf503fee64842963dd3e72a417a3f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-1.1%, -1.1%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-1.1%, 0.6%]  | 2     |

- Revert of a PR because of correctness issues.

Rollup of 7 pull requests [#130807](https://github.com/rust-lang/rust/pull/130807) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3f99982c633dbca746140db60ed52ba7fa112803&end=1b5aa96d6016bafe50e071b45d4d2e3c90fd766f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.7%]   | 5     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -1.2% | [-2.3%, -0.2%] | 2     |
| All  (primary)           | 0.2%  | [-0.4%, 0.7%]  | 6     |

- The doc build regressions were fixed (and in fact much improved) in [#130857](https://github.com/rust-lang/rust/pull/130857).
- Marked as triaged.

properly elaborate effects implied bounds for super traits [#129499](https://github.com/rust-lang/rust/pull/129499) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0d6e13019609d8fa27cb4fafa7878c9e09279e14&end=4e91cedaedba39d06748c5873347f1a7341937ae&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 4     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.0% | [-2.0%, -2.0%] | 1     |
| All  (primary)           | 0.3%  | [0.3%, 0.3%]   | 4     |

- Small genuine regression caused by a change in trait elaboration.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Stabilize `extended_varargs_abi_support`" [rust#116161](https://github.com/rust-lang/rust/pull/116161)
  - Was waiting on T-lang first opinion (see [comment](https://github.com/rust-lang/rust/pull/116161#issuecomment-2374460539))
  - Anything T-compiler wants to add?
- "Tracking Issue for Arm microcontoller feature flags" [rust#130988](https://github.com/rust-lang/rust/issues/130988)
  - @thejpster opened an issue to track useful Arm microcontroller feature flags that could use stabilisation. Example: `-fpregs` or `+mve`.
  - These target features are about stopping LLVM using a feature when you give it a `-C target-feature=xxx`, as not all models of CPU actually have all features and `-C target-cpu` is over-eager at enabling things.
  - @_**RalfJung** said:
    > None of these features are currently listed as known ARM features in rustc, so they all cause a warning. And yet our docs recommend people to use them. So that's clearly not great. `fpregs` is particularly tricky since disabling it on an `eabihf` target is **unsound** as it changes the float ABI. On `eabi` targets it's fine because those have `+soft-float` anyway, which forces the `soft-float` ABI. So we'll need to stabilize this in a way where particular targets opt-in to supporting this feature, or something like that.
  - @_**jieyouxu**:
    > considering the RfL target feature flags, we probably want a design meeting for handling `-C target-cpu`, `-C target-feature` and target specs and properly tracking them for dependencies to error if incompatible things are used together in general.
    > cc <https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/stabilizing.20compiler.20flags.20for.20Rust-for-Linux>.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

None this week

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/AW9c7Zs-QIih_Wbteo1R2g)
