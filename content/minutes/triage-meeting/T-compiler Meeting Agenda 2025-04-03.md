---
tags: weekly, rustc
type: docs
note_id: biWYqzQnQ8yN0U0s_rouHw
---

# T-compiler Meeting Agenda 2025-04-03

## Announcements

- New rustc 1.86 release: https://blog.rust-lang.org/2025/04/03/Rust-1.86.0.html
- Tomorrow <time:2025-04-04T16:00:00+02:00>  Design meeting about parallel compilation support strategy [mcp#492](https://github.com/rust-lang/compiler-team/issues/492)
  - cc: @**Sparrow Li** @**Zoxc**
  - Draft for meeting agenda: https://hackmd.io/HWL6sKDySqaHlXvs1cL6tA (feel free to edit!)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-04-03T19:00:00+02:00>
- Stable MIR Weekly Meeting <time:2025-04-04T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "`-Zemit-code-for-final-artifact-to-link` (officially supported `__rust_alloc` replacement)" [compiler-team#858](https://github.com/rust-lang/compiler-team/issues/858) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-Zemit-code-for-final-artifact-to-link.60.20.E2.80.A6.20compiler-team.23858))
    - relevant issue: #139265
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 6 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 5 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 5 months ago)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: about 20 days ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 2 months ago)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: 2 months ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "`rustc_target` for rust-analyzer" [compiler-team#839](https://github.com/rust-lang/compiler-team/issues/839) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60rustc_target.60.20for.20rust-analyzer.20compiler-team.23839)) (last review activity: about 40 days ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: about 26 days ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 13 days ago)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Policy: Require MCP and relevant team nominations for adding (ecosystem, custom codegen backend) testing jobs that would block PR/Merge CI and require documenting failure protocol" [compiler-team#845](https://github.com/rust-lang/compiler-team/issues/845) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Require.20MCP.20for.20adding.20.28ecosystem.E2.80.A6.20compiler-team.23845))
  - "Allow boolean literals in `--check-cfg`" [compiler-team#854](https://github.com/rust-lang/compiler-team/issues/854) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20boolean.20literals.20in.20.60--check-cfg.60.20compiler-team.23854))
  - "Enable autodiff testcases in CI" [compiler-team#855](https://github.com/rust-lang/compiler-team/issues/855) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20autodiff.20testcases.20in.20CI.20compiler-team.23855))
  - "Review rotation policy: remove reviewer from active review rotation if there's prolonged lack of feedback on randomly-rolled PRs / indication that unavailability is temporary" [compiler-team#856](https://github.com/rust-lang/compiler-team/issues/856) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Review.20rotation.20policy.3A.20remove.20reviewer.20f.E2.80.A6.20compiler-team.23856))
    - concern: [quantify-time-before-setting-reviewer-off-rotation](https://github.com/rust-lang/compiler-team/issues/856#issuecomment-2762191483)
- Accepted MCPs
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
  - "Enable `warn(unused_crate_dependencies) on `rustc_*` crates" [compiler-team#844](https://github.com/rust-lang/compiler-team/issues/844) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60warn.28unused_crate_dependencies.29.20o.E2.80.A6.20compiler-team.23844))
  - "Add `--print=llvm-target-tuple`" [compiler-team#846](https://github.com/rust-lang/compiler-team/issues/846) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dllvm-target-tuple.60.20compiler-team.23846))
  - "Split `run-make` test suite into slower-building test suite with suitably-staged cargo and faster-building test suite without cargo" [compiler-team#847](https://github.com/rust-lang/compiler-team/issues/847) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20.60run-make.60.20test.20suite.20into.20fast.20tes.E2.80.A6.20compiler-team.23847))
  - "Renaming Zulip T-compiler WGs streams" [compiler-team#848](https://github.com/rust-lang/compiler-team/issues/848) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23848))
  - "Add `-Zsplit-metadata` flag to reduce disk usage" [compiler-team#851](https://github.com/rust-lang/compiler-team/issues/851) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zsplit-metadata.60.20flag.20to.20reduce.20dis.E2.80.A6.20compiler-team.23851))
- MCPs blocked on unresolved concerns
  - <Here group MCPs blocked on unresolved concerns>
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
  - "Always display first line of impl blocks even when collapsed" [rust#132155](https://github.com/rust-lang/rust/pull/132155)
  - "rework winnowing to sensibly handle global where-bounds" [rust#132325](https://github.com/rust-lang/rust/pull/132325)
  - "Fix ICE when multiple supertrait substitutions need assoc but only one is provided" [rust#133392](https://github.com/rust-lang/rust/pull/133392)
  - "[rustdoc] Add sans-serif font setting" [rust#133636](https://github.com/rust-lang/rust/pull/133636)
  - "Reject `?Trait` bounds in various places where we unconditionally warned since 1.0" [rust#135841](https://github.com/rust-lang/rust/pull/135841)
  - "Remove backticks from `ShouldPanic::YesWithMessage`'s `TrFailedMsg`" [rust#136160](https://github.com/rust-lang/rust/pull/136160)
  - "Do not deduplicate list of associated types provided by dyn principal" [rust#136458](https://github.com/rust-lang/rust/pull/136458)
  - "add a "future" edition" [rust#137606](https://github.com/rust-lang/rust/pull/137606)
  - "Prefer built-in sized impls (and only sized impls) for rigid types always" [rust#138176](https://github.com/rust-lang/rust/pull/138176)
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
  - "Remove backticks from `ShouldPanic::YesWithMessage`'s `TrFailedMsg`" [rust#136160](https://github.com/rust-lang/rust/pull/136160)
  - "Do not deduplicate list of associated types provided by dyn principal" [rust#136458](https://github.com/rust-lang/rust/pull/136458)
  - "Do not allow attributes on struct field rest patterns" [rust#136490](https://github.com/rust-lang/rust/pull/136490)
  - "Make `ptr_cast_add_auto_to_object` lint into hard error" [rust#136764](https://github.com/rust-lang/rust/pull/136764)
  - "Turn order dependent trait objects future incompat warning into a hard error" [rust#136968](https://github.com/rust-lang/rust/pull/136968)
  - "add a "future" edition" [rust#137606](https://github.com/rust-lang/rust/pull/137606)
  - "Stabilize `#![feature(precise_capturing_in_traits)]`" [rust#138128](https://github.com/rust-lang/rust/pull/138128)
  - "Prefer built-in sized impls (and only sized impls) for rigid types always" [rust#138176](https://github.com/rust-lang/rust/pull/138176)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Better errors with bad/missing identifiers in MBEs" [rust#118939](https://github.com/rust-lang/rust/pull/118939)
- "Implement RFC 3349, mixed utf8 literals" [rust#120286](https://github.com/rust-lang/rust/pull/120286)
- "Emit a warning if a `match` is too complex" [rust#122685](https://github.com/rust-lang/rust/pull/122685)
- "privacy: normalize associated types before visiting" [rust#126076](https://github.com/rust-lang/rust/pull/126076)
- "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
- "lexer: Treat more floats with empty exponent as valid tokens" [rust#131656](https://github.com/rust-lang/rust/pull/131656)
- "Tracking Issue for `bare_link_kind`" [rust#132061](https://github.com/rust-lang/rust/issues/132061)
- "Lint on fn pointers comparisons in external macros" [rust#134536](https://github.com/rust-lang/rust/pull/134536)
- "aarch64-softfloat: forbid enabling the neon target feature" [rust#135160](https://github.com/rust-lang/rust/pull/135160)
- "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [56 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [35 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 32 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-critical nightly regression
- "`__rust_alloc` can no longer be used to provide a custom allocator" [rust#139265](https://github.com/rust-lang/rust/issues/139265)
  - Chromium uses a different linker (clang's one), they cannot build on nightly anymore since [#127213](https://github.com/rust-lang/rust/pull/127173#issuecomment-2770201159)
  - Did we in any (more or less) official way support this?
  - @**RalfJ** suggests a stopgap solution ([comment](https://github.com/rust-lang/rust/pull/127173#issuecomment-2770312864))
  - In the long run should be solved by [compiler-team#858](https://github.com/rust-lang/compiler-team/issues/858)
  - Downgrade as not a release stopper?

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-03-31](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-03-31.md)

Positive week, with a lot of primary improvements and just a few secondary regressions. Single big regression got reverted.

Triage done by **@panstromek** (recently joined perf. triaging! :tada:)
Revision range: [4510e86a..2ea33b59](https://perf.rust-lang.org/?start=4510e86a41388733675465a8647d4235f3bf2023&end=2ea33b591050c4ca1a3752830b29112638faecf6&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.2%, 1.5%]   | 17    |
| Improvements (primary)   | -0.4% | [-4.5%, -0.1%] | 136   |
| Improvements (secondary) | -0.6% | [-3.2%, -0.1%] | 59    |
| All  (primary)           | -0.4% | [-4.5%, -0.1%] | 136   |


1 Regression, 6 Improvements, 4 Mixed; 3 of them in rollups
39 artifact comparisons made in total

#### Regressions

perform less decoding if it has the same syntax context [#129827](https://github.com/rust-lang/rust/pull/129827) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5cc60728e7ee10eb2ae5f61f7d412d9805b22f0c&end=d4812c8638173ec163825d56a72a33589483ec4c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.1%, 3.8%]   | 77    |
| Regressions (secondary)  | 2.3%  | [0.2%, 6.1%]   | 37    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)                 | 0.9%  | [0.1%, 3.8%]   | 77    |

Reverted in #[139130](https://github.com/rust-lang/rust/pull/139130).

#### Improvements

rustdoc: Rearrange `Item`/`ItemInner`. [#138927](https://github.com/rust-lang/rust/pull/138927) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ecb170afc878648c3ae355dbd596c8e4b6f7ebdc&end=217693a1f02ca6431a434926ff3417bdb6dbac2e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.3% | [-0.3%, -0.3%] | 2     |


Rollup of 7 pull requests [#139023](https://github.com/rust-lang/rust/pull/139023) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=217693a1f02ca6431a434926ff3417bdb6dbac2e&end=3f5502370b8f60e4df98deba4c22ea26f4f6be55&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.2%] | 21    |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)                 | -0.4% | [-0.5%, -0.2%] | 21    |


Avoid wrapping constant allocations in packed structs when not necessary [#138503](https://github.com/rust-lang/rust/pull/138503) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e77a8f439cc87c5d67b007e9811578533de1de91&end=2a06022951893fe5b5384f8dbd75b4e6e3b5cee0&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.6% | [-4.9%, -0.3%] | 6     |
| Improvements (secondary) | -2.0% | [-3.3%, -0.3%] | 9     |
| All  (primary)                 | -1.6% | [-4.9%, -0.3%] | 6     |


Rollup of 7 pull requests [#139054](https://github.com/rust-lang/rust/pull/139054) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2a06022951893fe5b5384f8dbd75b4e6e3b5cee0&end=19f42cb9bb65555e7d95dab7d17573ae6c5d634c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-2.2%, -0.1%] | 9     |
| All  (primary)                 | -     | -              | 0     |


Remove `terminating_scopes` hash set. [#139067](https://github.com/rust-lang/rust/pull/139067) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=928468c47c2a670bfa62727cfa2f14f75f5b7331&end=898916595c4496cee237a82f3f07650e5bd70447&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 1     |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] | 9     |
| All  (primary)                 | -0.1% | [-0.1%, -0.1%] | 1     |


Revert "Auto merge of #129827 - bvanjoi:less-decoding, r=petrochenkov" [#139130](https://github.com/rust-lang/rust/pull/139130) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b9ea82b84ad02b4a9fe9e513626e65fb3f540838&end=45b40a75966b36d3588f173441896fddad01cd80&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.4%, 0.6%]   | 2     |
| Improvements (primary)   | -0.9% | [-3.6%, -0.1%] | 74    |
| Improvements (secondary) | -2.2% | [-5.7%, -0.2%] | 37    |
| All  (primary)                 | -0.9% | [-3.6%, -0.1%] | 74    |

Addresses the regression above.

#### Mixed

Rollup of 9 pull requests [#138923](https://github.com/rust-lang/rust/pull/138923) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7d49ae9731555937177d01e9fa39dbf22eb60399&end=48994b1674b3212d27b5e83841c0966bc2b4be43&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.2%, 1.4%]   | 14    |
| Improvements (primary)   | -0.6% | [-0.6%, -0.6%] | 1     |
| Improvements (secondary) | -0.3% | [-0.6%, -0.2%] | 10    |
| All  (primary)                 | -0.6% | [-0.6%, -0.6%] | 1     |

Regressions for `unused-warnings`, seems to be somewhere in the frontend (check build regressed the most).

Seems like it's [#138580](https://github.com/rust-lang/rust/pull/138580).

Quoting [comment from the author](https://github.com/rust-lang/rust/pull/138580#issuecomment-2729429154)

> Probably fine, unused-warnings is a stress test for single_imports.

Part of it is probably continuation of that PR in [#138837](https://github.com/rust-lang/rust/pull/138837)


hygiene: Ensure uniqueness of `SyntaxContextData`s [#130324](https://github.com/rust-lang/rust/pull/130324) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f1bc669636023c8643602431791c7f26e5a6edef&end=19cab6b878ab18dce4816d85ac52b317214c485f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 2     |
| Improvements (primary)   | -0.4% | [-0.7%, -0.2%] | 30    |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 3     |
| All  (primary)                 | -0.4% | [-0.7%, -0.2%] | 30    |

Improvements outweigh regressions. Regression `tt-muncher` seems spurious (the benchmark got back to previous state in a following rollup). `deep-vector` looks like noise.


Remove `prev_index_to_index` field from `CurrentDepGraph` [#138824](https://github.com/rust-lang/rust/pull/138824) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=19cab6b878ab18dce4816d85ac52b317214c485f&end=a2e63569fd6702ac5dd027a80a9fdaadce73adae&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.4%]   | 3     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 30    |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 3     |
| All  (primary)                 | -0.3% | [-0.4%, -0.2%] | 30    |

Instruction count improvements outweigh regressions. Regression in `unused-warnings` looks real, but small.

There's a somewhat large `max-rss` and `wall-time` regression in small incremental scenarios.


Simplify expansion for format_args!(). [#139131](https://github.com/rust-lang/rust/pull/139131) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fedf10752b973d83f3f7c0f819b2659c21a634de&end=2ea33b591050c4ca1a3752830b29112638faecf6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.5% | [-0.8%, -0.2%] | 8     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | -0.5% | [-0.8%, -0.2%] | 8     |

[Pre-merge results](https://github.com/rust-lang/rust/pull/139131#issuecomment-2764550579) look better than post-merge. Single regression in `tt-muncher` looks like noise.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "RFC: `--crate-attr`" [rfcs#3791](https://github.com/rust-lang/rfcs/pull/3791)

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Do not eagerly reject inference vars when trying to resolve method calls." [rust#126316](https://github.com/rust-lang/rust/pull/126316) (last review activity: 9 months ago)
   - cc: @**lcnr**
- "[Coverage][MCDC] Do not initialize mcdc parameters for instances containing no mcdc statements" [rust#129989](https://github.com/rust-lang/rust/pull/129989) (last review activity: 5 months ago)
  - cc: @**Zalathar** (I think the contributor has some pending questions)
- "Show pending obligations as unsatisfied constraints in `report_similar_impl_candidates`" [rust#134348](https://github.com/rust-lang/rust/pull/134348) (last review activity: 3 months ago)
  - cc: @**Michael Goulet (compiler-errors)** (worth pursuing?)
- "Look at proc-macro attributes when encountering unknown attribute" [rust#134841](https://github.com/rust-lang/rust/pull/134841) (last review activity: 3 months ago)
  - cc: @**Wesley Wiser** , @**Esteban Küber** for a rebase when you have a chance
- "Implement asymmetrical precedence for closures and jumps" [rust#134847](https://github.com/rust-lang/rust/pull/134847) (last review activity: 3 months ago)
  - cc @**León Orell Liehr (fmease)**
- "Move coroutine upvars into locals for better memory economy" [rust#135527](https://github.com/rust-lang/rust/pull/135527) (last review activity: 2 months ago)
  - Shouldn't this go through some T-lang/T-compiler approval process? See [comment](https://github.com/rust-lang/rust/pull/135527#issuecomment-2620262384)

Next meetings' agenda draft: [hackmd link](https://hackmd.io/la5eqIyQTAi7doR900S_XA)
