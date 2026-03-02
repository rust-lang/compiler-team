---
tags: weekly, rustc
type: docs
note_id: u2F-SelXQdOpqvQSwwLwvQ
---

# T-compiler Meeting Agenda 2025-05-22

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-05-22T19:00:00+02:00>
- Stable MIR Weekly Meeting <time:2025-05-23T17:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Retroactive MCP for the Rust for Linux Ecosystem Test Job" [compiler-team#874](https://github.com/rust-lang/compiler-team/issues/874) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23874))
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
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 34 days ago)
  - "Introduce debug information to statements in MIR" [compiler-team#867](https://github.com/rust-lang/compiler-team/issues/867) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20debug.20information.20to.20statements.E2.80.A6.20compiler-team.23867)) (last review activity: about 19 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: about 19 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Add `target_env = "macabi"` and `target_env = "sim"`" [rust#139451](https://github.com/rust-lang/rust/pull/139451)
  - "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
    - concern: [document-fallback](https://github.com/rust-lang/rust/pull/140525#issuecomment-2880368144))
    - cc @**lqd**
  - "Split up the `unknown_or_malformed_diagnostic_attributes` lint" [rust#140717](https://github.com/rust-lang/rust/pull/140717)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - cc: @**Wesley Wiser** waiting on a feedback from you (IIRC)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote Solaris Targets to Tier 2 with Host Tools" [compiler-team#870](https://github.com/rust-lang/compiler-team/issues/870) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20Solaris.20Targets.20to.20Tier.202.20with.20Ho.E2.80.A6.20compiler-team.23870))
  - "Add `--json=timings` option to print build timings" [compiler-team#873](https://github.com/rust-lang/compiler-team/issues/873) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--json.3Dtimings.60.20option.20to.20print.20buil.E2.80.A6.20compiler-team.23873))
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876))
- Accepted MCPs
  - "Extend `--print` requests with output format suffixes" [compiler-team#860](https://github.com/rust-lang/compiler-team/issues/860) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print-json.3D.2E.2E.2E.60.20flag.20compiler-team.23860))
  - "Flags for retpoline mitigation" [compiler-team#868](https://github.com/rust-lang/compiler-team/issues/868) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flags.20for.20retpoline.20mitigation.20compiler-team.23868))
  - "Flags for mitigating straight line speculation" [compiler-team#869](https://github.com/rust-lang/compiler-team/issues/869) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flags.20for.20mitigating.20straight.20line.20specul.E2.80.A6.20compiler-team.23869))
- MCPs blocked on unresolved concerns
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: 3 months ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Run the UI test suite with multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861)) (last review activity: about 34 days ago)
    - concern: [edition-directive-meaning](https://github.com/rust-lang/compiler-team/issues/861#issuecomment-2796811016)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 16 days ago)
    - concern: [ask-libs-consensus-on-limited-std-support](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-2816731097)
    - concern: [fd-duplication](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-2850245632)
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
  - "Remove `i128` and `u128` from `improper_ctypes_definitions`" [rust#137306](https://github.com/rust-lang/rust/pull/137306)
  - "Guarantee behavior of transmuting `Option::<T>::None` subject to NPO" [rust#137323](https://github.com/rust-lang/rust/pull/137323)
  - "Stabilize the avx512 target features" [rust#138940](https://github.com/rust-lang/rust/pull/138940)
  - "Make closure capturing have consistent and correct behaviour around patterns" [rust#138961](https://github.com/rust-lang/rust/pull/138961)
  - "make abi_unsupported_vector_types a hard error" [rust#139309](https://github.com/rust-lang/rust/pull/139309)
  - "Error on recursive opaque ty in HIR typeck" [rust#139419](https://github.com/rust-lang/rust/pull/139419)
  - "Finalize repeat expr inference behaviour with inferred repeat counts" [rust#139635](https://github.com/rust-lang/rust/pull/139635)
  - "check types of const param defaults" [rust#139646](https://github.com/rust-lang/rust/pull/139646)
  - "Unify sidebar buttons to use the same image" [rust#140135](https://github.com/rust-lang/rust/pull/140135)
  - "Make well-formedness predicates no longer coinductive" [rust#140208](https://github.com/rust-lang/rust/pull/140208)
  - "Temporary lifetime extension through tuple struct and tuple variant constructors" [rust#140593](https://github.com/rust-lang/rust/pull/140593)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Revert "Fix linking statics on Arm64EC #140176"" [rust#141024](https://github.com/rust-lang/rust/pull/141024)
  - Authored by jieyouxu
  - Reverts #140176
  - Nomination [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23141024.3A.20beta-nominated/near/518246484) (in favor)
  - if approved, we break target `arm64ec-pc-windows-msvc`. If declined, people see a linker warning
<!--
/poll Approve :beta: backport of #141024?
approve
decline
don't know
-->
- :beta: "[win][arm64] Remove 'Arm64 Hazard' undocumented MSVC option and instead disable problematic test" [rust#141045](https://github.com/rust-lang/rust/pull/141045)
  - Authored by dpaoliello
  - [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23141045.3A.20beta-nominated/near/519569833) (in favor)
  - Merged 3 days ago. Seems good to backport, a undocumented MSVC linker flag caused issues with LLD for `aarch64-pc-windows-msvc` (Tier 2)
<!--
/poll Approve :beta: backport of #141045?
approve
decline
don't know
-->
- :beta: "Do not call name() on rpitit assoc_item" [rust#141308](https://github.com/rust-lang/rust/pull/141308)
  - Authored by spastorino
  - [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23141308.3A.20beta-nominated/near/519464166) (in favor)
  - Low risk backport, the ICE was reported by a user. Merged yesterday.
<!--
/poll Approve :beta: backport of #141308?
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
- [57 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 30 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "When LTO is enabled, miscompiles (x86_64-apple-darwin, at least) and failures to link due to unknown relocation type in switch tables (AArch64 Linux/Android, at least)" [rust#141306](https://github.com/rust-lang/rust/issues/141306)
  - newly opened regression where setting `LTO=true` breaks linking on a number of platforms (`aarch64-unknown-linux-gnu`, `aarch64-linux-android`, `x86_64-apple-darwin`), unfortunately on stable 1.87
  - reported by 2 projects (for now), CI fails, need to pin previous rust version
  - a bisection on these platform would be mostly welcome, no MCVE yet

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Performance regression in nightly with target-cpu=native on znver4" [rust#139370](https://github.com/rust-lang/rust/issues/139370)
  - it's being investigated. it's reached beta (I think)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- None

## Performance logs

> [triage logs 2025-05-21](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-05-20.md)

A relatively quiet week, likely caused by not that many PRs being merged as many contributors
were at RustWeek and the All Hands event. There were several nice wins in trait solving;
the benchmark suite now contains benchmarks that use the new trait solver, so we can now
focus on optimizing its performance in the near future.

Triage done by **@kobzol**.
Revision range: [718ddf66..59372f2c](https://perf.rust-lang.org/?start=718ddf660e6a1802c39b4962cf7eaa4db57025ef&end=59372f2c81ba74554d9a71b12a4ed7f29adb33a2&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.1%, 1.8%]   | 25    |
| Regressions (secondary)  | 0.9%  | [0.1%, 3.1%]   | 23    |
| Improvements (primary)   | -0.3% | [-0.6%, -0.1%] | 33    |
| Improvements (secondary) | -2.2% | [-9.2%, -0.1%] | 26    |
| All  (primary)           | 0.1%  | [-0.6%, 1.8%]  | 58    |


2 Regressions, 5 Improvements, 3 Mixed; 3 of them in rollups
41 artifact comparisons made in total

#### Regressions

Remove manual WF hack [#140557](https://github.com/rust-lang/rust/pull/140557) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6d1875f99b2d5c1499410505f4233fbf8dbdc23b&end=7e19eef048ba58c28c70afbf5f95da4829c15796&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.1%, 0.6%] | 34    |
| Regressions (secondary)  | 0.2% | [0.1%, 0.2%] | 5     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.1%, 0.6%] | 34    |

- Small genuine regression, but the PR removed hack from the type system code, which is worth it.
- Marked as triaged.

Add `std::io::Seek` instance for `std::io::Take` [#138023](https://github.com/rust-lang/rust/pull/138023) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=59372f2c81ba74554d9a71b12a4ed7f29adb33a2&end=60dabef95a3de3ec974dcb50926e4bfe743f078f&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 2.0% | [1.0%, 3.0%] | 2     |
| Regressions (secondary)  | 1.0% | [1.0%, 1.0%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 2.0% | [1.0%, 3.0%] | 2     |

- Noise produced by newly added benchmarks.
- Marked as triaged.

#### Improvements

Rollup of 7 pull requests [#141011](https://github.com/rust-lang/rust/pull/141011) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2a5da7acd4c3eae638aa1c46f3a537940e60a0e4&end=d163a28381c297a56417d4a5dfe88c6c65429265&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-0.9%, -0.8%] | 4     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 8     |
| All  (primary)           | -0.8% | [-0.9%, -0.8%] | 4     |


trait_sel: deep reject `match_normalize_trait_ref` [#140978](https://github.com/rust-lang/rust/pull/140978) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=16d2276fa6fccb0cc239a542d4c3f0eb46f660ec&end=c8bda740ea5c21af42fe4afa907f89805ab2b905&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -5.7% | [-9.3%, -0.1%] | 9     |
| All  (primary)           | -     | -              | 0     |


Rollup of 8 pull requests [#141113](https://github.com/rust-lang/rust/pull/141113) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b0e925903a04fc3b2e0903ce6110938e871c61a1&end=a43b8d1d2b10bf4d9e9d935aed497f7ebbeeb6e4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 4     |
| Improvements (secondary) | -0.0% | [-0.0%, -0.0%] | 2     |
| All  (primary)           | -0.1% | [-0.1%, -0.1%] | 4     |


move expensive layout sanity check to debug assertions [#141039](https://github.com/rust-lang/rust/pull/141039) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=16244bc37a6ff610daa38afcddfc1a8bb226702e&end=ac17c3486c6fdfbb0c3c18b99f3d8dfbff625d29&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 22    |
| Improvements (secondary) | -0.7% | [-1.6%, -0.4%] | 8     |
| All  (primary)           | -0.2% | [-0.3%, -0.1%] | 22    |


Fast path for `register_region_obligation` [#141129](https://github.com/rust-lang/rust/pull/141129) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ae3b909a323aa771db8ee3919c1454b77db05fbf&end=7205fc537d0fe8c3c2560b313e54fcb91ab6f3d1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 30    |
| Improvements (secondary) | -0.5% | [-1.0%, -0.0%] | 12    |
| All  (primary)           | -0.2% | [-0.3%, -0.1%] | 30    |


#### Mixed

Use the new solver in the `impossible_predicates` [#136988](https://github.com/rust-lang/rust/pull/136988) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d163a28381c297a56417d4a5dfe88c6c65429265&end=c4e05e53d19b550a358ee8b2e29ecd5a11075800&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.4%, 1.1%]   | 5     |
| Regressions (secondary)  | 0.5%  | [0.3%, 1.0%]   | 27    |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 1     |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] | 6     |
| All  (primary)           | 0.8%  | [-0.1%, 1.1%]  | 6     |

- The regressions are mostly in `helloworld` and tiny benchmarks, and they are relatively small.
- We generally expect the perf. of the new solver to improve over time.
- Marked as triaged.

Optimize `ToString` implementation for integers [#136264](https://github.com/rust-lang/rust/pull/136264) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c4e05e53d19b550a358ee8b2e29ecd5a11075800&end=d97326eabfc3b2c33abcb08d6bc117aefa697cb7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.3%, 1.1%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.3%  | [-0.2%, 1.1%]  | 4     |

- Regression on a single benchmark that is new and doesn't have proper noise bounds yet.
- Also a nice win on the `fmt-write-str` runtime benchmark, which should be expected here!
- Marked as triaged.

Rollup of 8 pull requests [#141232](https://github.com/rust-lang/rust/pull/141232) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b53e5c9db04c89fa15c96f03ae2e0c538b598940&end=4455c8937007f3cc3c078375a335d86dbab391ce&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.4%, 1.2%]   | 8     |
| Regressions (secondary)  | 0.9%  | [0.2%, 3.2%]   | 15    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-1.0%, -0.0%] | 4     |
| All  (primary)           | 0.8%  | [0.4%, 1.2%]   | 8     |

- The binary size and the biggest icount regressions come from [#140628](https://github.com/rust-lang/rust/pull/140628).
- Marked as triaged, following up on #140628.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Should `-Cforce-frame-pointers` favor the target or CLI?" [rust#140774](https://github.com/rust-lang/rust/pull/140774)
  - nominated by @**Jubilee**
  - The proposal is to document a de-facto incidental decision taken 3 years ago in #86652. The flag `-Cforce-frame-pointers=false` in most cases is overriden (set to `true`) by the ABI of the target, removing all frame pointers in the current session.
  - which is actually an optimization in terms of register allocation and the like, thus one that depends on the compiler to implement
  - @**Jubilee** asks if there should be an FCP or, else, what we prefer to do

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- [document reqd. approvals for target changes by davidtwco · Pull Request #834 · rust-lang/rust-forge](https://github.com/rust-lang/rust-forge/pull/834)
  - cc @**Wesley Wiser** when you have a sec for a quick check
- "Implement asymmetrical precedence for closures and jumps" [rust#134847](https://github.com/rust-lang/rust/pull/134847) (last review activity: 4 months ago)
  - cc @**fmease**
- "Tweak `VecCache` to improve performance" [rust#138405](https://github.com/rust-lang/rust/pull/138405) (last review activity: 2 months ago)
  - cc @**nora (Noratrieb)** (but feel free to re-assign)
- "feat: add `succinct-zkvm` os and target" [rust#138463](https://github.com/rust-lang/rust/pull/138463)
  - cc @**Wesley Wiser**
- "Move coercion hack from `coerce_unsized` to `check_cast`" [rust#138542](https://github.com/rust-lang/rust/pull/138542) (last review activity: 2 months ago)
  - cc @**lcnr**
- "Fix `PostBorrowckAnalysis` for old solver" [rust#135899](https://github.com/rust-lang/rust/pull/135899) (last review activity: about 35 days ago)
  - cc: @**Michael (compiler-errors) Goulet** / @**lcnr**
- "Add regression test for nested replacement ranges in cfg_eval" [rust#139286](https://github.com/rust-lang/rust/pull/139286) (last review activity: about 49 days ago)
  - cc @**fmease**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/2mm7XPXuQkerZ3uCysgzTQ)
