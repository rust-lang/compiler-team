---
tags: weekly, rustc
type: docs
note_id: TYZPMRHwQdCwCmLqix1Ihg
---

# T-compiler Meeting Agenda 2025-01-30

## Announcements

- Today dot release 1.84.1 is out ([blog post](https://github.com/cuviper/blog.rust-lang.org/blob/rust-1.84.1/posts/2025-01-30-Rust-1.84.1.md))
- Compiler Team Planning meeting at <time:2025-01-31T16:00:00+01:00>
  - List of open [meeting proposals](https://github.com/rust-lang/compiler-team/issues?q=sort%3Aupdated-desc%20state%3Aopen%20label%3Ameeting-proposal)
  - If we could schedule this one [compiler-team#813](https://github.com/rust-lang/compiler-team/issues/813) would unblock work by @_**jdonszelmann** and @_**Celina Val**
  - Work is happening at rust#128045 (originally started by Felix) which is [T-lang nominated](https://github.com/rust-lang/rust/pull/128045#issuecomment-2596890170) but this [comment](https://github.com/rust-lang/rust/pull/128045#issuecomment-2597716359) from @**oli** indicates that ... it's not blocked on T-lang?
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-01-30T19:00:00+01:00>
- Stable MIR Weekly Meeting <time:2025-01-31T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add `target_abi = "[ilp]{2,3}[3264]{2}[fdq]?"` to all RV[3264]{2}I targets" [compiler-team#830](https://github.com/rust-lang/compiler-team/issues/830) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_abi.20.3D.20.22.5Bilp.5D.7B2.2C3.7D.5B3264.5D.7B2.7D.5Bfd.E2.80.A6.20compiler-team.23830))
  - "Do not ignore uninhabited types for function-call ABI purposes." [compiler-team#832](https://github.com/rust-lang/compiler-team/issues/832) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Do.20not.20ignore.20uninhabited.20types.20for.20funct.E2.80.A6.20compiler-team.23832))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 3 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 3 months ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: 3 months ago)
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800)) (last review activity: 2 months ago)
  - "Demote `i686-pc-windows-gnu`" [compiler-team#822](https://github.com/rust-lang/compiler-team/issues/822) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Demote.20.60i686-pc-windows-gnu.60.20compiler-team.23822)) (last review activity: about 33 days ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 19 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
- Things in FCP (make sure you're good with it)
  - "Clean up operator representations" [compiler-team#831](https://github.com/rust-lang/compiler-team/issues/831) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Clean.20up.20operator.20representations.20compiler-team.23831))
- Accepted MCPs
  - "Add amdgpu target" [compiler-team#823](https://github.com/rust-lang/compiler-team/issues/823) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20amdgpu.20target.20compiler-team.23823))
  - "Add new targets for Cygwin (and MSYS2)" [compiler-team#826](https://github.com/rust-lang/compiler-team/issues/826) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20new.20targets.20for.20Cygwin.20.28and.20MSYS2.29.20compiler-team.23826))
  - "Changing `-O` to `opt-level=3`" [compiler-team#828](https://github.com/rust-lang/compiler-team/issues/828) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Changing.20.60-O.60.20to.20.60opt-level.3D3.60.20compiler-team.23828))
- MCPs blocked on unresolved concerns
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
    - concern: [contributor friction](https://github.com/rust-lang/compiler-team/issues/817#issuecomment-2525266792)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: about 1 days ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 55 days ago)
    - concern: [design-around-naming-scheme](https://github.com/rust-lang/compiler-team/issues/778#issuecomment-2514307904)
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
  - "Stabilize `asm_goto` feature gate" [rust#133870](https://github.com/rust-lang/rust/pull/133870)
  - "Consider fields to be inhabited if they are unstable" [rust#133889](https://github.com/rust-lang/rust/pull/133889)
  - "disallow `repr()` on invalid items" [rust#133925](https://github.com/rust-lang/rust/pull/133925)
  - "Make the wasm_c_abi future compat warning a hard error" [rust#133951](https://github.com/rust-lang/rust/pull/133951)
  - "Stabilize target_feature_11" [rust#134090](https://github.com/rust-lang/rust/pull/134090)
  - "fully de-stabilize all custom inner attributes" [rust#134276](https://github.com/rust-lang/rust/pull/134276)
  - "remove long-deprecated no-op attributes no_start and crate_id" [rust#134300](https://github.com/rust-lang/rust/pull/134300)
  - "Stabilize `feature(trait_upcasting)`" [rust#134367](https://github.com/rust-lang/rust/pull/134367)

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

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler) / [T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "regression: cannot borrow ... as immutable because it is also borrowed as mutable" [rust#135671](https://github.com/rust-lang/rust/issues/135671)
  - this was fixed by #135709 but that patch regressed after merge. A new additional patch is being worked on (see [comment](https://github.com/rust-lang/rust/pull/135709#issuecomment-2622888293))
  - on the radar of @**lqd** and @**Josh Stone (cuviper)** (thanks!)

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- None

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-01-27.md)

Relatively quiet week, with one large-ish regression that will be reverted.
[#132666](https://github.com/rust-lang/rust/pull/132666) produced a nice perf. win, by skipping
unnecessary work. This PR actually reversed a regression caused by a [previous PR](https://github.com/rust-lang/rust/pull/131984).

Triage done by **@kobzol**.
Revision range: [9a1d156f..f7538506](https://perf.rust-lang.org/?start=9a1d156f38c51441ee51e5a068f1d0caf4bb0f27&end=f753850659bdf5788332525f3fe395685929c682&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 2.2%]   | 42    |
| Regressions (secondary)  | 2.1%  | [0.1%, 11.6%]  | 56    |
| Improvements (primary)   | -0.8% | [-4.2%, -0.1%] | 107   |
| Improvements (secondary) | -1.2% | [-4.0%, -0.1%] | 77    |
| All  (primary)           | -0.5% | [-4.2%, 2.2%]  | 149   |


2 Regressions, 3 Improvements, 2 Mixed; 4 of them in rollups
45 artifact comparisons made in total

#### Regressions

Properly record metavar spans for other expansions other than TT [#134478](https://github.com/rust-lang/rust/pull/134478) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b2728d5426bab1d8c39709768c7e22b7f66dde5d&end=dee7d0e730a3a3ed98c89dd33c4ac16edc82de8a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.4%]   | 31    |
| Regressions (secondary)  | 1.0%  | [0.1%, 3.0%]   | 19    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.2%  | [0.1%, 0.4%]   | 31    |

- This regression was deemed [justified](https://github.com/rust-lang/rust/pull/134478#issuecomment-2558271305), it was caused by a bugfix.
- Marked as triaged.

Rollup of 7 pull requests [#135947](https://github.com/rust-lang/rust/pull/135947) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=22a220a1a8280a262a277fc24661511f6c4dab51&end=1c9837df1dde9b234229709e89b3672bd3cf04a4&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.1%, 2.2%] | 15    |
| Regressions (secondary)  | 1.4% | [0.1%, 2.2%] | 23    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.7% | [0.1%, 2.2%] | 15    |

- Small regression on doc builds.
- It's unclear which PR  caused the regression, as our automation for unrolling PRs has failed here
for some reason.
- I don't think that it's worth it to manually post PR reverts and perf. test them for this kind of
a doc regression.

#### Improvements

Refactor `fmt::Display` impls in rustdoc [#135494](https://github.com/rust-lang/rust/pull/135494) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cf577f34c47937ccb9983186eca5f8719da585f4&end=fc0094f8d4eb91637ff540be7d9d87bfcdd2a208&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.2% | [-0.2%, -0.2%] | 2     |


Skip `if-let-rescope` lint unless requested by migration [#132666](https://github.com/rust-lang/rust/pull/132666) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=99768c80a1c094a5cfc3b25a04e7a99de7210eae&end=22a220a1a8280a262a277fc24661511f6c4dab51&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.9%, -0.2%] | 100   |
| Improvements (secondary) | -1.5% | [-4.2%, -0.1%] | 69    |
| All  (primary)                 | -0.8% | [-1.9%, -0.2%] | 100   |

- Fixes performance regression from [previous PR](https://github.com/rust-lang/rust/pull/131984).

Rollup of 7 pull requests [#136070](https://github.com/rust-lang/rust/pull/136070) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6fb03584cf6d915cc5527f45037ca009f4273c4c&end=2f0ad2a71e4a4528bb80bcb24bf8fa4e50cb87c2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.2% | [-4.4%, -0.2%] | 28    |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)                 | -1.2% | [-4.4%, -0.2%] | 28    |


#### Mixed

Rollup of 7 pull requests [#135789](https://github.com/rust-lang/rust/pull/135789) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9f4d9dc102fee5c1fe8adce2c4a58254cae510f4&end=f3d1d47fd84dfcf7f513be1dbad356e74c8f3b2b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 2     |
| Improvements (primary)   | -1.1% | [-1.1%, -1.1%] | 2     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.5%] | 2     |
| All  (primary)                 | -1.1% | [-1.1%, -1.1%] | 2     |

- This rollup was mostly performance neutral, the tiny regression on a single benchmark was noise.
- Marked as triaged.

Rollup of 8 pull requests [#135978](https://github.com/rust-lang/rust/pull/135978) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=48ef38d3503a04e5e18157e664e3e65dc7eca1a5&end=061ee95ce197dc9b276fc5363eddbfc0ecc08584&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.1%]   | 15    |
| Regressions (secondary)  | 6.2%  | [0.8%, 11.5%]  | 10    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] | 20    |
| All  (primary)                 | 0.4%  | [0.2%, 1.1%]   | 15    |

- The performance regression was caused by [#135914](https://github.com/rust-lang/rust/pull/135914),
which will be reverted by [#136011](https://github.com/rust-lang/rust/pull/136011).
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Improve documentation when adding a new target" [rust#135992](https://github.com/rust-lang/rust/pull/135992)
  - T-compiler was asked to review the wording, specifically the part about the new target needing to also be supported by `cc-rs` and `libc` support (which needs rustc support *first*, creating a cyclic dependency)
  - Discussed also on the [Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Improving.20docs.20for.20adding.20new.20targets)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Improve dead code analysis for structs and traits defined locally" [rust#128637](https://github.com/rust-lang/rust/pull/128637)
  - cc: @cjgillot
- "Remove `Nonterminal` and `TokenKind::Interpolated`" [rust#124141](https://github.com/rust-lang/rust/pull/124141) (last review activity: 4 months ago)
  - cc: @**Vadim Petrochenkov**
- "Implement struct_target_features." [rust#129881](https://github.com/rust-lang/rust/pull/129881) (last review activity: 3 months ago)
  - cc: @**cjgillot** (candidate for closing? there are some concerns about the design [on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/247081-t-compiler.2Fperformance/topic/Help.20debugging.20perf.20regression.20in.20.23129881/near/467166692))
- "Support multiple stability attributes on items" [rust#131824](https://github.com/rust-lang/rust/pull/131824) (last review activity: 3 months ago)
  - cc: @**Wesley Wiser** wdyt? I see a [comment](https://github.com/rust-lang/rust/pull/131824#issuecomment-2474089515) from @**Vadim Petrochenkov** hinting (IIUC) that it's not worth pursuing?
- "When encountering unexpected closure return type, point at return type/expression" [rust#132156](https://github.com/rust-lang/rust/pull/132156) (last review activity: 3 months ago)
  - cc: @**Nadrieril**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/AXGQgEeVTPCWvQb3yeYSrA)
