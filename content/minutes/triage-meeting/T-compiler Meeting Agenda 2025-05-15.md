---
tags: weekly, rustc
type: docs
note_id: XkhR7DphReyQazg9ur2V0w
---

# T-compiler Meeting Agenda 2025-05-15

## Announcements

- Today we release Rust 1.87, 10th anniversary edition
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 7 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 7 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 6 months ago)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: 2 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 4 months ago)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: 3 months ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 2 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 54 days ago)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853)) (last review activity: about 54 days ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 27 days ago)
  - "Run the UI test suite with multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861)) (last review activity: about 27 days ago)
    - concern: [edition-directive-meaning](https://github.com/rust-lang/compiler-team/issues/861#issuecomment-2796811016)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 9 days ago)
    - concern: [fd-duplication](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-2850245632)
    - concern: [ask-libs-consensus-on-limited-std-support](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-2816731097)
  - "Introduce debug information to statements in MIR" [compiler-team#867](https://github.com/rust-lang/compiler-team/issues/867) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20debug.20information.20to.20statements.E2.80.A6.20compiler-team.23867)) (last review activity: about 12 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: about 12 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Add `target_env = "macabi"` and `target_env = "sim"`" [rust#139451](https://github.com/rust-lang/rust/pull/139451)
  - "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
  - "Split up the `unknown_or_malformed_diagnostic_attributes` lint" [rust#140717](https://github.com/rust-lang/rust/pull/140717)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Flags for retpoline mitigation" [compiler-team#868](https://github.com/rust-lang/compiler-team/issues/868) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flags.20for.20retpoline.20mitigation.20compiler-team.23868))
  - "Flags for mitigating straight line speculation" [compiler-team#869](https://github.com/rust-lang/compiler-team/issues/869) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flags.20for.20mitigating.20straight.20line.20specul.E2.80.A6.20compiler-team.23869))
  - "Promote Solaris Targets to Tier 2 with Host Tools" [compiler-team#870](https://github.com/rust-lang/compiler-team/issues/870) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20Solaris.20Targets.20to.20Tier.202.20with.20Ho.E2.80.A6.20compiler-team.23870))
- Accepted MCPs
  - "Extend `--print` requests with output format suffixes" [compiler-team#860](https://github.com/rust-lang/compiler-team/issues/860) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print-json.3D.2E.2E.2E.60.20flag.20compiler-team.23860))
- MCPs blocked on unresolved concerns
  - <Here group MCPs blocked on unresolved concerns>
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
  - "Remove backticks from `ShouldPanic::YesWithMessage`'s `TrFailedMsg`" [rust#136160](https://github.com/rust-lang/rust/pull/136160)
  - "Make closure capturing have consistent and correct behaviour around patterns" [rust#138961](https://github.com/rust-lang/rust/pull/138961)
  - "make abi_unsupported_vector_types a hard error" [rust#139309](https://github.com/rust-lang/rust/pull/139309)
  - "Finalize repeat expr inference behaviour with inferred repeat counts" [rust#139635](https://github.com/rust-lang/rust/pull/139635)
  - "check types of const param defaults" [rust#139646](https://github.com/rust-lang/rust/pull/139646)
  - "Unify sidebar buttons to use the same image" [rust#140135](https://github.com/rust-lang/rust/pull/140135)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix linking statics on Arm64EC" [rust#140176](https://github.com/rust-lang/rust/pull/140176)
  - Authored by dpaoliello
  - We were not so oriented to backport (see last [discussion](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Async.20backport.20nominations/near/516955838))
  - Noticed this [comment](https://github.com/rust-lang/rust/pull/140176#issuecomment-2879715554), I don't feel too confident about backporting this
<!--
/poll Approve beta:  backport of #140176?
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

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [56 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 30 P-high, 100 P-medium, 20 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[t-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "Performance regression in nightly with target-cpu=native on znver4" [rust#139370](https://github.com/rust-lang/rust/issues/139370)
  - xxx

## Performance logs

> [triage logs form 2024-05-12](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-05-12.md)

Lot of changes this week. Overall result is positive, with one large win in type check.

Triage done by **@panstromek**.
Revision range: [62c5f58f..718ddf66](https://perf.rust-lang.org/?start=62c5f58f57670ce65e7fec34f8c4ba00c27da2d9&end=718ddf660e6a1802c39b4962cf7eaa4db57025ef&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.4%]    | 113   |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.5%]    | 54    |
| Improvements (primary)   | -2.5% | [-22.5%, -0.3%] | 45    |
| Improvements (secondary) | -0.9% | [-2.3%, -0.2%]  | 10    |
| All  (primary)           | -0.3% | [-22.5%, 1.4%]  | 158   |


8 Regressions, 5 Improvements, 3 Mixed; 6 of them in rollups
47 artifact comparisons made in total

#### Regressions

Don't name variables from external macros in borrow errors. [#140580](https://github.com/rust-lang/rust/pull/140580) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=62c5f58f57670ce65e7fec34f8c4ba00c27da2d9&end=ab62d56603293e9264b4d811d2d6f5b49a3264f9&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.7% | [1.7%, 1.7%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 1.7% | [1.7%, 1.7%] | 1     |

Within noise, triaged by Mark.

Weekly `cargo update` [#140353](https://github.com/rust-lang/rust/pull/140353) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2958d8969cb3096a533927a566e72477c55d8653&end=cd55868a8db4b9394be64082a290f11b1e03b5d3&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 1.2%] | 8     |
| Regressions (secondary)  | 0.2% | [0.1%, 0.2%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.2%, 1.2%] | 8     |

Regressions are small, but look real, mostly in backend. Even with non-relevant results, this is almost all just regressions. Left a comment and we will see if this is worth more investigation.

Rollup of 4 pull requests [#140708](https://github.com/rust-lang/rust/pull/140708) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a95cc6f9d950992ba27746e45caf40118581cb1&end=27d6200a70601f6fcf419bf2f9e37989f3624ca4&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.1% | [1.1%, 1.1%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 1.1% | [1.1%, 1.1%] | 1     |

Small `nalgebra` regression, looks spurious. The benchmark returned to previous state afterwards and looks like it became bi-modal.

Use thread local dep graph encoding [#139758](https://github.com/rust-lang/rust/pull/139758) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=db0e836148accac8a22532e3596ac612b63c2d8e&end=3ef8e64ce9f72ee8d600d55bc43b36eed069b252&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.7%] | 90    |
| Regressions (secondary)  | 0.3% | [0.2%, 0.5%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.7%] | 90    |

Small regression on a lot of benchmarks, mostly tiny incremental-unchanged scenarios. This is supposed to improve incremental performance with parallel compiler, which is not yet covered by benchmarks.

borrowck nested items in dead code [#140590](https://github.com/rust-lang/rust/pull/140590) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3ef8e64ce9f72ee8d600d55bc43b36eed069b252&end=e9f8103f93f8ce2fa2c15c0c6796ec821f8ae15d&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.5%] | 29    |
| Regressions (secondary)  | 0.6% | [0.2%, 1.5%] | 24    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.5%] | 29    |

Fixes P-critical regression. Perf reggression is expected as this is doing more work, which will also be necessary to stabilize new solver.

Remove `Ident::empty` [#140252](https://github.com/rust-lang/rust/pull/140252) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c8b7f32434c0306db5c1b974ee43443746098a92&end=a7b1b24587dcbebf12455c41ed828d9b486487be&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.1%, 1.1%] | 115   |
| Regressions (secondary)  | 0.4% | [0.2%, 0.7%] | 41    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.1%, 1.1%] | 115   |

Caused by new `assert!`. Fixed by changing to `debug_assert!` in a followup [#140880](https://github.com/rust-lang/rust/pull/140880).

Bump version number to 1.89.0 [#140839](https://github.com/rust-lang/rust/pull/140839) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=da1e442ebde8d527f3872c0cac5b371ff6ea0cc7&end=dcecb99176edf2eec51613730937d21cdd5c8f6e&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.1% | [1.1%, 1.1%] | 1     |
| Regressions (secondary)  | 0.1% | [0.1%, 0.1%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 1.1% | [1.1%, 1.1%] | 1     |

Regressions are spurious. `nalgebra` is bimodal and returned to previous state in following commit. Secondary regressions in `tt-muncher` also later recovered.

Update `backtrace` in Cargo.lock [#140705](https://github.com/rust-lang/rust/pull/140705) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c6faa1b22e735494677a2410ee281ca5f646e747&end=bfb44c8155dc102358deeb27acef44abe030b30e&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.0% | [1.0%, 1.0%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 1.0% | [1.0%, 1.0%] | 1     |

Another `nalgebra` bimodality. Returned to previous state in following commit.

#### Improvements

Rollup of 6 pull requests [#140646](https://github.com/rust-lang/rust/pull/140646) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=13e87909494f2f31bce51bc106e2b629420d1235&end=2958d8969cb3096a533927a566e72477c55d8653&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-1.1%, -1.1%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -1.1% | [-1.1%, -1.1%] | 1     |


Rollup of 4 pull requests [#140702](https://github.com/rust-lang/rust/pull/140702) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f5d3fe273b8b9e7125bf8856d44793b6cc4b6735&end=1a95cc6f9d950992ba27746e45caf40118581cb1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.0%, -1.0%] | 1     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 1     |
| All  (primary)                 | -1.0% | [-1.0%, -1.0%] | 1     |


Rollup of 9 pull requests [#140726](https://github.com/rust-lang/rust/pull/140726) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=669c1ab9677ae8dc1d7db30b75fd173d06c0c75a&end=891b8525477f5c41a9e56d7b70d64b41e7c344e3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-1.0%, -0.2%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.4% | [-1.0%, -0.2%] | 4     |


Rollup of 7 pull requests [#140869](https://github.com/rust-lang/rust/pull/140869) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dcecb99176edf2eec51613730937d21cdd5c8f6e&end=fd9fad6dbcc1bae3cba2a8634339ffa620a49f28&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.0%, -1.0%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -1.0% | [-1.0%, -1.0%] | 1     |


Make the assertion in `Ident::new` debug-only. [#140880](https://github.com/rust-lang/rust/pull/140880) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bfb44c8155dc102358deeb27acef44abe030b30e&end=7e432c456bf58ad436f3a92c2a3e3c27f399f14a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-1.1%, -0.1%] | 115   |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] | 34    |
| All  (primary)                 | -0.3% | [-1.1%, -0.1%] | 115   |

Fixes the `assert!` regression from above.

#### Mixed

Rollup of 4 pull requests [#140650](https://github.com/rust-lang/rust/pull/140650) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cd55868a8db4b9394be64082a290f11b1e03b5d3&end=54d024e4bf462c77a86c4126d7e66d89b64f053a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.0%  | [-0.3%, 0.7%]  | 3     |

Regression in `image` looks real. It's mostly coming from backend, so it's probably some code shuffling that allows LLVM to do discover more optimizations. More detailed investigation is in the [PR comment](https://github.com/rust-lang/rust/pull/140650#issuecomment-2872386051)

Do not gather local all together at the beginning of typeck [#140561](https://github.com/rust-lang/rust/pull/140561) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=651e9cf327358b28db7e37a2ae61727f4a2ef232&end=f5d3fe273b8b9e7125bf8856d44793b6cc4b6735&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]    | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]    | 3     |
| Improvements (primary)   | -1.8% | [-22.4%, -0.1%] | 73    |
| Improvements (secondary) | -0.9% | [-2.0%, -0.3%]  | 12    |
| All  (primary)                 | -1.8% | [-22.4%, 0.4%]  | 74    |

Large improvements outweigh regresions. Regressions are spurious (all regressed crates returned back to previous state in following commit).

Merge typeck loop with static/const item eval loop [#140854](https://github.com/rust-lang/rust/pull/140854) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7e432c456bf58ad436f3a92c2a3e3c27f399f14a&end=b10555674f355aca2bfe974e50a0b9ab48eb1d87&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.3%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.1% | [-0.4%, 0.3%]  | 6     |

All changes in `unicode-normalization`. Incremental full improvements outweigh small non-incremental regressions. This matches results in pre-merge run, so I assume it's expected.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Oddity with lifetime elision and type aliases" [rust#140611](https://github.com/rust-lang/rust/issues/140611)
  - xxx
- "Should `-Cforce-frame-pointers` favor the target or CLI?" [rust#140774](https://github.com/rust-lang/rust/pull/140774)
  - xxx

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

None this week

Next meetings' agenda draft: [hackmd link](https://hackmd.io/u2F-SelXQdOpqvQSwwLwvQ)
