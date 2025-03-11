---
tags: weekly, rustc
type: docs
note_id: AXGQgEeVTPCWvQb3yeYSrA
---

# T-compiler Meeting Agenda 2025-02-06

## Announcements

- FIY: a discussion on [Zulip](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Should.20CI.20break.20if.20rust-analyzer.20tests.20fail/near/498094558) about `bootstrap` running all tests of rust-analyzer. If anyone has opinions, please join the discussion.
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-02-06T19:00:00+01:00>
- Stable MIR Weekly Meeting <time:2025-02-07T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 3 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 3 months ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: 3 months ago)
  - "Demote `i686-pc-windows-gnu`" [compiler-team#822](https://github.com/rust-lang/compiler-team/issues/822) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Demote.20.60i686-pc-windows-gnu.60.20compiler-team.23822)) (last review activity: about 41 days ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 27 days ago)
  - "Add `target_abi = "[ilp]{2,3}[3264]{2}[fdq]?"` to all RV[3264]{2}I targets" [compiler-team#830](https://github.com/rust-lang/compiler-team/issues/830) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_abi.20.3D.20.22.5Bilp.5D.7B2.2C3.7D.5B3264.5D.7B2.7D.5Bfd.E2.80.A6.20compiler-team.23830)) (last review activity: about 6 days ago)
  - "Add `--print=lint-levels` to retrieve lints levels" [compiler-team#833](https://github.com/rust-lang/compiler-team/issues/833) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dlint-levels.60.20to.20retrieve.20lin.E2.80.A6.20compiler-team.23833)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
- Things in FCP (make sure you're good with it)
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Create.20an.20avr-unknown-none.20target.20compiler-team.23800))
  - "Clean up operator representations" [compiler-team#831](https://github.com/rust-lang/compiler-team/issues/831) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Clean.20up.20operator.20representations.20compiler-team.23831))
  - "Do not ignore uninhabited types for function-call ABI purposes." [compiler-team#832](https://github.com/rust-lang/compiler-team/issues/832) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Do.20not.20ignore.20uninhabited.20types.20for.20funct.E2.80.A6.20compiler-team.23832))
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
    - concern: [contributor friction](https://github.com/rust-lang/compiler-team/issues/817#issuecomment-2525266792)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: about 9 days ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: 2 months ago)
    - concern: [design-around-naming-scheme](https://github.com/rust-lang/compiler-team/issues/778#issuecomment-2514307904)
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
  - "Stabilize `asm_goto` feature gate" [rust#133870](https://github.com/rust-lang/rust/pull/133870)
  - "Consider fields to be inhabited if they are unstable" [rust#133889](https://github.com/rust-lang/rust/pull/133889)
  - "disallow `repr()` on invalid items" [rust#133925](https://github.com/rust-lang/rust/pull/133925)
  - "Make the wasm_c_abi future compat warning a hard error" [rust#133951](https://github.com/rust-lang/rust/pull/133951)
  - "Stabilize target_feature_11" [rust#134090](https://github.com/rust-lang/rust/pull/134090)
  - "fully de-stabilize all custom inner attributes" [rust#134276](https://github.com/rust-lang/rust/pull/134276)
  - "remove long-deprecated no-op attributes no_start and crate_id" [rust#134300](https://github.com/rust-lang/rust/pull/134300)
  - "Stabilize `feature(trait_upcasting)`" [rust#134367](https://github.com/rust-lang/rust/pull/134367)
  - "Make cenum_impl_drop_cast a hard error" [rust#135964](https://github.com/rust-lang/rust/pull/135964)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Ensure that we don't try to access fields on a non-struct pattern type" [rust#135222](https://github.com/rust-lang/rust/pull/135222)
  - Authored by estebank
  - Fixes #135209 (was evaluated P-low) but @_**Michael Goulet (compiler-errors)** says they're hitting it on stage 0 compiler ([comment](https://github.com/rust-lang/rust/pull/135222#issuecomment-2634868365))
<!--
/poll Approve beta:  backport of #135222?
approve
decline
don't know
-->
- :beta: "Add a couple of missing `ensure_sufficient_stacks`" [rust#136352](https://github.com/rust-lang/rust/pull/136352)
  - Authored by @**lqd**
  - companion fix for #135709 (esp. to fix a test on `aarch64-linux`) ([comment](https://github.com/rust-lang/rust/pull/136352#issuecomment-2628030251))
  - slight perf. regression rubberstamped since this backport complments closing P-critical #135671
<!--
/poll Approve beta:  backport of #136352?
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
- "typeck: taint if errors found during writeback" [rust#113125](https://github.com/rust-lang/rust/pull/113125)
  - last [comment](https://github.com/rust-lang/rust/pull/113125#issuecomment-2429093023) from Oct 2024
  - Was meant to fix #112824 (already closed) and #112630 (P-low). Do we want to keep it open?
  - cc @**davidtwco** for maybe more context, probably not a big concern
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 20 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "regression: cannot borrow ... as immutable because it is also borrowed as mutable" [rust#135671](https://github.com/rust-lang/rust/issues/135671)
  - Discussed [last week](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202025-01-30/near/496801412)
  - Should be fixed by #135709 + #136352
- "invalid opcode regression in `x86_64-unknown-linux-musl` release builds while compiling code using `generic-array`" [rust#135997](https://github.com/rust-lang/rust/issues/135997)
  - regressed in #133324 (not in beta, though)
  - Should be closed by #136450, now r+'ed (thanks @**Michael Goulet (compiler-errors)** and @**Ben Kimock (Saethlin)** )
  - btw about #136450: if anyone knows GVN better can have a look either ([comment](https://github.com/rust-lang/rust/pull/136450#issuecomment-2637853202))
- "Nightly regressed igvm crate and now emits SIGILL at opt-level higher than 1" [rust#136361](https://github.com/rust-lang/rust/issues/136361)
  - same as #135997

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- None

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-02-04](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-02-04.md)

A very quiet week with performance of primary benchmarks showing no change over all.

Triage done by **@rylev**.
Revision range: [f7538506..01e4f19c](https://perf.rust-lang.org/?start=f753850659bdf5788332525f3fe395685929c682&end=01e4f19cc8027925ffe0885a86388b700e46bfab&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.6%]    | 32    |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.1%]    | 65    |
| Improvements (primary)   | -0.5% | [-1.0%, -0.2%]  | 17    |
| Improvements (secondary) | -3.1% | [-10.3%, -0.2%] | 20    |
| All  (primary)           | 0.0%  | [-1.0%, 0.6%]   | 49    |


5 Regressions, 2 Improvements, 5 Mixed; 6 of them in rollups
49 artifact comparisons made in total

#### Regressions

Rollup of 10 pull requests [#136135](https://github.com/rust-lang/rust/pull/136135) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0cffe5cb95e36d45a3e61f7b1f5a9b21eddd77b4&end=ebcf860e7345e3387b4c6961338c77424b43cbd5&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.3%] | 2     |
| Regressions (secondary)  | 0.2% | [0.2%, 0.3%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.3%] | 2     |


Rollup of 9 pull requests [#136227](https://github.com/rust-lang/rust/pull/136227) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=61cc3e51f8bf5c12595a4d61a5ee9de812974b43&end=a1d7676d6a8c6ff13f9165e98cc25eeec66cb592&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 1     |
| Regressions (secondary)  | 0.2% | [0.2%, 0.2%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.2%, 0.2%] | 1     |
- Addressed by https://github.com/rust-lang/rust/pull/136253


Merge `PatKind::Path` into `PatKind::Expr` [#134248](https://github.com/rust-lang/rust/pull/134248) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0cc4f4f7b81f88df6bdd54b41d4a0b1703fd014d&end=ae5de6c759cd337ecdb2de4e94f47eaafb5d4606&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 8     |
| Regressions (secondary)  | 0.3% | [0.1%, 0.5%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.4%] | 8     |
- https://github.com/rust-lang/rust/pull/134248#issuecomment-2610453075


Insert null checks for pointer dereferences when debug assertions are enabled [#134424](https://github.com/rust-lang/rust/pull/134424) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7f36543a48e52912ac6664a70c0a5b9d86509eaf&end=aa4cfd0809064503c69795e8e83ad067ad9e11a1&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.5%] | 7     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.5%] | 5     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.5%] | 7     |
- https://github.com/rust-lang/rust/pull/134424#issuecomment-2628695885


Add a couple of missing `ensure_sufficient_stacks` [#136352](https://github.com/rust-lang/rust/pull/136352) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a5db378dc14a40dd1580c27fb8362156446382c3&end=f2c4ccd852f68fb36dedc033239cb7c0fb1921ef&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.2% | [0.2%, 0.3%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |
- https://github.com/rust-lang/rust/pull/136352#issuecomment-2633158239

#### Improvements

Apply LTO config to rustdoc [#135832](https://github.com/rust-lang/rust/pull/135832) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fdd1a3b02687817cea41f6bacae3d5fbed2b2cd0&end=77a455303bf08da8eef6236b2b4422a77cd25c42&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.2%] | 9     |
| Improvements (secondary) | -0.6% | [-1.4%, -0.2%] | 4     |
| All  (primary)                 | -0.3% | [-0.6%, -0.2%] | 9     |


fix autodiff compile time regression [#136413](https://github.com/rust-lang/rust/pull/136413) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7daf4cf911c30e48c78f5e155c029397fdd82392&end=a5db378dc14a40dd1580c27fb8362156446382c3&stat=instructions:u)

| (instructions:u)                   | mean   | range            | count |
|:----------------------------------:|:------:|:----------------:|:-----:|
| Regressions (primary)    | -      | -                | 0     |
| Regressions (secondary)  | -      | -                | 0     |
| Improvements (primary)   | -30.3% | [-30.6%, -29.7%] | 4     |
| Improvements (secondary) | -30.1% | [-32.0%, -28.2%] | 2     |
| All  (primary)                 | -30.3% | [-30.6%, -29.7%] | 4     |


#### Mixed

Rollup of 8 pull requests [#136185](https://github.com/rust-lang/rust/pull/136185) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aa6f5ab18e67cb815f73e0d53d217bc54b0da924&end=fdd1a3b02687817cea41f6bacae3d5fbed2b2cd0&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.7%  | [0.2%, 1.6%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.8%, -0.4%] | 6     |
| All  (primary)                 | -     | -              | 0     |
* https://github.com/rust-lang/rust/pull/136185#issuecomment-2635291385


Revert #135914: Remove usages of `QueryNormalizer` in the compiler [#136011](https://github.com/rust-lang/rust/pull/136011) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aeba3c60f506218396883cb57812de2f3e067112&end=122fb29eb639aae852b9dcba0fd7aefc691be118&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]    | 16    |
| Improvements (primary)   | -0.4% | [-1.1%, -0.2%]  | 24    |
| Improvements (secondary) | -5.9% | [-10.4%, -0.9%] | 10    |
| All  (primary)                 | -0.4% | [-1.1%, -0.2%]  | 24    |
- https://github.com/rust-lang/rust/pull/136011#issuecomment-2635292874


Rollup of 9 pull requests [#136318](https://github.com/rust-lang/rust/pull/136318) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a730edcd67c7cb29d4458e170d4eb290387c27c3&end=6c1d960d88dd3755548b3818630acb63fa98187e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.4%]   | 8     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 2     |
| All  (primary)                 | 0.3%  | [0.1%, 0.4%]   | 8     |
- It appears that #136180 is the culprit for this regression. I'm not sure it's worth addressing though.


Rollup of 9 pull requests [#136332](https://github.com/rust-lang/rust/pull/136332) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=25a16572a36321deae83546b63f5595d75361179&end=7f36543a48e52912ac6664a70c0a5b9d86509eaf&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 43.3% | [42.1%, 44.0%] | 4     |
| Regressions (secondary)  | 42.8% | [39.0%, 46.6%] | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 4     |
| All  (primary)                 | 43.3% | [42.1%, 44.0%] | 4     |
- Fixed by https://github.com/rust-lang/rust/pull/136413


Rollup of 6 pull requests [#136389](https://github.com/rust-lang/rust/pull/136389) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e08cd3cf05e5bfa3323cc21ea8f81f4a15a2f969&end=8239a37f9c0951a037cfc51763ea52a20e71e6bd&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.5%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 2     |
| All  (primary)                 | -0.1% | [-0.3%, 0.1%]  | 2     |
- Perf is a wash so I don't think it's worth investigating.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Our x86-32 target names are inconsistent" [rust#136495](https://github.com/rust-lang/rust/issues/136495)
  - ([Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/x86-32.20target.20names/near/497467753)) @**RalfJ** would like the T-compiler attention on a number of x86 tier 3 compile target, which naming is inconsistent (or inaccurate)
  - This PR is to gather feedbacks and opinions
- "Pattern Migration 2024: try to suggest eliding redundant binding modifiers" [rust#136577](https://github.com/rust-lang/rust/pull/136577)
  - @**Nadrieril** mentioned he was oriented to ask for a backport ([Zulip discussion](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Backporting.20disgnostic.20changes.3F/near/497933188))
  - Context: the edition migration lint for match ergonomics is subpar, see https://github.com/rust-lang/rust/issues/136047 and https://github.com/rust-lang/rust/issues/136456. Given that it will likely affect many users and the details are nonobvious, it felt important (to me Nadri) to have that fix for the stable realease of the edition
  - it's not the smallest PR; a smaller PR could maybe be done but I (Nadri) don't have the bandwidth. the current PR is almost 100% infallible span/label manipulations so hopefully that's not too risky to merge

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733) (last review activity: 13 months ago)
  - cc: @**Esteban Küber**
- "Add diagnostic for stack allocations of 1 GB or more" [rust#119798](https://github.com/rust-lang/rust/pull/119798) (last review activity: 13 months ago)
  -  cc @**cjgillot**
- "Improve parse item fallback" [rust#125388](https://github.com/rust-lang/rust/pull/125388) (last review activity: 8 months ago)
  - cc: @**Esteban Küber**
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784) (last review activity: 8 months ago)
  - cc: @**Esteban Küber** for a rebase then to @**León Orell Liehr (fmease)** for a review

Next meetings' agenda draft: [hackmd link](https://hackmd.io/636Uj8fYQHevhHgCemhndQ)
