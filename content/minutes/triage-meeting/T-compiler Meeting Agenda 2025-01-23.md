---
tags: weekly, rustc
type: docs
note_id: Cljd5iiHTQOY8VOt9Bi34w
---

# T-compiler Meeting Agenda 2025-01-23

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- @_**davidtwco** office hours <time:2025-01-24T17:00:00+01:00>
- WG-async design meeting <time:2025-01-23T19:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829))
    - Ongoing discussion, some things to be cleared up (see mominated issues)
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 3 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 3 months ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: 3 months ago)
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800)) (last review activity: 2 months ago)
  - "Demote `i686-pc-windows-gnu`" [compiler-team#822](https://github.com/rust-lang/compiler-team/issues/822) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Demote.20.60i686-pc-windows-gnu.60.20compiler-team.23822)) (last review activity: about 27 days ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
- Things in FCP (make sure you're good with it)
  - "Add amdgpu target" [compiler-team#823](https://github.com/rust-lang/compiler-team/issues/823) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20amdgpu.20target.20compiler-team.23823))
  - "Add new targets for Cygwin (and MSYS2)" [compiler-team#826](https://github.com/rust-lang/compiler-team/issues/826) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20new.20targets.20for.20Cygwin.20.28and.20MSYS2.29.20compiler-team.23826))
  - "Changing `-O` to `opt-level=3`" [compiler-team#828](https://github.com/rust-lang/compiler-team/issues/828) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Changing.20.60-O.60.20to.20.60opt-level.3D3.60.20compiler-team.23828))
- Accepted MCPs
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790))
  - "Use debuginfo for short backtrace printing" [compiler-team#818](https://github.com/rust-lang/compiler-team/issues/818) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20debuginfo.20for.20short.20backtrace.20printing.20compiler-team.23818))
  - "Policy: rustc can be run on case-insensitive filesystems but works in a case-sensitive way" [compiler-team#819](https://github.com/rust-lang/compiler-team/issues/819) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20case.20insensitive.20filesystems.20are.20.E2.80.A6.20compiler-team.23819))
  - "T-compiler Supplemental Tool Policy (Linker Scripts, etc.)" [compiler-team#820](https://github.com/rust-lang/compiler-team/issues/820) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/T-compiler.20Supplemental.20Tool.20Policy.20.28Link.E2.80.A6.20compiler-team.23820))
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: about 7 days ago)
    - concern: [contributor friction](https://github.com/rust-lang/compiler-team/issues/817#issuecomment-2525266792)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 49 days ago)
    - concern: [design-around-naming-scheme](https://github.com/rust-lang/compiler-team/issues/778#issuecomment-2514307904)
    - Design meeting to discuss the naming scheme ([compiler-team#827](https://github.com/rust-lang/compiler-team/issues/827))
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
  - "Consider fields to be inhabited if they are unstable" [rust#133889](https://github.com/rust-lang/rust/pull/133889)
  - "disallow `repr()` on invalid items" [rust#133925](https://github.com/rust-lang/rust/pull/133925)
  - "Make the wasm_c_abi future compat warning a hard error" [rust#133951](https://github.com/rust-lang/rust/pull/133951)
  - "fully de-stabilize all custom inner attributes" [rust#134276](https://github.com/rust-lang/rust/pull/134276)
  - "Stabilize `feature(trait_upcasting)`" [rust#134367](https://github.com/rust-lang/rust/pull/134367)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Always force non-trimming of path in `unreachable_patterns` lint" [rust#135310](https://github.com/rust-lang/rust/pull/135310)
  - Authored by estebank
  - Fixes #135289, an ICE affecting diagnostics
<!--
/poll Approve beta:  backport of #135310?
approve
decline
don't know
-->
- :beta: "add cache to `AmbiguityCausesVisitor`" [rust#135618](https://github.com/rust-lang/rust/pull/135618)
  - Authored by lcnr
  - Fixes #135457, substancial compile-time regression found in beta crater run
<!--
/poll Approve beta:  backport of #135618?
approve
decline
don't know
-->
- :beta: "When LLVM's location discriminator value limit is exceeded, emit locations with dummy spans instead of dropping them entirely" [rust#135643](https://github.com/rust-lang/rust/pull/135643)
  - Authored by khuey
  - Fixes #135332, a P-high regression in a beta crater run
  - Nominated from @**Jieyou Xu** for both beta+stable backport ([comment](https://github.com/rust-lang/rust/pull/135643#issuecomment-2599443483))
<!--
/poll Approve beta:  backport of #135643?
approve
decline
don't know
-->
- :beta: "Temporarily bring back `Rvalue::Len`" [rust#135709](https://github.com/rust-lang/rust/pull/135709)
  - Authored by lqd
  - Fixes a p-critical regression #135671
  - has some perf losses but acceptable given what it fixes
<!--
/poll Approve beta:  backport of #135709?
approve
decline
don't know
-->
- :beta: "Only assert the `Parser` size on specific arches" [rust#135855](https://github.com/rust-lang/rust/pull/135855)
  - Authored and nominated for backport by cuviper
  - Affects Fedora current beta on powerpc64le and s390x ([comment](https://github.com/rust-lang/rust/pull/135855#issuecomment-2606084081))
<!--
/poll Approve beta:  backport of #135855?
approve
decline
don't know
-->
- :stable: "add cache to `AmbiguityCausesVisitor`" [rust#135618](https://github.com/rust-lang/rust/pull/135618)
  - Authored by lcnr
  - (Also beta-backport nominated)
<!--
/poll Approve stable:  backport of #135618?
approve
approve but does not justify new dot release
decline
don't know
-->
- :stable: "When LLVM's location discriminator value limit is exceeded, emit locations with dummy spans instead of dropping them entirely" [rust#135643](https://github.com/rust-lang/rust/pull/135643)
  - Authored by khuey
  - Nominated by @**Jieyou Xu** since in 1.84.0 we unconditionally verify twice the LLVM IR in the backend (this will changed in 1.85 with #133499)
<!--
/poll Approve stable:  backport of #135643?
approve
approve but does not justify new dot release
decline
don't know
-->

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
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- None

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "regression: cannot borrow ... as immutable because it is also borrowed as mutable" [rust#135671](https://github.com/rust-lang/rust/issues/135671)
  - Fixed by #135709 (beta-backport, thanks @**lqd**)

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: ICE: `trimmed_def_paths` called, diagnostics were expected but none were emitted" [rust#135673](https://github.com/rust-lang/rust/issues/135673)
  - Fixed by #135310 (beta-backport, thanks @**Michael Goulet (compiler-errors)**)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-01-20](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-01-20.md)

A very quiet week for performance, with small improvements essentially on all
benchmarks.

Triage done by **@simulacrum**.
Revision range: [1ab85fbd..9a1d156f](https://perf.rust-lang.org/?start=1ab85fbd7474e8ce84d5283548f21472860de3e2&end=9a1d156f38c51441ee51e5a068f1d0caf4bb0f27&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.3%, 1.0%]   | 3     |
| Regressions (secondary)  | 0.7%  | [0.5%, 1.0%]   | 4     |
| Improvements (primary)   | -0.4% | [-1.3%, -0.1%] | 155   |
| Improvements (secondary) | -0.5% | [-1.8%, -0.1%] | 94    |
| All  (primary)           | -0.4% | [-1.3%, 1.0%]  | 158   |


0 Regression, 1 Improvement, 2 Mixed; 0 of them in rollups
40 artifact comparisons made in total

#### Regressions

No statistically significant regressions this cycle.

#### Improvements

Stable Hash: Ignore all HirIds that just identify the node itself [#135329](https://github.com/rust-lang/rust/pull/135329) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bcd0683e5dce1945b5d940714742e7502883bb5c&end=6067b36314ab5eb2eb47cecc464545ba58e1ad24&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.9%, -0.1%] | 169   |
| Improvements (secondary) | -0.5% | [-1.3%, -0.1%] | 85    |
| All  (primary)                 | -0.4% | [-0.9%, -0.1%] | 169   |


#### Mixed

Less unsafe in `dangling`/`without_provenance` [#135344](https://github.com/rust-lang/rust/pull/135344) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d61f55d8b9d4703207a5980f27b6c28973ba27ee&end=d8a64098c9d0fb25699f657c6efff0bb418f7e18&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.4%, 2.1%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.9%, -0.3%] | 3     |
| Improvements (secondary) | -1.1% | [-1.6%, -0.6%] | 4     |
| All  (primary)                 | 0.2%  | [-0.9%, 2.1%]  | 5     |

Regressions look likely to be noise/modality in benchmarks, not genuine changes
caused by this work. See also some
[analysis](https://github.com/rust-lang/rust/pull/135344#issuecomment-2591403244)
on the PR.

Temporarily bring back `Rvalue::Len` [#135709](https://github.com/rust-lang/rust/pull/135709) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=98572840b6da350e5615a68586a766a0f9f1470a&end=c62b732724b6beb50a5c73be26d0c5f668504059&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.5%]   | 6     |
| Improvements (primary)   | -0.7% | [-1.3%, -0.4%] | 3     |
| Improvements (secondary) | -0.9% | [-1.7%, -0.2%] | 2     |
| All  (primary)                 | -0.4% | [-1.3%, 0.3%]  | 4     |

Fixing P-critical regression, so easily justified.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Add `-C hint-mostly-unused` to tell rustc that most of a crate will go unused" [rust#135656](https://github.com/rust-lang/rust/pull/135656)
  - Nominated by @**Jubilee** ([comment](https://github.com/rust-lang/rust/pull/135656#issuecomment-2599339130)), left some questions for T-compiler
  - [MCP#829](https://github.com/rust-lang/compiler-team/issues/829), not yet seconded
  - The proposal should substantially decrease compile times in some cases by hinting rustc when part of a crate is unused. Can regress in other cases ([Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Computing.20mono.20items.20rustc.20codegenned.20that.20went.20unused/near/494438606))
  - Maybe a design meeting, inviting also people having more context? cc @**lqd** @**Ben Kimock (Saethlin)**

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Stop considering moved-out locals when computing auto traits for generators (rebased)" [rust#128846](https://github.com/rust-lang/rust/pull/128846) (last review activity: 5 months ago)
  - cc @**cjgillot**
- "Add diagnostics to "while loop" and "for loop" that note that it is always determined that it might iterate zero times." [rust#126510](https://github.com/rust-lang/rust/pull/126510) (last review activity: 4 months ago)
  - cc @**Esteban Küber**
- "Async drop codegen" [rust#123948](https://github.com/rust-lang/rust/pull/123948) (last review activity: 3 months ago)
  - What's the current status of this one? cc @**davidtwco** @**nikomatsakis**
- "Handle `rustc_query_system` cases of `rustc::potential_query_instability` lint" [rust#131200](https://github.com/rust-lang/rust/pull/131200) (last review activity: 2 months ago)
  - cc @**cjgillot**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/TYZPMRHwQdCwCmLqix1Ihg)
