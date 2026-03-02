---
tags: weekly, rustc
type: docs
note_id: t6QxOl4MRj-VziPyIN0zHg
---

# T-compiler Meeting Agenda 2025-04-17

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-04-17T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859))
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 7 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 6 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 6 months ago)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: about 34 days ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 3 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: about 40 days ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 27 days ago)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853)) (last review activity: about 27 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Add `target_env = "macabi"` and `target_env = "sim"`" [rust#139451](https://github.com/rust-lang/rust/pull/139451)
  - "compiletest: Make diagnostic kind mandatory on line annotations" [compiler-team#862](https://github.com/rust-lang/compiler-team/issues/862) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/compiletest.3A.20Make.20diagnostic.20kind.20mandato.E2.80.A6.20compiler-team.23862))
  - "document RUSTC_BOOTSTRAP in the unstable book" [compiler-team#863](https://github.com/rust-lang/compiler-team/issues/863) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/rename.20RUSTC_BOOTSTRAP.20to.20ALLOW_UNSTABLE_.E2.80.A6.20compiler-team.23863))
- Accepted MCPs
  - "Allow boolean literals in `--check-cfg`" [compiler-team#854](https://github.com/rust-lang/compiler-team/issues/854) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20boolean.20literals.20in.20.60--check-cfg.60.20compiler-team.23854))
  - "Enable autodiff testcases in CI" [compiler-team#855](https://github.com/rust-lang/compiler-team/issues/855) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20autodiff.20testcases.20in.20CI.20compiler-team.23855))
  - "Review rotation policy: remove reviewer from active review rotation if there's prolonged lack of feedback on randomly-rolled PRs / indication that unavailability is temporary" [compiler-team#856](https://github.com/rust-lang/compiler-team/issues/856) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Review.20rotation.20policy.3A.20remove.20reviewer.20f.E2.80.A6.20compiler-team.23856))
- MCPs blocked on unresolved concerns
  - "Add `--print-json=...` flag" [compiler-team#860](https://github.com/rust-lang/compiler-team/issues/860) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print-json.3D.2E.2E.2E.60.20flag.20compiler-team.23860))
    - concern: [duplicate-flag-impl-and-docs](https://github.com/rust-lang/compiler-team/issues/860#issuecomment-2796389117)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: 2 months ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Run the UI test suite with multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861))
    - concern: [edition-directive-meaning](https://github.com/rust-lang/compiler-team/issues/861#issuecomment-2796811016)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
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
  - "Stabilize let chains in the 2024 edition" [rust#132833](https://github.com/rust-lang/rust/pull/132833)
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
  - "indirect-const-stabilize the `exact_div` intrinsic" [rust#139163](https://github.com/rust-lang/rust/pull/139163)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Ignore zero-sized types in wasm future-compat warning" [rust#139498](https://github.com/rust-lang/rust/pull/139498)
  - Authored by alexcrichton
  - Wesley just approved the PR
  - From [comment](https://github.com/rust-lang/rust/pull/139498#issue-2977817878):
    > This commit fixes a false positive of the warning triggered for #138762 ("Tracking issue for wasm32-unknown-unknown's future-incompat warning for C ABI changes") and the fix is to codify that zero-sized types are "safe" in both the old and new ABIs.
  - nominated because the false positive warning progressed to beta
<!--
/poll Approve beta backport of #139498?
approve
decline
don't know
-->
- :beta: "Don't warn about `v128` in wasm ABI transition" [rust#139809](https://github.com/rust-lang/rust/pull/139809)
  - Authored by alexcrichton
  - review in progress
  - just like #139498, nominated because the false positive warning progressed to beta
<!--
/poll Approve beta: backport of #139809?
approve
decline
don't know
-->
- :beta: "Revert "Deduplicate template parameter creation"" [rust#139878](https://github.com/rust-lang/rust/pull/139878)
  - Authored by petrochenkov
  - Reverts part of #139874 which caused some CI regressions
<!--
/poll Approve beta: backport of #139878?
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
- [57 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 31 P-high, 100 P-medium, 22 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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
  - Seems that LLVM is producing worse code for the ([comment](https://github.com/rust-lang/rust/issues/139370#issuecomment-2801561453))
  - target affected is `znver4`. Seems that for now @**Nikita Popov** has it  on their radar.

## Performance logs

> [triage logs for 2025-04-14](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-04-14.md)

Relatively small changes this week, nothing terribly impactful (positive or negative).

Triage done by **@simulacrum**.
Revision range: [e643f59f..15f58c46](https://perf.rust-lang.org/?start=e643f59f6da3a84f43e75dea99afaa5b041ea6bf&end=15f58c46da79399961a09db0c650a2f90f442e6b&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.1%, 2.1%]   | 39    |
| Regressions (secondary)  | 0.8%  | [0.2%, 3.2%]   | 23    |
| Improvements (primary)   | -0.6% | [-0.9%, -0.3%] | 7     |
| Improvements (secondary) | -0.6% | [-1.5%, -0.1%] | 40    |
| All  (primary)           | 0.5%  | [-0.9%, 2.1%]  | 46    |

1 Regressions, 3 Improvements, 3 Mixed; 2 of them in rollups
35 artifact comparisons made in total

#### Regressions

Rollup of 10 pull requests [#139766](https://github.com/rust-lang/rust/pull/139766) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6e830462330a9e34d8176e86d4580dd0820c6fd5&end=15f58c46da79399961a09db0c650a2f90f442e6b&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.1% | [0.5%, 2.1%] | 15    |
| Regressions (secondary)  | 1.0% | [0.3%, 2.4%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 1.1% | [0.5%, 2.1%] | 15    |

Real regression, though limited only to doc builds. Investigating root cause in PR.

#### Improvements

speed up `String::push` and `String::insert` [#124810](https://github.com/rust-lang/rust/pull/124810) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=48f89e7659678f91a68c0c2d868180a0036ab32d&end=934880f586f6ac1f952c7090e2a943fcd7775e7b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.8%, 0.8%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-1.2%, -0.1%] | 35    |
| Improvements (secondary) | -0.3% | [-0.8%, -0.2%] | 46    |
| All  (primary)                 | -0.3% | [-1.2%, 0.8%]  | 36    |


Rollup of 13 pull requests [#139622](https://github.com/rust-lang/rust/pull/139622) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7d7de5bf3c3cbf9c2c5bbc5cbfb9197a8a427d35&end=69b3959afec9b5468d5de15133b199553f6e55d2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 4     |
| Improvements (secondary) | -0.3% | [-0.6%, -0.2%] | 26    |
| All  (primary)                 | -0.3% | [-0.3%, -0.2%] | 4     |


Polymorphize `array::IntoIter`'s iterator impl [#139430](https://github.com/rust-lang/rust/pull/139430) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d2b3dd7c173de58881ead8109f7970b9cd926e2a&end=1bc56185ee257ed829a0aea7abdc3b03c5fed887&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.2% | [-1.2%, -1.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -1.2% | [-1.2%, -1.2%] | 1     |


#### Mixed

Allow GVN to produce places and not just locals. [#139327](https://github.com/rust-lang/rust/pull/139327) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=97c966bb40756903f8aa13995629128d157f6056&end=f06e5c1e35bc5bc6131c6f8a0eb782097e3f28c3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | 0.7%  | [0.7%, 0.7%]   | 1     |
| Improvements (primary)   | -0.6% | [-0.6%, -0.6%] | 1     |
| Improvements (secondary) | -0.6% | [-0.9%, -0.2%] | 10    |
| All  (primary)                 | 0.0%  | [-0.6%, 0.7%]  | 2     |

Regressions look plausibly real, but are limited (~2 scenarios) and outweighed
by benefits. No further investigation warranted.

Ensure `swap_nonoverlapping` is really always untyped [#137412](https://github.com/rust-lang/rust/pull/137412) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2205455d444f5f9da3a52e50f43c0306480218fb&end=0fe8f3454dbe9dda52a254991347e96bec579a6f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.4%, 1.7%]   | 5     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.1%, -0.3%] | 9     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.2% | [-1.1%, 1.7%]  | 14    |

Correctness improvement. Regressions look real, though limited to just a few
scenarios, and correctness is more important. No further investigation warranted.

Remove `Nonterminal` and `TokenKind::Interpolated` [#124141](https://github.com/rust-lang/rust/pull/124141) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=15f58c46da79399961a09db0c650a2f90f442e6b&end=f836ae4e663b6e8938096b8559e094d18361be55&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.3%, 2.1%]   | 11    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.4%, -0.2%] | 48    |
| Improvements (secondary) | -1.0% | [-2.4%, -0.3%] | 36    |
| All  (primary)                 | -0.2% | [-1.4%, 2.1%]  | 59    |

Overall improvements outweigh limited regressions. Marking as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Detect struct construction with private field in field with default" [rust#135846](https://github.com/rust-lang/rust/pull/135846) (last review activity: 2 months ago)
  - cc @**fmease**
- "Pattern Migration 2024: suggest nicer patterns" [rust#136496](https://github.com/rust-lang/rust/pull/136496)
  - cc @**Nadrieril**
- "Use the new solver in the `impossible_predicates`" [rust#136988](https://github.com/rust-lang/rust/pull/136988) (last review activity: 2 months ago)
  - cc: @**lcnr**
- "not lint break with label and unsafe block" [rust#137454](https://github.com/rust-lang/rust/pull/137454) (last review activity: about 23 days ago)
  - cc @**Wesley Wiser**

Next meeting's agenda draft: [hackmd link](https://hackmd.io/x2JDrLfQQLqsFLHq2pl-kQ)
