---
title: T-compiler P-high issues
tags: p-high-issues
note_id: CQmx-X5iTO6nf23Ng5uHtA
---

# 2026 Q2 T-compiler P-high Issue Review

Issues snapshot collected on: 2026-06-16

## Table of contents:
- [P-high without owner](#P-high-T-compiler-issues-unassigned) (about 80)
- [P-high with owner but no fix](#P-high-T-compiler-issues-with-owner-WG-or-assignee) (9)
- [P-high without T-label](#All-P-high-issues-missing-a-team-label) (0)

## P-high T-compiler issues unassigned
### "Regression: Wasm32 SIMD128 narrow intrinsics stopped working correctly in Rust 1.95+" [rust#157456](https://github.com/rust-lang/rust/issues/157456)
Creation date: TODO
Update at: about 8 days ago
Labels: [P-high, regression-from-stable-to-stable, O-wasm, A-SIMD, C-bug, llvm-fixed-upstream, I-miscompile]
Author: `Cykooz`
Assignees: ``
Working groups:
Notes: Fixed by [llvm/llvm-project#201798](https://github.com/llvm/llvm-project/pull/201798)
Triage: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604908558

### "Performance regression (30%) between Rust 1.90 and 1.91" [rust#153154](https://github.com/rust-lang/rust/issues/153154)
Creation date: TODO
Update at: 2 months ago
Labels: [A-LLVM, I-slow, P-high, C-bug, regression-untriaged, needs-triage]
Author: `plafer`
Assignees: `dianqk`
Working groups:
Notes: Upstream PR: [llvm/llvm-project#188740](https://github.com/llvm/llvm-project/pull/188740) (will reach downstream in one of the next LLVM updates)
Triage: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604908955

### "disambiguate between multiple suggestions and a single multi-span suggestion; or, JSON error format is not round-trippable" [rust#53934](https://github.com/rust-lang/rust/issues/53934)
Creation date: TODO
Update at: 15 months ago
Labels: [C-cleanup, A-diagnostics, E-mentor, P-high, T-compiler, WG-diagnostics, D-diagnostic-infra, E-needs-design]
Author: `zackmdavis`
Assignees: ``
Working groups:
Notes: maybe demote? Last triage review [was 3 years ago](https://github.com/rust-lang/rust/issues/53934#issuecomment-1355188536) and by reading the conversation it basically needs an owner.
Triage: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604909106

### "builtin trait-object impl and user written ones can unsoundly overlap" [rust#57893](https://github.com/rust-lang/rust/issues/57893)
Creation date: TODO
Update at: 3 months ago
Labels: [I-ICE, A-trait-system, P-high, T-lang, T-compiler, I-unsound, C-bug, S-bug-has-test, T-types, A-coherence, A-dyn-trait]
Author: `arielb1`
Assignees: ``
Working groups:
Notes: Maybe demote? #156252 seems to mitigate the soundness issue (IIUC)
Triage: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604910555

### "Statics don't support alignments larger than the page size" [rust#70022](https://github.com/rust-lang/rust/issues/70022)
Creation date: TODO
Update at: 10 months ago
Labels: [O-linux, P-high, T-compiler, O-windows-gnu, O-windows-msvc, I-unsound, A-target-specs, C-bug, E-needs-investigation, A-align]
Author: `Amanieu`
Assignees: ``
Working groups:
Notes: probably demote. last triaged [2 years ago](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bsteering.5D.202024-11-22.20P-high.20review/near/483932503); nothing happened since then.
Triage: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604911478

### "'static closures/FnDefs/futures with non-'static return type are unsound" [rust#84366](https://github.com/rust-lang/rust/issues/84366)
Creation date: TODO
Update at: about 34 days ago
Labels: [A-type-system, A-lifetimes, A-trait-system, A-closures, A-associated-items, P-high, T-lang, T-compiler, I-unsound, C-bug, A-async-await, AsyncAwait-Triaged, S-bug-has-test, T-types]
Author: `steffahn`
Assignees: ``
Working groups:
Notes: I has recent activity (it's being linked) so It should probably stay `P-high`. Seems that @_**addie.sh** is working on an unsoundness fix (#156776) that progressively grew up to include this one as well
Triage: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604912047

### "HRTB on subtrait unsoundly provides HTRB on supertrait with weaker implied bounds" [rust#84591](https://github.com/rust-lang/rust/issues/84591)
Creation date: TODO
Update at: 4 months ago
Labels: [A-type-system, A-lifetimes, A-trait-system, P-high, T-compiler, I-unsound, C-bug, S-bug-has-test, T-types, A-implied-bounds, A-higher-ranked]
Author: `steffahn`
Assignees: ``
Working groups:
Notes: P-high seems fine. Visited in [triage in 2021](https://github.com/rust-lang/rust/issues/84591#issuecomment-829275859), unsure about the status.
Triage: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604913824

## XXX Triage 2026-06-19 until here

### "Compile time+memory regression between 1.49.0 and 1.50.0" [rust#84873](https://github.com/rust-lang/rust/issues/84873)
Creation date: TODO
Update at: 10 months ago
Labels: [I-compiletime, P-high, T-compiler, regression-from-stable-to-stable, I-compilemem, C-bug]
Author: `olix0r`
Assignees: ``
Working groups:
Notes: Probably downgrade. Last [triage in 2022](https://github.com/rust-lang/rust/issues/84873#issuecomment-1320995012), seems that part of the perf. regression was recovered. It's all very old and authors didn't get back to us. Worth leaving a comment and ask to retest?

### "Compile error: static lifetime not satisfied but it is" [rust#86172](https://github.com/rust-lang/rust/issues/86172)
Creation date: TODO
Update at: 17 months ago
Labels: [A-lifetimes, P-high, T-compiler, regression-from-stable-to-stable, C-bug, WG-async]
Author: `Skepfyr`
Assignees: ``
Working groups:
Notes: Probably downgrade: last triage [3 years ago](https://github.com/rust-lang/rust/issues/86172#issuecomment-1320194292), this [comment](https://github.com/rust-lang/rust/issues/86172#issuecomment-1553335675) indicates could be a duplicate of #71723

### "Rustc passes syntactically invalid input to attribute macros" [rust#90256](https://github.com/rust-lang/rust/issues/90256)
Creation date: TODO
Update at: 38 months ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, WG-diagnostics, A-proc-macros]
Author: `dtolnay`
Assignees: ``
Working groups:
Notes: probably downgrade. Was triaged multiple times but no action followed up

### "rustc 1.59/1.60 builds musl binaries that segfault, when compiling with musl-gcc wrappers, due to static-pie default" [rust#95926](https://github.com/rust-lang/rust/issues/95926)
Creation date: TODO
Update at: 31 months ago
Labels: [E-mentor, P-high, T-compiler, regression-from-stable-to-stable, E-help-wanted, O-musl, C-bug, WG-diagnostics]
Author: `joshtriplett`
Assignees: ``
Working groups:
Notes: Probably downgrade. Very old issue, last [triage 3y ago](https://github.com/rust-lang/rust/issues/95926#issuecomment-1508655129) and `musl` targets are all Tier 2. Needs an owner.

### "libcompiler-builtins contains DWARF5 debuginfo in 1.62.0" [rust#98746](https://github.com/rust-lang/rust/issues/98746)
Creation date: TODO
Update at: 10 months ago
Labels: [A-debuginfo, E-needs-test, P-high, T-compiler, C-bug, E-needs-mcve]
Author: `glandium`
Assignees: ``
Working groups:
Notes: Maybe close as [this comment](https://github.com/rust-lang/rust/issues/98746#issuecomment-3137298203) suggest? Though as the next comment suggest, what's the status of DWARF6 in LLVM?

### "Source of lifetime coercion is not reported starting in 1.63" [rust#99256](https://github.com/rust-lang/rust/issues/99256)
Creation date: TODO
Update at: 41 months ago
Labels: [A-diagnostics, A-lifetimes, P-high, T-compiler, regression-from-stable-to-stable, C-bug, WG-diagnostics]
Author: `mqudsi`
Assignees: ``
Working groups:
Notes: maybe downgrade? That diag error is still there, I don't think we're going to fix that anytime soon

### "Codegen weirdness for `sum` of `count_ones` over an array" [rust#101060](https://github.com/rust-lang/rust/issues/101060)
Creation date: TODO
Update at: 30 months ago
Labels: [A-LLVM, I-slow, A-codegen, O-x86_64, P-high, T-compiler, regression-from-stable-to-stable, C-bug, WG-llvm, A-autovectorization]
Author: `alion02`
Assignees: ``
Working groups:
Notes: maybe close? The last [comment](https://github.com/rust-lang/rust/issues/101060#issuecomment-1870396121) indicates that the codegen is what was expected before the regression. Tested the godbolt link and it's still the same

### "extern "C" functions don't generate the same IR definitions as clang on x86, causing problems with cross-language LTO" [rust#102174](https://github.com/rust-lang/rust/issues/102174)
Creation date: TODO
Update at: 11 months ago
Labels: [A-LLVM, A-FFI, P-high, T-compiler, I-unsound, C-bug, WG-llvm, regression-untriaged, A-LTO, A-ABI, O-x86_32]
Author: `glandium`
Assignees: ``
Working groups:
Notes:

### "ld64.lld: error: too many personalities (4) for compact unwind to encode" [rust#102754](https://github.com/rust-lang/rust/issues/102754)
Creation date: TODO
Update at: 10 months ago
Labels: [A-linkage, O-macos, O-ios, P-high, T-compiler, relnotes, regression-from-stable-to-stable, C-bug]
Author: `glandium`
Assignees: ``
Working groups:
Notes:

### "Broken compilation with `&(dyn Trait + '_)`" [rust#103762](https://github.com/rust-lang/rust/issues/103762)
Creation date: TODO
Update at: 19 months ago
Labels: [A-resolve, A-lifetimes, P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `Cerber-Ursi`
Assignees: ``
Working groups:
Notes:

### "Miscompilation: Equal pointers comparing as unequal" [rust#107975](https://github.com/rust-lang/rust/issues/107975)
Creation date: TODO
Update at: 13 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, WG-llvm, I-miscompile, C-external-bug]
Author: `JakobDegen`
Assignees: ``
Working groups:
Notes:

### "`-Zdylib-lto` with ThinLTO is broken on windows-msvc" [rust#109114](https://github.com/rust-lang/rust/issues/109114)
Creation date: TODO
Update at: 20 months ago
Labels: [A-LLVM, P-high, T-compiler, O-windows-msvc, I-unsound, WG-llvm, requires-nightly, A-LTO, I-miscompile]
Author: `Noratrieb`
Assignees: ``
Working groups:
Notes:

### "ICE: unexpected initial operand type." [rust#114858](https://github.com/rust-lang/rust/issues/114858)
Creation date: TODO
Update at: 8 months ago
Labels: [I-ICE, P-high, T-compiler, regression-from-stable-to-stable, C-bug, E-needs-investigation]
Author: `fakeshadow`
Assignees: ``
Working groups:
Notes:

### "The ABI of float types can be changed by `-Ctarget-feature`" [rust#116344](https://github.com/rust-lang/rust/issues/116344)
Creation date: TODO
Update at: 11 months ago
Labels: [P-high, T-compiler, I-unsound, C-tracking-issue, A-floating-point, A-ABI, A-target-feature, T-opsem]
Author: `RalfJung`
Assignees: ``
Working groups:
Notes:

### "Inlining causes miscompilation of code that mixes target features" [rust#116573](https://github.com/rust-lang/rust/issues/116573)
Creation date: TODO
Update at: 11 months ago
Labels: [A-LLVM, A-codegen, P-high, T-compiler, I-unsound, C-bug, WG-llvm, A-target-feature, I-miscompile]
Author: `RalfJung`
Assignees: ``
Working groups:
Notes:

### "Building 1.74.0 natively on NetBSD/powerpc results in "pattern `Some(_)` not covered" error message" [rust#118099](https://github.com/rust-lang/rust/issues/118099)
Creation date: TODO
Update at: 31 months ago
Labels: [A-LLVM, P-high, T-compiler, O-netbsd, O-PowerPC, C-bug]
Author: `he32`
Assignees: ``
Working groups:
Notes:

### "x86-64 assembler silently truncates 64-bit address" [rust#118223](https://github.com/rust-lang/rust/issues/118223)
Creation date: TODO
Update at: about 60 days ago
Labels: [A-LLVM, O-x86_64, A-inline-assembly, P-high, T-compiler, I-unsound, C-bug, llvm-fixed-upstream, I-miscompile]
Author: `MauriceKayser`
Assignees: ``
Working groups:
Notes:

### "rust-1.75.0 fails to compile with ICE on aarch64 and various ppc arches with LTO enabled - error: could not compile memchr" [rust#121124](https://github.com/rust-lang/rust/issues/121124)
Creation date: TODO
Update at: 7 months ago
Labels: [A-LLVM, I-ICE, P-high, T-compiler, regression-from-stable-to-stable, I-unsound, O-PowerPC, C-bug, E-needs-mcve, A-LTO, O-AArch64, E-needs-investigation]
Author: `bowlofeggs`
Assignees: ``
Working groups:
Notes:

### "`-C target_cpu=cortex-a72` (and `-target-cpu=native` on Raspberry Pi) wrongly enables crypto features that are optional on Cortex-A72" [rust#125033](https://github.com/rust-lang/rust/issues/125033)
Creation date: TODO
Update at: 14 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, O-AArch64, A-target-feature, llvm-fixed-upstream, A-targets, I-miscompile]
Author: `briansmith`
Assignees: ``
Working groups:
Notes:

### "Undefined behavior from stack overflow on wasm32 targets" [rust#126747](https://github.com/rust-lang/rust/issues/126747)
Creation date: TODO
Update at: 19 months ago
Labels: [P-high, T-compiler, I-unsound, O-wasm, C-bug, E-needs-design]
Author: `adambratschikaye`
Assignees: ``
Working groups:
Notes:

### "Wasm32 miscompilation when using u128 with multivalue and optimizations" [rust#127318](https://github.com/rust-lang/rust/issues/127318)
Creation date: TODO
Update at: 19 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, O-wasm, S-has-mcve, I-miscompile, C-external-bug]
Author: `arriven`
Assignees: ``
Working groups:
Notes:

### "aarch64-unknown-none-softfloat: ABI unsoundness when enabling "neon" feature (tracking issue for `aarch64_softfloat_neon`)" [rust#134375](https://github.com/rust-lang/rust/issues/134375)
Creation date: TODO
Update at: 10 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, C-tracking-issue, O-AArch64, A-ABI, A-target-feature]
Author: `RalfJung`
Assignees: ``
Working groups:
Notes:

### "Performance regression in nightly with target-cpu=native on znver4" [rust#139370](https://github.com/rust-lang/rust/issues/139370)
Creation date: TODO
Update at: 4 months ago
Labels: [A-LLVM, I-slow, O-x86_64, P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `nsarlin-zama`
Assignees: ``
Working groups:
Notes:

### "const-eval can construct uninhabited values or other unconstructable values out-of-thin-air via recursive static initialization" [rust#143047](https://github.com/rust-lang/rust/issues/143047)
Creation date: TODO
Update at: about 22 days ago
Labels: [P-high, T-lang, T-compiler, I-unsound, C-bug, A-rust-for-linux, I-lang-radar]
Author: `RalfJung`
Assignees: ``
Working groups:
Notes:

### "Destructor of packed structs can move dangling references." [rust#143411](https://github.com/rust-lang/rust/issues/143411)
Creation date: TODO
Update at: 10 months ago
Labels: [A-destructors, P-high, T-compiler, I-unsound, C-bug, T-opsem, A-repr-packed]
Author: `theemathas`
Assignees: ``
Working groups:
Notes:

### "Potentially-observable store gets elided: asm block does not act as a compiler fence" [rust#144351](https://github.com/rust-lang/rust/issues/144351)
Creation date: TODO
Update at: about 20 days ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug]
Author: `RalfJung`
Assignees: ``
Working groups:
Notes:

### "1.90 regression: Cycle detected when type checking" [rust#146813](https://github.com/rust-lang/rust/issues/146813)
Creation date: TODO
Update at: 8 months ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, C-bug, S-has-mcve, T-types, fixed-by-next-solver, I-cycle, S-has-bisection]
Author: `Totodore`
Assignees: ``
Working groups:
Notes:

### "SignatureMismatch ICE" [rust#146965](https://github.com/rust-lang/rust/issues/146965)
Creation date: TODO
Update at: 3 months ago
Labels: [I-ICE, A-trait-system, A-associated-items, P-high, T-compiler, regression-from-stable-to-stable, C-bug, A-mir-opt, A-mir-opt-inlining, S-has-mcve, S-bug-has-test, T-types, fixed-by-next-solver]
Author: `benruijl`
Assignees: ``
Working groups:
Notes:

### "catch_unwind doesn't catch non-C++ exceptions on wasm" [rust#148273](https://github.com/rust-lang/rust/issues/148273)
Creation date: TODO
Update at: 4 months ago
Labels: [P-high, T-compiler, I-unsound, O-wasm, C-bug, T-libs, WG-ffi-unwind]
Author: `bjorn3`
Assignees: ``
Working groups:
Notes:

### "`derive(PartialEq)` on enums is unsound with user-defined attribute macros." [rust#148423](https://github.com/rust-lang/rust/issues/148423)
Creation date: TODO
Update at: about 57 days ago
Labels: [A-macros, P-high, T-lang, T-compiler, I-unsound, C-bug, T-libs, A-proc-macros, I-lang-radar]
Author: `theemathas`
Assignees: ``
Working groups:
Notes:

### "rustc does not always update the mtime of all its outputs" [rust#148948](https://github.com/rust-lang/rust/issues/148948)
Creation date: TODO
Update at: 6 months ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `RalfJung`
Assignees: ``
Working groups:
Notes:

### "TrivialClone is not derived for generic types (Performance regression)" [rust#149752](https://github.com/rust-lang/rust/issues/149752)
Creation date: TODO
Update at: 2 months ago
Labels: [A-macros, P-high, T-compiler, regression-from-stable-to-stable, A-specialization, C-bug, T-libs, T-types]
Author: `theemathas`
Assignees: ``
Working groups:
Notes:

### "ICE in release builds from 1.90.0 onwards" [rust#150263](https://github.com/rust-lang/rust/issues/150263)
Creation date: TODO
Update at: 3 months ago
Labels: [I-ICE, A-trait-system, A-associated-items, P-high, T-compiler, regression-from-stable-to-stable, C-bug, A-mir-opt, A-mir-opt-inlining, S-has-mcve, S-bug-has-test, T-types, fixed-by-next-solver]
Author: `zxqfd555`
Assignees: ``
Working groups:
Notes:

### "compiler-builtins aarch64 outline atomics symbols do not work with BTI" [rust#151486](https://github.com/rust-lang/rust/issues/151486)
Creation date: TODO
Update at: 3 months ago
Labels: [P-high, T-compiler, C-bug, T-libs, O-AArch64, A-atomic, A-target-feature]
Author: `zmodem`
Assignees: ``
Working groups:
Notes:

### "LLVM loop miscompilation" [rust#153222](https://github.com/rust-lang/rust/issues/153222)
Creation date: TODO
Update at: 3 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, I-miscompile]
Author: `theemathas`
Assignees: ``
Working groups:
Notes:

### "Significant compilation time regression starting in v1.95.0-nightly (bevy)" [rust#153910](https://github.com/rust-lang/rust/issues/153910)
Creation date: TODO
Update at: about 60 days ago
Labels: [A-trait-system, I-compiletime, P-high, T-compiler, E-medium, C-bug, E-needs-mcve, T-types]
Author: `gpoblon`
Assignees: ``
Working groups:
Notes:

### "Unsoundness and ICE due to string literals that are too long for a 32-bit platform" [rust#156846](https://github.com/rust-lang/rust/issues/156846)
Creation date: TODO
Update at: about 13 days ago
Labels: [I-ICE, P-high, T-compiler, I-unsound, C-bug, A-layout, A-str, needs-triage]
Author: `theemathas`
Assignees: ``
Working groups:
Notes:

### "Regression: unnecessary stack frame generated for arm-none-eabi targets" [rust#157163](https://github.com/rust-lang/rust/issues/157163)
Creation date: TODO
Update at: about 15 days ago
Labels: [O-Arm, P-high, T-compiler, C-bug, I-heavy, regression-untriaged]
Author: `nhpupu`
Assignees: ``
Working groups:
Notes:

### "Performance regression since 1.93 related to MaybeUninit being wrongfully initialized" [rust#157743](https://github.com/rust-lang/rust/issues/157743)
Creation date: TODO
Update at: about 5 days ago
Labels: [A-LLVM, P-high, T-compiler, regression-from-stable-to-stable, C-bug, llvm-fixed-upstream]
Author: `glandium`
Assignees: ``
Working groups:
Notes:

### "Statics don't support alignments larger than the page size" [rust#70022](https://github.com/rust-lang/rust/issues/70022)
Creation date: TODO
Update at: 10 months ago
Labels: [O-linux, P-high, T-compiler, O-windows-gnu, O-windows-msvc, I-unsound, A-target-specs, C-bug, E-needs-investigation, A-align]
Author: `Amanieu`
Assignees: ``
Working groups:
Notes: maybe downgrade at this point? [triaged again in 2024](https://github.com/rust-lang/rust/issues/70022#issuecomment-2494019524)

### "Compile time+memory regression between 1.49.0 and 1.50.0" [rust#84873](https://github.com/rust-lang/rust/issues/84873)
Creation date: TODO
Update at: 10 months ago
Labels: [I-compiletime, P-high, T-compiler, regression-from-stable-to-stable, I-compilemem, C-bug]
Author: `olix0r`
Assignees: ``
Working groups:
Notes: part of the regression war recovered (see [comment](https://github.com/rust-lang/rust/issues/84873#issuecomment-1320995012))

### "Compile error: static lifetime not satisfied but it is" [rust#86172](https://github.com/rust-lang/rust/issues/86172)
Creation date: TODO
Update at: 17 months ago
Labels: [A-lifetimes, P-high, T-compiler, regression-from-stable-to-stable, C-bug, WG-async]
Author: `Skepfyr`
Assignees: ``
Working groups:
Notes:

### "Rustc passes syntactically invalid input to attribute macros" [rust#90256](https://github.com/rust-lang/rust/issues/90256)
Creation date: TODO
Update at: 38 months ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, WG-diagnostics, A-proc-macros]
Author: `dtolnay`
Assignees: ``
Working groups:
Notes:

### "rustc 1.59/1.60 builds musl binaries that segfault, when compiling with musl-gcc wrappers, due to static-pie default" [rust#95926](https://github.com/rust-lang/rust/issues/95926)
Creation date: TODO
Update at: 31 months ago
Labels: [E-mentor, P-high, T-compiler, regression-from-stable-to-stable, E-help-wanted, O-musl, C-bug, WG-diagnostics]
Author: `joshtriplett`
Assignees: ``
Working groups:
Notes:

### "libcompiler-builtins contains DWARF5 debuginfo in 1.62.0" [rust#98746](https://github.com/rust-lang/rust/issues/98746)
Creation date: TODO
Update at: 10 months ago
Labels: [A-debuginfo, E-needs-test, P-high, T-compiler, C-bug, E-needs-mcve]
Author: `glandium`
Assignees: ``
Working groups:
Notes:

### "Source of lifetime coercion is not reported starting in 1.63" [rust#99256](https://github.com/rust-lang/rust/issues/99256)
Creation date: TODO
Update at: 41 months ago
Labels: [A-diagnostics, A-lifetimes, P-high, T-compiler, regression-from-stable-to-stable, C-bug, WG-diagnostics]
Author: `mqudsi`
Assignees: ``
Working groups:
Notes:

### "Codegen weirdness for `sum` of `count_ones` over an array" [rust#101060](https://github.com/rust-lang/rust/issues/101060)
Creation date: TODO
Update at: 30 months ago
Labels: [A-LLVM, I-slow, A-codegen, O-x86_64, P-high, T-compiler, regression-from-stable-to-stable, C-bug, WG-llvm, A-autovectorization]
Author: `alion02`
Assignees: ``
Working groups:
Notes:

### "extern "C" functions don't generate the same IR definitions as clang on x86, causing problems with cross-language LTO" [rust#102174](https://github.com/rust-lang/rust/issues/102174)
Creation date: TODO
Update at: 11 months ago
Labels: [A-LLVM, A-FFI, P-high, T-compiler, I-unsound, C-bug, WG-llvm, regression-untriaged, A-LTO, A-ABI, O-x86_32]
Author: `glandium`
Assignees: ``
Working groups:
Notes:

### "ld64.lld: error: too many personalities (4) for compact unwind to encode" [rust#102754](https://github.com/rust-lang/rust/issues/102754)
Creation date: TODO
Update at: 10 months ago
Labels: [A-linkage, O-macos, O-ios, P-high, T-compiler, relnotes, regression-from-stable-to-stable, C-bug]
Author: `glandium`
Assignees: ``
Working groups:
Notes:

### "Broken compilation with `&(dyn Trait + '_)`" [rust#103762](https://github.com/rust-lang/rust/issues/103762)
Creation date: TODO
Update at: 19 months ago
Labels: [A-resolve, A-lifetimes, P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `Cerber-Ursi`
Assignees: ``
Working groups:
Notes:

### "Miscompilation: Equal pointers comparing as unequal" [rust#107975](https://github.com/rust-lang/rust/issues/107975)
Creation date: TODO
Update at: 13 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, WG-llvm, I-miscompile, C-external-bug]
Author: `JakobDegen`
Assignees: ``
Working groups:
Notes:

### "`-Zdylib-lto` with ThinLTO is broken on windows-msvc" [rust#109114](https://github.com/rust-lang/rust/issues/109114)
Creation date: TODO
Update at: 20 months ago
Labels: [A-LLVM, P-high, T-compiler, O-windows-msvc, I-unsound, WG-llvm, requires-nightly, A-LTO, I-miscompile]
Author: `Noratrieb`
Assignees: ``
Working groups:
Notes:

### "Inlining causes miscompilation of code that mixes target features" [rust#116573](https://github.com/rust-lang/rust/issues/116573)
Creation date: TODO
Update at: 11 months ago
Labels: [A-LLVM, A-codegen, P-high, T-compiler, I-unsound, C-bug, WG-llvm, A-target-feature, I-miscompile]
Author: `RalfJung`
Assignees: ``
Working groups:
Notes:

### "Building 1.74.0 natively on NetBSD/powerpc results in "pattern `Some(_)` not covered" error message" [rust#118099](https://github.com/rust-lang/rust/issues/118099)
Creation date: TODO
Update at: 31 months ago
Labels: [A-LLVM, P-high, T-compiler, O-netbsd, O-PowerPC, C-bug]
Author: `he32`
Assignees: ``
Working groups:
Notes:

### "x86-64 assembler silently truncates 64-bit address" [rust#118223](https://github.com/rust-lang/rust/issues/118223)
Creation date: TODO
Update at: about 60 days ago
Labels: [A-LLVM, O-x86_64, A-inline-assembly, P-high, T-compiler, I-unsound, C-bug, llvm-fixed-upstream, I-miscompile]
Author: `MauriceKayser`
Assignees: ``
Working groups:
Notes:

### "rust-1.75.0 fails to compile with ICE on aarch64 and various ppc arches with LTO enabled - error: could not compile memchr" [rust#121124](https://github.com/rust-lang/rust/issues/121124)
Creation date: TODO
Update at: 7 months ago
Labels: [A-LLVM, I-ICE, P-high, T-compiler, regression-from-stable-to-stable, I-unsound, O-PowerPC, C-bug, E-needs-mcve, A-LTO, O-AArch64, E-needs-investigation]
Author: `bowlofeggs`
Assignees: ``
Working groups:
Notes:

### "`-C target_cpu=cortex-a72` (and `-target-cpu=native` on Raspberry Pi) wrongly enables crypto features that are optional on Cortex-A72" [rust#125033](https://github.com/rust-lang/rust/issues/125033)
Creation date: TODO
Update at: 14 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, O-AArch64, A-target-feature, llvm-fixed-upstream, A-targets, I-miscompile]
Author: `briansmith`
Assignees: ``
Working groups:
Notes:

### "Undefined behavior from stack overflow on wasm32 targets" [rust#126747](https://github.com/rust-lang/rust/issues/126747)
Creation date: TODO
Update at: 19 months ago
Labels: [P-high, T-compiler, I-unsound, O-wasm, C-bug, E-needs-design]
Author: `adambratschikaye`
Assignees: ``
Working groups:
Notes:

### "Wasm32 miscompilation when using u128 with multivalue and optimizations" [rust#127318](https://github.com/rust-lang/rust/issues/127318)
Creation date: TODO
Update at: 19 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, O-wasm, S-has-mcve, I-miscompile, C-external-bug]
Author: `arriven`
Assignees: ``
Working groups:
Notes:

### "Hang after encountering overflow errors for huge types " [rust#132673](https://github.com/rust-lang/rust/issues/132673)
Creation date: TODO
Update at: about 28 days ago
Labels: [A-diagnostics, P-high, T-compiler, regression-from-stable-to-stable, C-bug, I-hang, S-has-mcve]
Author: `ym-xie`
Assignees: ``
Working groups:
Notes:

### "aarch64-unknown-none-softfloat: ABI unsoundness when enabling "neon" feature (tracking issue for `aarch64_softfloat_neon`)" [rust#134375](https://github.com/rust-lang/rust/issues/134375)
Creation date: TODO
Update at: 10 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, C-tracking-issue, O-AArch64, A-ABI, A-target-feature]
Author: `RalfJung`
Assignees: ``
Working groups:
Notes:

### "Performance regression in nightly with target-cpu=native on znver4" [rust#139370](https://github.com/rust-lang/rust/issues/139370)
Creation date: TODO
Update at: 4 months ago
Labels: [A-LLVM, I-slow, O-x86_64, P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `nsarlin-zama`
Assignees: ``
Working groups:
Notes:

### "ICE: unexpected initial operand type." [rust#114858](https://github.com/rust-lang/rust/issues/114858)
Creation date: TODO
Update at: 8 months ago
Labels: [I-ICE, P-high, T-compiler, regression-from-stable-to-stable, C-bug, E-needs-investigation]
Author: `fakeshadow`
Assignees: ``
Working groups:
Notes:

### "Potentially-observable store gets elided: asm block does not act as a compiler fence" [rust#144351](https://github.com/rust-lang/rust/issues/144351)
Creation date: TODO
Update at: about 20 days ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug]
Author: `RalfJung`
Assignees: ``
Working groups:
Notes:

### "rustc does not always update the mtime of all its outputs" [rust#148948](https://github.com/rust-lang/rust/issues/148948)
Creation date: TODO
Update at: 6 months ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `RalfJung`
Assignees: ``
Working groups:
Notes:

### "LLVM loop miscompilation" [rust#153222](https://github.com/rust-lang/rust/issues/153222)
Creation date: TODO
Update at: 3 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, I-miscompile]
Author: `theemathas`
Assignees: ``
Working groups:
Notes:

### "Unsoundness and ICE due to string literals that are too long for a 32-bit platform" [rust#156846](https://github.com/rust-lang/rust/issues/156846)
Creation date: TODO
Update at: about 13 days ago
Labels: [I-ICE, P-high, T-compiler, I-unsound, C-bug, A-layout, A-str, needs-triage]
Author: `theemathas`
Assignees: ``
Working groups:
Notes:

### "Regression: unnecessary stack frame generated for arm-none-eabi targets" [rust#157163](https://github.com/rust-lang/rust/issues/157163)
Creation date: TODO
Update at: about 15 days ago
Labels: [O-Arm, P-high, T-compiler, C-bug, I-heavy, regression-untriaged]
Author: `nhpupu`
Assignees: ``
Working groups:
Notes:

### "Performance regression since 1.93 related to MaybeUninit being wrongfully initialized" [rust#157743](https://github.com/rust-lang/rust/issues/157743)
Creation date: TODO
Update at: about 5 days ago
Labels: [A-LLVM, P-high, T-compiler, regression-from-stable-to-stable, C-bug, llvm-fixed-upstream]
Author: `glandium`
Assignees: ``
Working groups:
Notes:

## P-high T-compiler issues with owner (WG or assignee)
### "Varargs are completely unchecked if passed as generics" [rust#61275](https://github.com/rust-lang/rust/issues/61275)
Creation date: TODO
Update at: 3 months ago
Labels: [A-FFI, P-high, T-compiler, I-unsound, S-has-mcve, I-miscompile]
Author: `joshuabogue`
Assignees: `workingjubilee`
Working groups:
Notes: feels can stay P-high. Now we have PR #155697 that should clarify how c-varargs in FFI (IIUC)
Triage: [leaving as it is](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604898758)
Meeting notes: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604898758

### "Switching to opt-level=z on i686-windows-msvc triggers STATUS_ACCESS_VIOLATION" [rust#67497](https://github.com/rust-lang/rust/issues/67497)
Creation date: TODO
Update at: 19 months ago
Labels: [A-LLVM, O-windows, P-high, T-compiler, I-unsound, C-bug, E-needs-mcve, O-x86_32, E-needs-investigation]
Author: `dignifiedquire`
Assignees: `wesleywiser`
Working groups:
Notes: Maybe downgrade? [Triaged again in 2024](https://github.com/rust-lang/rust/issues/67497#issuecomment-2494000870) but no feedback from the reporter. Ask again the authors?
Meeting notes: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604899833

### "Locals aligned to greater than page size can cause unsound behavior" [rust#70143](https://github.com/rust-lang/rust/issues/70143)
Creation date: TODO
Update at: 13 months ago
Labels: [A-LLVM, O-windows, P-high, T-compiler, I-unsound, C-bug, C-external-bug]
Author: `retep998`
Assignees: `cuviper`
Working groups:
Notes: unsure about priority. [triaged in 2024](https://github.com/rust-lang/rust/issues/70143#issuecomment-2494035002), nothing since then. needs investigation. Maybe ping wg-llvm again?
Meeting notes: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604900802

### "Error reporting from attribute macros regressed in 1.46.0" [rust#76360](https://github.com/rust-lang/rust/issues/76360)
Creation date: TODO
Update at: 13 months ago
Labels: [A-diagnostics, P-high, T-compiler, regression-from-stable-to-stable, WG-diagnostics, A-proc-macros]
Author: `ahl`
Assignees: `estebank`
Working groups:
Notes: needs investigation from WG-diagnostics (unsure how busy they are, cc @**davidtwco**)
Meeting notes: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604901361

### "Passing `-C panic=abort` still attempts to link in `libunwind` when targeting `i686-pc-windows-gnu` on `v1.44+`" [rust#79609](https://github.com/rust-lang/rust/issues/79609)
Creation date: TODO
Update at: 18 months ago
Labels: [A-runtime, A-linkage, O-windows, A-cross, P-high, T-compiler, regression-from-stable-to-stable, C-bug, O-x86_32]
Author: `staticfloat`
Assignees: `wesleywiser`
Working groups:
Notes: Maybe downgrade? Given the target (`i686-pc-windows-gnu`) and old rustc version it started (1.44)?
Triage: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604901927

### "LLVM miscompiles large stack allocations" [rust#100914](https://github.com/rust-lang/rust/issues/100914)
Creation date: TODO
Update at: 19 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, WG-llvm, I-miscompile]
Author: `Cl00e9ment`
Assignees: `wesleywiser`
Working groups:
Notes: unless I am mistaken, the original repro does not error anymore (exit with 0). Could this one be fixed at some point? Maybe ping wg-llvm again?
Triaged: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604903269

### "miscompilation with incremental + unpacked debug + macos " [rust#108216](https://github.com/rust-lang/rust/issues/108216)
Creation date: TODO
Update at: 3 months ago
Labels: [O-macos, P-high, T-compiler, regression-from-stable-to-stable, I-unsound, A-incr-comp, C-bug]
Author: `ehuss`
Assignees: `lqd`
Working groups:
Notes: Probably still a P-high, seems it needs a repro and someone familiar with incr-comp intricacies (cc @**lqd** wdyt?)
Triage: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604903940

### "mutable_transmutes lint should catch transmutes from a type without interior mutability to one with" [rust#111229](https://github.com/rust-lang/rust/issues/111229)
Creation date: TODO
Update at: 18 months ago
Labels: [A-LLVM, A-lints, P-high, T-compiler, C-bug]
Author: `glandium`
Assignees: `ChayimFriedman2`
Working groups:
Notes: There is another tentative fix in #143343, maybe ping author again?
Triage: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604904984

### "`lemmy_db_views_modlog_combined` has a weird performance regression" [rust#141006](https://github.com/rust-lang/rust/issues/141006)
Creation date: TODO
Update at: 8 months ago
Labels: [I-compiletime, P-high, T-compiler, C-bug, E-needs-mcve, regression-untriaged]
Author: `lcnr`
Assignees: `steffahn`
Working groups:
Notes: probably good to keep at P-high for a bit more. Needs a reproducible. Seems that @**Frank Steffahn**  wanted to look into it
Triage: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Btriage.5D.202026-06-19.20P-high.20review/near/604906529

## All P-high issues missing a team label

None
