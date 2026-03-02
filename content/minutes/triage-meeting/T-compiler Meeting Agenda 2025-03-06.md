---
tags: weekly, rustc
type: docs
note_id: zeCD1oTvSw25_hTkNFemGQ
---

# T-compiler Meeting Agenda 2025-03-06

## Announcements

- Tomorrow <time:2025-03-07T09:00:00-06:00>: backlog bonanza cleanup [compiler-team#484](https://github.com/rust-lang/compiler-team/issues/484)
- RustWeek in the Netherland May, 13-17th: join the conversation and suggest topics for talks! There are short-to-medium slots ([Zulip discussion](https://rust-lang.zulipchat.com/#narrow/channel/486433-all-hands-2025/topic/Rust.20Project.20Track.20at.20RustWeek.20Conference/near/503508477))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-03-03T19:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842))
  - "Policy: Require MCP and relevant team nominations for adding (ecosystem, custom codegen backend) testing jobs that would block PR/Merge CI and require documenting failure protocol" [compiler-team#845](https://github.com/rust-lang/compiler-team/issues/845) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Require.20MCP.20for.20adding.20.28ecosystem.E2.80.A6.20compiler-team.23845))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
     - @**topic**: can we second this? Any concern?
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 4 months ago)
     - @**topic**: Can anyone with some context have a look at it? thanks
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 4 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 55 days ago)
  - "`rustc_target` for rust-analyzer" [compiler-team#839](https://github.com/rust-lang/compiler-team/issues/839) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60rustc_target.60.20for.20rust-analyzer.20compiler-team.23839)) (last review activity: about 12 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Things in FCP (make sure you're good with it)
  - "Add `--print=crate-root-lint-levels` to retrieve lints levels" [compiler-team#833](https://github.com/rust-lang/compiler-team/issues/833) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dlint-levels.60.20to.20retrieve.20lin.E2.80.A6.20compiler-team.23833))
  - "Give integer literals a sign instead of relying on negation expressions" [compiler-team#835](https://github.com/rust-lang/compiler-team/issues/835) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Give.20integer.20literals.20a.20sign.20instead.20of.20r.E2.80.A6.20compiler-team.23835))
  - "Enable `warn(unused_crate_dependencies)` on `rustc_*` crates" [compiler-team#844](https://github.com/rust-lang/compiler-team/issues/844) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60warn.28unused_crate_dependencies.29.20o.E2.80.A6.20compiler-team.23844))
- Accepted MCPs
  - "Add `target_abi = "[ilp]{2,3}[3264]{2}[fdq]?"` to all RV[3264]{2}I targets" [compiler-team#830](https://github.com/rust-lang/compiler-team/issues/830) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_abi.20.3D.20.22.5Bilp.5D.7B2.2C3.7D.5B3264.5D.7B2.7D.5Bfd.E2.80.A6.20compiler-team.23830))
  - "Add `--print=supported-crate-types`" [compiler-team#836](https://github.com/rust-lang/compiler-team/issues/836) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dsupported-crate-types.60.20compiler-team.23836))
  - "Ban projecting into `repr(simd)` types" [compiler-team#838](https://github.com/rust-lang/compiler-team/issues/838) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Ban.20projecting.20into.20.60repr.28simd.29.60.20types.20compiler-team.23838))
  - "Remove `i586-pc-windows-msvc`" [compiler-team#840](https://github.com/rust-lang/compiler-team/issues/840) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20.60i586-pc-windows-msvc.60.20compiler-team.23840))
- MCPs blocked on unresolved concerns
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 5 days ago)
    - concern: [design-around-naming-scheme](https://github.com/rust-lang/compiler-team/issues/778#issuecomment-2514307904)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: about 37 days ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
    - concern: [contributor friction](https://github.com/rust-lang/compiler-team/issues/817#issuecomment-2525266792)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - @**Wesley Wiser** thanks for following up on this (saw your recent comments)
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

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Check signature WF when lowering MIR body" [rust#137298](https://github.com/rust-lang/rust/pull/137298)
  - Authored by compiler-errors, nominated by @_**apiraino** as a potential "nice to have" but doesn't seem urgent
  - Fixes #137186, a P-medium ICE
<!--
/poll Approve beta: backport of #137298?
approve
decline
don't know
-->
- :beta: "rustdoc: when merging target features, keep the highest stability" [rust#137632](https://github.com/rust-lang/rust/pull/137632)
  - Authored by RalfJung
  - Fixes #137366 (possibly p-high), where rust docs generation failed on some ARM32 targets
<!--
/poll Approve beta: backport of #137632?
approve
decline
don't know
-->
- :beta: "Don't infer attributes of virtual calls based on the function body" [rust#137669](https://github.com/rust-lang/rust/pull/137669)
  - Authored by DianQK
  - Fixes #137646, p-critical miscompile, turns out was on stable [after all](https://github.com/rust-lang/rust/issues/137646#issuecomment-2683889465)
<!--
/poll Approve beta:  backport of #137669?
approve
decline
don't know
-->
- :beta: Revert "store ScalarPair via memset when one side is undef and the other side can be memset" [rust#137894](https://github.com/rust-lang/rust/pull/137894)
  - Authored by @**Michael Goulet (compiler-errors)**
  - Fixes #137892, reverts the patch that regressed (#135335)
<!--
/poll Approve beta:  backport of #137894?
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
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 33 P-high, 100 P-medium, 20 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
-  "Miscompilation caused by incorrectly-deduced readonly on virtual call" [rust#137646](https://github.com/rust-lang/rust/issues/137646)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: ICE in rustc_codegen_ssa/src/mir/rvalue.rs:104:55:" [rust#137892](https://github.com/rust-lang/rust/issues/137892)
  - Taken care by @**oli** in #137894 beta-nominated (reverted #135335 that caused the regression)
- "regression: literal out of range" [rust#137893](https://github.com/rust-lang/rust/issues/137893)
  - It's on the radar (I think @**oli** and/or @_**Michael Goulet (compiler-errors)** )

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2025-03-03](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-03-03.md)

A pretty quiet week, with minimal changes in performance (positive or negative).

Triage done by **@simulacrum**.
Revision range: [f5729cfe..daf59857](https://perf.rust-lang.org/?start=f5729cfed3c45e061e8a443677fc1d5ef9277df7&end=daf59857d6d2b87af4b846316bf1561a6083ed51&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.6%]   | 16    |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.6%]   | 27    |
| Improvements (primary)   | -0.4% | [-1.1%, -0.2%] | 27    |
| Improvements (secondary) | -1.0% | [-4.1%, -0.1%] | 63    |
| All  (primary)           | -0.1% | [-1.1%, 0.6%]  | 43    |


1 Regressions, 4 Improvements, 1 Mixed; 2 of them in rollups
29 artifact comparisons made in total

#### Regressions

Remove `NtPat`, `NtMeta`, and `NtPath` [#137517](https://github.com/rust-lang/rust/pull/137517) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=287487624357c19b22d27aa3ed584b8ccd080b4d&end=aa3c2d73eff57d6b019c26a1e9aa8afd8bc186ad&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 16    |
| Regressions (secondary)  | 0.4% | [0.3%, 0.6%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.4%] | 16    |

> The perf regressions are expected and unavoidable, alas.

https://github.com/rust-lang/rust/pull/137517#issuecomment-2692915586

#### Improvements

Change interners to start preallocated with an increased capacity [#137354](https://github.com/rust-lang/rust/pull/137354) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2af87eab3b4890d62ad998cf9c55e076d91bf06a&end=ac91805f3179fc2225c60e8ccf5a1daa09d43f3d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.2%] | 39    |
| Improvements (secondary) | -0.4% | [-1.1%, -0.1%] | 63    |
| All  (primary)                 | -0.3% | [-0.6%, 0.4%]  | 41    |


Rollup of 8 pull requests [#137710](https://github.com/rust-lang/rust/pull/137710) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e6059f522264ed2ec3ede21bfeef15bf3d814bf7&end=cb08599451226d780b2490f1aa9b414fe9e36657&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.0% | [-2.8%, -1.3%] | 9     |
| All  (primary)                 | -     | -              | 0     |


`librustdoc`: return `impl fmt::Display` in more places instead of writing to strings [#137425](https://github.com/rust-lang/rust/pull/137425) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b696e6bf77b4df02634d346637bd35f2960c5f4&end=7c4a55c2ac6497629c273ccd00e185583542f0d2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.2%, -0.2%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.6% | [-1.2%, -0.2%] | 4     |


Optimize empty provenance range checks. [#137704](https://github.com/rust-lang/rust/pull/137704) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f4a216d28ee635afce685b4206e713579f66e130&end=daf59857d6d2b87af4b846316bf1561a6083ed51&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 3     |
| Improvements (secondary) | -1.9% | [-3.4%, -0.2%] | 13    |
| All  (primary)                 | -0.3% | [-0.3%, -0.3%] | 3     |


#### Mixed

Rollup of 10 pull requests [#137796](https://github.com/rust-lang/rust/pull/137796) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aa3c2d73eff57d6b019c26a1e9aa8afd8bc186ad&end=30508faeb3248d399079513b6e0107af30a43948&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.4%]   | 9     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 8     |
| Improvements (primary)   | -0.6% | [-0.9%, -0.2%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-0.9%, 0.4%]  | 11    |

Hoping for recovery in subsequent PRs (see comment: https://github.com/rust-lang/rust/pull/137796#issuecomment-2693307115).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Do not eagerly reject inference vars when trying to resolve method calls." [rust#126316](https://github.com/rust-lang/rust/pull/126316)
  - cc @**lcnr**
- "Share the naked asm impl between cg_ssa and cg_clif" [rust#134232](https://github.com/rust-lang/rust/pull/134232)
  - cc @**Esteban Küber**
- "Show pending obligations as unsatisfied constraints in `report_similar_impl_candidates`" [rust#134348](https://github.com/rust-lang/rust/pull/134348) (last review activity: 2 months ago)
  - cc @**Michael Goulet (compiler-errors)** or @**Wesley Wiser** can you have a second look if the minimization here is now adequate?
- "Make `Default` const and add some `const Default` impls" [rust#134628](https://github.com/rust-lang/rust/pull/134628) (last review activity: 2 months ago)
  - cc @**oli**
- "Invalidate all dereferences when encountering non-local assignments" [rust#132527](https://github.com/rust-lang/rust/pull/132527) (last review activity: 2 months ago)
  - cc @**cjgillot**


Next meetings' agenda draft: [hackmd link](https://hackmd.io/oWCU95r-SKK0Iaw9HXJswQ)
