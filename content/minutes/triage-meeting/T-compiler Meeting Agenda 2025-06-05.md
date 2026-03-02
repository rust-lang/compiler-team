---
tags: weekly, rustc
type: docs
note_id: e4A8zrIYTo2q4m0BiOQ0Dw
---

# T-compiler Meeting Agenda 2025-06-05

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).
- :loudspeaker: `@rustbot` gained the ability to handle concerns on MCPs/issues:
    - Use `@rustbot {concern,resolve} my-concern-title` to add or resolve a concern
    - see more details on [Zulip](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/rustbot.20concern.20for.20MCP.20and.20issues.2FPR/with/522171060)
    - Thanks @**Urgau** :)

### Other WG meetings

- WG-async design meeting <time:2025-06-06T19:00:00+02:00>
- Stable MIR weekly meeting <time:2025-06-06T17:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "`#[export_visibility = ...]` attribute" [compiler-team#881](https://github.com/rust-lang/compiler-team/issues/881) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20.60.23.5Bexport_visibility.20.3D.20.2E.2E.2E.5D.60.20attribu.E2.80.A6.20compiler-team.23881))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 5 days ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 7 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 7 months ago)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: 2 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 4 months ago)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: about 2 days ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 2 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 2 months ago)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853)) (last review activity: 2 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 48 days ago)
  - "Run the UI test suite with multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861)) (last review activity: about 2 days ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 2 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: about 34 days ago)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Add `target_env = "macabi"` and `target_env = "sim"`" [rust#139451](https://github.com/rust-lang/rust/pull/139451)
  - "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
- Things in FCP (make sure you're good with it)
  - "Introduce debug information to statements in MIR" [compiler-team#867](https://github.com/rust-lang/compiler-team/issues/867) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20debug.20information.20to.20statements.E2.80.A6.20compiler-team.23867))
  - "Retroactive MCP for the Rust for Linux Ecosystem Test Job" [compiler-team#874](https://github.com/rust-lang/compiler-team/issues/874) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23874))
  - "Promote 64-bit windows-gnullvm Targets to Tier 2 with Host Tools" [compiler-team#877](https://github.com/rust-lang/compiler-team/issues/877) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.2064-bit.20windows-gnullvm.20Targets.20to.E2.80.A6.20compiler-team.23877))
  - "Eliminate `ast::ptr::P`" [compiler-team#878](https://github.com/rust-lang/compiler-team/issues/878) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Eliminate.20.60ast.3A.3Aptr.3A.3AP.60.20compiler-team.23878))
  - "Split up the `unknown_or_malformed_diagnostic_attributes` lint" [rust#140717](https://github.com/rust-lang/rust/pull/140717)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Other teams finalized FCPs
  - "Implement a lint for implicit autoref of raw pointer dereference - take 2" [rust#123239](https://github.com/rust-lang/rust/pull/123239)
  - "de-stabilize bench attribute" [rust#134273](https://github.com/rust-lang/rust/pull/134273)
  - "Remove backticks from `ShouldPanic::YesWithMessage`'s `TrFailedMsg`" [rust#136160](https://github.com/rust-lang/rust/pull/136160)
  - "Use the new solver in the `impossible_predicates`" [rust#136988](https://github.com/rust-lang/rust/pull/136988)
  - "Remove `i128` and `u128` from `improper_ctypes_definitions`" [rust#137306](https://github.com/rust-lang/rust/pull/137306)
  - "Stabilize the avx512 target features" [rust#138940](https://github.com/rust-lang/rust/pull/138940)
  - "Check types of const param defaults" [rust#139646](https://github.com/rust-lang/rust/pull/139646)
  - "Stabilize keylocker" [rust#140766](https://github.com/rust-lang/rust/pull/140766)
  - "Stabilize `sha512`, `sm3` and `sm4` for x86" [rust#140767](https://github.com/rust-lang/rust/pull/140767)
  - "terminology: allocated object → allocation" [rust#141224](https://github.com/rust-lang/rust/pull/141224)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "x86 (32/64): go back to passing SIMD vectors by-ptr" [rust#141309](https://github.com/rust-lang/rust/pull/141309)
  - Authored by @**RalfJ**
  - Fixes #139029 (a perf regression) by partially reverting #135408 and going back to passing SIMD vectors by-ptr on x86
  - Ralf suggests a backport to ([comment](https://github.com/rust-lang/rust/pull/141309#issuecomment-2927089783)):
  > ... avoid Rust 1.88 being the only release where a "Rust" ABI function with a by-value SIMD vector on an i686 target modified to disable SSE causes a hard error
  > (not a configuration we intend to support, but it wasn't really meant to hard-error quite so quickly)
  - [Zulip voting](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23141309.3A.20beta-nominated/near/521544027) (in favor)
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
  - It's making progress :tada:
  - Pending comments for @**simulacrum** ([link](https://github.com/rust-lang/rust/pull/140525#pullrequestreview-2866372367))
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [57 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 32 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Enabling LTO causes miscompilation on x86_64-apple-darwin" [rust#141306](https://github.com/rust-lang/rust/issues/141306)
  - Fixed upstream by @**dianqk** llvm-project#142304
  - though specifically #141306 needs changing linker or upgrading to Xcode 15.3 in CI runners

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-06-03](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-06-02.md)

A fairly busy week, with lots of changes to performance. Most of the changes
(at least in quantity of benchmarks) are attributable to an update of our PGO
collection to newer benchmarks as part of the 2025 refresh.

Triage done by **@simulacrum**.
Revision range: [2805e1dc..2fc3deed](https://perf.rust-lang.org/?start=2805e1dc4c18ed4c84d161502c48da870c56f68a&end=2fc3deed9fcb8762ad57191e0195f06f7543e4a5&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.1%, 6.7%]    | 56    |
| Regressions (secondary)  | 0.6%  | [0.1%, 1.3%]    | 69    |
| Improvements (primary)   | -1.2% | [-8.9%, -0.1%]  | 133   |
| Improvements (secondary) | -2.7% | [-20.2%, -0.1%] | 115   |
| All  (primary)           | -0.6% | [-8.9%, 6.7%]   | 189   |

2 Regressions, 6 Improvements, 13 Mixed; 9 of them in rollups
40 artifact comparisons made in total

#### Regressions

Add some track_caller info to precondition panics [#129658](https://github.com/rust-lang/rust/pull/129658) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=45f256d9d7cffb66185c0bf1b8a864cba79db90c&end=be422939446d7c5b27ba98debb6b4b8d6a261f1a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.1%, 6.2%]   | 14    |
| Regressions (secondary)  | 0.8%  | [0.4%, 1.2%]   | 4     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.9%  | [-0.5%, 6.2%]  | 15    |

Expected regressions to performance for better user experience. No further follow-up warranted.

Rollup of 8 pull requests [#141753](https://github.com/rust-lang/rust/pull/141753) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1c0849d8bae6f1af08a8b64a011b2ffa7c24f136&end=6de3a733122a82d9b3c3427c7ee16a1e1a022718&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 1.4%]   | 78    |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.6%]   | 46    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 3     |
| All  (primary)                 | 0.4%  | [0.1%, 1.4%]   | 78    |

[#141407](https://github.com/rust-lang/rust/pull/141407) seems to be the
primary cause of the impact. This is (in part) a correctness fix so marking the
regression as triaged.

#### Improvements

Rollup of 8 pull requests [#141662](https://github.com/rust-lang/rust/pull/141662) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c583fa6d8425dbb38fe5d1dbd007f9ca8e4aa128&end=45f256d9d7cffb66185c0bf1b8a864cba79db90c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-4.3%, -0.0%] | 56    |
| All  (primary)                 | -     | -              | 0     |

Unclear cause. Probably not worth digging deeper as solely improvements and only in secondary benchmarks.

Rollup of 8 pull requests [#141668](https://github.com/rust-lang/rust/pull/141668) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=be422939446d7c5b27ba98debb6b4b8d6a261f1a&end=04a67d5a0587ed98632f82c404ae20f9f0a51a1d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 2     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 34    |
| Improvements (secondary) | -0.2% | [-0.3%, -0.0%] | 19    |
| All  (primary)                 | -0.2% | [-0.2%, -0.1%] | 34    |

Unclear cause. Probably not worth digging deeper as solely improvements and only in secondary benchmarks.
Started a [PR build](https://github.com/rust-lang/rust/pull/141252#issuecomment-2930408560) to check one potential root cause.

rustdoc: cleanups relating to allocations [#141573](https://github.com/rust-lang/rust/pull/141573) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6de3a733122a82d9b3c3427c7ee16a1e1a022718&end=e6152cdf5b31bd844a4cc1049433859d54863602&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 8     |
| Improvements (secondary) | -0.6% | [-0.6%, -0.6%] | 1     |
| All  (primary)                 | -0.4% | [-0.6%, -0.2%] | 8     |


Add fast path for maybe-initializedness in liveness [#141667](https://github.com/rust-lang/rust/pull/141667) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7a7bcbbcdbf2845164a94377d0e0efebb737ffd3&end=ec28ae9454139023117270985f114823d6570657&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]    | 1     |
| Improvements (primary)   | -1.0% | [-10.6%, -0.2%] | 67    |
| Improvements (secondary) | -0.5% | [-1.2%, -0.2%]  | 59    |
| All  (primary)                 | -1.0% | [-10.6%, -0.2%] | 67    |


cstore: Use IndexSet as backing store for postorder dependencies [#141730](https://github.com/rust-lang/rust/pull/141730) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=13a4540908d25642c0fa0ab726095cf57bbe6824&end=ba55b7ce3cd931af7123e334647584f6fbdb3c20&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.3% | [-5.2%, -0.4%] | 11    |
| All  (primary)                 | -     | -              | 0     |

Tweak fast path trait handling [#141731](https://github.com/rust-lang/rust/pull/141731) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ba55b7ce3cd931af7123e334647584f6fbdb3c20&end=9b0268a43b0a5b58f50c96ded25364037c019a61&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.0% | [-2.4%, -0.2%] | 10    |
| All  (primary)                 | -     | -              | 0     |

#### Mixed

add additional `TypeFlags` fast paths [#141581](https://github.com/rust-lang/rust/pull/141581) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ebe9b0060240953d721508ceb4d02a745efda88f&end=5f025f363df11c65bd31ade9fe6f48fd4f4239af&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.2%]   | 8     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 20    |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 5     |
| Improvements (secondary) | -2.5% | [-5.7%, -0.2%] | 10    |
| All  (primary)                 | -0.0% | [-0.4%, 0.2%]  | 13    |

Mostly no significant delta (averaging out to 0% change) but worth it in more pathological cases, so makes sense to land the change.

Rollup of 16 pull requests [#141716](https://github.com/rust-lang/rust/pull/141716) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5f025f363df11c65bd31ade9fe6f48fd4f4239af&end=38081f22c2d7380f272aa1d7fa9b935637701c2d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 3     |

Correctness fix in wfcheck ([#136429](https://github.com/rust-lang/rust/pull/136429)). No further investigation needed.

Bump rustc-perf and update PGO crates [#141490](https://github.com/rust-lang/rust/pull/141490) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=13718eb788622ef8c998650451174570230d2971&end=1bbd62e547ba5cc08ccb44c27def3d33195d2dd5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 2.0%]   | 46    |
| Regressions (secondary)  | 0.7%  | [0.1%, 3.2%]   | 110   |
| Improvements (primary)   | -0.4% | [-0.9%, -0.1%] | 72    |
| Improvements (secondary) | -0.9% | [-4.8%, -0.2%] | 62    |
| All  (primary)                 | -0.1% | [-0.9%, 2.0%]  | 118   |

Broad changes due to many benchmark crates getting updated, no particular outcome expected.

Rollup of 11 pull requests [#141739](https://github.com/rust-lang/rust/pull/141739) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1bbd62e547ba5cc08ccb44c27def3d33195d2dd5&end=1ac1950c337039add1a83113ed6d1bd64bcb1142&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 4     |
| Regressions (secondary)  | 0.5%  | [0.4%, 0.6%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.4%] | 2     |
| All  (primary)                 | 0.1%  | [0.1%, 0.1%]   | 4     |

Nothing obvious in one cachegrind diff, not worth digging deeper.

Make some assertions in solver into debug assertions [#141651](https://github.com/rust-lang/rust/pull/141651) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1ac1950c337039add1a83113ed6d1bd64bcb1142&end=1c0849d8bae6f1af08a8b64a011b2ffa7c24f136&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.5%]   | 2     |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 2     |
| Improvements (secondary) | -0.8% | [-1.1%, -0.2%] | 11    |
| All  (primary)                 | -0.1% | [-0.1%, -0.1%] | 2     |

Rollup of 5 pull requests [#141765](https://github.com/rust-lang/rust/pull/141765) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e6152cdf5b31bd844a4cc1049433859d54863602&end=aa5832b142a2bfd322659d60f5d57e25d2a1bd5d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 6     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)                 | 0.3%  | [0.3%, 0.3%]   | 6     |

rustc_codegen_llvm: use `threadlocal.address` intrinsic to access TLS [#139385](https://github.com/rust-lang/rust/pull/139385) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aa5832b142a2bfd322659d60f5d57e25d2a1bd5d&end=15825b7161f8bd6a3482211fbf6727a52aa1166b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -0.7% | [-2.0%, -0.2%] | 22    |
| Improvements (secondary) | -1.4% | [-1.5%, -1.4%] | 3     |
| All  (primary)                 | -0.7% | [-2.0%, -0.2%] | 22    |

Expected speed up to thread local access.

Rollup of 8 pull requests [#141791](https://github.com/rust-lang/rust/pull/141791) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=70b3f4666e24ce22fc32f5e357dbcf85d3254e63&end=0b00e6847b576656d80d7d1e845100fe1663ce0e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.9%  | [2.9%, 2.9%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -1.6% | [-1.6%, -1.6%] | 1     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.3%] | 2     |
| All  (primary)                 | 0.7%  | [-1.6%, 2.9%]  | 2     |

https://github.com/rust-lang/rust/pull/141765#issuecomment-2930545642

Revert "increase perf of charsearcher for single ascii characters" [#141678](https://github.com/rust-lang/rust/pull/141678) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ec28ae9454139023117270985f114823d6570657&end=e0d014a3dffbb3f0575cfbeb0f480c5080c4d018&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.9%  | [1.6%, 2.2%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.4% | [-7.3%, -0.2%] | 36    |
| Improvements (secondary) | -1.6% | [-4.2%, -0.3%] | 25    |
| All  (primary)                 | -1.2% | [-7.3%, 2.2%]  | 38    |

This fixes a perf regression from a previous week.

PGO new solver [#141453](https://github.com/rust-lang/rust/pull/141453) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e0d014a3dffbb3f0575cfbeb0f480c5080c4d018&end=738c08b63c4f9e3ebdaec5eece7b6fbc354f6467&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]    | 10    |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]    | 6     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%]  | 1     |
| Improvements (secondary) | -8.1% | [-15.0%, -3.3%] | 14    |
| All  (primary)                 | 0.3%  | [-0.2%, 0.4%]   | 11    |

Expected improvements primarily to new solver benchmarks as we now collect PGO
data. Some regressions are expected due to less precise PGO data for old solver
patterns.

`slice.get(i)` should use a slice projection in MIR, like `slice[i]` does [#139118](https://github.com/rust-lang/rust/pull/139118) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4d08223c054cf5a56d9761ca925fd46ffebe7115&end=f0999ffdc4818e498949d3b1f2a0ce6be02a0436&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 3     |
| Improvements (primary)   | -1.2% | [-1.3%, -1.1%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -1.2% | [-1.3%, -1.1%] | 2     |

Within noise threshold for (new) regressed benchmark, otherwise see [#139118 (comment)](https://github.com/rust-lang/rust/pull/139118#issuecomment-2925635519).

Merge coroutine obligation checking into borrowck parallel loop [#141773](https://github.com/rust-lang/rust/pull/141773) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2fc3deed9fcb8762ad57191e0195f06f7543e4a5&end=91fad92585b2dafc52a074e502b2a6c1f093ca35&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.5%]   | 2     |
| Improvements (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -2.9% | [-2.9%, -2.9%] | 1     |

Not really measurable on (at least) perf, new -Zthreads=4 benchmark doesn't see
any meaningful improvement from this.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Reduce special casing for the panic runtime" [rust#140809](https://github.com/rust-lang/rust/pull/140809) (last review activity: about 27 days ago)
  - cc @**Michael (compiler-errors) Goulet**
- "Look at proc-macro attributes when encountering unknown attribute" [rust#134841](https://github.com/rust-lang/rust/pull/134841) (last review activity: 5 months ago)
  - anybody interested in picking this up?
- "Detect struct construction with private field in field with default" [rust#135846](https://github.com/rust-lang/rust/pull/135846) (last review activity: 4 months ago)
  - anyone interested in picking this up?
- "Fix `PostBorrowckAnalysis` for old solver" [rust#135899](https://github.com/rust-lang/rust/pull/135899) (last review activity: 2 months ago)
  - cc: @**Michael (compiler-errors) Goulet** / @**lcnr**
- "Add `#[loop_match]` for improved DFA codegen" [rust#138780](https://github.com/rust-lang/rust/pull/138780) (last review activity: about 59 days ago)
  -  cc: @**Boxy**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/hAdYRYyMTU69sTm-TgZZaw)
