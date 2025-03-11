---
tags: weekly, rustc
type: docs
note_id: lLvBu4pvTpq8mYUSJjeUTw
---

# T-compiler Meeting Agenda 2025-02-27

## Announcements

- T-compiler steering meeting at <time:2025-02-27T16:00:00+01:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-02-27T19:00:00+01:00>
- Stable MIR Weekly Meeting <time:2025-02-28T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842))
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 4 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 4 months ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: 4 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 48 days ago)
  - "`rustc_target` for rust-analyzer" [compiler-team#839](https://github.com/rust-lang/compiler-team/issues/839) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60rustc_target.60.20for.20rust-analyzer.20compiler-team.23839)) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Things in FCP (make sure you're good with it)
  - "Add `target_abi = "[ilp]{2,3}[3264]{2}[fdq]?"` to all RV[3264]{2}I targets" [compiler-team#830](https://github.com/rust-lang/compiler-team/issues/830) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_abi.20.3D.20.22.5Bilp.5D.7B2.2C3.7D.5B3264.5D.7B2.7D.5Bfd.E2.80.A6.20compiler-team.23830))
  - "Add `--print=crate-root-lint-levels` to retrieve lints levels" [compiler-team#833](https://github.com/rust-lang/compiler-team/issues/833) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dlint-levels.60.20to.20retrieve.20lin.E2.80.A6.20compiler-team.23833))
  - "Give integer literals a sign instead of relying on negation expressions" [compiler-team#835](https://github.com/rust-lang/compiler-team/issues/835) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Give.20integer.20literals.20a.20sign.20instead.20of.20r.E2.80.A6.20compiler-team.23835))
    - PR #136860 being reviewed
  - "Add `--print=supported-crate-types`" [compiler-team#836](https://github.com/rust-lang/compiler-team/issues/836) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dsupported-crate-types.60.20compiler-team.23836))
  - "Ban projecting into `repr(simd)` types" [compiler-team#838](https://github.com/rust-lang/compiler-team/issues/838) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Ban.20projecting.20into.20.60repr.28simd.29.60.20types.20compiler-team.23838))
  - "Remove `i586-pc-windows-msvc`" [compiler-team#840](https://github.com/rust-lang/compiler-team/issues/840) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20.60i586-pc-windows-msvc.60.20compiler-team.23840))
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
    - concern: [contributor friction](https://github.com/rust-lang/compiler-team/issues/817#issuecomment-2525266792)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: about 30 days ago)
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
  - "disallow `repr()` on invalid items" [rust#133925](https://github.com/rust-lang/rust/pull/133925)
  - "Make the wasm_c_abi future compat warning a hard error" [rust#133951](https://github.com/rust-lang/rust/pull/133951)
  - "fully de-stabilize all custom inner attributes" [rust#134276](https://github.com/rust-lang/rust/pull/134276)
  - "remove long-deprecated no-op attributes no_start and crate_id" [rust#134300](https://github.com/rust-lang/rust/pull/134300)
  - "Stabilize `feature(trait_upcasting)`" [rust#134367](https://github.com/rust-lang/rust/pull/134367)
  - "Future incompatibility warning `unsupported_fn_ptr_calling_conventions`: Also warn in dependencies" [rust#135767](https://github.com/rust-lang/rust/pull/135767)
  - "Reject `?Trait` bounds in various places where we unconditionally warned since 1.0" [rust#135841](https://github.com/rust-lang/rust/pull/135841)
  - "Make cenum_impl_drop_cast a hard error" [rust#135964](https://github.com/rust-lang/rust/pull/135964)
  - "Do not deduplicate list of associated types provided by dyn principal" [rust#136458](https://github.com/rust-lang/rust/pull/136458)
  - "Do not allow attributes on struct field rest patterns" [rust#136490](https://github.com/rust-lang/rust/pull/136490)
  - "Make `ptr_cast_add_auto_to_object` lint into hard error" [rust#136764](https://github.com/rust-lang/rust/pull/136764)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Improve behavior of `IF_LET_RESCOPE` around temporaries and place expressions" [rust#137444](https://github.com/rust-lang/rust/pull/137444)
  - Authored by compiler-errors
  - Fixes #137411 (a false positive about a drop for `hashbrown::HashMap::get`)
  - nominated by @**oli** (probably to get it sooner to users)
<!--
/poll Approve beta:  backport of #137444?
approve
decline
don't know
-->
- :beta: "Don't infer attributes of virtual calls based on the function body" [rust#137669](https://github.com/rust-lang/rust/pull/137669)
  - Authored by DianQK
  - Fixes #137646, a P-critical LLVM miscompilation. Reviewed and in a rollup queue.
<!--
/poll Approve beta:  backport of #137669?
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
- "Better errors with bad/missing identifiers in MBEs" [rust#118939](https://github.com/rust-lang/rust/pull/118939)
- "Uplift `clippy::invalid_null_ptr_usage` lint" [rust#119220](https://github.com/rust-lang/rust/pull/119220)
- "Implement RFC 3349, mixed utf8 literals" [rust#120286](https://github.com/rust-lang/rust/pull/120286)
- "Emit a warning if a `match` is too complex" [rust#122685](https://github.com/rust-lang/rust/pull/122685)
- "privacy: normalize associated types before visiting" [rust#126076](https://github.com/rust-lang/rust/pull/126076)
- "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
- "Tracking Issue for `bare_link_kind`" [rust#132061](https://github.com/rust-lang/rust/issues/132061)
- "Add lint against (some) interior mutable consts" [rust#132146](https://github.com/rust-lang/rust/pull/132146)
- "Lint on fn pointers comparisons in external macros" [rust#134536](https://github.com/rust-lang/rust/pull/134536)
- "aarch64-softfloat: forbid enabling the neon target feature" [rust#135160](https://github.com/rust-lang/rust/pull/135160)
- "Add `explicit_extern_abis` Feature and Enforce Explicit ABIs" [rust#135340](https://github.com/rust-lang/rust/pull/135340)
- "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [57 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 32 P-high, 100 P-medium, 20 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Miscompilation caused by incorrectly-deduced readonly on virtual call" [rust#137646](https://github.com/rust-lang/rust/issues/137646)
  - Fixed by #137669 (beta nominated)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-02-25](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-02-25.md)

Fairly quiet week with the exception of an improvement to the very often used Iter::next function which can now be inlined leading to a myriad of performance improvements.

Triage done by **@rylev**.
Revision range: [ce36a966..f5729cfe](https://perf.rust-lang.org/?start=ce36a966c79e109dabeef7a47fe68e5294c6d71e&end=f5729cfed3c45e061e8a443677fc1d5ef9277df7&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.0%]   | 37    |
| Regressions (secondary)  | 0.7%  | [0.2%, 8.6%]   | 54    |
| Improvements (primary)   | -0.5% | [-1.4%, -0.1%] | 88    |
| Improvements (secondary) | -0.6% | [-2.3%, -0.1%] | 87    |
| All  (primary)           | -0.2% | [-1.4%, 1.0%]  | 125   |


1 Regression, 1 Improvement, 7 Mixed; 2 of them in rollups
40 artifact comparisons made in total

#### Regressions

Remove `NtVis` and `NtTy` [#133436](https://github.com/rust-lang/rust/pull/133436) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b87eda7fdf8034c52b3abef52b443b8573484eda&end=b6d3be4948e92fce0236cbbe22b55c55f6950269&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 1.0%] | 18    |
| Regressions (secondary)  | 0.6% | [0.3%, 0.9%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.2%, 1.0%] | 18    |
- [Necessary perf hit](https://github.com/rust-lang/rust/pull/133436#issuecomment-2502075751)


#### Improvements

librustdoc: Use `pulldown-cmark-escape` for HTML escaping [#137285](https://github.com/rust-lang/rust/pull/137285) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e0be1a02626abef2878cb7f4aaef7ae409477112&end=f43e549b88698568581a9d329c7582e3708ac187&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.2%] | 14    |
| Improvements (secondary) | -0.5% | [-1.5%, -0.1%] | 5     |
| All  (primary)                 | -0.3% | [-0.6%, -0.2%] | 14    |


#### Mixed

improve cold_path() [#133852](https://github.com/rust-lang/rust/pull/133852) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aaa861493456e8a10e552dd208f85486de772007&end=3b022d8ceea570db9730be34d964f0cc663a567f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 0.9%]   | 7     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.2%  | [-0.7%, 0.9%]  | 8     |
- Expected perf regressions that were [deemed worth it](https://github.com/rust-lang/rust/pull/133852#issuecomment-2657312984)


Rollup of 9 pull requests [#137295](https://github.com/rust-lang/rust/pull/137295) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4e1356b95972c1a52acb9f0dd078687132ec02be&end=6d3c050de81c8858e28b0e59cc9398d840edfbff&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.0%  | [1.0%, 1.0%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)                 | -     | -              | 0     |
- Perf results are too small for this to be worth investigating.


Emit `trunc nuw` for unchecked shifts and `to_immediate_scalar` [#137058](https://github.com/rust-lang/rust/pull/137058) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eeb9035117dc85fa4abe8e2abb09285fd65b0263&end=c62239aeb3ba7781a6d7f7055523c1e8c22b409c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.7%  | [0.4%, 1.3%]   | 16    |
| Improvements (primary)   | -0.5% | [-0.8%, -0.4%] | 4     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | -0.5% | [-0.8%, -0.4%] | 4     |
- Usually small changes in stress tests don't necessarily lead to perf investigations.
- Asked the author for insight on whether this is worth investigating.


Simplify `slice::Iter::next` enough that it inlines [#136771](https://github.com/rust-lang/rust/pull/136771) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=28b83ee59698ae069f5355b8e03f976406f410f5&end=f04bbc60f8c353ee5ba0677bc583ac4a88b2c180&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 2     |
| Regressions (secondary)  | 8.8%  | [8.8%, 8.8%]   | 1     |
| Improvements (primary)   | -0.4% | [-1.4%, -0.1%] | 123   |
| Improvements (secondary) | -0.5% | [-2.3%, -0.1%] | 70    |
| All  (primary)                 | -0.4% | [-1.4%, 0.4%]  | 125   |
- Perf improvements vastly outweigh the regressions


Update host LLVM to 20.1 on CI [#137189](https://github.com/rust-lang/rust/pull/137189) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=46420c96070b4c4bd8242f16d5806b8f26a57016&end=07697360aee0cebcb4e304236ba1884d8dde5469&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 7     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)                 | -0.2% | [-0.3%, 0.1%]  | 8     |
- This is actually quite small perf difference for an LLVM change


New attribute parsing infrastructure [#135726](https://github.com/rust-lang/rust/pull/135726) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=617aad8c2e8783f6df8e5d1f8bb1e4bcdc70aa7b&end=7d8c6e781d347e087c7d30ea393d7dcd725ed623&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.8%]   | 38    |
| Regressions (secondary)  | 0.6%  | [0.3%, 1.3%]   | 43    |
| Improvements (primary)   | -4.1% | [-4.1%, -4.1%] | 1     |
| Improvements (secondary) | -0.7% | [-2.4%, -0.3%] | 8     |
| All  (primary)                 | 0.3%  | [-4.1%, 0.8%]  | 39    |
- See [here](https://github.com/rust-lang/rust/pull/137610#issuecomment-2682489608) for explanation for why there was a perf regression here.


Rollup of 11 pull requests [#137573](https://github.com/rust-lang/rust/pull/137573) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7d8c6e781d347e087c7d30ea393d7dcd725ed623&end=f5729cfed3c45e061e8a443677fc1d5ef9277df7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.3%, 0.7%]   | 3     |
| Regressions (secondary)  | 1.0%  | [1.0%, 1.0%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)                 | 0.5%  | [0.3%, 0.7%]   | 3     |
- Results are too small to warrant an investigation.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Our x86-32 target names are inconsistent" [rust#136495](https://github.com/rust-lang/rust/issues/136495)
  - Removed compiler nomination, I (@_**apiraino**) think all questions should be addressed but please feel free to raise a hand if it's not the case

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add diagnostic for stack allocations of 1 GB or more" [rust#119798](https://github.com/rust-lang/rust/pull/119798)
  - cc @**cjgillot**
- "Improve parse item fallback" [rust#125388](https://github.com/rust-lang/rust/pull/125388) (last review activity: 9 months ago)
  - cc @**Esteban Küber**
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784) (last review activity: 8 months ago)
  - cc: @**Esteban Küber** for a rebase then cc: @_**León Orell Liehr (fmease)**
- "collect doc alias as tips during resolution" [rust#127721](https://github.com/rust-lang/rust/pull/127721) (last review activity: 7 months ago)
  - cc @**Esteban Küber**
- "Improve dead code analysis for structs and traits defined locally" [rust#128637](https://github.com/rust-lang/rust/pull/128637)
  - cc: @cjgillot

Next meetings' agenda draft: [hackmd link](https://hackmd.io/AqtUB3juQeSDl44sGZTLRQ)
