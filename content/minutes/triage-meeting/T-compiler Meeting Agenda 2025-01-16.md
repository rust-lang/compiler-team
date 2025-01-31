---
tags: weekly, rustc
type: docs
note_id: 6J5geYyNTPaygqEbxAWLIg
---

# T-compiler Meeting Agenda 2025-01-16

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- @_**davidtwco** office hours <time:2025-01-17T17:00:00+01:00>
- Stable MIR Weekly Meeting <time:2025-01-17T17:00:00+01:00>
- WG-async design meeting <time:2025-01-16T19:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 3 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 3 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 2 months ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: 2 months ago)
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800)) (last review activity: 2 months ago)
  - "Demote `i686-pc-windows-gnu`" [compiler-team#822](https://github.com/rust-lang/compiler-team/issues/822) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Demote.20.60i686-pc-windows-gnu.60.20compiler-team.23822)) (last review activity: about 19 days ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
- Things in FCP (make sure you're good with it)
  - "Add amdgpu target" [compiler-team#823](https://github.com/rust-lang/compiler-team/issues/823) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20amdgpu.20target.20compiler-team.23823))
  - "Add new targets for Cygwin (and MSYS2)" [compiler-team#826](https://github.com/rust-lang/compiler-team/issues/826) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20new.20targets.20for.20Cygwin.20.28and.20MSYS2.29.20compiler-team.23826))
  - "Changing `-O` to `opt-level=3`" [compiler-team#828](https://github.com/rust-lang/compiler-team/issues/828) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Changing.20.60-O.60.20to.20.60opt-level.3D3.60.20compiler-team.23828))
  - "const-eval: detect more pointers as definitely not-null" [rust#133700](https://github.com/rust-lang/rust/pull/133700)
  - "remove support for the (unstable) #[start] attribute" [rust#134299](https://github.com/rust-lang/rust/pull/134299)
- Accepted MCPs
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790))
  - "Use debuginfo for short backtrace printing" [compiler-team#818](https://github.com/rust-lang/compiler-team/issues/818) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20debuginfo.20for.20short.20backtrace.20printing.20compiler-team.23818))
  - "Policy: rustc can be run on case-insensitive filesystems but works in a case-sensitive way" [compiler-team#819](https://github.com/rust-lang/compiler-team/issues/819) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20case.20insensitive.20filesystems.20are.20.E2.80.A6.20compiler-team.23819))
  - "T-compiler Supplemental Tool Policy (Linker Scripts, etc.)" [compiler-team#820](https://github.com/rust-lang/compiler-team/issues/820) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/T-compiler.20Supplemental.20Tool.20Policy.20.28Link.E2.80.A6.20compiler-team.23820))
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: about 28 days ago)
    - concern: [contributor friction](https://github.com/rust-lang/compiler-team/issues/817#issuecomment-2525266792)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 41 days ago)
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
  - "Fix ICE when multiple supertrait substitutions need assoc but only one is provided" [rust#133392](https://github.com/rust-lang/rust/pull/133392)
  - "Stabilize `asm_goto` feature gate" [rust#133870](https://github.com/rust-lang/rust/pull/133870)
  - "Stabilize `feature(trait_upcasting)`" [rust#134367](https://github.com/rust-lang/rust/pull/134367)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Make sure to mark `IMPL_TRAIT_REDUNDANT_CAPTURES` as `Allow` in edition 2024" [rust#135441](https://github.com/rust-lang/rust/pull/135441)
  - Authored by compiler-errors
  - Backport asked to ship with the edition (Edition 2024 == 1.85.0)
  - This downgrades the lint from "warn" to "allow"
  - Follow-up to #127672 (rfc#3617 "Stabilize opaque type precise capturing")
<!--
/poll Approve beta backport of #135441?
approve
decline
don't know
-->
- :beta: "Update to LLVM 19.1.7" [rust#135484](https://github.com/rust-lang/rust/pull/135484)
  - Authored by nikic
  - r+'ed, in bors queue. Fixes #134457 (llvm-project#120433, compiler fails on arithmetic operations) and #111073 (Chromium CI test fail when `sanitizers = true`, also linked reports from other projects)
  - Changelog [here](https://github.com/rust-lang/llvm-project/compare/59512b00273829823da74050d373b8d46dbca558...7e8c93c87c611f21d9bd95100563392f4c18bfe7)
<!--
/poll Approve beta backport of #135484?
approve
decline
don't know
-->
- :beta: "don't check for overlap if it's allowed regardless" [rust#135524](https://github.com/rust-lang/rust/pull/135524)
  - Authored by lcnr
  - Fixes rustc#135457, substancial perf regression
  - PR open, perf. regression being triaged (increased instruction count)
  - (also stable nominated)
<!--
/poll Approve beta backport of #135524?
approve
decline
don't know
-->
- :stable: "Make sure to record deps from cached task in new solver on first run" [rust#133828](https://github.com/rust-lang/rust/pull/133828)
  - Authored by compiler-errors, nominated for possible stable backport ([comment](https://github.com/rust-lang/rust/pull/133828#issuecomment-2591591145))
  - not a regression fix (AFAICS), part of the new trait solver refactor
<!--
/poll Approve stable backport of #133828?
approve
approve but does not justify new dot release
decline
don't know
-->
- :stable: "don't check for overlap if it's allowed regardless" [rust#135524](https://github.com/rust-lang/rust/pull/135524)
  - Authored by lcnr
  - also beta-backport nominated
<!--
/poll Approve stable backport of #135524?
approve
approve but does not justify new dot release
decline
don't know
-->

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2025-01-14](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-01-14.md)

A quiet week with little change to the actual compiler performance. The biggest compiler regression was quickly recognized and reverted.

Triage done by **@rylev**.
Revision range: [0f1e965f..1ab85fbd](https://perf.rust-lang.org/?start=0f1e965fec3bc2f97b932e9dd8e85fca6d7faadc&end=1ab85fbd7474e8ce84d5283548f21472860de3e2&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 0.4%   | [0.1%, 1.8%]    | 21    |
| Regressions (secondary)  | 0.5%   | [0.0%, 2.0%]    | 35    |
| Improvements (primary)   | -0.8%  | [-2.7%, -0.3%]  | 6     |
| Improvements (secondary) | -10.2% | [-27.8%, -0.1%] | 13    |
| All  (primary)           | 0.2%   | [-2.7%, 1.8%]   | 27    |


4 Regressions, 3 Improvements, 3 Mixed; 3 of them in rollups
44 artifact comparisons made in total

#### Regressions

Master bootstrap update [#135268](https://github.com/rust-lang/rust/pull/135268) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ec12cd8436aab693d8847b3077c26fe2de4ed661&end=251206c27b619ccf3a08e2ac4c525dc343f08492&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.2%, 0.2%] | 3     |
- Probably just noise, and if not, it's not really worth investigating.


mir_transform: implement `#[rustc_force_inline]` [#134082](https://github.com/rust-lang/rust/pull/134082) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=336209eef13882bd1e211b24779584cb7ef911eb&end=b1a7dfb91106018f47ed9dc9b27aee1977682868&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.3%]   | 10    |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 15    |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 1     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.3%] | 2     |
| All  (primary)                 | 0.2%  | [-0.1%, 0.3%]  | 11    |
- Looks like some regressions snuck back in since the last run - I'm unsure if something happened in a rebase to reintroduce them.
- The actual regressions are much smaller than the original perf run, and I don't think they're big enough to demand an investigation.


Add #[inline] to copy_from_slice [#135384](https://github.com/rust-lang/rust/pull/135384) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=627513a764a696b59bb2679cc1731a197a088a1d&end=48a426eca9df23b24b3559e545cf88dee61d4de9&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.1% | [1.1%, 1.1%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 1.1% | [1.1%, 1.1%] | 1     |
- From the PR "Small chaotic effect is expected, small binary size improvements oddly line up with the effect I was going for. Seems unlikely they're connected though, I wouldn't be surprised to see a different list of affected scenarios after merge."


Rollup of 4 pull requests [#135438](https://github.com/rust-lang/rust/pull/135438) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2ae9916816a448fcaab3b2da461de754eda0055a&end=1ab85fbd7474e8ce84d5283548f21472860de3e2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | 1.2%  | [0.9%, 1.6%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)                 | 0.4%  | [0.4%, 0.4%]   | 1     |
- https://github.com/rust-lang/rust/pull/135426 is the offending PR. Working with the author on a solution.


#### Improvements

Rollup of 6 pull requests [#135260](https://github.com/rust-lang/rust/pull/135260) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a580b5c379b4fca50dfe5afc0fc0ce00921e4e00&end=e26ff2f9086fc449b963df578f8641c31846abe6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 4     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 1     |
| All  (primary)                 | -0.3% | [-0.4%, -0.3%] | 4     |


Remove special-casing for argument patterns in MIR typeck (attempt to fix perf regression of  #133858) [#135273](https://github.com/rust-lang/rust/pull/135273) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=67951d946a158bc70949150ca06265e912752096&end=b44e14f762fd4062faeba97f8f2bc470298ec1ac&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -3.0% | [-17.4%, -0.2%] | 16    |
| Improvements (secondary) | -     | -               | 0     |
| All  (primary)                 | -3.0% | [-17.4%, -0.2%] | 16    |


Add an InstSimplify for repetitive array expressions [#135274](https://github.com/rust-lang/rust/pull/135274) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a2d7c8144f3f237612b37420fe2b6b08408d5b1d&end=7e4077d06fc073442c567d58885b47ed2c5121b8&stat=instructions:u)

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | -      | -               | 0     |
| Regressions (secondary)  | -      | -               | 0     |
| Improvements (primary)   | -      | -               | 0     |
| Improvements (secondary) | -14.7% | [-27.9%, -1.3%] | 9     |
| All  (primary)                 | -      | -               | 0     |


#### Mixed

`best_blame_constraint`: Blame better constraints when the region graph has cycles from invariance or `'static` [#133858](https://github.com/rust-lang/rust/pull/133858) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9c87288a7d2f03625a813df6d3bfe43c09ad4f5a&end=6afee111c2faf86ba884ea748967130abad37b52&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.2%  | [0.1%, 21.0%]  | 17    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)                 | 3.2%  | [0.1%, 21.0%]  | 17    |
- Partially reverted in https://github.com/rust-lang/rust/pull/135273


[mir-opt] GVN some more transmute cases [#133324](https://github.com/rust-lang/rust/pull/133324) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=65d7296fc9868af121adb5e07358a3815a80a7a1&end=b6b8361bce8561fb8786ad33ca1abfdf4bc487b6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.1%, 1.4%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-3.0%, -0.2%] | 11    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 7     |
| All  (primary)                 | -0.3% | [-3.0%, 1.4%]  | 14    |
- [Original perf run was deemed acceptable](https://github.com/rust-lang/rust/pull/133324#issuecomment-2520872151) and the final perf run wasn't as bad.


Rollup of 6 pull requests [#135357](https://github.com/rust-lang/rust/pull/135357) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7e4077d06fc073442c567d58885b47ed2c5121b8&end=ce55b2052db2c9d6deb2dbc5cb2f56d163515a99&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.6%]   | 4     |
| Regressions (secondary)  | 0.9%  | [0.2%, 2.0%]   | 7     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.2%  | [-0.5%, 0.6%]  | 5     |


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Status of the riscv32im-risc0-zkvm-elf target" [rust#135376](https://github.com/rust-lang/rust/issues/135376)
  - Nominated by @**nora (Noratrieb)**
  - This target was added in #134721 basically does not have a standard library, or we can make make a stub of it to make it compile, only to let the developer discover that the code is just not working ([comment](https://github.com/rust-lang/rust/issues/135376#issuecomment-2585402732)).
  - The question is: do we want to allow this kind of target, without a real `std`? The alternative to this target would be using the existing `riscv32im-unknown-none-elf` with a RISC0-provided crate for the system calls.
  - Also `T-libs` nominated, since this question is probably in their purview

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Initial support for auto traits with default bounds" [rust#120706](https://github.com/rust-lang/rust/pull/120706) (last review activity: 5 months ago)
  - This was extensively reviewed by T-compiler, now needs a rebase
  - Is otherwise good to go? cc: @**Michael Goulet (compiler-errors)** @**lcnr**
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733) (last review activity: 13 months ago)
  - cc: @**Esteban Küber**
- "Add diagnostic for stack allocations of 1 GB or more" [rust#119798](https://github.com/rust-lang/rust/pull/119798) (last review activity: 12 months ago)
  - cc @**cjgillot**
- "Improve parse item fallback" [rust#125388](https://github.com/rust-lang/rust/pull/125388) (last review activity: 7 months ago)
  - cc: @**Esteban Küber**
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784) (last review activity: 7 months ago)
  - cc: @**Esteban Küber** for a rebase then cc: @_**León Orell Liehr (fmease)**
- "Do not eagerly reject inference vars when trying to resolve method calls." [rust#126316](https://github.com/rust-lang/rust/pull/126316) (last review activity: 7 months ago)
   - cc @**lcnr** (@**oli** a rebase when you have a chance)
- "collect doc alias as tips during resolution" [rust#127721](https://github.com/rust-lang/rust/pull/127721) (last review activity: 6 months ago)
  - cc @**Esteban Küber** (btw author should also rebase)

Next meeting's agenda draft: [hackmd link](https://hackmd.io/Cljd5iiHTQOY8VOt9Bi34w)
