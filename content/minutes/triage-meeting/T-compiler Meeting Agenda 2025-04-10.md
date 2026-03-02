---
tags: weekly, rustc
type: docs
note_id: la5eqIyQTAi7doR900S_XA
---

# T-compiler Meeting Agenda 2025-04-10

## Announcements

- Tomorrow <time:2025-04-11T15:00:00+02:00> design meeting: "Dealing with disabled tests" ([meeting proposal](https://github.com/rust-lang/compiler-team/issues/540)).
  - (wip) meetings' notes: https://hackmd.io/wxlzv9jeTT6yk5LuGulqZg?view
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-04-10T19:00:00+02:00>
- Stable MIR Weekly Meeting <time:2025-04-11T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859))
  - "Add `--print-json=...` flag" [compiler-team#860](https://github.com/rust-lang/compiler-team/issues/860) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print-json.3D.2E.2E.2E.60.20flag.20compiler-team.23860))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 6 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 6 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 5 months ago)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: about 27 days ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 3 months ago)
  - "`rustc_target` for rust-analyzer" [compiler-team#839](https://github.com/rust-lang/compiler-team/issues/839) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60rustc_target.60.20for.20rust-analyzer.20compiler-team.23839)) (last review activity: about 47 days ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: about 33 days ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 20 days ago)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853)) (last review activity: about 20 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
- Things in FCP (make sure you're good with it)
  - "Enable autodiff testcases in CI" [compiler-team#855](https://github.com/rust-lang/compiler-team/issues/855) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20autodiff.20testcases.20in.20CI.20compiler-team.23855))
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Accepted MCPs
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
  - "Enable `warn(unused_crate_dependencies)` on `rustc_*` crates" [compiler-team#844](https://github.com/rust-lang/compiler-team/issues/844) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60warn.28unused_crate_dependencies.29.20o.E2.80.A6.20compiler-team.23844))
  - "Policy: Require MCP and relevant team nominations for adding (ecosystem, custom codegen backend) testing jobs that would block PR/Merge CI and require documenting failure protocol" [compiler-team#845](https://github.com/rust-lang/compiler-team/issues/845) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Require.20MCP.20for.20adding.20.28ecosystem.E2.80.A6.20compiler-team.23845))
  - "Add `--print=llvm-target-tuple`" [compiler-team#846](https://github.com/rust-lang/compiler-team/issues/846) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dllvm-target-tuple.60.20compiler-team.23846))
  - "Split `run-make` test suite into slower-building test suite with suitably-staged cargo and faster-building test suite without cargo" [compiler-team#847](https://github.com/rust-lang/compiler-team/issues/847) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20.60run-make.60.20test.20suite.20into.20fast.20tes.E2.80.A6.20compiler-team.23847))
  - "Renaming Zulip T-compiler WGs streams" [compiler-team#848](https://github.com/rust-lang/compiler-team/issues/848) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23848))
  - "Add `-Zsplit-metadata` flag to reduce disk usage" [compiler-team#851](https://github.com/rust-lang/compiler-team/issues/851) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zsplit-metadata.60.20flag.20to.20reduce.20dis.E2.80.A6.20compiler-team.23851))
  - "Allow boolean literals in `--check-cfg`" [compiler-team#854](https://github.com/rust-lang/compiler-team/issues/854) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20boolean.20literals.20in.20.60--check-cfg.60.20compiler-team.23854))
  - "Review rotation policy: remove reviewer from active review rotation if there's prolonged lack of feedback on randomly-rolled PRs / indication that unavailability is temporary" [compiler-team#856](https://github.com/rust-lang/compiler-team/issues/856) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Review.20rotation.20policy.3A.20remove.20reviewer.20f.E2.80.A6.20compiler-team.23856))
- MCPs blocked on unresolved concerns
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: 2 months ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
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
  - "Remove backticks from `ShouldPanic::YesWithMessage`'s `TrFailedMsg`" [rust#136160](https://github.com/rust-lang/rust/pull/136160)
  - "Do not deduplicate list of associated types provided by dyn principal" [rust#136458](https://github.com/rust-lang/rust/pull/136458)
  - "Do not allow attributes on struct field rest patterns" [rust#136490](https://github.com/rust-lang/rust/pull/136490)
  - "Make `ptr_cast_add_auto_to_object` lint into hard error" [rust#136764](https://github.com/rust-lang/rust/pull/136764)
  - "Turn order dependent trait objects future incompat warning into a hard error" [rust#136968](https://github.com/rust-lang/rust/pull/136968)
  - "add a "future" edition" [rust#137606](https://github.com/rust-lang/rust/pull/137606)
  - "Stabilize `#![feature(precise_capturing_in_traits)]`" [rust#138128](https://github.com/rust-lang/rust/pull/138128)
  - "Prefer built-in sized impls (and only sized impls) for rigid types always" [rust#138176](https://github.com/rust-lang/rust/pull/138176)
  - "Stabilize `repr128`" [rust#138285](https://github.com/rust-lang/rust/pull/138285)
  - "Stabilize `cfg_boolean_literals`" [rust#138632](https://github.com/rust-lang/rust/pull/138632)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Ignore zero-sized types in wasm future-compat warning" [rust#139498](https://github.com/rust-lang/rust/pull/139498)
  - Authored by alexcrichton
  - From [comment](https://github.com/rust-lang/rust/pull/139498#issue-2977817878):
    > This commit fixes a false positive of the warning triggered for #138762 ("Tracking issue for wasm32-unknown-unknown's future-incompat warning for C ABI changes") and the fix is to codify that zero-sized types are "safe" in both the old and new ABIs.
  - nominated because the false positive warning progressed to beta
<!--
/poll Approve beta: backport of #139498?
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
- "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
  - FCP ([comment](https://github.com/rust-lang/rust/pull/136926#issuecomment-2749050249)) cc: @**Esteban Küber** @**Michael Goulet (compiler-errors)** @**Sparrow Li**
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [57 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [35 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 32 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "Performance regression in nightly with target-cpu=native on znver4" [rust#139370](https://github.com/rust-lang/rust/issues/139370)

## Performance logs

> [triage logs for 2025-04-08](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-04-08.md)

A busy week with lots of performance improvements. The largest performance improvement was from a revert of a previous week's regression just in time for the beta release. Another large improvement came to small tweaks in the query system showing that there still are opportunities for small, targeted performance improvements in the compiler.

Triage done by **@rylev**.
Revision range: [2ea33b59..e643f59f](https://perf.rust-lang.org/?start=2ea33b591050c4ca1a3752830b29112638faecf6&end=e643f59f6da3a84f43e75dea99afaa5b041ea6bf&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.8%  | [0.2%, 1.9%]    | 11    |
| Regressions ❌ <br /> (secondary)  | 8.4%  | [0.2%, 38.5%]   | 16    |
| Improvements ✅ <br /> (primary)   | -1.0% | [-35.1%, -0.2%] | 206   |
| Improvements ✅ <br /> (secondary) | -1.8% | [-8.6%, -0.1%]  | 155   |
| All ❌✅ (primary)                 | -0.9% | [-35.1%, 1.9%]  | 217   |


2 Regressions, 9 Improvements, 5 Mixed; 4 of them in rollups
48 artifact comparisons made in total

#### Regressions

Initial support for auto traits with default bounds [#120706](https://github.com/rust-lang/rust/pull/120706) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4fd8c04da0674af2c51310c9982370bfadfa1b98&end=9e14530c7c27123484658c88c2148a552b01e73b&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.8% | [0.2%, 1.3%] | 7     |
| Regressions ❌ <br /> (secondary)  | 0.4% | [0.2%, 1.1%] | 21    |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 0.8% | [0.2%, 1.3%] | 7     |
- A potential perf fix was tried in https://github.com/rust-lang/rust/pull/139365, but it did not work.
- Asked the author and reviewer if there was anything else to try.


Do not visit whole crate to compute `lints_that_dont_need_to_run`. [#133781](https://github.com/rust-lang/rust/pull/133781) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e643f59f6da3a84f43e75dea99afaa5b041ea6bf&end=c6c179662d5a6fc0520e05b5c0682dcfc7333f77&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.3% | [0.2%, 0.4%] | 7     |
| Regressions ❌ <br /> (secondary)  | 0.3% | [0.1%, 0.6%] | 25    |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 0.3% | [0.2%, 0.4%] | 7     |
- Seems like the perf regressions are a revert back to the mean after https://github.com/rust-lang/rust/pull/139482 which looks like a fluke run.


#### Improvements

Revert "Rollup merge of #136127 - WaffleLapkin:dyn_ptr_unwrap_cast, r=compiler-errors" [#138892](https://github.com/rust-lang/rust/pull/138892) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=10a76d634781180b4f5402c519f0c237d3be6ee6&end=ab5b1be771e63ea3736d8830e7b661decc6b1abc&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -               | 0     |
| Regressions ❌ <br /> (secondary)  | 0.1%  | [0.0%, 0.2%]    | 2     |
| Improvements ✅ <br /> (primary)   | -0.7% | [-1.5%, -0.2%]  | 99    |
| Improvements ✅ <br /> (secondary) | -3.0% | [-11.3%, -0.1%] | 105   |
| All ❌✅ (primary)                 | -0.7% | [-1.5%, -0.2%]  | 99    |


Move `ast::Item::ident` into `ast::ItemKind` [#138740](https://github.com/rust-lang/rust/pull/138740) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=97ea17b71aba0badfe9c8295f57a434bf79bdb72&end=ed201574c5d6117fb4a491db545c96fa4289ea9c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.2% | [-0.3%, -0.1%] | 3     |
| Improvements ✅ <br /> (secondary) | -0.5% | [-0.8%, -0.3%] | 2     |
| All ❌✅ (primary)                 | -0.2% | [-0.3%, -0.1%] | 3     |


Misc query tweaks [#139234](https://github.com/rust-lang/rust/pull/139234) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d5b4c2e4f19b6d7037371cdaecc3cc2c701c68df&end=365806089020f60a50391133a1430c40bc86963c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.6% | [-1.4%, -0.2%] | 71    |
| Improvements ✅ <br /> (secondary) | -1.3% | [-2.2%, -0.6%] | 9     |
| All ❌✅ (primary)                 | -0.6% | [-1.4%, -0.2%] | 71    |


Rollup of 7 pull requests [#139301](https://github.com/rust-lang/rust/pull/139301) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=946aea0b3d9f43e57953ce5094d8e4a2a244ce71&end=82eb03ec6220ee435e0e07fdaf3f0a68a79aab17&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.3% | [-0.5%, -0.2%] | 8     |
| Improvements ✅ <br /> (secondary) | -0.3% | [-0.5%, -0.1%] | 35    |
| All ❌✅ (primary)                 | -0.3% | [-0.5%, -0.2%] | 8     |


Rollup of 9 pull requests [#139336](https://github.com/rust-lang/rust/pull/139336) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=00095b3da4f23d9b3e7a809ac6a4e2b2530df84c&end=4fd8c04da0674af2c51310c9982370bfadfa1b98&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.3% | [-0.3%, -0.2%] | 6     |
| Improvements ✅ <br /> (secondary) | -0.3% | [-0.6%, -0.1%] | 21    |
| All ❌✅ (primary)                 | -0.3% | [-0.3%, -0.2%] | 6     |


Folder experiment: Monomorphize region resolver [#139287](https://github.com/rust-lang/rust/pull/139287) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9e14530c7c27123484658c88c2148a552b01e73b&end=f174fd716a429fa17eb1e98ba4e382f09312f8ad&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.3% | [-0.7%, -0.2%] | 34    |
| Improvements ✅ <br /> (secondary) | -0.9% | [-1.6%, -0.2%] | 19    |
| All ❌✅ (primary)                 | -0.3% | [-0.7%, -0.2%] | 34    |


hygiene: Avoid recursion in syntax context decoding [#139281](https://github.com/rust-lang/rust/pull/139281) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1e008dd5d83e782ad37fc9cf6824733f824cc8cd&end=da8321773a5c3306e1ff159cf0560c9f89f016b9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.5% | [-0.7%, -0.4%] | 3     |
| Improvements ✅ <br /> (secondary) | -0.6% | [-0.7%, -0.3%] | 14    |
| All ❌✅ (primary)                 | -0.5% | [-0.7%, -0.4%] | 3     |


Folder experiment: Micro-optimize RegionEraserVisitor [#139292](https://github.com/rust-lang/rust/pull/139292) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0e9c3e52e492c9edacae96feb8deeb1695731273&end=0c478fdfe138a8b09744798c85fe2be657768b00&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -               | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -               | 0     |
| Improvements ✅ <br /> (primary)   | -4.7% | [-34.9%, -0.4%] | 9     |
| Improvements ✅ <br /> (secondary) | -     | -               | 0     |
| All ❌✅ (primary)                 | -4.7% | [-34.9%, -0.4%] | 9     |


Rollup of 9 pull requests [#139482](https://github.com/rust-lang/rust/pull/139482) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8fb32ab8e563124fe0968a2878b7f5b5d0e8d722&end=e643f59f6da3a84f43e75dea99afaa5b041ea6bf&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.3% | [-0.4%, -0.2%] | 8     |
| Improvements ✅ <br /> (secondary) | -0.3% | [-0.7%, -0.2%] | 22    |
| All ❌✅ (primary)                 | -0.3% | [-0.4%, -0.2%] | 8     |


#### Mixed

Remove `NtExpr` and `NtLiteral` [#138478](https://github.com/rust-lang/rust/pull/138478) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9b7d5ac8180f70110e94f92ccbf8fa2263d24c73&end=70dab5a27c03a5637cc1d4ba36a5139760d25e38&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.5%  | [0.1%, 2.6%]   | 80    |
| Regressions ❌ <br /> (secondary)  | 6.8%  | [0.2%, 38.2%]  | 41    |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -0.2% | [-0.3%, -0.2%] | 9     |
| All ❌✅ (primary)                 | 0.5%  | [0.1%, 2.6%]   | 80    |
- Performance impact was expected by the [author](https://github.com/rust-lang/rust/pull/138478#issuecomment-2771495885).


Update dependencies [#138848](https://github.com/rust-lang/rust/pull/138848) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c9cd7078450abc15f6b8c969b1021934fb36c2a6&end=79de6c0bbe76904ac7086b05327ee5756fb302b1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions ❌ <br /> (secondary)  | 0.3%  | [0.1%, 0.5%]   | 5     |
| Improvements ✅ <br /> (primary)   | -0.2% | [-0.4%, -0.1%] | 14    |
| Improvements ✅ <br /> (secondary) | -0.2% | [-0.3%, -0.1%] | 15    |
| All ❌✅ (primary)                 | -0.2% | [-0.4%, 0.4%]  | 15    |
- Improvements outweigh the regressions and the number of regressions is small.


Various local trait item iteration cleanups [#139018](https://github.com/rust-lang/rust/pull/139018) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=79de6c0bbe76904ac7086b05327ee5756fb302b1&end=ae9173d7dd4a31806c950c90dcc331f1508b4d17&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.2%  | [0.2%, 0.2%]   | 2     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.2% | [-0.3%, -0.2%] | 6     |
| Improvements ✅ <br /> (secondary) | -0.2% | [-0.6%, -0.1%] | 40    |
| All ❌✅ (primary)                 | -0.1% | [-0.3%, 0.2%]  | 8     |
- Perf regressions outweighed by the perf improvements.


Rollup of 5 pull requests [#139257](https://github.com/rust-lang/rust/pull/139257) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ae9173d7dd4a31806c950c90dcc331f1508b4d17&end=4f0de4c81d80121ac7b576bc68d8016064f4d261&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.3%  | [0.2%, 0.4%]   | 13    |
| Regressions ❌ <br /> (secondary)  | 0.2%  | [0.1%, 0.6%]   | 32    |
| Improvements ✅ <br /> (primary)   | -0.7% | [-0.7%, -0.6%] | 4     |
| Improvements ✅ <br /> (secondary) | -1.0% | [-1.0%, -1.0%] | 1     |
| All ❌✅ (primary)                 | 0.1%  | [-0.7%, 0.4%]  | 17    |
- Found the cause in https://github.com/rust-lang/rust/pull/139232#issuecomment-2774701657


gvn: Invalid dereferences for all non-local mutations [#132527](https://github.com/rust-lang/rust/pull/132527) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=82eb03ec6220ee435e0e07fdaf3f0a68a79aab17&end=00095b3da4f23d9b3e7a809ac6a4e2b2530df84c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.3%  | [0.1%, 0.9%]   | 37    |
| Regressions ❌ <br /> (secondary)  | 0.5%  | [0.1%, 1.3%]   | 29    |
| Improvements ✅ <br /> (primary)   | -0.9% | [-1.7%, -0.6%] | 6     |
| Improvements ✅ <br /> (secondary) | -1.7% | [-1.8%, -1.5%] | 6     |
| All ❌✅ (primary)                 | 0.2%  | [-1.7%, 0.9%]  | 43    |
- This PR seems to have brought about a decent number of perf regressions.
- Asked the author and reviewer

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Add `target_env = "macabi"` and `target_env = "sim"`" [rust#139451](https://github.com/rust-lang/rust/pull/139451)
  - This is a user-facing change so @**Jubilee** asks is it needs an FCP ([comment](https://github.com/rust-lang/rust/pull/139451#issuecomment-2787810634))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Show pending obligations as unsatisfied constraints in `report_similar_impl_candidates`" [rust#134348](https://github.com/rust-lang/rust/pull/134348) (last review activity: 3 months ago)
  - cc @**Michael Goulet (compiler-errors)** @**Wesley Wiser**
- "Look at proc-macro attributes when encountering unknown attribute" [rust#134841](https://github.com/rust-lang/rust/pull/134841) (last review activity: 3 months ago)
  - cc @**Wesley Wiser** , @**Esteban Küber** for a rebase when you have a chance
- "Implement asymmetrical precedence for closures and jumps" [rust#134847](https://github.com/rust-lang/rust/pull/134847) (last review activity: 3 months ago)
  - cc @**fmease**
- "Add a new lint that warns for pointers to stack memory" [rust#134218](https://github.com/rust-lang/rust/pull/134218) (last review activity: 3 months ago)
  - @**Esteban Küber** @**Michael Goulet (compiler-errors)**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/t6QxOl4MRj-VziPyIN0zHg)
