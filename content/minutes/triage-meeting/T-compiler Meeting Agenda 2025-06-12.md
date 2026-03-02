---
tags: weekly, rustc
type: docs
note_id: hAdYRYyMTU69sTm-TgZZaw
---

# T-compiler Meeting Agenda 2025-06-12

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-06-12T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 12 days ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 8 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 7 months ago)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: 3 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 5 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 3 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 2 months ago)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853)) (last review activity: 2 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 55 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: about 41 days ago)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Add `target_env = "macabi"` and `target_env = "sim"` (rust#139451)](https://github.com/rust-lang/rust/pull/139451#issuecomment-2793613930)
    - @_**|116266** @_**|119031** @_**|248906** @_**|426609** @_**|353056**
    - no pending concerns
  - merge: [Use lld by default on `x86_64-unknown-linux-gnu` stable (rust#140525)](https://github.com/rust-lang/rust/pull/140525#issuecomment-2853884572)
    - @_**|116266** @_**|125250** @_**|248906** @_**|426609** @_**|116118**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
  - "Introduce debug information to statements in MIR" [compiler-team#867](https://github.com/rust-lang/compiler-team/issues/867) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20debug.20information.20to.20statements.E2.80.A6.20compiler-team.23867))
  - "Retroactive MCP for the Rust for Linux Ecosystem Test Job" [compiler-team#874](https://github.com/rust-lang/compiler-team/issues/874) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23874))
  - "Add `-Z hint-mostly-unused` option to hint that most of a crate's API surface will be unused" [compiler-team#883](https://github.com/rust-lang/compiler-team/issues/883) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20hint-mostly-unused.60.20option.20to.20hin.E2.80.A6.20compiler-team.23883))
- Accepted MCPs
  - "Promote 64-bit windows-gnullvm Targets to Tier 2 with Host Tools" [compiler-team#877](https://github.com/rust-lang/compiler-team/issues/877) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.2064-bit.20windows-gnullvm.20Targets.20to.E2.80.A6.20compiler-team.23877))
  - "Eliminate `ast::ptr::P`" [compiler-team#878](https://github.com/rust-lang/compiler-team/issues/878) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Eliminate.20.60ast.3A.3Aptr.3A.3AP.60.20compiler-team.23878))
- MCPs blocked on unresolved concerns
  - "Run the UI test suite with multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861)) (last review activity: about 9 days ago)
    - concern: [edition-directive-meaning](https://github.com/rust-lang/compiler-team/issues/861#issuecomment-2796811016)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 2 days ago)
    - concern: [fd duplication](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-2922823993)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
  - "Remove backticks from `ShouldPanic::YesWithMessage`'s `TrFailedMsg`" [rust#136160](https://github.com/rust-lang/rust/pull/136160)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
  - "Split up the `unknown_or_malformed_diagnostic_attributes` lint" [rust#140717](https://github.com/rust-lang/rust/pull/140717)
- Other teams finalized FCPs
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "Specify the behavior of `file!`" [rust#134442](https://github.com/rust-lang/rust/pull/134442)
  - "Lint on fn pointers comparisons in external macros" [rust#134536](https://github.com/rust-lang/rust/pull/134536)
  - "Remove backticks from `ShouldPanic::YesWithMessage`'s `TrFailedMsg`" [rust#136160](https://github.com/rust-lang/rust/pull/136160)
  - "Stabilize `if let` guards (`feature(if_let_guard)`)" [rust#141295](https://github.com/rust-lang/rust/pull/141295)
  - "Add (back) `unsupported_calling_conventions` lint to reject more invalid calling conventions" [rust#141435](https://github.com/rust-lang/rust/pull/141435)
  - "Document representation of `Option<unsafe fn()>`" [rust#141447](https://github.com/rust-lang/rust/pull/141447)
  - "Stabilize `feature(generic_arg_infer)`" [rust#141610](https://github.com/rust-lang/rust/pull/141610)
  - "Make the `dangerous_implicit_autorefs` lint deny-by-default" [rust#141661](https://github.com/rust-lang/rust/pull/141661)

## Backport nominations

Note: no backport nominations but we are a little behind schedule with the crater run (see [comment](https://rust-lang.zulipchat.com/#narrow/channel/241545-t-release/topic/Crater.20runs.20for.201.2E88.20beta.3F/near/523642716))

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- [use correct edition when warning for unsafe attributes by folkertdev · Pull Request #142261 · rust-lang/rust](https://github.com/rust-lang/rust/pull/142261)
    - authored by Michael
    - Fixes #142182, a P-high breaking change originated in #138162 (an incorrect edition used to emit warnings for unsafe attributes)
    - patch has been just merged
    - Zulip voting [thread](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23142261.3A.20beta-nominated/near/523758554) (in favor)

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [57 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 31 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "`windows-sys` v0.59.0 (latest version) hits a FCW on the latest nightly" [rust#142330](https://github.com/rust-lang/rust/issues/142330)
  - regression on nightly, the `windows-sys` crate (widely spread in the ecosystem) would emit a lint warning not actionable by the user seeing it
  - The lint started in #141435
  - Switfly fixed by @**Jubilee** in #142353 (removed `withdrawn unsupported_calling_conventions` from the lint for now, thanks!!)
  - more context at this [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/122651-general/topic/windows-sys.20FCW)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-06-09](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-06-09.md)

Mostly positive week, with a lot of improvements in the type system, especially in new solver and one big win in caching code. Regressions come from new warnings, with outsized impact on one benchmark with a lot of generated code.

Triage done by **@panstromek**.
Revision range: [2fc3deed..c31cccb7](https://perf.rust-lang.org/?start=2fc3deed9fcb8762ad57191e0195f06f7543e4a5&end=c31cccb7b5cc098b1a8c1794ed38d7fdbec0ccb0&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 3.1%  | [0.3%, 8.5%]    | 22    |
| Regressions (secondary)  | 0.6%  | [0.2%, 0.9%]    | 3     |
| Improvements (primary)   | -1.0% | [-3.4%, -0.2%]  | 151   |
| Improvements (secondary) | -3.5% | [-66.5%, -0.2%] | 146   |
| All  (primary)           | -0.4% | [-3.4%, 8.5%]   | 173   |


3 Regressions, 6 Improvements, 5 Mixed; 2 of them in rollups
45 artifact comparisons made in total

#### Regressions

Use ccache for stage0 tool builds [#136942](https://github.com/rust-lang/rust/pull/136942) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2f176126aaf3fd316fc5ced3d9a111a48797b52c&end=aae43c4532690153af7465227816c93036bb1604&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 2.9% | [2.9%, 2.9%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 2.9% | [2.9%, 2.9%] | 1     |

The regression is spurious, the affected benchmark is bi-modal.

Move placeholder handling to a proper preprocessing step [#140466](https://github.com/rust-lang/rust/pull/140466) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=81a964c23ea4fe9ab52b4449bb166bf280035797&end=425e142686242c7e73f5e32c79071ae266f0f355&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.1% | [0.1%, 0.1%] | 1     |
| Regressions (secondary)  | 0.2% | [0.2%, 0.3%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.1% | [0.1%, 0.1%] | 1     |


These regressions look real. One tiny regression in Cargo and two secondary benchmarks - `coercions` and `ucd`, which are both based on giant static tables and are somewhat artificial.

According to a [comment by author](https://github.com/rust-lang/rust/pull/140466#issuecomment-2955437404), this PR doesn't change runtime behavour, so those are probably just spurious. Most of the benchmarks improved since then and some of them are a bit noisy at times.

This is a piece of larger important work (Polonius) and the regressions are pretty limited. [#130227](https://github.com/rust-lang/rust/pull/130227) (which this PR is part of) does have a bit different perf results, so I guess it will also make more sense asses the perf impact of this work when more pieces of it lands.

Add a new `mismatched-lifetime-syntaxes` lint [#138677](https://github.com/rust-lang/rust/pull/138677) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=076ec59ff1dcf538b9d3a0b8e0d7f4edd0559959&end=ccf3198de316b488ee17441935182e9d5292b4d3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.6%  | [0.2%, 9.7%]   | 72    |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 11    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 1.6%  | [0.2%, 9.7%]   | 72    |

Large regression on many benchmarks, most notably on `stm32f4`. Mostly caused by emitting more warnings. Author justified the regression in [an comment on the PR](https://github.com/rust-lang/rust/pull/138677#issuecomment-2940461051). Results and next steps are discussed in [dedicated zulip channel](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Perf.20regression.20for.20warn-by-default.20lint).

#### Improvements

Change per-module naked fn checks to happen during typeck instead [#141774](https://github.com/rust-lang/rust/pull/141774) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9f0e5d963d05ebcf7ae1ca1f4bda3668c702acda&end=44f415c1d617ebc7b931a243b7b321ef8a6ca47c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 11    |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 11    |
| All  (primary)                 | -0.1% | [-0.1%, -0.1%] | 11    |


Rollup of 11 pull requests [#142133](https://github.com/rust-lang/rust/pull/142133) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=868bf2da31d1c6ead7016d5ee52eacfd2e2fd158&end=775e0c8aeb8f63192854b27156f8b05a06b51814&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 4     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 8     |
| All  (primary)                 | -0.2% | [-0.2%, -0.2%] | 4     |


Clear nested candidates in select if certainty is yes [#141927](https://github.com/rust-lang/rust/pull/141927) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5e0bdaa9dde845b8e44fd93bf0c09d21ca60daa1&end=2f2c8c3512e82e4315db83bbb53eb79e2c566270&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -     | -               | 0     |
| Improvements (secondary) | -3.5% | [-20.7%, -0.4%] | 11    |
| All  (primary)                 | -     | -               | 0     |


Remove CollectItemTypesVisitor [#142074](https://github.com/rust-lang/rust/pull/142074) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a5584a8fe16037dc01782064fa41424a6dbe9987&end=0b65d0db5f77c44bf37b4a25489562d68c14aecf&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 1     |
| Improvements (secondary) | -0.2% | [-0.4%, -0.1%] | 8     |
| All  (primary)                 | -0.1% | [-0.1%, -0.1%] | 1     |


Filter out universals and lifetimes from `stalled_vars` [#142088](https://github.com/rust-lang/rust/pull/142088) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8072811356a178dbdf8ca09b1635cfafd4661971&end=244bbfc60ee8593db96892468eee876240cb7ba1&stat=instructions:u)

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | -      | -               | 0     |
| Regressions (secondary)  | -      | -               | 0     |
| Improvements (primary)   | -      | -               | 0     |
| Improvements (secondary) | -10.2% | [-29.8%, -0.1%] | 15    |
| All  (primary)                 | -      | -               | 0     |


Simplify and optimize `VecCache`'s `SlotIndex::from_index` [#142095](https://github.com/rust-lang/rust/pull/142095) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=244bbfc60ee8593db96892468eee876240cb7ba1&end=fb644e6a1a7d34c6bbb5ecfe5c185f8c977d6bb3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 4     |
| Improvements (primary)   | -0.8% | [-3.4%, -0.2%] | 184   |
| Improvements (secondary) | -1.0% | [-4.8%, -0.2%] | 112   |
| All  (primary)                 | -0.8% | [-3.4%, -0.2%] | 184   |


#### Mixed

Merge coroutine obligation checking into borrowck parallel loop [#141773](https://github.com/rust-lang/rust/pull/141773) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2fc3deed9fcb8762ad57191e0195f06f7543e4a5&end=91fad92585b2dafc52a074e502b2a6c1f093ca35&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.5%]   | 2     |
| Improvements (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -2.9% | [-2.9%, -2.9%] | 1     |

Looks like noise, the affected benchmarks keep following similar pattern (`clap-derive` is bimodal, the other two secondary benchmarks are noisy).

Rollup of 8 pull requests [#141944](https://github.com/rust-lang/rust/pull/141944) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b17dba45186c454576d0fc8fb93ecc65eb1a763a&end=c68032fd4c442d275f4daa571ba19c076106b490&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 5     |
| Improvements (primary)   | -0.6% | [-1.1%, -0.2%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.6% | [-1.1%, -0.2%] | 3     |

Few regressions in unused-warnings. This looks like noise to me for the most part - check and opt builds don't agree on whether frontend times regressed or not and the benchmark since returned to previous state (partly in another rollup).

I would suspect #141741 to be the cause, because it touched use statements and unused-warnings is a large list of use statements, but that one had different pre-merge results. I don't think this is worth digging into, though.

Rework `collect_and_apply` to not rely on size hint for optimization [#141652](https://github.com/rust-lang/rust/pull/141652) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=792fc2b033aea7ea7b766e38bdc40f7d6bdce8c3&end=d9a739363878a06633eb912e44f02a3c5d6ba08c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.4%]   | 6     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 9     |
| Improvements (secondary) | -0.5% | [-1.0%, -0.2%] | 49    |
| All  (primary)                 | -0.2% | [-0.4%, -0.1%] | 9     |

Improvements outweigh regressions. Regressions are limited to `wg-grammar`. Also justified by [review comment](https://github.com/rust-lang/rust/pull/141652#issuecomment-2936239135).

Fast path for stalled obligations on self ty [#141681](https://github.com/rust-lang/rust/pull/141681) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f315e6145802e091ff9fceab6db627a4b4ec2b86&end=9f0e5d963d05ebcf7ae1ca1f4bda3668c702acda&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]    | 1     |
| Regressions (secondary)  | 0.6%  | [0.1%, 1.3%]    | 14    |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%]  | 25    |
| Improvements (secondary) | -4.3% | [-50.3%, -0.0%] | 43    |
| All  (primary)                 | -0.2% | [-0.3%, 0.2%]   | 26    |

Improvements outweigh regressions, those are mostly on stress tests. Some regressions also don't seem to be related, they just return back to state before [#141652](https://github.com/rust-lang/rust/pull/141652).

Don't walk into `Certainty::Yes` goals [#142085](https://github.com/rust-lang/rust/pull/142085) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0b65d0db5f77c44bf37b4a25489562d68c14aecf&end=8072811356a178dbdf8ca09b1635cfafd4661971&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.4%  | [1.4%, 1.4%]    | 1     |
| Regressions (secondary)  | 1.4%  | [1.4%, 1.4%]    | 1     |
| Improvements (primary)   | -     | -               | 0     |
| Improvements (secondary) | -8.7% | [-17.9%, -0.8%] | 6     |
| All  (primary)                 | 1.4%  | [1.4%, 1.4%]    | 1     |

Syn regression is spurious, it's just returning to the default state in bimodal pattern.

Secondary regression is limited to new solver benchmark. New solver is not enabled by default, yet.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Implement asymmetrical precedence for closures and jumps" [rust#134847](https://github.com/rust-lang/rust/pull/134847) (last review activity: 5 months ago)
  - cc @**fmease**
- "Reduce precedence of expressions that have an outer attr" [rust#134661](https://github.com/rust-lang/rust/pull/134661) (last review activity: 5 months ago)
  - cc @**fmease**
- "Tweak `VecCache` to improve performance" [rust#138405](https://github.com/rust-lang/rust/pull/138405) (last review activity: 3 months ago)
  - cc @**nora (Noratrieb)**
- "feat: add `succinct-zkvm` os and target" [rust#138463](https://github.com/rust-lang/rust/pull/138463) (last review activity: 3 months ago)
  - cc @**Wesley Wiser**
- "Implement parsing of pinned borrows" [rust#135731](https://github.com/rust-lang/rust/pull/135731) (last review activity: about 59 days ago)
  - cc @**Michael (compiler-errors) Goulet**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/WQ5zU7puSZyJbeJ6RJ5QeA)
