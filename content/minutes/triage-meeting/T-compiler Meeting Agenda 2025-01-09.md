---
tags: weekly, rustc
type: docs
note_id: EA9mhXkIR8muLGlnLyQ8Ug
---

# T-compiler Meeting Agenda 2025-01-09

## Announcements

- T-lang have scheduled a C++ interop design meeting on  <time:2025-02-26T17:30:00Z> and they want anyone interested/with opinions from compiler to attend
- Today release of Rust stable 1.84 :tada: and [blog post](https://github.com/Mark-Simulacrum/blog.rust-lang.org/blob/blog-1.84.0/posts/2025-01-09-Rust-1.84.0.md)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- @_**davidtwco** office hours <time:2025-01-10T17:00:00+01:00>

## MCPs/FCPs

**Note**: there are a few [MCP in FCP status](https://github.com/rust-lang/compiler-team/issues?q=is%3Aissue+is%3Aopen+label%3Afinal-comment-period+sort%3Acreated-asc) that technically can be closed as accepted. Due to the overlapping holidays in western timezones, we allowed a bit more time for people to look at them. We're going to close them soon :-)

- New MCPs (take a look, see if you like them!)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825))
  - "Add new targets for Cygwin (and MSYS2)" [compiler-team#826](https://github.com/rust-lang/compiler-team/issues/826) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20new.20targets.20for.20Cygwin.20.28and.20MSYS2.29.20compiler-team.23826))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 3 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 3 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 2 months ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: 2 months ago)
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800)) (last review activity: 2 months ago)
  - "Demote `i686-pc-windows-gnu`" [compiler-team#822](https://github.com/rust-lang/compiler-team/issues/822) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Demote.20.60i686-pc-windows-gnu.60.20compiler-team.23822)) (last review activity: about 13 days ago)
  - "Add amdgpu target" [compiler-team#823](https://github.com/rust-lang/compiler-team/issues/823) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20amdgpu.20target.20compiler-team.23823)) (last review activity: about 1 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
- Things in FCP (make sure you're good with it)
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790))
  - "Use debuginfo for short backtrace printing" [compiler-team#818](https://github.com/rust-lang/compiler-team/issues/818) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20debuginfo.20for.20short.20backtrace.20printing.20compiler-team.23818))
  - "Policy: rustc can be run on case-insensitive filesystems but works in a case-sensitive way" [compiler-team#819](https://github.com/rust-lang/compiler-team/issues/819) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20case.20insensitive.20filesystems.20are.20.E2.80.A6.20compiler-team.23819))
  - "T-compiler Supplemental Tool Policy (Linker Scripts, etc.)" [compiler-team#820](https://github.com/rust-lang/compiler-team/issues/820) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/T-compiler.20Supplemental.20Tool.20Policy.20.28Link.E2.80.A6.20compiler-team.23820))
  - "const-eval: detect more pointers as definitely not-null" [rust#133700](https://github.com/rust-lang/rust/pull/133700)
  - "remove support for the (unstable) #[start] attribute" [rust#134299](https://github.com/rust-lang/rust/pull/134299)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: about 22 days ago)
    - concern: [contributor friction](https://github.com/rust-lang/compiler-team/issues/817#issuecomment-2525266792)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 35 days ago)
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
  - "`--nocapture` doesn't follow common CLI conventions, making it a stumbling block to people debugging failures" [rust#133073](https://github.com/rust-lang/rust/issues/133073)
  - "Fix ICE when multiple supertrait substitutions need assoc but only one is provided" [rust#133392](https://github.com/rust-lang/rust/pull/133392)
  - "Stabilize `asm_goto` feature gate" [rust#133870](https://github.com/rust-lang/rust/pull/133870)
  - "Stabilize `feature(trait_upcasting)`" [rust#134367](https://github.com/rust-lang/rust/pull/134367)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Run borrowck tests on BIDs and emit tail-expr-drop-order lints for violations" [rust#134523](https://github.com/rust-lang/rust/pull/134523)
  - Authored by dingxiangfei2009
  - (TIL) "BID" stands for "backward-incompatible drop statements generated exclusively when edition migration is run" ([link](https://github.com/rust-lang/rust/pull/134523/files#diff-c17d40cedf6d32c9d120f8a8bf463ffccf7919e813ae17bf08ed737650fc299cR1164) and [link](https://github.com/rust-lang/rust/blob/b6b8361bce8561fb8786ad33ca1abfdf4bc487b6/compiler/rustc_middle/src/mir/syntax.rs#L440))
  - Fixes a lint so that it triggers the lint on edition 2024. Perf. run [almost neutral](https://github.com/rust-lang/rust/pull/134523#issuecomment-2578690069).
  - Backport nominated by @_**Michael Goulet (compiler-errors)** to have this lint trigger actually trigger on 2024 edition ([comment](https://github.com/rust-lang/rust/pull/134523#issuecomment-2574289638))
<!--
/poll Approve beta backport of #134523?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "const-eval: detect more pointers as definitely not-null" [rust#133700](https://github.com/rust-lang/rust/pull/133700)
  - changes just approved by T-lang ([comment](https://github.com/rust-lang/rust/pull/133700#issuecomment-2518050453)), on @_**RalfJ**/ @_**lcnr** purview (IIUC)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 20 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Rustc strips all symbols on MacOS when strip = "debuginfo" is specified, but not when strip = "symbols" is specified" [rust#135028](https://github.com/rust-lang/rust/issues/135028)
  - Fixed by #135034, beta backport approved [on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/potential.20emergency.20beta.20backport/near/491741910)  (thanks @**nora (Noratrieb)** )

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-01-07](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-01-07.md)

A quiet week with not much going on. A small regression was caused by a bugfix related to traits, but
it was somewhat offset by a cargo update that brought a small perf. win.

Triage done by **@kobzol**.
Revision range: [93722f7e..0f1e965f](https://perf.rust-lang.org/?start=93722f7ed56bcf27839a6355074095c4320b7d37&end=0f1e965fec3bc2f97b932e9dd8e85fca6d7faadc&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 1.1%]   | 20    |
| Regressions (secondary)  | 0.4%  | [0.1%, 2.5%]   | 19    |
| Improvements (primary)   | -0.4% | [-1.6%, -0.2%] | 8     |
| Improvements (secondary) | -1.3% | [-1.7%, -0.2%] | 13    |
| All  (primary)           | 0.1%  | [-1.6%, 1.1%]  | 28    |


0 Regressions, 2 Improvements, 4 Mixed; 4 of them in rollups
51 artifact comparisons made in total

#### Improvements

Rollup of 4 pull requests [#135059](https://github.com/rust-lang/rust/pull/135059) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ac00fe89a121e9ca5e59c093c7c02aa296e55ece&end=319f5292a19951d13f3c79c04b3cf3d1501d9e79&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.2% | [-0.2%, -0.1%] | 5     |


Rollup of 7 pull requests [#135086](https://github.com/rust-lang/rust/pull/135086) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3f43b1a636738f41c48df073c5bcb97a97bf8459&end=8d2c06d151972fefa3f0bbf04ace3beede737145&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 7     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.3% | [-0.4%, -0.2%] | 7     |


#### Mixed

Update cargo [#135089](https://github.com/rust-lang/rust/pull/135089) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8d2c06d151972fefa3f0bbf04ace3beede737145&end=d13c80a6fdd915ec35d7882122e5f221e8f27a18&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.9%, 0.9%]   | 1     |
| Improvements (primary)   | -0.1% | [-0.2%, -0.1%] | 38    |
| Improvements (secondary) | -0.3% | [-0.6%, -0.1%] | 35    |
| All  (primary)                 | -0.1% | [-0.2%, -0.1%] | 38    |

- Many small improvements and only a tiny regression.
- Marked as triaged.

Project to `TyKind::Error` when there are unconstrained non-lifetime (ty/const) impl params [#135057](https://github.com/rust-lang/rust/pull/135057) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d13c80a6fdd915ec35d7882122e5f221e8f27a18&end=7349f6b50359fd1f11738765b8deec5ee02d8710&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.3%]   | 76    |
| Regressions (secondary)  | 0.3%  | [0.0%, 0.7%]   | 39    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.0% | [-1.0%, -1.0%] | 1     |
| All  (primary)                 | 0.2%  | [0.1%, 0.3%]   | 76    |

- Small performance loss, but this was a bugfix, so it was deemed justifiable.
- Marked as triaged.

Rollup of 6 pull requests [#135101](https://github.com/rust-lang/rust/pull/135101) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ead4a8f53624f3b4a9ee833421fbf8a48bc07aca&end=1891c28669863bf7ed3ef8f43f2d3fa546f34861&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.8%]   | 4     |
| Regressions (secondary)  | 0.7%  | [0.3%, 2.2%]   | 4     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-1.8%, -0.2%] | 13    |
| All  (primary)                 | 0.7%  | [0.7%, 0.8%]   | 4     |

- The `deep-vector` benchmark changes were most likely caused by [#135046](https://github.com/rust-lang/rust/pull/135046).
- Marked as triaged.

Rollup of 3 pull requests [#135140](https://github.com/rust-lang/rust/pull/135140) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=feb32c654619e50eda8408f9241d4cb7b948fea5&end=56f9e6f935f9b0d6e83092a0f86d4dbeb878f17d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.6%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.7% | [-1.7%, -1.7%] | 1     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 2     |
| All  (primary)                 | -0.2% | [-1.7%, 0.6%]  | 3     |

- Only tiny changes, and the combined result is a wash.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Built-in attributes are treated differently vs prelude attributes, unstable built-in attributes can name-collide with stable macro, and built-in attributes can break back-compat" [rust#134963](https://github.com/rust-lang/rust/issues/134963)
  - nominated by @**Jieyou Xu** (also T-lang nominated)
  - Questions for T-compiler (in opening comment):
    - Built-in attributes like `#[coverage(..)]` are handled differently versus prelude attributes like `#[test]`, including name resolution.
    - Current feature-gating of unstable built-in attributes is insufficient: adding a new unstable built-in attribute gated behind a feature gate (e.g. `#[coverage]`) can still break stable code without any feature gates (e.g. use of a user-defined macro of the same name as the newly added built-in attribute).
    - (also for T-lang) Stabilization of a built-in attribute can break backwards compatibility: old code can be broken by addition of a new built-in attribute.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- None this week

Next meeting's agenda draft: [hackmd link](https://hackmd.io/6J5geYyNTPaygqEbxAWLIg)
