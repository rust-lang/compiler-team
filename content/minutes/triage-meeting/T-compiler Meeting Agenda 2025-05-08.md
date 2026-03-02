---
tags: weekly, rustc
type: docs
note_id: 9L6_SLIqSJePJ4QDErJ0qw
---

# T-compiler Meeting Agenda 2025-05-08

## Announcements

- Next week, release of Rust 1.87 ("10 Years Edition" :birthday: ), [blog post](https://github.com/Mark-Simulacrum/blog.rust-lang.org/blob/1.87.0/content/Rust-1.87.0.md)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-05-08T19:00:00+02:00>
- Stable MIR Weekly Meeting <time:2025-05-09T17:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 7 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 6 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 6 months ago)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: about 54 days ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 3 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 2 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 47 days ago)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853)) (last review activity: about 47 days ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 19 days ago)
  - "Introduce debug information to statements in MIR" [compiler-team#867](https://github.com/rust-lang/compiler-team/issues/867) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20debug.20information.20to.20statements.E2.80.A6.20compiler-team.23867)) (last review activity: about 5 days ago)
  - "Flags for retpoline mitigation" [compiler-team#868](https://github.com/rust-lang/compiler-team/issues/868) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flags.20for.20retpoline.20mitigation.20compiler-team.23868)) (last review activity: about 5 days ago)
  - "Flags for mitigating straight line speculation" [compiler-team#869](https://github.com/rust-lang/compiler-team/issues/869) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flags.20for.20mitigating.20straight.20line.20specul.E2.80.A6.20compiler-team.23869)) (last review activity: about 5 days ago)
  - "Promote Solaris Targets to Tier 2 with Host Tools" [compiler-team#870](https://github.com/rust-lang/compiler-team/issues/870) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20Solaris.20Targets.20to.20Tier.202.20with.20Ho.E2.80.A6.20compiler-team.23870)) (last review activity: about 5 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Add `target_env = "macabi"` and `target_env = "sim"`" [rust#139451](https://github.com/rust-lang/rust/pull/139451)
  - "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
- Things in FCP (make sure you're good with it)
  - "Extend `--print` requests with output format suffixes" [compiler-team#860](https://github.com/rust-lang/compiler-team/issues/860) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print-json.3D.2E.2E.2E.60.20flag.20compiler-team.23860))
  - "Tier 3 target proposal: bare-metal loongarch32" [compiler-team#865](https://github.com/rust-lang/compiler-team/issues/865) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20target.20proposal.3A.20bare-metal.20loonga.E2.80.A6.20compiler-team.23865))
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829))
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Run the UI test suite with multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861))
    - concern: [edition-directive-meaning](https://github.com/rust-lang/compiler-team/issues/861#issuecomment-2796811016)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [ask-libs-consensus-on-limited-std-support](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-2816731097)
    - concern: [fd-duplication](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-2850245632)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - @**Wesley Wiser** can you have a look into it? I think this was waiting on you
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Other teams finalized FCPs
  - "Implement a lint for implicit autoref of raw pointer dereference - take 2" [rust#123239](https://github.com/rust-lang/rust/pull/123239)
  - "Fixup Windows verbatim paths when used with the `include!` macro" [rust#125205](https://github.com/rust-lang/rust/pull/125205)
  - "Uplift `clippy::double_neg` lint as `double_negations`" [rust#126604](https://github.com/rust-lang/rust/pull/126604)
  - "atomics: allow atomic and non-atomic reads to race" [rust#128778](https://github.com/rust-lang/rust/pull/128778)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "Make deprecated_cfg_attr_crate_type_name a hard error" [rust#129670](https://github.com/rust-lang/rust/pull/129670)
  - "Stabilize expr_2021 fragment specifier in all editions" [rust#129972](https://github.com/rust-lang/rust/pull/129972)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)
  - "Finish stabilization of `result_ffi_guarantees`" [rust#130628](https://github.com/rust-lang/rust/pull/130628)
  - "Stabilize const `ptr::write*` and `mem::replace`" [rust#130954](https://github.com/rust-lang/rust/pull/130954)
  - "Stabilize s390x inline assembly" [rust#131258](https://github.com/rust-lang/rust/pull/131258)
  - "lexer: Treat more floats with empty exponent as valid tokens" [rust#131656](https://github.com/rust-lang/rust/pull/131656)
  - "Stabilize Arm64EC inline assembly" [rust#131781](https://github.com/rust-lang/rust/pull/131781)
  - "Always display first line of impl blocks even when collapsed" [rust#132155](https://github.com/rust-lang/rust/pull/132155)
  - "mark is_val_statically_known intrinsic as stably const-callable" [rust#132449](https://github.com/rust-lang/rust/pull/132449)
  - "Stabilize let chains in the 2024 edition" [rust#132833](https://github.com/rust-lang/rust/pull/132833)
  - "Fix ICE when multiple supertrait substitutions need assoc but only one is provided" [rust#133392](https://github.com/rust-lang/rust/pull/133392)
  - "[rustdoc] Add sans-serif font setting" [rust#133636](https://github.com/rust-lang/rust/pull/133636)
  - "disallow `repr()` on invalid items" [rust#133925](https://github.com/rust-lang/rust/pull/133925)
  - "Make the wasm_c_abi future compat warning a hard error" [rust#133951](https://github.com/rust-lang/rust/pull/133951)
  - "de-stabilize bench attribute" [rust#134273](https://github.com/rust-lang/rust/pull/134273)
  - "fully de-stabilize all custom inner attributes" [rust#134276](https://github.com/rust-lang/rust/pull/134276)
  - "remove long-deprecated no-op attributes no_start and crate_id" [rust#134300](https://github.com/rust-lang/rust/pull/134300)
  - "Fix parsing of ranges after unary operators" [rust#134900](https://github.com/rust-lang/rust/pull/134900)
  - "Future incompatibility warning `unsupported_fn_ptr_calling_conventions`: Also warn in dependencies" [rust#135767](https://github.com/rust-lang/rust/pull/135767)
  - "Reject `?Trait` bounds in various places where we unconditionally warned since 1.0" [rust#135841](https://github.com/rust-lang/rust/pull/135841)
  - "Make cenum_impl_drop_cast a hard error" [rust#135964](https://github.com/rust-lang/rust/pull/135964)
  - "Allow `*const W<dyn A> -> *const dyn A` ptr cast" [rust#136127](https://github.com/rust-lang/rust/pull/136127)
  - "Remove backticks from `ShouldPanic::YesWithMessage`'s `TrFailedMsg`" [rust#136160](https://github.com/rust-lang/rust/pull/136160)
  - "Do not allow attributes on struct field rest patterns" [rust#136490](https://github.com/rust-lang/rust/pull/136490)
  - "add a "future" edition" [rust#137606](https://github.com/rust-lang/rust/pull/137606)
  - "Stabilize `#![feature(precise_capturing_in_traits)]`" [rust#138128](https://github.com/rust-lang/rust/pull/138128)
  - "Stabilize `cfg_boolean_literals`" [rust#138632](https://github.com/rust-lang/rust/pull/138632)
  - "Make closure capturing have consistent and correct behaviour around patterns" [rust#138961](https://github.com/rust-lang/rust/pull/138961)
  - "Do not remove trivial `SwitchInt` in analysis MIR" [rust#139042](https://github.com/rust-lang/rust/pull/139042)
  - "indirect-const-stabilize the `exact_div` intrinsic" [rust#139163](https://github.com/rust-lang/rust/pull/139163)
  - "make abi_unsupported_vector_types a hard error" [rust#139309](https://github.com/rust-lang/rust/pull/139309)
  - "check types of const param defaults" [rust#139646](https://github.com/rust-lang/rust/pull/139646)
  - "Unify sidebar buttons to use the same image" [rust#140135](https://github.com/rust-lang/rust/pull/140135)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "[beta] [also fit for beta rollup] [HOTFIX] Don't delay a bug on malformed meta items involving interpolated tokens" [rust#140601](https://github.com/rust-lang/rust/pull/140601)
  - Authored by fmease
  - Fixes #140612, P-critical regression in the latest crater run, affects user created macros
  - [Scheduled for rollup](https://github.com/rust-lang/rust/pull/140601#issuecomment-2851204657), @**Jieyou Xu** is it approved, correct?
  - Waiting on T-compiler beta backport approval. Would backport directly on `beta` branch before May, 12th
<!--
/poll Approve beta:  backport of #140601?
approve
decline
don't know
-->
- :beta: "Report the `unsafe_attr_outside_unsafe` lint at the closest node" [rust#140617](https://github.com/rust-lang/rust/pull/140617)
  - Authored by Urgau
  - Affects code for editions 2015-2021 (regression is on stable)
  - @**Jieyou Xu** [comments](https://github.com/rust-lang/rust/pull/140617#issuecomment-2848659113):
    > This PR fixes #140602, where it wasn't possible to #[allow(unsafe_attr_outside_unsafe)] in scopes within crate root, e.g. the following will error and not compile
<!--
/poll Approve beta:  backport of #140617?
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

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [56 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 1 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 30 P-high, 100 P-medium, 20 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "closures in dead code are no longer borrowchecked" [rust#140583](https://github.com/rust-lang/rust/issues/140583)
  - regression in nightly (slip into beta soon)
  - Fixed by #140590, being reviewed (thanks @_*lcnr*)
- "regression: ICE: expr in place where literal is expected (builtin attr parsing)" [rust#140612](https://github.com/rust-lang/rust/issues/140612)
  - Fixed by #140601

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "Performance regression in nightly with target-cpu=native on znver4" [rust#139370](https://github.com/rust-lang/rust/issues/139370)
  - Investigation led to upstream LLVM issue [llvm-project#137808](https://github.com/rust-lang/rust/issues/139370)

## Performance logs

> [triage logs for 2025-05-04](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-05-04.md)

A relatively noisy week due to addition of new benchmarks as part of our [2025
benchmark update], and a number of large regressions in a rollup landing late
in the week, with investigation [here](https://github.com/rust-lang/rust/pull/140652).

[2025 benchmark update]: https://github.com/rust-lang/rustc-perf/issues/2024

Triage done by **@simulacrum**.
Revision range: [25cdf1f6..62c5f58f](https://perf.rust-lang.org/?start=25cdf1f67463c9365d8d83778c933ec7480e940b&end=62c5f58f57670ce65e7fec34f8c4ba00c27da2d9&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.9%  | [0.2%, 14.4%]  | 47    |
| Regressions (secondary)  | 2.0%  | [0.1%, 11.8%]  | 156   |
| Improvements (primary)   | -0.6% | [-3.4%, -0.2%] | 34    |
| Improvements (secondary) | -1.6% | [-3.7%, -0.3%] | 20    |
| All  (primary)           | 0.9%  | [-3.4%, 14.4%] | 81    |

2 Regressions, 2 Improvements, 6 Mixed; 3 of them in rollups
31 artifact comparisons made in total

#### Regressions

Introduce Arena::try_alloc_from_iter. [#140023](https://github.com/rust-lang/rust/pull/140023) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=74509131e85a97353c67c503ea32e148a56cf4bd&end=0fbb922e530399599aab8296ea975cb9e7ed67bf&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.4%] | 3     |
| Regressions (secondary)  | 0.3% | [0.1%, 0.4%] | 15    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.4%] | 3     |

Regressions look plausibly real (they've held up for a bit) but given they're
small and limited to just doc builds I'm inclined to accept. It seems plausible
this is just some slight differences in the ABI of the functions here or
similar. Marking as triaged.

Set groundwork for proper const normalization [#140549](https://github.com/rust-lang/rust/pull/140549) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3559e0ab0e370b98bc3f9e6b688152c47eb9e6c8&end=1bea580f364c65bd5f7380a1056e150df7b8a1a6&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.3%, 1.4%] | 3     |
| Regressions (secondary)  | 0.5% | [0.1%, 0.6%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.3%, 1.4%] | 3     |

Mostly what looks like inlining noise. See [comment](https://github.com/rust-lang/rust/pull/140549#issuecomment-2849664075)
for more details.

#### Improvements

perf: delay checking of `#[rustc_no_implicit_autorefs]` in autoref lint [#140406](https://github.com/rust-lang/rust/pull/140406) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7c96085b64580af5c5f619384f0e3f082138ff13&end=4824c2bb7445cb2478aab0190c268c939d77a0f6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.2% | [-3.4%, -0.2%] | 13    |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)           | -1.2% | [-3.4%, -0.2%] | 13    |

Use a closure instead of three chained iterators [#140464](https://github.com/rust-lang/rust/pull/140464) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5fe04cbebd593c6530a21cd7bd0e8e9503b1ffe4&end=d7df5bdf2986e596aeaeec38e732711c69ebbce1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.2%] | 13    |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 2     |
| All  (primary)           | -0.3% | [-0.6%, -0.2%] | 13    |

#### Mixed

Rollup of 7 pull requests [#140474](https://github.com/rust-lang/rust/pull/140474) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=efcbb94dccbe0fcc1076f031f88332db4a6a2a52&end=74509131e85a97353c67c503ea32e148a56cf4bd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 2     |
| All  (primary)           | -1.3% | [-2.9%, 0.3%]  | 2     |

Regression is limited to unicode-normalization-0.1.19 and appears within noise
limit for that benchmark. Marking as triaged.

Simplify `LazyAttrTokenStream` [#127516](https://github.com/rust-lang/rust/pull/127516) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0fbb922e530399599aab8296ea975cb9e7ed67bf&end=f242d6c26cc6fc187257bd1be9590b4b39632425&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.3%, 0.8%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.1% | [-4.0%, -1.4%] | 16    |
| All  (primary)           | -     | -              | 0     |

> Improvements outweigh regressions, and all the movement is in secondary benchmarks.

Streamline the `format` macro. [#140188](https://github.com/rust-lang/rust/pull/140188) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f242d6c26cc6fc187257bd1be9590b4b39632425&end=427288b3ce2d574847fdb41cc3184c893750e09a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 1.8%  | [1.7%, 1.9%]   | 6     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.1%] | 10    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-0.4%, 0.2%]  | 11    |

> The improvements on primary benchmarks were deemed to outweigh the regressions on secondary benchmarks.

shared-generics: Do not share instantiations that contain local-only types [#138522](https://github.com/rust-lang/rust/pull/138522) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6e23095adf9209614a45f7f75fea36dad7b92afb&end=0e517d38ad0e72f93c734b14fabd4bb9b7441de6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.4%, 1.5%]   | 3     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 1     |
| Improvements (primary)   | -0.5% | [-0.7%, -0.3%] | 6     |
| Improvements (secondary) | -1.0% | [-1.0%, -1.0%] | 1     |
| All  (primary)           | -0.0% | [-0.7%, 1.5%]  | 9     |

> Marking perf as triaged. There's some improvements, some regressions, but the
> regressions look like potentially bimodality -- and where they're possibly
> real hard to justify further digging in. The change seems overall a slight
> improvement on our benchmarks.

Rollup of 9 pull requests [#140596](https://github.com/rust-lang/rust/pull/140596) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4824c2bb7445cb2478aab0190c268c939d77a0f6&end=2d5ffc513f1c56b7bc95bacb2519705096e8cc2b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.5%]   | 2     |
| Improvements (primary)   | -1.2% | [-1.2%, -1.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.2% | [-1.2%, -1.2%] | 1     |

Regression triaged. Regressions look like bimodality/noise, not worth further follow up.

Rollup of 7 pull requests [#140633](https://github.com/rust-lang/rust/pull/140633) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1bea580f364c65bd5f7380a1056e150df7b8a1a6&end=622ac043764d5d4ffff8de8cf86a1cc938a8a71b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.2%, 13.4%]  | 77    |
| Regressions (secondary)  | 1.9%  | [0.2%, 11.0%]  | 155   |
| Improvements (primary)   | -1.5% | [-1.5%, -1.5%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 1.2%  | [-1.5%, 13.4%] | 78    |

Per investigation on the PR, the root cause is [#139675](https://github.com/rust-lang/rust/pull/139675). Per discussion [here](https://github.com/rust-lang/rust/pull/140652) we expect that this will be mostly resolved in our next LLVM bump, but is likely an acceptable regression in the meantime (primarily to very short compiles) for the feature in question.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "collect doc alias as tips during resolution" [rust#127721](https://github.com/rust-lang/rust/pull/127721) (last review activity: 9 months ago)
  - cc @**Esteban Küber** or maybe reroll?
- "Look at proc-macro attributes when encountering unknown attribute" [rust#134841](https://github.com/rust-lang/rust/pull/134841) (last review activity: 3 months ago)
  - 2025-05-08 cc @**Wesley Wiser** (needs a little rebase either)
- "Implement asymmetrical precedence for closures and jumps" [rust#134847](https://github.com/rust-lang/rust/pull/134847) (last review activity: 3 months ago)
  - 2025-05-08 cc @**fmease**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/XkhR7DphReyQazg9ur2V0w)
