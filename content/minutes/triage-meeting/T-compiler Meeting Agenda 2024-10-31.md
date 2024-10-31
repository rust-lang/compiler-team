---
tags: weekly, rustc
type: docs
note_id: yC6fKy_rQtufsvK_C8QWEQ
---

# T-compiler Meeting Agenda 2024-10-31

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- None

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Create an avr-unknown-unknown target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 41 days ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 20 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 55 days ago)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785)) (last review activity: about 6 days ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: about 13 days ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: about 13 days ago)
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790)) (last review activity: about 13 days ago)
  - "Support for a new `wasm32-linux-musl` Tier-3 target" [compiler-team#797](https://github.com/rust-lang/compiler-team/issues/797) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20for.20a.20new.20.60wasm32-linux-musl.60.20Tie.E2.80.A6.20compiler-team.23797)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
- Things in FCP (make sure you're good with it)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Reject raw lifetime followed by `'`, like regular lifetimes do" [rust#132341](https://github.com/rust-lang/rust/pull/132341)
- Accepted MCPs
  - "Wasm minimal features target" [compiler-team#791](https://github.com/rust-lang/compiler-team/issues/791) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Wasm.20minimal.20features.20target.20compiler-team.23791))
  - "Attribute handling reworks" [compiler-team#796](https://github.com/rust-lang/compiler-team/issues/796) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Attribute.20handling.20reworks.20compiler-team.23796))
  - "Remove unstable `-Zprofile` (gcov-style coverage)" [compiler-team#798](https://github.com/rust-lang/compiler-team/issues/798) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20unstable.20.60-Zprofile.60.20.28gcov-style.20c.E2.80.A6.20compiler-team.23798))
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)
- Other teams finalized FCPs
  - "Add lint against function pointer comparisons" [rust#118833](https://github.com/rust-lang/rust/pull/118833)
  - "Fixup Windows verbatim paths when used with the `include!` macro" [rust#125205](https://github.com/rust-lang/rust/pull/125205)
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "Lint against `&T` to `&mut T` and `&T` to `&UnsafeCell<T>` transmutes" [rust#128351](https://github.com/rust-lang/rust/pull/128351)
  - "atomics: allow atomic and non-atomic reads to race" [rust#128778](https://github.com/rust-lang/rust/pull/128778)
  - "Lint against getting pointers from immediately dropped temporaries" [rust#128985](https://github.com/rust-lang/rust/pull/128985)
  - "Decide on name for `derive(SmartPtr)`" [rust#129104](https://github.com/rust-lang/rust/issues/129104)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "Make deprecated_cfg_attr_crate_type_name a hard error" [rust#129670](https://github.com/rust-lang/rust/pull/129670)
  - "Stabilize expr_2021 fragment specifier in all editions" [rust#129972](https://github.com/rust-lang/rust/pull/129972)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)
  - "Finish stabilization of `result_ffi_guarantees`" [rust#130628](https://github.com/rust-lang/rust/pull/130628)
  - "Stabilize const `ptr::write*` and `mem::replace`" [rust#130954](https://github.com/rust-lang/rust/pull/130954)
  - "Stabilize `shorter_tail_lifetime`" [rust#131445](https://github.com/rust-lang/rust/issues/131445)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Reject raw lifetime followed by `'`, like regular lifetimes do" [rust#132341](https://github.com/rust-lang/rust/pull/132341)
  - Authored and nominated by compiler-errors
  - Also nominated for (and approved by) T-lang ([comment](https://github.com/rust-lang/rust/pull/132341#issuecomment-2445612982)) as this is a new syntax.
<!--
/poll Approve beta backport of #132341?
approve
deny
don't know
-->
- :beta: "Mark `simplify_aggregate_to_copy` mir-opt as unsound" [rust#132356](https://github.com/rust-lang/rust/pull/132356)
  - Authored by jieyouxu
  - Fixes a P-critical miscompile ([rust#132353](https://github.com/rust-lang/rust/issues/132353)) caused by recent changes in MIR optimizations
  - Note: partially reverts [e7386b3](https://github.com/rust-lang/rust/commit/e7386b361dda8c2222bee7a1ae79faba7e9a0351), the mir-opt implementation is just marked as unsound but not reverted to make reland reviews easier. This PR **partially reverts** commit e7386b3, reversing changes made to 02b1be1. The mir-opt implementation is just marked as unsound but **not** reverted to make reland reviews easier. Test changes are **reverted if they were not pure additions**. Tests added by the original PR received `-Z unsound-mir-opts` compile-flags.
<!--
/poll Approve beta backport of #132356?
approve
deny
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - A bit more context at [comment](https://github.com/rust-lang/rust/pull/131080#pullrequestreview-2339557005)
  - Under RFC ([comment](https://github.com/rust-lang/rust/pull/131080#issuecomment-2403261016)), needs a few ticks
- "Add `armv7a-vex-v5` tier three target" [rust#131530](https://github.com/rust-lang/rust/pull/131530)
  - Says to review changes to third-party dependencies ([comment](https://github.com/rust-lang/rust/pull/131530#issuecomment-2406606169))
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [69 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [42 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 3 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 37 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "[Regression] LLVM asserts "conflicting locations for variable" since 1.82" [rust#131944](https://github.com/rust-lang/rust/issues/131944)
  - In [Fedora 39 builds](https://koji.fedoraproject.org/koji/taskinfo?taskID=124928273) (with its LLVM 17), rustc hits a libstdc++ assertion via LLVM on all Tier 1 targets
  - Bisected to #128861, seems to be handled in #132010 (correct @**cuviper**?)
- "Panic in nightly 1.83.0 and 1.84.0 with opt-level >= 1 when unwrapping Some variant" [rust#132353](https://github.com/rust-lang/rust/issues/132353)
  - Solved by #132356 (thanks @**Jieyou Xu**)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-10-29](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-10-29.md)

This week saw a lot of activity both on the regressions and improvements side. There was one large
regression, which was immediately reverted. Overall, the week ended up being positive, thanks to
a rollup PR that caused a tiny improvement to almost all benchmarks.

Triage done by **@kobzol**.
Revision range: [3e33bda0..c8a8c820](https://perf.rust-lang.org/?start=3e33bda0326586a6e1e34d0f5c060ca6d116e6a4&end=c8a8c82035439cb2404b8f24ca0bc18209d534ca&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 2.7%]   | 15    |
| Regressions (secondary)  | 0.8%  | [0.1%, 1.6%]   | 22    |
| Improvements (primary)   | -0.6% | [-1.5%, -0.2%] | 153   |
| Improvements (secondary) | -0.7% | [-1.9%, -0.1%] | 80    |
| All  (primary)           | -0.5% | [-1.5%, 2.7%]  | 168   |


6 Regressions, 6 Improvements, 4 Mixed; 6 of them in rollups
58 artifact comparisons made in total

#### Regressions

Revise arm platform notes regarding soft float [#130987](https://github.com/rust-lang/rust/pull/130987) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3ec4308f6cb4bba3140d736d9ebd53b234fa7df8&end=edbd9398dcc0e3b6ffe0dd0cd4578d37d1d36974&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 2.9% | [2.9%, 2.9%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 2.9% | [2.9%, 2.9%] | 1     |

- Noise, this PR only modified documentation.
- Marked as triaged.

Dont consider predicates that may hold as impossible in `is_impossible_associated_item` [#131840](https://github.com/rust-lang/rust/pull/131840) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4392847410ddd67f6734dd9845f9742ff9e85c83&end=814df6e50eaf89b90793e7d9618bb60f1f18377a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.2%, 2.3%] | 9     |
| Regressions (secondary)  | 0.2% | [0.2%, 0.2%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.2%, 2.3%] | 9     |

- The largest regression was just noise, the rest was small enough and was deemed to be acceptable.
- Marked as triaged.

nightly feature tracking: get rid of the per-feature bool fields [#132027](https://github.com/rust-lang/rust/pull/132027) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ffd978b7bf4ccdc74fe6c1b048d253eb3f3aa341&end=be01dabfefd2daa4574b974f571c7852085d60cb&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.2% | [1.1%, 1.2%] | 4     |
| Regressions (secondary)  | 0.5% | [0.1%, 1.1%] | 34    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.2% | [1.1%, 1.2%] | 4     |

- The small regressions were only on tiny benchmarks and stress tests, which was deemed to be acceptable.

Rollup of 10 pull requests [#132094](https://github.com/rust-lang/rust/pull/132094) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b8bb2968ce1e44d01520c9d59ee6299ed66df3f9&end=55b7f8e800a6a43657a8582450323d546297c950&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.2%] | 4     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.1%, 0.2%] | 4     |

- The tiny regressions were reverted in a follow-up merge.
- Marked as triaged.

Emit future-incompatibility lint when calling/declaring functions with vectors that require missing target feature [#127731](https://github.com/rust-lang/rust/pull/127731) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=45089ec19ebebec88bace6ec237244ff0eaa7ad3&end=6faf0bd3e561f1a0c81f3eafe0ce0e688385d70e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 5.0%  | [0.3%, 16.9%]  | 77    |
| Regressions (secondary)  | 4.7%  | [0.1%, 29.4%]  | 30    |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 4.9%  | [-0.1%, 16.9%] | 78    |

- This was a large regression that was immediately reverted in https://github.com/rust-lang/rust/pull/132152.
- Investigation into how to land this change without such large regressions is happening in https://github.com/rust-lang/rust/pull/132173
- Marked as triaged.

bump stdarch [#132145](https://github.com/rust-lang/rust/pull/132145) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9f57edf2e261ade3c926d69459162057f15164d6&end=3f1be1ec7ec3d8e80beb381ee82164a0aa3ca777&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.9% | [0.9%, 0.9%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.9% | [0.9%, 0.9%] | 1     |

- One tiny regression caused by a dependency upgrade, no need to investigate further.
- Marked as triaged.

#### Improvements

(ci) Update macOS Xcode to 15 [#131570](https://github.com/rust-lang/rust/pull/131570) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=31e102c509192189be841954f38962eb3cd9e2e2&end=4392847410ddd67f6734dd9845f9742ff9e85c83&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -3.6% | [-3.6%, -3.6%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -3.6% | [-3.6%, -3.6%] | 1     |


better default capacity for str::replace [#131929](https://github.com/rust-lang/rust/pull/131929) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8bf64f106ac0cd1f2b9c6fd27965dd2dc4b862dd&end=b13176595d8a9fd27334747080764a53a18f4c24&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 3     |


rustdoc: hash assets at rustdoc build time [#131951](https://github.com/rust-lang/rust/pull/131951) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=55b7f8e800a6a43657a8582450323d546297c950&end=8aca4bab080b2c81065645fc070acca7a060f8a3&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 6     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.1%] | 17    |
| All  (primary)           | -0.2% | [-0.3%, -0.1%] | 6     |


Revert #127731 "Emit error when calling/declaring functions with unavailable …" [#132152](https://github.com/rust-lang/rust/pull/132152) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a06b7cbe21967a86050fa92dab843c8afda1c28e&end=ae4c6b66402cdbda8daa626216efd94e2dbe94b2&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]    | 1     |
| Improvements (primary)   | -4.7% | [-14.4%, -0.3%] | 75    |
| Improvements (secondary) | -4.5% | [-22.7%, -0.2%] | 27    |
| All  (primary)           | -4.7% | [-14.4%, -0.3%] | 75    |

- Revert of the previously mentioned [#127731](https://github.com/rust-lang/rust/pull/127731).

Rollup of 3 pull requests [#132171](https://github.com/rust-lang/rust/pull/132171) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ae4c6b66402cdbda8daa626216efd94e2dbe94b2&end=80d0d927d5069b67cc08c0c65b48e7b6e0cdeeb5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 2     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 16    |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 2     |

- The small wins probably come from [#132168](https://github.com/rust-lang/rust/pull/132168).

Rollup of 9 pull requests [#132277](https://github.com/rust-lang/rust/pull/132277) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a9d17627d241645a54c1134a20f1596127fedb60&end=2df8dbb1b37168c59eca2884502a1b79892858a9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.7%, -0.1%] | 186   |
| Improvements (secondary) | -0.6% | [-1.7%, -0.1%] | 92    |
| All  (primary)           | -0.5% | [-1.7%, -0.1%] | 186   |

- The large amount of small wins might have been caused by [#130259](https://github.com/rust-lang/rust/pull/130259).

#### Mixed

Rollup of 5 pull requests [#132053](https://github.com/rust-lang/rust/pull/132053) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e1f306899514ea80abc1d1c9f6a57762afb304a3&end=9abfcb49002b82f46ad66ceb0b26cee8be2dc658&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.3%, 1.8%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 1     |
| All  (primary)           | 1.0%  | [0.3%, 1.8%]   | 2     |

- Large number of small-ish regressions that were just under the statistical threshold.
- Might have been caused by LLVM doing more work because of [#132031](https://github.com/rust-lang/rust/pull/132031).
- Not marking as triaged yet, investigation ongoing.

Represent trait constness as a distinct predicate [#131985](https://github.com/rust-lang/rust/pull/131985) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f61306d47bc98af8bb9d15f1adf6086785590a8c&end=1d4a7670d4f37bfbae2d89ec3ec07cd40dbc5a5d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 1.2%]   | 16    |
| Regressions (secondary)  | 0.9%  | [0.1%, 1.5%]   | 22    |
| Improvements (primary)   | -0.3% | [-0.5%, -0.1%] | 44    |
| Improvements (secondary) | -0.3% | [-0.6%, -0.1%] | 13    |
| All  (primary)           | -0.1% | [-0.5%, 1.2%]  | 60    |

- This was a large internal refactoring that had mostly positive or neutral effects on performance,
  although it did cause regressions in `doc` builds on several benchmarks.
- It was deemed acceptable during review.
- Marked as triaged.

Rollup of 4 pull requests [#132116](https://github.com/rust-lang/rust/pull/132116) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d4a7670d4f37bfbae2d89ec3ec07cd40dbc5a5d&end=a93c1718c80b9f100056c8eec3fc37fbd6424134&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 1.8%]   | 49    |
| Regressions (secondary)  | 0.8%  | [0.1%, 1.3%]   | 6     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -0.7% | [-1.8%, -0.1%] | 3     |
| All  (primary)           | 0.3%  | [-0.3%, 1.8%]  | 50    |

- The regression was caused by [#131983](https://github.com/rust-lang/rust/pull/131983), which
  stabilized a new behavior change that will appear in Edition 2024.
- Not marking as triaged yet, there might be a way to claw some of the regressions back.

Rollup of 12 pull requests [#132317](https://github.com/rust-lang/rust/pull/132317) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c8a8c82035439cb2404b8f24ca0bc18209d534ca&end=2dece5bb62f234f5622a08289c5a3d1555cd7843&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.4%]   | 4     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 6     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -0.0% | [-0.4%, 0.4%]  | 10    |

- Performance results were a wash.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Update bundled musl to 1.2.5" [rust#125692](https://github.com/rust-lang/rust/pull/125692)
  - FIY for everyone - IIUC already approved by @**Wesley Wiser** at Eurorust
  - The update will require *many* crates to update to a libc released one year ago ([comment](https://github.com/rust-lang/rust/pull/125692#issuecomment-2246638228))
  - Why the update would be nice explained in #130920
  - Also Zulip [discussion](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/bundled.20musl.201.2E2.2E5.20upgrade/near/479695979)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733) (last review activity: 10 months ago)
  - cc: @**Esteban Küber**
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784) (last review activity: 4 months ago)
  - cc: @**León Orell Liehr (fmease)** but also author cc @**Esteban Küber** - pretty big diff, needs a rebase. Unsure about the best way to proceed
- "Mangle rustc_std_internal_symbols functions" [rust#127173](https://github.com/rust-lang/rust/pull/127173) (last review activity: 4 months ago)
  - cc @**fee1-dead**
- "Support target-spec json file extension in various cases" [rust#127389](https://github.com/rust-lang/rust/pull/127389) (last review activity: 3 months ago)
  - cc @**Wesley Wiser** (by reading the comments, PR needs wider agreement, at least a discussion)
- "collect doc alias as tips during resolution" [rust#127721](https://github.com/rust-lang/rust/pull/127721) (last review activity: 3 months ago)
  - cc @**Esteban Küber**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/OlXkNzCFSpW9wjvvo8bSAw)
