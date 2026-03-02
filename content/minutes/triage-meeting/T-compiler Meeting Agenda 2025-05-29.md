---
tags: weekly, rustc
type: docs
note_id: 2mm7XPXuQkerZ3uCysgzTQ
---

# T-compiler Meeting Agenda 2025-05-29

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-05-29T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 8 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 7 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 7 months ago)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: 2 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 4 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 2 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 2 months ago)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853)) (last review activity: 2 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 41 days ago)
  - "Introduce debug information to statements in MIR" [compiler-team#867](https://github.com/rust-lang/compiler-team/issues/867) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20debug.20information.20to.20statements.E2.80.A6.20compiler-team.23867)) (last review activity: about 26 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: about 26 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Add `target_env = "macabi"` and `target_env = "sim"`" [rust#139451](https://github.com/rust-lang/rust/pull/139451)
  - "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
- Things in FCP (make sure you're good with it)
  - "Add `--json=timings` option to print build timings" [compiler-team#873](https://github.com/rust-lang/compiler-team/issues/873) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--json.3Dtimings.60.20option.20to.20print.20buil.E2.80.A6.20compiler-team.23873))
  - "Retroactive MCP for the Rust for Linux Ecosystem Test Job" [compiler-team#874](https://github.com/rust-lang/compiler-team/issues/874) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23874))
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876))
  - "Promote 64-bit windows-gnullvm Targets to Tier 2 with Host Tools" [compiler-team#877](https://github.com/rust-lang/compiler-team/issues/877) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.2064-bit.20windows-gnullvm.20Targets.20to.E2.80.A6.20compiler-team.23877))
  - "Eliminate `ast::ptr::P`" [compiler-team#878](https://github.com/rust-lang/compiler-team/issues/878) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Eliminate.20.60ast.3A.3Aptr.3A.3AP.60.20compiler-team.23878))
  - "Split up the `unknown_or_malformed_diagnostic_attributes` lint" [rust#140717](https://github.com/rust-lang/rust/pull/140717)
- Accepted MCPs
  - "Extend `--print` requests with output format suffixes" [compiler-team#860](https://github.com/rust-lang/compiler-team/issues/860) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print-json.3D.2E.2E.2E.60.20flag.20compiler-team.23860))
  - "Flags for retpoline mitigation" [compiler-team#868](https://github.com/rust-lang/compiler-team/issues/868) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flags.20for.20retpoline.20mitigation.20compiler-team.23868))
  - "Flags for mitigating straight line speculation" [compiler-team#869](https://github.com/rust-lang/compiler-team/issues/869) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flags.20for.20mitigating.20straight.20line.20specul.E2.80.A6.20compiler-team.23869))
  - "Promote Solaris Targets to Tier 2 with Host Tools" [compiler-team#870](https://github.com/rust-lang/compiler-team/issues/870) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20Solaris.20Targets.20to.20Tier.202.20with.20Ho.E2.80.A6.20compiler-team.23870))
- MCPs blocked on unresolved concerns
  - "Run the UI test suite with multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861)) (last review activity: about 41 days ago)
    - concern: [edition-directive-meaning](https://github.com/rust-lang/compiler-team/issues/861#issuecomment-2796811016)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 1 days ago)
    - concern: [fd-duplication](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-2850245632)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: 4 months ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Other teams finalized FCPs
  - "Split elided_lifetime_in_paths into tied and untied" [rust#120808](https://github.com/rust-lang/rust/pull/120808)
  - "Implement a lint for implicit autoref of raw pointer dereference - take 2" [rust#123239](https://github.com/rust-lang/rust/pull/123239)
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "Make `missing_fragment_specifier` an unconditional error" [rust#128425](https://github.com/rust-lang/rust/pull/128425)
  - "lexer: Treat more floats with empty exponent as valid tokens" [rust#131656](https://github.com/rust-lang/rust/pull/131656)
  - "Stabilize let chains in the 2024 edition" [rust#132833](https://github.com/rust-lang/rust/pull/132833)
  - "de-stabilize bench attribute" [rust#134273](https://github.com/rust-lang/rust/pull/134273)
  - "Partially stabilize LoongArch target features" [rust#135015](https://github.com/rust-lang/rust/pull/135015)
  - "aarch64-softfloat: forbid enabling the neon target feature" [rust#135160](https://github.com/rust-lang/rust/pull/135160)
  - "Remove backticks from `ShouldPanic::YesWithMessage`'s `TrFailedMsg`" [rust#136160](https://github.com/rust-lang/rust/pull/136160)
  - "Use the new solver in the `impossible_predicates`" [rust#136988](https://github.com/rust-lang/rust/pull/136988)
  - "Remove `i128` and `u128` from `improper_ctypes_definitions`" [rust#137306](https://github.com/rust-lang/rust/pull/137306)
  - "Guarantee behavior of transmuting `Option::<T>::None` subject to NPO" [rust#137323](https://github.com/rust-lang/rust/pull/137323)
  - "Stabilize the avx512 target features" [rust#138940](https://github.com/rust-lang/rust/pull/138940)
  - "Make closure capturing have consistent and correct behaviour around patterns" [rust#138961](https://github.com/rust-lang/rust/pull/138961)
  - "make abi_unsupported_vector_types a hard error" [rust#139309](https://github.com/rust-lang/rust/pull/139309)
  - "Error on recursive opaque ty in HIR typeck" [rust#139419](https://github.com/rust-lang/rust/pull/139419)
  - "Finalize repeat expr inference behaviour with inferred repeat counts" [rust#139635](https://github.com/rust-lang/rust/pull/139635)
  - "Check types of const param defaults" [rust#139646](https://github.com/rust-lang/rust/pull/139646)
  - "Unify sidebar buttons to use the same image" [rust#140135](https://github.com/rust-lang/rust/pull/140135)
  - "Make well-formedness predicates no longer coinductive" [rust#140208](https://github.com/rust-lang/rust/pull/140208)
  - "Remove manual WF hack" [rust#140557](https://github.com/rust-lang/rust/pull/140557)
  - "Temporary lifetime extension through tuple struct and tuple variant constructors" [rust#140593](https://github.com/rust-lang/rust/pull/140593)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Update to LLVM 20.1.5" [rust#141063](https://github.com/rust-lang/rust/pull/141063)
  - Authored by dianqk
  - noteworthy, fixes #141287, a compile-time regression ([comment](https://github.com/rust-lang/rust/pull/141063#issuecomment-2903612923))
  - [poll results](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23141063.3A.20beta-nominated/near/519991919) in favor
  - diff: https://github.com/rust-lang/llvm-project/compare/8448283b4bd34ea00d76fd4f18ec730b549d6e1d...c1118fdbb3024157df7f4cfe765f2b0b4339e8a2
<!--
/poll Approve beta:  backport of #141063?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [56 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 31 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "When LTO is enabled, miscompiles (x86_64-apple-darwin, at least) and failures to link due to unknown relocation type in switch tables (AArch64 Linux/Android, at least)" [rust#141306](https://github.com/rust-lang/rust/issues/141306)
  - under control, being investigated by our LLVM folks

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-05-27](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

A week dominated by new sources of noise. By and large there were not that many real changes to compiler performance. Some highlights of real change to focus on are an improvement in rustdoc that had large wins in a few key benchmarks and an improvement in trait selection that comes from moving from an if/else chain to pattern matching.

Triage done by **@rylev**.
Revision range: [59372f2c..2805e1dc](https://perf.rust-lang.org/?start=59372f2c81ba74554d9a71b12a4ed7f29adb33a2&end=2805e1dc4c18ed4c84d161502c48da870c56f68a&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.1%, 7.5%]    | 73    |
| Regressions (secondary)  | 1.4%  | [0.1%, 6.8%]    | 34    |
| Improvements (primary)   | -4.0% | [-78.5%, -0.1%] | 41    |
| Improvements (secondary) | -6.2% | [-22.1%, -0.1%] | 28    |
| All  (primary)           | -1.0% | [-78.5%, 7.5%]  | 114   |


5 Regressions, 7 Improvements, 8 Mixed; 9 of them in rollups
45 artifact comparisons made in total

#### Regressions

Add `std::io::Seek` instance for `std::io::Take` [#138023](https://github.com/rust-lang/rust/pull/138023) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=59372f2c81ba74554d9a71b12a4ed7f29adb33a2&end=60dabef95a3de3ec974dcb50926e4bfe743f078f&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 2.0% | [1.0%, 3.0%] | 2     |
| Regressions (secondary)  | 1.0% | [1.0%, 1.0%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 2.0% | [1.0%, 3.0%] | 2     |
- Noise in newly added benchmarks.


update llvm-tools logic for `dist` and `install` steps [#140932](https://github.com/rust-lang/rust/pull/140932) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=28174fc1a0525888615c8bce8f4ecec13c85ecc6&end=6cab15c1aef39456d86ce51be6096088cb2ef1da&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 3.0% | [3.0%, 3.0%] | 1     |
| Regressions (secondary)  | 0.4% | [0.4%, 0.4%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 3.0% | [3.0%, 3.0%] | 1     |
- Noise


Rollup of 7 pull requests [#141345](https://github.com/rust-lang/rust/pull/141345) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=356f2d077498d0ebe5ec4f9cfef04293a2b17611&end=462cc099c93b2915eef61c3fbc504588b41b27d1&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.1% | [0.1%, 0.1%] | 6     |
| Regressions (secondary)  | 1.1% | [0.8%, 1.4%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.1% | [0.1%, 0.1%] | 6     |
- All of the regressions seem like slight returns back to a previous mean so I don't think this merits an investigation.


Defer evaluating type system constants when they use infers or params [#140553](https://github.com/rust-lang/rust/pull/140553) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e7f4317ea0e891296163414c6f681ccec976abc3&end=52bf0cf795dfecc8b929ebb1c1e2545c3f41d4c9&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.1%, 0.5%] | 15    |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.1%, 0.5%] | 15    |
- perf regressions were expected, but checking with the author/reviewer to make sure the magnitude seen is still acceptable.


Rollup of 8 pull requests [#141567](https://github.com/rust-lang/rust/pull/141567) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=46264e6dfd8f0bacae05c520b4617e054d6ef990&end=95a2212587f1b8500af1ac630322b0cb2e030c61&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 3.0% | [3.0%, 3.0%] | 1     |
| Regressions (secondary)  | 0.1% | [0.1%, 0.1%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 3.0% | [3.0%, 3.0%] | 1     |
- clap_derive is noisy, and has since gone back to its previous state.


#### Improvements

Rollup of 5 pull requests [#141270](https://github.com/rust-lang/rust/pull/141270) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=60dabef95a3de3ec974dcb50926e4bfe743f078f&end=a8e4c68dcb4dc1e48a0db294c5323cab0227fcb9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.5% | [-2.8%, -1.1%] | 5     |
| Improvements (secondary) | -1.0% | [-1.0%, -1.0%] | 1     |
| All  (primary)                 | -1.5% | [-2.8%, -1.1%] | 5     |


Rollup of 7 pull requests [#141292](https://github.com/rust-lang/rust/pull/141292) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6cab15c1aef39456d86ce51be6096088cb2ef1da&end=444a62712a29e14d3b6147b51fd24e623496bf58&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.3% | [-3.0%, -1.5%] | 2     |
| Improvements (secondary) | -1.4% | [-1.4%, -1.4%] | 1     |
| All  (primary)                 | -2.3% | [-3.0%, -1.5%] | 2     |


Fast path for processing some obligations in the new solver [#141135](https://github.com/rust-lang/rust/pull/141135) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d679446b01e65f9bc9ae609d0ae1e4a9c0ccaa3&end=d423c815a69bbcfb4abcd23a828b9a513c397632&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.2% | [-5.0%, -0.1%] | 16    |
| All  (primary)                 | -     | -              | 0     |


Rollup of 6 pull requests [#141545](https://github.com/rust-lang/rust/pull/141545) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=88b3b520e852e01970c3f519339ba64ed3e7db6d&end=283db70ace62a0ae704a624e43b68c2ee44b87a6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -2.9% | [-2.9%, -2.9%] | 1     |


interpret: do not force_allocate all return places [#141406](https://github.com/rust-lang/rust/pull/141406) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=95a2212587f1b8500af1ac630322b0cb2e030c61&end=b5eb9893f42a469d330046089539f908d4728384&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.6% | [-2.9%, -0.2%] | 2     |
| Improvements (secondary) | -3.5% | [-4.6%, -0.3%] | 7     |
| All  (primary)                 | -1.6% | [-2.9%, -0.2%] | 2     |


Fold predicate fast path in canonicalizer and eager resolver [#141442](https://github.com/rust-lang/rust/pull/141442) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b5eb9893f42a469d330046089539f908d4728384&end=9c0bcb514f49cd1e6a30affb2fe4cfca060129a2&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -     | -               | 0     |
| Improvements (secondary) | -6.1% | [-15.7%, -0.2%] | 15    |
| All  (primary)                 | -     | -               | 0     |


Don't rerun goals if none of their vars have changed [#141500](https://github.com/rust-lang/rust/pull/141500) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9c0bcb514f49cd1e6a30affb2fe4cfca060129a2&end=40d2563ea200f9327a8cb8b99a0fb82f75a7365c&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]    | 1     |
| Improvements (primary)   | -0.1% | [-0.2%, -0.1%]  | 2     |
| Improvements (secondary) | -4.1% | [-17.9%, -0.3%] | 9     |
| All  (primary)                 | -0.1% | [-0.2%, -0.1%]  | 2     |


#### Mixed

Match on lang item kind instead of using an if/else chain [#140386](https://github.com/rust-lang/rust/pull/140386) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c43786c9b7b8d8dcc3f9c604e0e3074c16ed69d3&end=356f2d077498d0ebe5ec4f9cfef04293a2b17611&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.7%]   | 2     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 4     |
| Improvements (primary)   | -0.3% | [-0.7%, -0.1%] | 55    |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] | 3     |
| All  (primary)                 | -0.2% | [-0.7%, 0.7%]  | 57    |
- Improvements vastly outweigh regressions


Rollup of 7 pull requests [#141396](https://github.com/rust-lang/rust/pull/141396) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2eef47813f25df637026ce3288880e5c587abd92&end=912981a9eab199a6429d3c65a58f1b80487620ea&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 2     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.2% | [-0.2%, -0.2%] | 1     |
- Small enough regressions that I don't think it warrants an investigation


Rollup of 7 pull requests [#141463](https://github.com/rust-lang/rust/pull/141463) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e88e85463468ce5d5ce468414eb69e3b15fa8d42&end=3e674b06b5c74adea662bd0b0b06450757994b16&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.3%, 1.2%]   | 4     |
| Improvements (primary)   | -1.0% | [-1.0%, -1.0%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -1.0% | [-1.0%, -1.0%] | 1     |
- The only significant regression is in the new trait solver stress test, and that benchmark is still settling so I don't think it's worth a deeper look.


rustdoc: Speed up `TypeAliasPart::get` [#141421](https://github.com/rust-lang/rust/pull/141421) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=80c34983c63968c204096e79b9126c0039790741&end=105354db48223b7bf799b05d4dd3a412aca7bd05&stat=instructions:u)

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | -      | -               | 0     |
| Regressions (secondary)  | 0.2%   | [0.2%, 0.2%]    | 1     |
| Improvements (primary)   | -19.5% | [-78.7%, -0.3%] | 8     |
| Improvements (secondary) | -0.2%  | [-0.2%, -0.2%]  | 1     |
| All  (primary)                 | -19.5% | [-78.7%, -0.3%] | 8     |
- Pure rustdoc change, so coercions result is just noise.


Rollup of 6 pull requests [#141506](https://github.com/rust-lang/rust/pull/141506) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3de4f1ccf3873782fae2a3883d029ed3d4542581&end=038d599eda4fe3e3d78103fba51ee663df86dadf&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.0%  | [3.0%, 3.0%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)                 | 3.0%  | [3.0%, 3.0%]   | 1     |
- Noise in the clap benchmark


Use the fn_span when emitting function calls for better debug info. [#141372](https://github.com/rust-lang/rust/pull/141372) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=038d599eda4fe3e3d78103fba51ee663df86dadf&end=5e16c662062fd6dee91f0fe2a1580483488d80cf&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 2     |
| Regressions (secondary)  | 2.9%  | [2.8%, 3.0%]   | 2     |
| Improvements (primary)   | -2.8% | [-2.8%, -2.8%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.8% | [-2.8%, 0.3%]  | 3     |
- the big improvement is noise, but some of the regressions seem legit. It seems like perhaps more time is being spent in codegen_module which I suspect tracks well with the change here


Implement `advance_by` via `try_fold` for `Sized` iterators [#141086](https://github.com/rust-lang/rust/pull/141086) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aa57e46e24a4a08cc336325e92567b40b0c2ba62&end=88b3b520e852e01970c3f519339ba64ed3e7db6d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.4%  | [0.6%, 3.0%]   | 4     |
| Regressions (secondary)  | 3.6%  | [0.3%, 6.8%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 1.0%  | [-0.3%, 3.0%]  | 5     |
- the regression in clap is noise, but the regressions in ripgrep seem to be legit. This might just be more time spent in LLM crunching through things.


Rollup of 10 pull requests [#141605](https://github.com/rust-lang/rust/pull/141605) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=40d2563ea200f9327a8cb8b99a0fb82f75a7365c&end=2805e1dc4c18ed4c84d161502c48da870c56f68a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.3%  | [0.1%, 7.8%]   | 37    |
| Regressions (secondary)  | 1.3%  | [0.2%, 2.6%]   | 26    |
| Improvements (primary)   | -1.1% | [-1.8%, -0.5%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 1.2%  | [-1.8%, 7.8%]  | 39    |
- Investigation into this is underway.

## Nominated Issues

- [Contracts attributes in rustc](https://github.com/rust-lang/compiler-team/issues/813)
  - Question: can we skip the next steering meeting and schedule this one only?

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Implement asymmetrical precedence for closures and jumps" [rust#134847](https://github.com/rust-lang/rust/pull/134847) (last review activity: 5 months ago)
  - cc @**fmease**
- "Reduce precedence of expressions that have an outer attr" [rust#134661](https://github.com/rust-lang/rust/pull/134661) (last review activity: 4 months ago)
  - cc @**fmease**
- "Implement parsing of pinned borrows" [rust#135731](https://github.com/rust-lang/rust/pull/135731) (last review activity: about 45 days ago)
  - cc: @**Michael (compiler-errors) Goulet** (are you ok being assigned the review? see [comment](https://github.com/rust-lang/rust/pull/135731#issuecomment-2784548463))
- "Add FileCheck annotations to mir-opt/copy-prop" [rust#135099](https://github.com/rust-lang/rust/pull/135099) (last review activity: about 40 days ago)
  - cc: @**Wesley Wiser**
- "Distinguish delim kind to decide whether to emit unexpected closing delimiter" [rust#138554](https://github.com/rust-lang/rust/pull/138554) (last review activity:  about 37 days ago)
  - cc: @**yukang**
- "Improve diagnostics for usage of qualified paths within tuple struct exprs/pats" [rust#140370](https://github.com/rust-lang/rust/pull/140370) (last review activity: about 31 days ago)
  - cc: @**Jana Dönszelmann**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/e4A8zrIYTo2q4m0BiOQ0Dw)
