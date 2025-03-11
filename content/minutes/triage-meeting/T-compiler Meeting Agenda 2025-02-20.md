---
tags: weekly, rustc
type: docs
note_id: XQufoZB9QzaR-rcWQS8jbg
---

# T-compiler Meeting Agenda 2025-02-20

## Announcements

- Today release of Rust stable 1.85 [blog post](https://github.com/cuviper/blog.rust-lang.org/blob/rust-1.85.0/posts/2025-02-20-Rust-1.85.0.md) with also announcement of Rust 2024 :tada:
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-02-20T19:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "`rustc_target` for rust-analyzer" [compiler-team#839](https://github.com/rust-lang/compiler-team/issues/839) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60rustc_target.60.20for.20rust-analyzer.20compiler-team.23839))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  -  "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
  -  "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 4 months ago)
  -  "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 4 months ago)
  -  "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: 4 months ago)
  -  "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 40 days ago)
  -  "Add `--print=lint-levels` to retrieve lints levels" [compiler-team#833](https://github.com/rust-lang/compiler-team/issues/833) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dlint-levels.60.20to.20retrieve.20lin.E2.80.A6.20compiler-team.23833)) (last review activity: about 19 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Things in FCP (make sure you're good with it)
  - "Add `target_abi = "[ilp]{2,3}[3264]{2}[fdq]?"` to all RV[3264]{2}I targets" [compiler-team#830](https://github.com/rust-lang/compiler-team/issues/830) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_abi.20.3D.20.22.5Bilp.5D.7B2.2C3.7D.5B3264.5D.7B2.7D.5Bfd.E2.80.A6.20compiler-team.23830))
  - "Give integer literals a sign instead of relying on negation expressions" [compiler-team#835](https://github.com/rust-lang/compiler-team/issues/835) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Give.20integer.20literals.20a.20sign.20instead.20of.20r.E2.80.A6.20compiler-team.23835))
  - "Add `--print=supported-crate-types`" [compiler-team#836](https://github.com/rust-lang/compiler-team/issues/836) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dsupported-crate-types.60.20compiler-team.23836))
  - "Ban projecting into `repr(simd)` types" [compiler-team#838](https://github.com/rust-lang/compiler-team/issues/838) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Ban.20projecting.20into.20.60repr.28simd.29.60.20types.20compiler-team.23838))
  - "Remove `i586-pc-windows-msvc`" [compiler-team#840](https://github.com/rust-lang/compiler-team/issues/840) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20.60i586-pc-windows-msvc.60.20compiler-team.23840))
- Accepted MCPs
  -  "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Create.20an.20avr-unknown-none.20target.20compiler-team.23800))
  -  "Clean up operator representations" [compiler-team#831](https://github.com/rust-lang/compiler-team/issues/831) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Clean.20up.20operator.20representations.20compiler-team.23831))
  -  "Do not ignore uninhabited types for function-call ABI purposes." [compiler-team#832](https://github.com/rust-lang/compiler-team/issues/832) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Do.20not.20ignore.20uninhabited.20types.20for.20funct.E2.80.A6.20compiler-team.23832))
- MCPs blocked on unresolved concerns
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
    - concern: [contributor friction](https://github.com/rust-lang/compiler-team/issues/817#issuecomment-2525266792)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  -  "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: about 22 days ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  -  "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: 2 months ago)
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
  - "regression: a value of type `HashMap<Pulse, u64>` cannot be built from" [rust#135669](https://github.com/rust-lang/rust/issues/135669)
  - "Future incompatibility warning `unsupported_fn_ptr_calling_conventions`: Also warn in dependencies" [rust#135767](https://github.com/rust-lang/rust/pull/135767)
  - "Reject `?Trait` bounds in various places where we unconditionally warned since 1.0" [rust#135841](https://github.com/rust-lang/rust/pull/135841)
  - "Make cenum_impl_drop_cast a hard error" [rust#135964](https://github.com/rust-lang/rust/pull/135964)
  - "Do not allow attributes on struct field rest patterns" [rust#136490](https://github.com/rust-lang/rust/pull/136490)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Remove SSE ABI from i586-pc-windows-msvc" [rust#137149](https://github.com/rust-lang/rust/pull/137149)
  - Authored by Noratrieb
  - Backport suggestion to avoid people (using [just this target](https://github.com/rust-lang/rust/pull/137149#issuecomment-2661603346)) seeing this warning in the next 1.86 beta cycle
  - Target is probably going to be removed after [MCP#840](https://github.com/rust-lang/compiler-team/issues/840)
<!--
/poll Approve beta: backport of #137149?
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
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 20 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- None

## Performance logs

> [triage logs for 2025-02-18](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-02-18.md)

This week's results were dominated by the update to LLVM 20 ([#135763](https://github.com/rust-lang/rust/pull/135763)),
which brought a large number of performance improvements, as usual. There were also two other
significant improvements, caused by improving the representation of `const` values ([#136593](https://github.com/rust-lang/rust/pull/136593)) and doing less work when formatting in `rustdoc` ([#136828](https://github.com/rust-lang/rust/pull/136828)).

Triage done by **@kobzol**.
Revision range: [c03c38d5..ce36a966](https://perf.rust-lang.org/?start=c03c38d5c2368cd2aa0e056dba060b94fc747f4e&end=ce36a966c79e109dabeef7a47fe68e5294c6d71e&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 4.4%  | [0.2%, 35.8%]   | 10    |
| Regressions (secondary)  | 1.2%  | [0.2%, 5.0%]    | 13    |
| Improvements (primary)   | -1.6% | [-10.5%, -0.2%] | 256   |
| Improvements (secondary) | -1.0% | [-4.7%, -0.2%]  | 163   |
| All  (primary)           | -1.3% | [-10.5%, 35.8%] | 266   |


3 Regressions, 2 Improvements, 4 Mixed; 4 of them in rollups
50 artifact comparisons made in total

#### Regressions

Rollup of 8 pull requests [#136918](https://github.com/rust-lang/rust/pull/136918) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=021fb9c09a19d206a37226fe6168f1cc7c984925&end=552a959051cebf8f88a8f558399baf733bec9ce0&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.9% | [0.1%, 2.1%] | 19    |
| Regressions (secondary)  | 1.7% | [0.3%, 4.9%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.9% | [0.1%, 2.1%] | 19    |

- Regression on a number of `doc` benchmarkes caused by [#136829](https://github.com/rust-lang/rust/pull/136829).
- Continuing discussion on that PR, not marking as triaged yet.

Rollup of 10 pull requests [#136943](https://github.com/rust-lang/rust/pull/136943) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ced8e650cddbafad92094b2c89dee97b8a807d9c&end=ef148cd7eb00a5a973130dc6473da71fd6c487ee&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 1     |
| Regressions (secondary)  | 0.6% | [0.4%, 0.7%] | 16    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.2%] | 1     |

- Small regression on a bunch of secondary benchmarks caused by [#136901](https://github.com/rust-lang/rust/pull/136901).
- Does not seem worthy of further work.
- Marked as triaged.

Rollup of 11 pull requests [#137001](https://github.com/rust-lang/rust/pull/137001) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a567209daab72b7ea59eac533278064396bb0534&end=6dfeab5c9e8a17a6636c1479037baabc4b1e9562&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.8%, 0.9%] | 2     |
| Regressions (secondary)  | 0.1% | [0.1%, 0.1%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.8%, 0.9%] | 2     |

- A few small regressions were caused by [#136928](https://github.com/rust-lang/rust/pull/136928).
- That PR was a fix and the regressions were small, so no further work is needed.
- Marked as triaged.

#### Improvements

valtree performance tuning [#136593](https://github.com/rust-lang/rust/pull/136593) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=54cdc751df770517e70db0588573e32e6a7b9821&end=c241e146506600f5ab7f4026ff015df8a658400e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.6% | [-5.6%, -0.2%] | 20    |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -2.6% | [-5.6%, -0.2%] | 20    |

- Resolves a previous perf. regression from https://github.com/rust-lang/rust/pull/136180, and then some.

Do more lazy-formatting in librustdoc [#136828](https://github.com/rust-lang/rust/pull/136828) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c07d140e00dfa5b0988754051d07d8a91ff01f7&end=69fd5e4059f8840f09f60269bcda23dcdcb77151&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -1.6% | [-10.3%, -0.3%] | 17    |
| Improvements (secondary) | -0.5% | [-0.7%, -0.2%]  | 3     |
| All  (primary)           | -1.6% | [-10.3%, -0.3%] | 17    |

- A great win for doc benchmarks.

#### Mixed

Portable SIMD subtree update [#135701](https://github.com/rust-lang/rust/pull/135701) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c04e395952022a451138dc4dbead6dd6ae65203&end=4b293d99275cc63b07eec9e2de38f4b776989069&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.6%]   | 17    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 2     |
| All  (primary)           | 0.5%  | [0.5%, 0.5%]   | 1     |

- Tiny regressions in doc builds, probably caused by more documentation in portable-simd.
- Marked as triaged.

transmute should also assume non-null pointers [#136735](https://github.com/rust-lang/rust/pull/136735) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=905b1bf1ccccaf091a880b069f80dc38ad9ecad3&end=d88ffcdb8bfc6f8b917574c1693eb9764a20eff5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.3%, 0.8%]   | 4     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.5% | [-1.0%, -0.2%] | 7     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 2     |
| All  (primary)           | -0.2% | [-1.0%, 0.8%]  | 11    |

- Performance is a wash.
- Marked as triaged.

Rollup of 7 pull requests [#137163](https://github.com/rust-lang/rust/pull/137163) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d5eb31c9347ae3c494c8d723711dacca7d1cfe8b&end=273465e1f2932a30a5b56ac95859cdc86f3f33fa&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.3%, -0.3%] | 2     |

- Three tiny changes, the only regression is on an incr-unchanged run of a parser stress test,
  probably doesn't warrant further investigation.
- Marked as triaged.

Update to LLVM 20 [#135763](https://github.com/rust-lang/rust/pull/135763) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2162e9d4b18525e4eb542fed9985921276512d7c&end=ce36a966c79e109dabeef7a47fe68e5294c6d71e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 5.1%  | [0.2%, 35.1%]  | 8     |
| Regressions (secondary)  | 0.7%  | [0.4%, 1.0%]   | 10    |
| Improvements (primary)   | -1.3% | [-4.2%, -0.2%] | 251   |
| Improvements (secondary) | -1.0% | [-4.7%, -0.1%] | 178   |
| All  (primary)           | -1.1% | [-4.2%, 35.1%] | 259   |

- As usual, update to a new lLVM version brings a lot of performance wins, but also some regressions.
- The single large regression was on a release (optimized) incremental build, which is not a
configuration used much in practice. It was caused by a codegen unit becoming unnecessarily large.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Our x86-32 target names are inconsistent" [rust#136495](https://github.com/rust-lang/rust/issues/136495)
  - @**RalfJ** replied ([comment](https://github.com/rust-lang/rust/issues/136495#issuecomment-2656914059)) to the questions we raised during last meeting:
    > [...] what to do with i586-pc-nto-qnx700? A target with a Pentium 4 baseline. We typically use i586 to indicate "older than i686" (with i686 meaning "Pentium 4"), so there is a direct conflict here between the vendor convention and our own convention, which will easily be confusing for Rust users.
- "process bug: stabilization of `extended_varargs_abi_support` without FCP?" [rust#136896](https://github.com/rust-lang/rust/issues/136896)
  - @**Jubilee** suggest discussing the evaluation/procedural error. Both T-lang (first) and T-compiler (later) approved #116161 ([timeline](https://github.com/rust-lang/rust/issues/136896#issuecomment-2653329646)) but we don't find an FCP (i.e. a wider consensus)
  - Specifically, was this just a slip or is there an actual procedural "bug" (see [comment](https://github.com/rust-lang/rust/issues/136896#issuecomment-2654440700))?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733) (last review activity: 13 months ago)
  - cc: @**Esteban Küber**
- "Handle `rustc_query_system` cases of `rustc::potential_query_instability` lint" [rust#131200](https://github.com/rust-lang/rust/pull/131200)
  - cc @**cjgillot**
- "Apple: Fix direct linking with +verbatim" [rust#132394](https://github.com/rust-lang/rust/pull/132394) (last review activity: 3 months ago)
  - cc @**Vadim Petrochenkov** do you still want this?
- "only use generic info when ty var belong it in orphan check" [rust#132904](https://github.com/rust-lang/rust/pull/132904) (last review activity: 3 months ago)
  - cc @**León Orell Liehr (fmease)**
- "JumpThreading: fix bitwise not on non-booleans" [rust#131203](https://github.com/rust-lang/rust/pull/131203) (last review activity: 3 months ago)
  - cc @**cjgillot**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/lLvBu4pvTpq8mYUSJjeUTw)
