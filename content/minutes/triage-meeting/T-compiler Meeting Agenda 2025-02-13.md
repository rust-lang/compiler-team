---
tags: weekly, rustc
type: docs
note_id: 636Uj8fYQHevhHgCemhndQ
---

# T-compiler Meeting Agenda 2025-02-13

## Announcements

- Next week release of stable 1.85 [check the schedule calendar](https://github.com/rust-lang/calendar)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-02-13T19:00:00+01:00>
- Stable MIR Weekly Meeting <time:2025-02-14T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 4 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 3 months ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: 3 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 33 days ago)
  - "Add `target_abi = "[ilp]{2,3}[3264]{2}[fdq]?"` to all RV[3264]{2}I targets" [compiler-team#830](https://github.com/rust-lang/compiler-team/issues/830) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_abi.20.3D.20.22.5Bilp.5D.7B2.2C3.7D.5B3264.5D.7B2.7D.5Bfd.E2.80.A6.20compiler-team.23830)) (last review activity: about 12 days ago)
  - "Add `--print=lint-levels` to retrieve lints levels" [compiler-team#833](https://github.com/rust-lang/compiler-team/issues/833) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dlint-levels.60.20to.20retrieve.20lin.E2.80.A6.20compiler-team.23833)) (last review activity: about 12 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
- Things in FCP (make sure you're good with it)
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Create.20an.20avr-unknown-none.20target.20compiler-team.23800))
  - "Clean up operator representations" [compiler-team#831](https://github.com/rust-lang/compiler-team/issues/831) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Clean.20up.20operator.20representations.20compiler-team.23831))
  - "Do not ignore uninhabited types for function-call ABI purposes." [compiler-team#832](https://github.com/rust-lang/compiler-team/issues/832) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Do.20not.20ignore.20uninhabited.20types.20for.20funct.E2.80.A6.20compiler-team.23832))
  - "Give integer literals a sign instead of relying on negation expressions" [compiler-team#835](https://github.com/rust-lang/compiler-team/issues/835) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Give.20integer.20literals.20a.20sign.20instead.20of.20r.E2.80.A6.20compiler-team.23835))
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
    - concern: [contributor friction](https://github.com/rust-lang/compiler-team/issues/817#issuecomment-2525266792)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: about 15 days ago)
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
  - "fully de-stabilize all custom inner attributes" [rust#134276](https://github.com/rust-lang/rust/pull/134276)
  - "remove long-deprecated no-op attributes no_start and crate_id" [rust#134300](https://github.com/rust-lang/rust/pull/134300)
  - "Stabilize `feature(trait_upcasting)`" [rust#134367](https://github.com/rust-lang/rust/pull/134367)
  - "Reject `?Trait` bounds in various places where we unconditionally warned since 1.0" [rust#135841](https://github.com/rust-lang/rust/pull/135841)
  - "Make cenum_impl_drop_cast a hard error" [rust#135964](https://github.com/rust-lang/rust/pull/135964)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Pattern Migration 2024: try to suggest eliding redundant binding modifiers" [rust#136577](https://github.com/rust-lang/rust/pull/136577)
  - Authored by dianne, Fixes a series of lints in Edition 2024 (#136047)
  - Some data about the new lints at [comment](https://github.com/rust-lang/rust/pull/136577#issuecomment-2649496209)
  - Discussed last week ([on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Backporting.20disgnostic.20changes.3F/near/497933188)), the general vibe was "meh" due to being large changes with the new stable release at the door
  - T-release say they can handle but it's a lot of work ([comment](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Backporting.20disgnostic.20changes.3F/near/497933188)) and @_**Jubilee** pointed that if something behaves funny we should be there to fix quick
  - (unsure if a lot changed - in positive or negative - since last week)
<!--
/poll Approve beta:  backport of #136577?
approve
decline
don't know
-->
- :beta: "chore: update rustc-hash 2.1.0 to 2.1.1" [rust#136605](https://github.com/rust-lang/rust/pull/136605)
  - Authored by lsunsi (issue reporter a while ago)
  - stems from issue #135477 (a large compile time regression for some projects)
  - Full discussion on [rust-lang/rustc-hash#55](https://github.com/rust-lang/rustc-hash/pull/55)
  - our perf. tests seem to be mostly neutral
<!--
/poll Approve beta:  backport of #136605?
approve
decline
don't know
-->
- :beta: "fix ensure_monomorphic_enough" [rust#136839](https://github.com/rust-lang/rust/pull/136839)
  - Authored by lukas-code, nominated by @**Michael Goulet (compiler-errors)** since a simple backport and recommended before stable 1.85 starts baking (tomorrow, IIRC)
  - Fixes MIR opts misbehaving, since When polymorphization got removed, more context in opening comment (doesn't seem to have a specific filed regression attached)
<!--
/poll Approve beta:  backport of #136839?
approve
decline
don't know
-->
- :beta: "Revert "Stabilize `extended_varargs_abi_support`"" [rust#136897](https://github.com/rust-lang/rust/pull/136897)
  - Authored by workingjubilee
  - (**UPDATE**: already accepted by T-release, so FYI)
  - Also nominated for discussion
  - TL;DR we apparently stabilized and this is broken. Revert before next stable release (next week).
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
 [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 20 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "`rustc.exe -vV` didn't exit successfully (exit code: 0xc000007b) on `i686-pc-windows-gnu`" [rust#136795](https://github.com/rust-lang/rust/issues/136795)
  - Handled in #136815 (thanks @_**Chris Denton**) but in the future this compile target should be demoted to tier 2 (rfcs#3771)

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-02-10.md)

A relatively neutral week, with lots of real changes but most small in
magnitude. Most significant change is rustdoc's move of JS/CSS minification to
build time which cut doc generation times on most benchmarks fairly
significantly.

Triage done by **@simulacrum**.
Revision range: [01e4f19c..c03c38d5](https://perf.rust-lang.org/?start=01e4f19cc8027925ffe0885a86388b700e46bfab&end=c03c38d5c2368cd2aa0e056dba060b94fc747f4e&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 1.2%]   | 100   |
| Regressions (secondary)  | 0.6%  | [0.1%, 7.3%]   | 93    |
| Improvements (primary)   | -1.8% | [-5.7%, -0.2%] | 22    |
| Improvements (secondary) | -2.5% | [-5.7%, -0.2%] | 36    |
| All  (primary)           | 0.0%  | [-5.7%, 1.2%]  | 122   |


3 Regressions, 5 Improvements, 1 Mixed; 2 of them in rollups
32 artifact comparisons made in total

#### Regressions

Upgrade elsa to the newest version. [#136094](https://github.com/rust-lang/rust/pull/136094) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=07179d549659e119a0e4175629b839337c6a8c02&end=820bfffc25fee9866aa8176529091e04b8824f09&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.4%]   | 35    |
| Regressions (secondary)  | 0.3%  | [0.0%, 0.6%]   | 13    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)                 | 0.2%  | [0.1%, 0.4%]   | 35    |

See discussion
[here](https://github.com/rust-lang/rust/pull/136094#issuecomment-2628827080).
Some possible improvements have been identified, but starting by just getting
elsa on regular updates again.

Rollup of 7 pull requests [#136641](https://github.com/rust-lang/rust/pull/136641) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=79f82ad5e89aa421e2c765fea2098b23beb69b40&end=942db6782f4a28c55b0b75b38fd4394d0483390f&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 3.1% | [0.0%, 8.0%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

Changes are expected, from a few contained PRs:
- https://github.com/rust-lang/rust/pull/136073#issuecomment-2617093212
- https://github.com/rust-lang/rust/pull/136435#issuecomment-2629382897

Generally expected to only meaningfully affect stress tests rather than
real-world code.

Add amdgpu target [#134740](https://github.com/rust-lang/rust/pull/134740) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d9a4a47b8b3dc0bdff83360cea2013200d60d49c&end=c03c38d5c2368cd2aa0e056dba060b94fc747f4e&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.2%, 3.8%] | 55    |
| Regressions (secondary)  | 0.6% | [0.2%, 1.0%] | 47    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.7% | [0.2%, 3.8%] | 55    |

Regressions are mostly in LLVM, seemingly due to more logic being added to
common code (e.g., pass enumeration) that runs even on non-AMDGPU targets. This
is also a significant size regression (+19MB on LLVM.so) but generally these
are likely unavoidable in the short term at least given the expanded target
set.

#### Improvements

librustdoc: create a helper for separating elements of an iterator instead of implementing it multiple times [#136244](https://github.com/rust-lang/rust/pull/136244) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e5f11af042ad099102efd572743138df60764a4e&end=8df89d1cb077cd76013d3f9f5a4e92c5b5a9280c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.8%, -0.6%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.7% | [-0.8%, -0.6%] | 2     |


Avoid calling the layout_of query in lit_to_const [#136302](https://github.com/rust-lang/rust/pull/136302) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=820bfffc25fee9866aa8176529091e04b8824f09&end=d4bdd1ed551fed0c951eb47b4be2c79d7a02d181&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.3%] | 14    |
| All  (primary)                 | -     | -              | 0     |

rustdoc: run css and html minifier at build instead of runtime [#136253](https://github.com/rust-lang/rust/pull/136253) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d4bdd1ed551fed0c951eb47b4be2c79d7a02d181&end=a9730c3b5f84a001c052c60c97ed0765e9ceac04&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.6% | [-5.5%, -0.2%] | 21    |
| Improvements (secondary) | -3.7% | [-5.5%, -0.7%] | 22    |
| All  (primary)                 | -1.6% | [-5.5%, -0.2%] | 21    |

rustdoc: use ThinVec for generic arg parts [#136265](https://github.com/rust-lang/rust/pull/136265) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6741521dc478182392806e816e919a36be5a2ba2&end=30865107cb8942ab8eaf9baf8d3aa2a6dec2643f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 20    |
| Improvements (secondary) | -0.4% | [-0.6%, -0.1%] | 18    |
| All  (primary)                 | -0.3% | [-0.5%, -0.2%] | 20    |


implement `eat_until` leveraging memchr in lexer [#136585](https://github.com/rust-lang/rust/pull/136585) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2f92f050e83bf3312ce4ba73c31fe843ad3cbc60&end=79f82ad5e89aa421e2c765fea2098b23beb69b40&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.1%] | 24    |
| Improvements (secondary) | -1.6% | [-1.6%, -1.6%] | 1     |
| All  (primary)                 | -0.3% | [-0.4%, -0.1%] | 24    |

#### Mixed

Rollup of 7 pull requests [#136549](https://github.com/rust-lang/rust/pull/136549) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3f33b30e19b7597a3acbca19e46d9e308865a0fe&end=bef3c3b01f690de16738b1c9f36470fbfc6ac623&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 7     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 5     |
| Improvements (secondary) | -0.6% | [-0.8%, -0.3%] | 5     |
| All  (primary)                 | -0.3% | [-0.3%, -0.2%] | 5     |

Unclear as to exact cause, but not going to dig in further given small number
of benchmarks affected (only primary is `libc`, and it improved).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Update to rand 0.9.0" [rust#136395](https://github.com/rust-lang/rust/pull/136395)
  - Mark raises some concerns about this upgrade, specifically about the new dependency `wit-bindgen-rt` which ships with a small binary blob ([comment](https://github.com/rust-lang/rust/pull/136395#issuecomment-2645783005))
  - @_**Alex Crichton** says that making it buildable (and not only "reproducible") is possible though it would make maintenaince more complicated on their end ([comment](https://github.com/rust-lang/rust/pull/136395#issuecomment-2645877220)). What they're lacking is support for weak symbols on stable Rust, specifically `cabi_realloc`, defined in multiple crates across a single link unit
  - What do we think about it? Do we want to establish a policy? ([comment](https://github.com/rust-lang/rust/pull/136395#issuecomment-2645783005))
- "Revert "Stabilize `extended_varargs_abi_support`"" [rust#136897](https://github.com/rust-lang/rust/pull/136897)
  - we stabilized this set of varargs. The `extern "system"` part is however broken, as per updated [comment](https://github.com/rust-lang/rust/issues/100189#issue-1330688823):
    > extern "system", on systems where it is meaningful (i.e. distinct from extern "C" in some way), is translated to extern "stdcall" which is incompatible in varargs
  - @**Jubilee** suggests reverting everything quickly before the release (artifacts start building tomorrow), then reapply everything expect the `system` part ([comment](https://github.com/rust-lang/rust/pull/136897#issuecomment-2652458348))
  - [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/extended_varargs_abi/near/499126726)
- "process bug: stabilization of `extended_varargs_abi_support` without FCP?" [rust#136896](https://github.com/rust-lang/rust/issues/136896)
  - @**Jubilee** suggest discussing the evaluation/procedural error. Both T-lang (first) and T-compiler (later) approved #116161 ([timeline](https://github.com/rust-lang/rust/issues/136896#issuecomment-2653329646)) but we don't find an FCP (i.e. a wider consensus)

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

Next meetings' agenda draft: [hackmd link](https://hackmd.io/XQufoZB9QzaR-rcWQS8jbg)
