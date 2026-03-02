---
tags: weekly, rustc
type: docs
note_id: oWCU95r-SKK0Iaw9HXJswQ
---

# T-compiler Meeting Agenda 2025-03-13

## Announcements

- Tomorrow <time:2025-03-14T09:00:00-06:00>: Design meeting: "Introducing the feature target for the Intel avx512 instruction set" [compiler-team#827](https://github.com/rust-lang/compiler-team/827)
  - cc @**sayantn**
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-03-13T19:00:00+01:00>
- Stable MIR Weekly Meeting <time:2025-03-14T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Split `run-make` test suite into slower-building test suite with suitably-staged cargo and faster-building test suite without cargo" [compiler-team#847](https://github.com/rust-lang/compiler-team/issues/847) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20.60run-make.60.20test.20suite.20into.20fast.20tes.E2.80.A6.20compiler-team.23847))
  - "Renaming Zulip T-compiler WGs streams" [compiler-team#848](https://github.com/rust-lang/compiler-team/issues/848) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23848))
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 5 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 4 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 2 months ago)
  - "`rustc_target` for rust-analyzer" [compiler-team#839](https://github.com/rust-lang/compiler-team/issues/839) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60rustc_target.60.20for.20rust-analyzer.20compiler-team.23839)) (last review activity: about 19 days ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: about 6 days ago)
  - "Policy: Require MCP and relevant team nominations for adding (ecosystem, custom codegen backend) testing jobs that would block PR/Merge CI and require documenting failure protocol" [compiler-team#845](https://github.com/rust-lang/compiler-team/issues/845) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Require.20MCP.20for.20adding.20.28ecosystem.E2.80.A6.20compiler-team.23845)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Things in FCP (make sure you're good with it)
  - "Enable `warn(unused_crate_dependencies)` on `rustc_*` crates" [compiler-team#844](https://github.com/rust-lang/compiler-team/issues/844) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60warn.28unused_crate_dependencies.29.20o.E2.80.A6.20compiler-team.23844))
  - "Add `--print=llvm-target-tuple`" [compiler-team#846](https://github.com/rust-lang/compiler-team/issues/846) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dllvm-target-tuple.60.20compiler-team.23846))
  - "Uplift `clippy::invalid_null_ptr_usage` lint" [rust#119220](https://github.com/rust-lang/rust/pull/119220)
- Accepted MCPs
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
  - "Add `--print=crate-root-lint-levels` to retrieve lints levels" [compiler-team#833](https://github.com/rust-lang/compiler-team/issues/833) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dlint-levels.60.20to.20retrieve.20lin.E2.80.A6.20compiler-team.23833))
- MCPs blocked on unresolved concerns
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 12 days ago)
    - concern: [design-around-naming-scheme](https://github.com/rust-lang/compiler-team/issues/778#issuecomment-2514307904)
  -  "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: about 44 days ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
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
  - "Turn order dependent trait objects future incompat warning into a hard error" [rust#136968](https://github.com/rust-lang/rust/pull/136968)
  - "add a "future" edition" [rust#137606](https://github.com/rust-lang/rust/pull/137606)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "rustdoc: when merging target features, keep the highest stability" [rust#137632](https://github.com/rust-lang/rust/pull/137632)
  - Authored by RalfJung
  - T-rustdoc approves beta backport [on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/266220-t-rustdoc/topic/beta-nominated.3A.20.23137632/near/504343111) (so probably we can either)
  - Fixes a stable regression but nobody expressed interest in a stable backport
<!--
/poll Approve beta: backport of #137632?
approve
decline
don't know
-->
- :beta: "Revert wf sized check on beta" [rust#138122](https://github.com/rust-lang/rust/pull/138122)
  - Authored by compiler-errors
  - Fixes a P-medium ICE #137186
  - This patch is a second attempt at fixing it, following a revert of the original patch (#137298)
<!--
/poll Approve beta:  backport of #138122?
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
  - Missing a [few checkboxes](https://github.com/rust-lang/rust/pull/136926#issuecomment-2653939421)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 20 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: ICE in rustc_codegen_ssa/src/mir/rvalue.rs:104:55:" [rust#137892](https://github.com/rust-lang/rust/issues/137892)
  - Fixed by #137894 (beta backport accepted)
- "regression: literal out of range" [rust#137893](https://github.com/rust-lang/rust/issues/137893)
  - I *think* under @**oli** [scrutiny](https://github.com/rust-lang/rust/issues/137893#issuecomment-2692846304) but unsure about its progress
- "iOS binaries crash with latest nightly" [rust#138212](https://github.com/rust-lang/rust/issues/138212)
  - Seems it will be fixed upstream on LLVM [llvm/llvm-project#130517](https://github.com/llvm/llvm-project/pull/130517) (see [comment](https://github.com/rust-lang/rust/issues/138212#issuecomment-2709734781))

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-03-13](https://github.com/Kobzol/rustc-perf/blob/38617ae5d7a849d2f7fc7a712c737768b6ee4a90/triage/2025-03-11.md)

This week we had to merge a lot of large rollups due to many problems with our CI infrastructure,
which made analysis harder. Even though the aggregated stats look like there were a lot of regressions,
it is skewed by two large regressions happening on an uncommon optimized incremental build and a
documentation build of a single crate. The documentation regression is being tracked, and fixes to
some other regressions are already in progress.

Triage done by **@kobzol**.
Revision range: [daf59857..9fb94b32](https://perf.rust-lang.org/?start=daf59857d6d2b87af4b846316bf1561a6083ed51&end=9fb94b32df38073bf63d009df77ed10cb1c989d0&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.2%, 58.8%]   | 149   |
| Regressions (secondary)  | 4.2%  | [0.2%, 165.8%]  | 127   |
| Improvements (primary)   | -1.1% | [-14.0%, -0.3%] | 31    |
| Improvements (secondary) | -2.9% | [-38.4%, -0.1%] | 43    |
| All  (primary)           | 0.8%  | [-14.0%, 58.8%] | 180   |


2 Regressions, 2 Improvements, 5 Mixed; 4 of them in rollups
37 artifact comparisons made in total

#### Regressions

Rollup of 6 pull requests [#138021](https://github.com/rust-lang/rust/pull/138021) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=08db600e8e276b548e986abe7239c2a85d2f425f&end=ac951d379913c667a1fb73a0830e81d65d2007cf&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 1     |
| Regressions (secondary)  | 0.2% | [0.2%, 0.2%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.2%, 0.2%] | 1     |

- Tiny doc regressions on the smallest benchmarks, probably caused by [#137722](https://github.com/rust-lang/rust/pull/137722). I don't think we need to investigate more here.
- Marked as triaged.

Rollup of 12 pull requests [#138267](https://github.com/rust-lang/rust/pull/138267) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4f521991945886709a875ba2aeaa859574126c0e&end=ed897d5f85d61d56a7d52b180e34c8ca62b59e30&stat=instructions:u)

| (instructions:u)                   | mean | range         | count |
|:----------------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.1%, 1.6%]  | 105   |
| Regressions (secondary)  | 3.5% | [0.1%, 12.5%] | 94    |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)                 | 0.7% | [0.1%, 1.6%]  | 105   |

- The regression was caused by [#136127](https://github.com/rust-lang/rust/pull/136127).
- A fix is in progress in [#138292](https://github.com/rust-lang/rust/pull/138292).
- Not marking as triaged yet.

#### Improvements

Change TaskDeps to start preallocated with 128 capacity [#137563](https://github.com/rust-lang/rust/pull/137563) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a96fa317d78c78a9de996afd317603c6970efc0d&end=4f521991945886709a875ba2aeaa859574126c0e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.8%, -0.5%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.6% | [-0.8%, -0.5%] | 6     |


Split the `Edges` iterator. [#137655](https://github.com/rust-lang/rust/pull/137655) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ed897d5f85d61d56a7d52b180e34c8ca62b59e30&end=385970f0c1fd0c09bac426b02f38300c0b1ba9a2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -5.1% | [-5.6%, -4.8%] | 6     |
| All  (primary)                 | -     | -              | 0     |


#### Mixed

Rollup of 20 pull requests [#138058](https://github.com/rust-lang/rust/pull/138058) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4559163ccb500affc424fb9228dae5003672ffc7&end=07b5eeebc948743eaadb32a83d23931fd8854fe8&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 1.6%]    | 29    |
| Regressions (secondary)  | 0.4%  | [0.1%, 1.0%]    | 16    |
| Improvements (primary)   | -1.7% | [-13.7%, -0.1%] | 11    |
| Improvements (secondary) | -7.8% | [-38.3%, -0.3%] | 10    |
| All  (primary)                 | -0.0% | [-13.7%, 1.6%]  | 40    |

- Most of the perf. changes were likely caused by [#137298](https://github.com/rust-lang/rust/pull/137298). The wins and losses kind of balanced themselves.
- Marked as triaged.

Inline `FnOnce`/`FnMut`/`Fn` shims once again [#137907](https://github.com/rust-lang/rust/pull/137907) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=07b5eeebc948743eaadb32a83d23931fd8854fe8&end=30f168ef811aec63124eac677e14699baa9395bd&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 13.6% | [0.4%, 59.2%]  | 5     |
| Regressions (secondary)  | 0.6%  | [0.4%, 1.9%]   | 7     |
| Improvements (primary)   | -0.4% | [-0.9%, -0.1%] | 25    |
| Improvements (secondary) | -0.7% | [-3.4%, -0.1%] | 41    |
| All  (primary)                 | 2.0%  | [-0.9%, 59.2%] | 30    |

- Overall there are more wins than regressions, and this change should help optimizations. The single large regression is unlucky CGU scheduling on an optimized incremental build, which is not very common.
- Marked as triaged.

Rollup of 25 pull requests [#138114](https://github.com/rust-lang/rust/pull/138114) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b74da9613a8cb5ba67a985f71325be0b7b16c0dd&end=98a48781feb1220c0cf2feea23f9ef92cdfa7437&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 42.1% | [0.2%, 167.8%] | 4     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 8     |
| All  (primary)                 | -     | -              | 0     |

- The large regression was caused by [#137534](https://github.com/rust-lang/rust/pull/137534). The regression hasn't been fixed yet, it is being tracked in [#138168](https://github.com/rust-lang/rust/issues/138168).
- Not marking as triaged yet.

Use `trunc nuw`+`br` for 0/1 branches even in optimized builds [#137500](https://github.com/rust-lang/rust/pull/137500) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=07292ccccde8b64d87036b2f90b70bc54ab68456&end=efea9896f506baa08f40444e07774e827646d57a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.8%]   | 37    |
| Regressions (secondary)  | 0.4%  | [0.2%, 1.2%]   | 61    |
| Improvements (primary)   | -0.5% | [-0.9%, -0.3%] | 5     |
| Improvements (secondary) | -1.0% | [-1.4%, -0.4%] | 4     |
| All  (primary)                 | 0.2%  | [-0.9%, 0.8%]  | 42    |

- The regressions were expected and deemed acceptable, this should help optimizations.
- Marked as triaged.

Always inline `query_get_at`. [#137695](https://github.com/rust-lang/rust/pull/137695) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3ea711f17e3946ac3f4df11691584e2c56b4b0cf&end=2b4694a69804f89ff9d47d1a427f72c876f7f44c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 2     |
| Regressions (secondary)  | 0.9%  | [0.2%, 1.5%]   | 9     |
| Improvements (primary)   | -0.5% | [-1.4%, -0.2%] | 61    |
| Improvements (secondary) | -0.7% | [-1.5%, -0.2%] | 56    |
| All  (primary)                 | -0.5% | [-1.4%, 0.3%]  | 63    |

- Many more wins than regressions.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add diagnostics to "while loop" and "for loop" that note that it is always determined that it might iterate zero times." [rust#126510](https://github.com/rust-lang/rust/pull/126510) (last review activity: 6 months ago)
  - cc @**Esteban Küber**
- "[Coverage][MCDC] Do not initialize mcdc parameters for instances containing no mcdc statements" [rust#129989](https://github.com/rust-lang/rust/pull/129989)
  - cc: @**Zalathar**
- "Handle `rustc_query_system` cases of `rustc::potential_query_instability` lint" [rust#131200](https://github.com/rust-lang/rust/pull/131200) (last review activity: 4 months ago)
  - cc @**cjgillot**
- "JumpThreading: fix bitwise not on non-booleans" [rust#131203](https://github.com/rust-lang/rust/pull/131203) (last review activity: 4 months ago)
  - cc @**cjgillot**
- "Do not suggest borrow that is already there in fully-qualified call" [rust#132469](https://github.com/rust-lang/rust/pull/132469) (last review activity: 4 months ago)
  - cc @**Nadrieril**
- "only use generic info when ty var belong it in orphan check" [rust#132904](https://github.com/rust-lang/rust/pull/132904) (last review activity: 4 months ago)
  - cc @**León Orell Liehr (fmease)**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/H2h_wmgUQ2WvVXOnaXXE8A)
