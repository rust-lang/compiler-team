---
tags: weekly, rustc
type: docs
note_id: M0X6fEE-ReqVNhb03M0U9A
---

# T-compiler Meeting Agenda 2025-03-27

## Announcements

- Tomorrow <time:2025-03-28T09:00:00-05:00> meeting about "Cleanup of T-compiler stale proposals" ([meeting proposal](https://github.com/rust-lang/compiler-team/issues/821))
  - [HackMD document](https://hackmd.io/6Ezyluk8Q26mpcA9eQVqDg) (WIP)
- Next week release of Rust 1.86.0 [blog post draft](https://github.com/BoxyUwU/blog.rust-lang.org/blob/1.86.0/posts/Rust-1.86.0.md)
- All old Working Groups Zulip channels are now read-only and renamed, see [mcp#848](https://github.com/rust-lang/compiler-team/issues/848)
    - Archived Working Groups will soon be removed from the [Governance page](https://www.rust-lang.org/governance/teams/compiler) of the Rust website
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Stable MIR Weekly Meeting <time:2025-03-28T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Enable autodiff testcases in CI" [compiler-team#855](https://github.com/rust-lang/compiler-team/issues/855) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20autodiff.20testcases.20in.20CI.20compiler-team.23855))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 6 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 5 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 5 months ago)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: about 13 days ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 2 months ago)
  - "`rustc_target` for rust-analyzer" [compiler-team#839](https://github.com/rust-lang/compiler-team/issues/839) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60rustc_target.60.20for.20rust-analyzer.20compiler-team.23839)) (last review activity: about 33 days ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: about 20 days ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 6 days ago)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - cc @**Wesley Wiser** I think @_Sparrow Li needs some feedback
  - "Policy: Require MCP and relevant team nominations for adding (ecosystem, custom codegen backend) testing jobs that would block PR/Merge CI and require documenting failure protocol" [compiler-team#845](https://github.com/rust-lang/compiler-team/issues/845) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Require.20MCP.20for.20adding.20.28ecosystem.E2.80.A6.20compiler-team.23845))
  - "Split `run-make` test suite into slower-building test suite with suitably-staged cargo and faster-building test suite without cargo" [compiler-team#847](https://github.com/rust-lang/compiler-team/issues/847) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20.60run-make.60.20test.20suite.20into.20fast.20tes.E2.80.A6.20compiler-team.23847))
  - "Add `-Zsplit-metadata` flag to reduce disk usage" [compiler-team#851](https://github.com/rust-lang/compiler-team/issues/851) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zsplit-metadata.60.20flag.20to.20reduce.20dis.E2.80.A6.20compiler-team.23851))
  - "Allow boolean literals in `--check-cfg`" [compiler-team#854](https://github.com/rust-lang/compiler-team/issues/854) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20boolean.20literals.20in.20.60--check-cfg.60.20compiler-team.23854))
- Accepted MCPs
  - "Enable `warn(unused_crate_dependencies)` on `rustc_*` crates" [compiler-team#844](https://github.com/rust-lang/compiler-team/issues/844) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60warn.28unused_crate_dependencies.29.20o.E2.80.A6.20compiler-team.23844))
  - "Add `--print=llvm-target-tuple`" [compiler-team#846](https://github.com/rust-lang/compiler-team/issues/846) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dllvm-target-tuple.60.20compiler-team.23846))
  - "Renaming Zulip T-compiler WGs streams" [compiler-team#848](https://github.com/rust-lang/compiler-team/issues/848) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23848))
- MCPs blocked on unresolved concerns
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: about 58 days ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
- Other teams finalized FCPs
  - "Add lint against function pointer comparisons" [rust#118833](https://github.com/rust-lang/rust/pull/118833)
  - "Fixup Windows verbatim paths when used with the `include!` macro" [rust#125205](https://github.com/rust-lang/rust/pull/125205)
  - "Uplift `clippy::double_neg` lint as `double_negations`" [rust#126604](https://github.com/rust-lang/rust/pull/126604)
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "atomics: allow atomic and non-atomic reads to race" [rust#128778](https://github.com/rust-lang/rust/pull/128778)
  - "Lint against getting pointers from immediately dropped temporaries" [rust#128985](https://github.com/rust-lang/rust/pull/128985)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "Make deprecated_cfg_attr_crate_type_name a hard error" [rust#129670](https://github.com/rust-lang/rust/pull/129670)
  - "Stabilize expr_2021 fragment specifier in all editions" [rust#129972](https://github.com/rust-lang/rust/pull/129972)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)
  - "Finish stabilization of `result_ffi_guarantees`" [rust#130628](https://github.com/rust-lang/rust/pull/130628)
  - "Stabilize const `ptr::write*` and `mem::replace`" [rust#130954](https://github.com/rust-lang/rust/pull/130954)
  - "Stabilize s390x inline assembly" [rust#131258](https://github.com/rust-lang/rust/pull/131258)
  - "Stabilize Arm64EC inline assembly" [rust#131781](https://github.com/rust-lang/rust/pull/131781)
  - "Always display first line of impl blocks even when collapsed" [rust#132155](https://github.com/rust-lang/rust/pull/132155)
  - "rework winnowing to sensibly handle global where-bounds" [rust#132325](https://github.com/rust-lang/rust/pull/132325)
  - "mark is_val_statically_known intrinsic as stably const-callable" [rust#132449](https://github.com/rust-lang/rust/pull/132449)
  - "Fix ICE when multiple supertrait substitutions need assoc but only one is provided" [rust#133392](https://github.com/rust-lang/rust/pull/133392)
  - "[rustdoc] Add sans-serif font setting" [rust#133636](https://github.com/rust-lang/rust/pull/133636)
  - "disallow `repr()` on invalid items" [rust#133925](https://github.com/rust-lang/rust/pull/133925)
  - "Make the wasm_c_abi future compat warning a hard error" [rust#133951](https://github.com/rust-lang/rust/pull/133951)
  - "fully de-stabilize all custom inner attributes" [rust#134276](https://github.com/rust-lang/rust/pull/134276)
  - "remove long-deprecated no-op attributes no_start and crate_id" [rust#134300](https://github.com/rust-lang/rust/pull/134300)
  - "Stabilize `feature(trait_upcasting)`" [rust#134367](https://github.com/rust-lang/rust/pull/134367)
  - "Fix parsing of ranges after unary operators" [rust#134900](https://github.com/rust-lang/rust/pull/134900)
  - "Future incompatibility warning `unsupported_fn_ptr_calling_conventions`: Also warn in dependencies" [rust#135767](https://github.com/rust-lang/rust/pull/135767)
  - "Reject `?Trait` bounds in various places where we unconditionally warned since 1.0" [rust#135841](https://github.com/rust-lang/rust/pull/135841)
  - "Make cenum_impl_drop_cast a hard error" [rust#135964](https://github.com/rust-lang/rust/pull/135964)
  - "Allow `*const W<dyn A> -> *const dyn A` ptr cast" [rust#136127](https://github.com/rust-lang/rust/pull/136127)
  - "Do not deduplicate list of associated types provided by dyn principal" [rust#136458](https://github.com/rust-lang/rust/pull/136458)
  - "Do not allow attributes on struct field rest patterns" [rust#136490](https://github.com/rust-lang/rust/pull/136490)
  - "Make `ptr_cast_add_auto_to_object` lint into hard error" [rust#136764](https://github.com/rust-lang/rust/pull/136764)
  - "Turn order dependent trait objects future incompat warning into a hard error" [rust#136968](https://github.com/rust-lang/rust/pull/136968)
  - "add a "future" edition" [rust#137606](https://github.com/rust-lang/rust/pull/137606)
  - "Stabilize `#![feature(precise_capturing_in_traits)]`" [rust#138128](https://github.com/rust-lang/rust/pull/138128)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
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
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 2 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 20 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- None

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "`rustc.exe -vV` didn't exit successfully (exit code: 0xc000007b) on `i686-pc-windows-gnu`" [rust#136795](https://github.com/rust-lang/rust/issues/136795)
  - fixed by (beta-backport approved) #136815

## Performance logs

> [triage logs for 2025-03-25](https://github.com/Mark-Simulacrum/rustc-perf/blob/triage/triage/2025-03-24.md)

A nearly noise-free week, which is exciting, with a number of fairly large
improvements landing for a cumulative average speed up 0.5%, possibly larger if
we ignore the likely to be fixed or reverted regressions from
[#138674](https://github.com/rust-lang/rust/pull/138674).

Triage done by **@simulacrum**.
Revision range: [493c38ba..4510e86a](https://perf.rust-lang.org/?start=493c38ba371929579fe136df26eccd9516347c7a&end=4510e86a41388733675465a8647d4235f3bf2023&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.4%  | [0.2%, 13.5%]  | 17    |
| Regressions (secondary)  | 2.2%  | [0.2%, 6.9%]   | 38    |
| Improvements (primary)   | -1.0% | [-4.9%, -0.1%] | 135   |
| Improvements (secondary) | -1.4% | [-4.3%, -0.2%] | 118   |
| All  (primary)           | -0.5% | [-4.9%, 13.5%] | 152   |


3 Regressions, 4 Improvements, 2 Mixed; 3 of them in rollups
35 artifact comparisons made in total

#### Regressions

Rollup of 10 pull requests [#138693](https://github.com/rust-lang/rust/pull/138693) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c4b38a596767c9c6275c937cf3a2d4b9612b4875&end=a7fc463dd8fbeca800d4b3efc501069502cffe64&stat=instructions:u)

| (instructions:u)                   | mean | range         | count |
|:----------------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 6.8% | [0.5%, 14.7%] | 10    |
| Regressions (secondary)  | 3.2% | [0.2%, 9.5%]  | 32    |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)                 | 6.8% | [0.5%, 14.7%] | 10    |

Significant regression in query methods due to
https://github.com/rust-lang/rust/pull/138674, @oli-obk is bisecting which of
the changes actually caused it (it should have been a no-op PR).

expand: Leave traces when expanding `cfg_attr` attributes [#138515](https://github.com/rust-lang/rust/pull/138515) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d8e44b722a93e55cbc9a8188dfbfe3faf1226096&end=78948ac259253ce89effca1e8bb64d16f4684aa4&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.1%, 1.8%] | 29    |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.1%, 1.8%] | 29    |

Slight regressions are expected as we're preserving more information for later
in the compiler (see comment in https://github.com/rust-lang/rust/pull/138515#issuecomment-2726426176).

Only use the new node hashmap for anonymous nodes [#138629](https://github.com/rust-lang/rust/pull/138629) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=90f5eab952728ac6edcf529a171f7de5c25e5d49&end=4510e86a41388733675465a8647d4235f3bf2023&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.5%]   | 31    |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.8%]   | 17    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)                 | 0.3%  | [0.1%, 0.5%]   | 31    |

Perf turns on incremental-verify-ich, but this should have no effect on builds with that turned off.

#### Improvements

Rollup of 7 pull requests [#138630](https://github.com/rust-lang/rust/pull/138630) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=493c38ba371929579fe136df26eccd9516347c7a&end=259fdb521200c9abba547302fc2c826479ef26b2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.2%, -0.1%] | 5     |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] | 4     |
| All  (primary)                 | -0.1% | [-0.2%, -0.1%] | 5     |


Represent diagnostic side effects as dep nodes [#122156](https://github.com/rust-lang/rust/pull/122156) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a7fc463dd8fbeca800d4b3efc501069502cffe64&end=1aeb99d248e1b0069110cb03c6f1dcc7b36fd7f3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.4%, -0.2%] | 117   |
| Improvements (secondary) | -0.9% | [-1.6%, -0.0%] | 37    |
| All  (primary)                 | -0.7% | [-1.4%, -0.2%] | 117   |


Rollup of 10 pull requests [#138873](https://github.com/rust-lang/rust/pull/138873) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7290b04b0a46de2118968aa556bfc0970aac6661&end=ae8ab87de4d8caab5d91a027bc19bb5d5e8a3691&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.2% | [-4.3%, -0.2%] | 20    |
| Improvements (secondary) | -1.3% | [-3.7%, -0.2%] | 98    |
| All  (primary)                 | -2.1% | [-4.3%, 0.1%]  | 21    |


Optimize hash map operations in the query system [#115747](https://github.com/rust-lang/rust/pull/115747) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b95aac6a98e43ee9d47cd05cb2d476610c51dcb7&end=90f5eab952728ac6edcf529a171f7de5c25e5d49&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 20    |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 24    |
| All  (primary)                 | -0.2% | [-0.4%, -0.1%] | 20    |


#### Mixed

Consider fields to be inhabited if they are unstable [#133889](https://github.com/rust-lang/rust/pull/133889) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=87e60a7d285f8ea560189024f85f2b194d1f168f&end=d8e44b722a93e55cbc9a8188dfbfe3faf1226096&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 3     |
| Regressions (secondary)  | 1.4%  | [0.3%, 1.9%]   | 11    |
| Improvements (primary)   | -0.0% | [-0.0%, -0.0%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-0.0%, 0.2%]  | 4     |

This is a soundness fix and the regression is limited to our stress test for this area of the code:

> The perf diff is in the match exhaustiveness stress-test. I don't think we're
> running any new code for this test, but it's always very sensitive to things
> like inlining decisions so I'm not surprised. Good to know, and ok to ignore.

(https://github.com/rust-lang/rust/pull/133889)

Reduce FormattingOptions to 64 bits [#136974](https://github.com/rust-lang/rust/pull/136974) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=db687889a5833381b8b02738a1af93a09a97ba16&end=0ce1369bde8ea61c0286f6e3e35e38fca569a50b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 3     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.2%] | 7     |
| Improvements (secondary) | -1.5% | [-1.5%, -1.5%] | 1     |
| All  (primary)                 | -0.4% | [-0.5%, -0.2%] | 7     |

Regressions are limited to the `coercions` secondary benchmark, which sometimes
has natural bimodality. It doesn't seem worth further investigation into this
regression given the limited regression.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Improve parse item fallback" [rust#125388](https://github.com/rust-lang/rust/pull/125388) (last review activity: 10 months ago)
  - cc: @**Esteban Küber**
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784) (last review activity: 9 months ago)
  - cc: @**Esteban Küber** for a rebase, cc: @_**León Orell Liehr (fmease)** for review
- "collect doc alias as tips during resolution" [rust#127721](https://github.com/rust-lang/rust/pull/127721) (last review activity: 8 months ago)
  - cc @**Esteban Küber**
- "Detect tuple structs that are unconstructable due to re-export" [rust#133477](https://github.com/rust-lang/rust/pull/133477) (last review activity: 4 months ago)
  - cc: @**cjgillot**
- "Share the naked asm impl between cg_ssa and cg_clif" [rust#134232](https://github.com/rust-lang/rust/pull/134232) (last review activity: 3 months ago)
  - cc @**Esteban Küber**
- "Look at proc-macro attributes when encountering unknown attribute" [rust#134841](https://github.com/rust-lang/rust/pull/134841) (last review activity: 2 months ago)
  - cc @**Wesley Wiser**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/biWYqzQnQ8yN0U0s_rouHw)
