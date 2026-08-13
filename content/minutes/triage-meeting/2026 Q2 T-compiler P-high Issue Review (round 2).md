---
title: T-compiler P-high issues
tags: p-high-issues
note_id: H7ikp7ypTXeroPEVJ6HSWQ
---

# 2026 Q2 T-compiler P-high Issue Review (round 2)

Issues snapshot collected on: 2026-07-30

## Table of contents:
- [P-high T-compiler issues unassigned](#P-high-T-compiler-issues-unassigned) (50)
- [P-high T-compiler issues assigned](#P-high-T-compiler-issues-assigned) (43)
- [P-high without a team label](#P-high-without-a-team-label) (0)

## P-high T-compiler issues unassigned
### "Compile time+memory regression between 1.49.0 and 1.50.0" [rust#84873](https://github.com/rust-lang/rust/issues/84873)
Creation date: 63 months ago
Update at: 12 months ago
Labels: [I-compiletime, P-high, T-compiler, regression-from-stable-to-stable, I-compilemem, C-bug]
Author: `olix0r`
Assignees: `none`
Working groups:
Notes: Probably downgrade. Last [triage in 2022](https://github.com/rust-lang/rust/issues/84873#issuecomment-1320995012), seems that part of the perf. regression was recovered. It's all very old and authors didn't get back to us. Worth leaving a comment and ask to retest? Possibly close the issue given its age.

### "Compile error: static lifetime not satisfied but it is" [rust#86172](https://github.com/rust-lang/rust/issues/86172)
Creation date: 62 months ago
Update at: 18 months ago
Labels: [A-lifetimes, P-high, T-compiler, regression-from-stable-to-stable, C-bug, WG-async]
Author: `Skepfyr`
Assignees: `none`
Working groups:
Notes: Probably downgrade: last triage [3 years ago](https://github.com/rust-lang/rust/issues/86172#issuecomment-1320194292), this [comment](https://github.com/rust-lang/rust/issues/86172#issuecomment-1553335675) indicates could be a duplicate of #71723

### "Rustc passes syntactically invalid input to attribute macros" [rust#90256](https://github.com/rust-lang/rust/issues/90256)
Creation date: 57 months ago
Update at: 40 months ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, WG-diagnostics, A-proc-macros]
Author: `dtolnay`
Assignees: `none`
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
Creation date: 46 months ago
Update at: 12 months ago
Labels: [A-LLVM, A-FFI, P-high, T-compiler, I-unsound, C-bug, WG-llvm, regression-untriaged, A-LTO, A-ABI, O-x86_32]
Author: `glandium`
Assignees: `none`
Working groups:
Notes: Previously [triaged](https://github.com/rust-lang/rust/issues/102174#issuecomment-1285502667). IIUC Nikic had a plan to solve this and #143818 ([comment](https://github.com/rust-lang/rust/issues/143818#issuecomment-3073987289)) but unclear the progress. I would probably ping him again before deciding to downgrade the issue.

### "Broken compilation with `&(dyn Trait + '_)`" [rust#103762](https://github.com/rust-lang/rust/issues/103762)
Creation date: 45 months ago
Update at: 20 months ago
Labels: [A-resolve, A-lifetimes, P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `Cerber-Ursi`
Assignees: `none`
Working groups:
Notes: [Bisection](https://github.com/rust-lang/rust/issues/103762#issuecomment-1305053189) at the time pointed at https://github.com/rust-lang/rust/pull/97720, specifically, [this change here](https://github.com/rust-lang/rust/pull/97720/files?diff=unified&w=0#diff-809615be77d084b910459cf54c39f25745f5b9f8ad9e50c2a33e7fc2573686f1L761-R764). Would probably downgrade or even close given it's a deprecated syntax.

### "Miscompilation: Equal pointers comparing as unequal" [rust#107975](https://github.com/rust-lang/rust/issues/107975)
Creation date: 42 months ago
Update at: 14 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, WG-llvm, I-miscompile, C-external-bug]
Author: `JakobDegen`
Assignees: `none`
Working groups:
Notes: Some triaging [at the time](https://github.com/rust-lang/rust/issues/107975#issuecomment-1430188404) indicate that it's not a regression and [comment](https://github.com/rust-lang/rust/issues/107975#issuecomment-1430751296) points to https://github.com/llvm/llvm-project/issues/45725. Nikita comments [here](https://github.com/rust-lang/rust/issues/107975#issuecomment-1439817961). The issue is still present and I *think* still deserves a P-high but after skimming the long discussion no actionable was found.

### "`-Zdylib-lto` with ThinLTO is broken on windows-msvc" [rust#109114](https://github.com/rust-lang/rust/issues/109114)
Creation date: 41 months ago
Update at: 22 months ago
Labels: [A-LLVM, P-high, T-compiler, O-windows-msvc, I-unsound, WG-llvm, requires-nightly, A-LTO, I-miscompile]
Author: `Noratrieb`
Assignees: `none`
Working groups:
Notes: hopefully this was "fixed" by #122790 but probably needs a test on that platform.

### "ICE: unexpected initial operand type." [rust#114858](https://github.com/rust-lang/rust/issues/114858)
Creation date: 36 months ago
Update at: about 24 days ago
Labels: [I-ICE, P-high, T-compiler, regression-from-stable-to-stable, C-bug, E-needs-investigation]
Author: `fakeshadow`
Assignees: `none`
Working groups:
Notes: Still labeled `E-needs-investigation`, still reproduces today. Was [downgraded](https://github.com/rust-lang/rust/issues/114858#issuecomment-1739378909) to P-high.

### "The ABI of float types can be changed by `-Ctarget-feature`" [rust#116344](https://github.com/rust-lang/rust/issues/116344)
Creation date: 34 months ago
Update at: 12 months ago
Labels: [P-high, T-compiler, I-unsound, C-tracking-issue, A-floating-point, A-ABI, A-target-feature, T-opsem]
Author: `RalfJung`
Assignees: `none`
Working groups:
Notes: still reproduces, looks complicated, current status in the opening [comment](https://github.com/rust-lang/rust/issues/116344#issue-1921985365). Still feels P-high.

### "Inlining causes miscompilation of code that mixes target features" [rust#116573](https://github.com/rust-lang/rust/issues/116573)
Creation date: 34 months ago
Update at: about 23 days ago
Labels: [A-LLVM, A-codegen, P-high, T-compiler, I-unsound, C-bug, WG-llvm, A-target-feature, llvm-fixed-upstream, I-miscompile]
Author: `RalfJung`
Assignees: `none`
Working groups:
Notes: Recent [comment](https://github.com/rust-lang/rust/issues/116573#issuecomment-4799085817) indicates that it was fixed by LLVM upstream. We could leave it as P-high and close it when that LLVM patch lands by us over an update.

### "Building 1.74.0 natively on NetBSD/powerpc results in "pattern `Some(_)` not covered" error message" [rust#118099](https://github.com/rust-lang/rust/issues/118099)
Creation date: 32 months ago
Update at: 32 months ago
Labels: [A-LLVM, P-high, T-compiler, O-netbsd, O-PowerPC, C-bug]
Author: `he32`
Assignees: `none`
Working groups:
Notes: As per [comment](https://github.com/rust-lang/rust/issues/118099#issuecomment-1830844221): issue was with the LLVM shipped with rust 1.73. LLVM with Rust 1.74 apparently fixed. So in the end they were stuck with a Rust 1.73 that had another problem. Unsure how it evolved since then. Maybe downgrade and/or ask for an update?

### "x86-64 assembler silently truncates 64-bit address" [rust#118223](https://github.com/rust-lang/rust/issues/118223)
Creation date: 32 months ago
Update at: 3 months ago
Labels: [A-LLVM, O-x86_64, A-inline-assembly, P-high, T-compiler, I-unsound, C-bug, llvm-fixed-upstream, I-miscompile]
Author: `MauriceKayser`
Assignees: `none`
Working groups:
Notes: Issue was fixed in LLVM 22/rust 1.95 ([comment](https://github.com/rust-lang/rust/issues/118223#issuecomment-4262064843)) but there are still problematic instructions. Let's keep it open - maybe see if this is tracked on the LLVM side? Feels still P-high.

### "rust-1.75.0 fails to compile with ICE on aarch64 and various ppc arches with LTO enabled - error: could not compile memchr" [rust#121124](https://github.com/rust-lang/rust/issues/121124)
Creation date: 29 months ago
Update at: 9 months ago
Labels: [A-LLVM, I-ICE, P-high, T-compiler, regression-from-stable-to-stable, I-unsound, O-PowerPC, C-bug, E-needs-mcve, A-LTO, O-AArch64, E-needs-investigation]
Author: `bowlofeggs`
Assignees: `none`
Working groups:
Notes: I remember this issue ^^'. Need investigation. Unsure if Gentoo in the meantime moved to newer rust buildchains.

### "`-C target_cpu=cortex-a72` (and `-target-cpu=native` on Raspberry Pi) wrongly enables crypto features that are optional on Cortex-A72" [rust#125033](https://github.com/rust-lang/rust/issues/125033)
Creation date: 26 months ago
Update at: 16 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, O-AArch64, A-target-feature, llvm-fixed-upstream, A-targets, I-miscompile]
Author: `briansmith`
Assignees: `none`
Working groups:
Notes: The issue itself seems fixed by LLVM upstream ([comment](https://github.com/rust-lang/rust/issues/125033#issuecomment-2389581790)) but reporter mentions a more general LLVM issue ([comment](https://github.com/rust-lang/rust/issues/125033#issuecomment-2631507945)) with `cfg(target_feature)`, unsure how it if warrants a separate discussion. It's under "ARM Maintainer", @*davidtwco* do you happen to know more?

### "Undefined behavior from stack overflow on wasm32 targets" [rust#126747](https://github.com/rust-lang/rust/issues/126747)
Creation date: 25 months ago
Update at: 20 months ago
Labels: [P-high, T-compiler, I-unsound, O-wasm, C-bug, E-needs-design]
Author: `adambratschikaye`
Assignees: `none`
Working groups:
Notes: This needs design from someone familiar with the target. Unsure if this means the issue can be downgraded. We probably don't need to triage every time here until that has happened.

### "Wasm32 miscompilation when using u128 with multivalue and optimizations" [rust#127318](https://github.com/rust-lang/rust/issues/127318)
Creation date: 25 months ago
Update at: 20 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, O-wasm, S-has-mcve, I-miscompile, C-external-bug]
Author: `arriven`
Assignees: `none`
Working groups:
Notes:

### "Hang after encountering overflow errors for huge types " [rust#132673](https://github.com/rust-lang/rust/issues/132673)
Creation date: 21 months ago
Update at: about 41 days ago
Labels: [A-diagnostics, P-high, T-compiler, regression-from-stable-to-stable, C-bug, I-hang, S-has-mcve]
Author: `ym-xie`
Assignees: `none`
Working groups:
Notes:

### "non-`#[macro_export]`'ed `macro_rules!` macros are impossible to disambiguate from built-in attributes in `use` declarations" [rust#133708](https://github.com/rust-lang/rust/issues/133708)
Creation date: 20 months ago
Update at: about 5 days ago
Labels: [A-attributes, A-resolve, A-macros, P-high, T-lang, T-compiler, C-bug]
Author: `kanashimia`
Assignees: `none`
Working groups:
Notes:

### "aarch64-unknown-none-softfloat: ABI unsoundness when enabling "neon" feature (tracking issue for `aarch64_softfloat_neon`)" [rust#134375](https://github.com/rust-lang/rust/issues/134375)
Creation date: 19 months ago
Update at: 11 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, C-tracking-issue, O-AArch64, A-ABI, A-target-feature]
Author: `RalfJung`
Assignees: `none`
Working groups:
Notes:

### "Performance regression in nightly with target-cpu=native on znver4" [rust#139370](https://github.com/rust-lang/rust/issues/139370)
Creation date: 16 months ago
Update at: 6 months ago
Labels: [A-LLVM, I-slow, O-x86_64, P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `nsarlin-zama`
Assignees: `none`
Working groups:
Notes:

### "const-eval can construct uninhabited values or other unconstructable values out-of-thin-air via recursive static initialization" [rust#143047](https://github.com/rust-lang/rust/issues/143047)
Creation date: 13 months ago
Update at: 2 months ago
Labels: [P-high, T-lang, T-compiler, I-unsound, C-bug, A-rust-for-linux, I-lang-radar]
Author: `RalfJung`
Assignees: `none`
Working groups:
Notes:

### "Destructor of packed structs can move dangling references." [rust#143411](https://github.com/rust-lang/rust/issues/143411)
Creation date: 13 months ago
Update at: 11 months ago
Labels: [A-destructors, P-high, T-compiler, I-unsound, C-bug, T-opsem, A-repr-packed]
Author: `theemathas`
Assignees: `none`
Working groups:
Notes:

### "Potentially-observable store gets elided: asm block does not act as a compiler fence" [rust#144351](https://github.com/rust-lang/rust/issues/144351)
Creation date: 12 months ago
Update at: 2 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug]
Author: `RalfJung`
Assignees: `none`
Working groups:
Notes:

### "1.90 regression: Cycle detected when type checking" [rust#146813](https://github.com/rust-lang/rust/issues/146813)
Creation date: 10 months ago
Update at: 10 months ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, C-bug, S-has-mcve, T-types, fixed-by-next-solver, I-cycle, S-has-bisection]
Author: `Totodore`
Assignees: `none`
Working groups:
Notes:

### "SignatureMismatch ICE" [rust#146965](https://github.com/rust-lang/rust/issues/146965)
Creation date: 10 months ago
Update at: 4 months ago
Labels: [I-ICE, A-trait-system, A-associated-items, P-high, T-compiler, regression-from-stable-to-stable, C-bug, A-mir-opt, A-mir-opt-inlining, S-has-mcve, S-bug-has-test, T-types, fixed-by-next-solver]
Author: `benruijl`
Assignees: `none`
Working groups:
Notes:

### "catch_unwind doesn't catch non-C++ exceptions on wasm" [rust#148273](https://github.com/rust-lang/rust/issues/148273)
Creation date: 9 months ago
Update at: 6 months ago
Labels: [P-high, T-compiler, I-unsound, O-wasm, C-bug, T-libs, WG-ffi-unwind]
Author: `bjorn3`
Assignees: `none`
Working groups:
Notes:

### "`derive(PartialEq)` on enums is unsound with user-defined attribute macros." [rust#148423](https://github.com/rust-lang/rust/issues/148423)
Creation date: 8 months ago
Update at: 3 months ago
Labels: [A-macros, P-high, T-lang, T-compiler, I-unsound, C-bug, T-libs, A-proc-macros, I-lang-radar]
Author: `theemathas`
Assignees: `none`
Working groups:
Notes:

### "rustc does not always update the mtime of all its outputs" [rust#148948](https://github.com/rust-lang/rust/issues/148948)
Creation date: 8 months ago
Update at: 8 months ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `RalfJung`
Assignees: `none`
Working groups:
Notes:

### "TrivialClone is not derived for generic types (Performance regression)" [rust#149752](https://github.com/rust-lang/rust/issues/149752)
Creation date: 7 months ago
Update at: 4 months ago
Labels: [A-macros, P-high, T-compiler, regression-from-stable-to-stable, A-specialization, C-bug, T-libs, T-types]
Author: `theemathas`
Assignees: `none`
Working groups:
Notes:

### "ICE in release builds from 1.90.0 onwards" [rust#150263](https://github.com/rust-lang/rust/issues/150263)
Creation date: 7 months ago
Update at: 4 months ago
Labels: [I-ICE, A-trait-system, A-associated-items, P-high, T-compiler, regression-from-stable-to-stable, C-bug, A-mir-opt, A-mir-opt-inlining, S-has-mcve, S-bug-has-test, T-types, fixed-by-next-solver]
Author: `zxqfd555`
Assignees: `none`
Working groups:
Notes:

### "compiler-builtins aarch64 outline atomics symbols do not work with BTI" [rust#151486](https://github.com/rust-lang/rust/issues/151486)
Creation date: 6 months ago
Update at: 5 months ago
Labels: [P-high, T-compiler, C-bug, T-libs, O-AArch64, A-atomic, A-target-feature]
Author: `zmodem`
Assignees: `none`
Working groups:
Notes:

### "LLVM loop miscompilation" [rust#153222](https://github.com/rust-lang/rust/issues/153222)
Creation date: 5 months ago
Update at: 5 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, I-miscompile]
Author: `theemathas`
Assignees: `none`
Working groups:
Notes:

### "Significant compilation time regression starting in v1.95.0-nightly (bevy)" [rust#153910](https://github.com/rust-lang/rust/issues/153910)
Creation date: 4 months ago
Update at: 3 months ago
Labels: [A-trait-system, I-compiletime, P-high, T-compiler, E-medium, C-bug, E-needs-mcve, T-types]
Author: `gpoblon`
Assignees: `none`
Working groups:
Notes:

### "Unsoundness and ICE due to string literals that are too long for a 32-bit platform" [rust#156846](https://github.com/rust-lang/rust/issues/156846)
Creation date: 2 months ago
Update at: about 27 days ago
Labels: [I-ICE, P-high, T-compiler, I-unsound, C-bug, A-layout, A-str, needs-triage]
Author: `theemathas`
Assignees: `none`
Working groups:
Notes:

### "Regression: unnecessary stack frame generated for arm-none-eabi targets" [rust#157163](https://github.com/rust-lang/rust/issues/157163)
Creation date: 2 months ago
Update at: about 59 days ago
Labels: [O-Arm, P-high, T-compiler, C-bug, I-heavy, regression-untriaged]
Author: `nhpupu`
Assignees: `none`
Working groups:
Notes:

### "Regression: Wasm32 SIMD128 narrow intrinsics stopped working correctly in Rust 1.95+" [rust#157456](https://github.com/rust-lang/rust/issues/157456)
Creation date: about 55 days ago
Update at: about 41 days ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, O-wasm, A-SIMD, C-bug, llvm-fixed-upstream, I-miscompile]
Author: `Cykooz`
Assignees: `none`
Working groups:
Notes:

### "Regression 1.96.1 → 1.97.0: "missing optimized MIR" for pub fn glob-reexported alongside a restricted glob duplicate" [rust#159038](https://github.com/rust-lang/rust/issues/159038)
Creation date: about 20 days ago
Update at: about 16 days ago
Labels: [A-resolve, A-visibility, P-high, T-compiler, regression-from-stable-to-stable, C-bug, S-has-bisection]
Author: `calvinrp`
Assignees: `none`
Working groups:
Notes:

### "1.98 beta regression: "queries overflow the depth limit!"" [rust#159427](https://github.com/rust-lang/rust/issues/159427)
Creation date: about 13 days ago
Update at: about 9 days ago
Labels: [P-high, T-compiler, regression-from-stable-to-beta, C-bug, A-async-await, S-has-mcve, S-has-bisection]
Author: `theemathas`
Assignees: `none`
Working groups:
Notes:

### "1.98 beta regression due to name collision with `unroll`" [rust#159429](https://github.com/rust-lang/rust/issues/159429)
Creation date: about 13 days ago
Update at: about 0 days ago
Labels: [A-attributes, A-resolve, A-macros, P-high, T-compiler, regression-from-stable-to-beta, C-bug, I-lang-nominated]
Author: `theemathas`
Assignees: `none`
Working groups:
Notes:

### "EarlyOtherwiseBranch introduces access to a dead local variable" [rust#159618](https://github.com/rust-lang/rust/issues/159618)
Creation date: about 9 days ago
Update at: about 2 days ago
Labels: [P-high, T-compiler, C-bug, A-mir-opt, I-miscompile]
Author: `tmiasko`
Assignees: `none`
Working groups:
Notes:

### "GVN pass introduces UB by reborrowing from disabled reference" [rust#160004](https://github.com/rust-lang/rust/issues/160004)
Creation date: about 3 days ago
Update at: about 3 days ago
Labels: [P-high, T-compiler, I-unsound, C-bug, A-mir-opt, T-opsem, I-miscompile, A-mir-opt-GVN]
Author: `RalfJung`
Assignees: `none`
Working groups:
Notes:


## P-high T-compiler issues assigned
### "Varargs are completely unchecked if passed as generics" [rust#61275](https://github.com/rust-lang/rust/issues/61275)
Creation date: 87 months ago
Update at: 4 months ago
Labels: [A-FFI, P-high, T-compiler, I-unsound, S-has-mcve, I-miscompile]
Author: `joshuabogue`
Assignees: `[workingjubilee]`
Working groups:
Notes:

### "Switching to opt-level=z on i686-windows-msvc triggers STATUS_ACCESS_VIOLATION" [rust#67497](https://github.com/rust-lang/rust/issues/67497)
Creation date: 80 months ago
Update at: about 38 days ago
Labels: [A-LLVM, O-windows, P-high, T-compiler, I-unsound, C-bug, E-needs-mcve, O-x86_32, E-needs-investigation]
Author: `dignifiedquire`
Assignees: `[wesleywiser]`
Working groups:
Notes:

### "Statics don't support alignments larger than the page size" [rust#70022](https://github.com/rust-lang/rust/issues/70022)
Creation date: 77 months ago
Update at: 12 months ago
Labels: [O-linux, P-high, T-compiler, O-windows-gnu, O-windows-msvc, I-unsound, A-target-specs, C-bug, E-needs-investigation, A-align]
Author: `Amanieu`
Assignees: `none`
Working groups:
Notes: maybe downgrade at this point? [triaged again in 2024](https://github.com/rust-lang/rust/issues/70022#issuecomment-2494019524)

### "Locals aligned to greater than page size can cause unsound behavior" [rust#70143](https://github.com/rust-lang/rust/issues/70143)
Creation date: 77 months ago
Update at: about 40 days ago
Labels: [A-LLVM, O-windows, P-high, T-compiler, I-unsound, C-bug, E-needs-investigation, C-external-bug]
Author: `retep998`
Assignees: `[cuviper]`
Working groups:
Notes:

### "Passing `-C panic=abort` still attempts to link in `libunwind` when targeting `i686-pc-windows-gnu` on `v1.44+`" [rust#79609](https://github.com/rust-lang/rust/issues/79609)
Creation date: 68 months ago
Update at: about 41 days ago
Labels: [A-runtime, A-linkage, O-windows, A-cross, P-high, T-compiler, regression-from-stable-to-stable, C-bug, O-x86_32, fixed-by-build-std]
Author: `staticfloat`
Assignees: `[wesleywiser]`
Working groups:
Notes:

### "Compile time+memory regression between 1.49.0 and 1.50.0" [rust#84873](https://github.com/rust-lang/rust/issues/84873)
Creation date: 63 months ago
Update at: 12 months ago
Labels: [I-compiletime, P-high, T-compiler, regression-from-stable-to-stable, I-compilemem, C-bug]
Author: `olix0r`
Assignees: `none`
Working groups:
Notes: part of the regression war recovered (see [comment](https://github.com/rust-lang/rust/issues/84873#issuecomment-1320995012))

### "Compile error: static lifetime not satisfied but it is" [rust#86172](https://github.com/rust-lang/rust/issues/86172)
Creation date: 62 months ago
Update at: 18 months ago
Labels: [A-lifetimes, P-high, T-compiler, regression-from-stable-to-stable, C-bug, WG-async]
Author: `Skepfyr`
Assignees: `none`
Working groups:
Notes:

### "Rustc passes syntactically invalid input to attribute macros" [rust#90256](https://github.com/rust-lang/rust/issues/90256)
Creation date: 57 months ago
Update at: 40 months ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, WG-diagnostics, A-proc-macros]
Author: `dtolnay`
Assignees: `none`
Working groups:
Notes:

### "rustc 1.59/1.60 builds musl binaries that segfault, when compiling with musl-gcc wrappers, due to static-pie default" [rust#95926](https://github.com/rust-lang/rust/issues/95926)
Creation date: 52 months ago
Update at: 33 months ago
Labels: [E-mentor, P-high, T-compiler, regression-from-stable-to-stable, E-help-wanted, O-musl, C-bug, WG-diagnostics]
Author: `joshtriplett`
Assignees: `none`
Working groups:
Notes:

### "libcompiler-builtins contains DWARF5 debuginfo in 1.62.0" [rust#98746](https://github.com/rust-lang/rust/issues/98746)
Creation date: 49 months ago
Update at: 12 months ago
Labels: [A-debuginfo, E-needs-test, P-high, T-compiler, C-bug, E-needs-mcve]
Author: `glandium`
Assignees: `none`
Working groups:
Notes:

### "Source of lifetime coercion is not reported starting in 1.63" [rust#99256](https://github.com/rust-lang/rust/issues/99256)
Creation date: 49 months ago
Update at: 43 months ago
Labels: [A-diagnostics, A-lifetimes, P-high, T-compiler, regression-from-stable-to-stable, C-bug, WG-diagnostics]
Author: `mqudsi`
Assignees: `none`
Working groups:
Notes:

### "LLVM miscompiles large stack allocations" [rust#100914](https://github.com/rust-lang/rust/issues/100914)
Creation date: 47 months ago
Update at: about 41 days ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, WG-llvm, I-miscompile]
Author: `Cl00e9ment`
Assignees: `[wesleywiser]`
Working groups:
Notes:

### "Codegen weirdness for `sum` of `count_ones` over an array" [rust#101060](https://github.com/rust-lang/rust/issues/101060)
Creation date: 47 months ago
Update at: 31 months ago
Labels: [A-LLVM, I-slow, A-codegen, O-x86_64, P-high, T-compiler, regression-from-stable-to-stable, C-bug, WG-llvm, A-autovectorization]
Author: `alion02`
Assignees: `none`
Working groups:
Notes:

### "extern "C" functions don't generate the same IR definitions as clang on x86, causing problems with cross-language LTO" [rust#102174](https://github.com/rust-lang/rust/issues/102174)
Creation date: 46 months ago
Update at: 12 months ago
Labels: [A-LLVM, A-FFI, P-high, T-compiler, I-unsound, C-bug, WG-llvm, regression-untriaged, A-LTO, A-ABI, O-x86_32]
Author: `glandium`
Assignees: `none`
Working groups:
Notes:

### "ld64.lld: error: too many personalities (4) for compact unwind to encode" [rust#102754](https://github.com/rust-lang/rust/issues/102754)
Creation date: 46 months ago
Update at: 12 months ago
Labels: [A-linkage, O-macos, O-ios, P-high, T-compiler, relnotes, regression-from-stable-to-stable, C-bug]
Author: `glandium`
Assignees: `none`
Working groups:
Notes:

### "Broken compilation with `&(dyn Trait + '_)`" [rust#103762](https://github.com/rust-lang/rust/issues/103762)
Creation date: 45 months ago
Update at: 20 months ago
Labels: [A-resolve, A-lifetimes, P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `Cerber-Ursi`
Assignees: `none`
Working groups:
Notes:

### "Miscompilation: Equal pointers comparing as unequal" [rust#107975](https://github.com/rust-lang/rust/issues/107975)
Creation date: 42 months ago
Update at: 14 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, WG-llvm, I-miscompile, C-external-bug]
Author: `JakobDegen`
Assignees: `none`
Working groups:
Notes:

### "`-Zdylib-lto` with ThinLTO is broken on windows-msvc" [rust#109114](https://github.com/rust-lang/rust/issues/109114)
Creation date: 41 months ago
Update at: 22 months ago
Labels: [A-LLVM, P-high, T-compiler, O-windows-msvc, I-unsound, WG-llvm, requires-nightly, A-LTO, I-miscompile]
Author: `Noratrieb`
Assignees: `none`
Working groups:
Notes:

### "ICE: unexpected initial operand type." [rust#114858](https://github.com/rust-lang/rust/issues/114858)
Creation date: 36 months ago
Update at: about 24 days ago
Labels: [I-ICE, P-high, T-compiler, regression-from-stable-to-stable, C-bug, E-needs-investigation]
Author: `fakeshadow`
Assignees: `none`
Working groups:
Notes:

### "Inlining causes miscompilation of code that mixes target features" [rust#116573](https://github.com/rust-lang/rust/issues/116573)
Creation date: 34 months ago
Update at: about 23 days ago
Labels: [A-LLVM, A-codegen, P-high, T-compiler, I-unsound, C-bug, WG-llvm, A-target-feature, llvm-fixed-upstream, I-miscompile]
Author: `RalfJung`
Assignees: `none`
Working groups:
Notes:

### "Building 1.74.0 natively on NetBSD/powerpc results in "pattern `Some(_)` not covered" error message" [rust#118099](https://github.com/rust-lang/rust/issues/118099)
Creation date: 32 months ago
Update at: 32 months ago
Labels: [A-LLVM, P-high, T-compiler, O-netbsd, O-PowerPC, C-bug]
Author: `he32`
Assignees: `none`
Working groups:
Notes:

### "x86-64 assembler silently truncates 64-bit address" [rust#118223](https://github.com/rust-lang/rust/issues/118223)
Creation date: 32 months ago
Update at: 3 months ago
Labels: [A-LLVM, O-x86_64, A-inline-assembly, P-high, T-compiler, I-unsound, C-bug, llvm-fixed-upstream, I-miscompile]
Author: `MauriceKayser`
Assignees: `none`
Working groups:
Notes:

### "rust-1.75.0 fails to compile with ICE on aarch64 and various ppc arches with LTO enabled - error: could not compile memchr" [rust#121124](https://github.com/rust-lang/rust/issues/121124)
Creation date: 29 months ago
Update at: 9 months ago
Labels: [A-LLVM, I-ICE, P-high, T-compiler, regression-from-stable-to-stable, I-unsound, O-PowerPC, C-bug, E-needs-mcve, A-LTO, O-AArch64, E-needs-investigation]
Author: `bowlofeggs`
Assignees: `none`
Working groups:
Notes:

### "`-C target_cpu=cortex-a72` (and `-target-cpu=native` on Raspberry Pi) wrongly enables crypto features that are optional on Cortex-A72" [rust#125033](https://github.com/rust-lang/rust/issues/125033)
Creation date: 26 months ago
Update at: 16 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, O-AArch64, A-target-feature, llvm-fixed-upstream, A-targets, I-miscompile]
Author: `briansmith`
Assignees: `none`
Working groups:
Notes:

### "Undefined behavior from stack overflow on wasm32 targets" [rust#126747](https://github.com/rust-lang/rust/issues/126747)
Creation date: 25 months ago
Update at: 20 months ago
Labels: [P-high, T-compiler, I-unsound, O-wasm, C-bug, E-needs-design]
Author: `adambratschikaye`
Assignees: `none`
Working groups:
Notes:

### "Wasm32 miscompilation when using u128 with multivalue and optimizations" [rust#127318](https://github.com/rust-lang/rust/issues/127318)
Creation date: 25 months ago
Update at: 20 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, O-wasm, S-has-mcve, I-miscompile, C-external-bug]
Author: `arriven`
Assignees: `none`
Working groups:
Notes:

### "Hang after encountering overflow errors for huge types " [rust#132673](https://github.com/rust-lang/rust/issues/132673)
Creation date: 21 months ago
Update at: about 41 days ago
Labels: [A-diagnostics, P-high, T-compiler, regression-from-stable-to-stable, C-bug, I-hang, S-has-mcve]
Author: `ym-xie`
Assignees: `none`
Working groups:
Notes:

### "aarch64-unknown-none-softfloat: ABI unsoundness when enabling "neon" feature (tracking issue for `aarch64_softfloat_neon`)" [rust#134375](https://github.com/rust-lang/rust/issues/134375)
Creation date: 19 months ago
Update at: 11 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, C-tracking-issue, O-AArch64, A-ABI, A-target-feature]
Author: `RalfJung`
Assignees: `none`
Working groups:
Notes:

### "Performance regression in nightly with target-cpu=native on znver4" [rust#139370](https://github.com/rust-lang/rust/issues/139370)
Creation date: 16 months ago
Update at: 6 months ago
Labels: [A-LLVM, I-slow, O-x86_64, P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `nsarlin-zama`
Assignees: `none`
Working groups:
Notes:

### "`lemmy_db_views_modlog_combined` has a weird performance regression" [rust#141006](https://github.com/rust-lang/rust/issues/141006)
Creation date: 14 months ago
Update at: about 24 days ago
Labels: [I-compiletime, P-high, T-compiler, C-bug, E-needs-mcve, regression-untriaged]
Author: `lcnr`
Assignees: `[steffahn]`
Working groups:
Notes:

### "Potentially-observable store gets elided: asm block does not act as a compiler fence" [rust#144351](https://github.com/rust-lang/rust/issues/144351)
Creation date: 12 months ago
Update at: 2 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug]
Author: `RalfJung`
Assignees: `none`
Working groups:
Notes:

### "rustc does not always update the mtime of all its outputs" [rust#148948](https://github.com/rust-lang/rust/issues/148948)
Creation date: 8 months ago
Update at: 8 months ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `RalfJung`
Assignees: `none`
Working groups:
Notes:

### "Performance regression (30%) between Rust 1.90 and 1.91" [rust#153154](https://github.com/rust-lang/rust/issues/153154)
Creation date: 5 months ago
Update at: about 43 days ago
Labels: [A-LLVM, I-slow, P-high, T-compiler, C-bug, regression-untriaged, needs-triage]
Author: `plafer`
Assignees: `[dianqk]`
Working groups:
Notes:

### "LLVM loop miscompilation" [rust#153222](https://github.com/rust-lang/rust/issues/153222)
Creation date: 5 months ago
Update at: 5 months ago
Labels: [A-LLVM, P-high, T-compiler, I-unsound, C-bug, I-miscompile]
Author: `theemathas`
Assignees: `none`
Working groups:
Notes:

### "rustc has stopped emitting unused `repr`/`link`/`panic_handler` attribute lints on macro invocations" [rust#156499](https://github.com/rust-lang/rust/issues/156499)
Creation date: 2 months ago
Update at: about 58 days ago
Labels: [A-attributes, P-high, T-compiler, regression-from-stable-to-stable, C-bug]
Author: `mejrs`
Assignees: `[JonathanBrouwer]`
Working groups:
Notes:

### "Unsoundness and ICE due to string literals that are too long for a 32-bit platform" [rust#156846](https://github.com/rust-lang/rust/issues/156846)
Creation date: 2 months ago
Update at: about 27 days ago
Labels: [I-ICE, P-high, T-compiler, I-unsound, C-bug, A-layout, A-str, needs-triage]
Author: `theemathas`
Assignees: `none`
Working groups:
Notes:

### "Regression: unnecessary stack frame generated for arm-none-eabi targets" [rust#157163](https://github.com/rust-lang/rust/issues/157163)
Creation date: 2 months ago
Update at: about 59 days ago
Labels: [O-Arm, P-high, T-compiler, C-bug, I-heavy, regression-untriaged]
Author: `nhpupu`
Assignees: `none`
Working groups:
Notes:

### "Regression: Wasm32 SIMD128 narrow intrinsics stopped working correctly in Rust 1.95+" [rust#157456](https://github.com/rust-lang/rust/issues/157456)
Creation date: about 55 days ago
Update at: about 41 days ago
Labels: [P-high, T-compiler, regression-from-stable-to-stable, O-wasm, A-SIMD, C-bug, llvm-fixed-upstream, I-miscompile]
Author: `Cykooz`
Assignees: `none`
Working groups:
Notes:

### "Regression 1.96.1 → 1.97.0: "missing optimized MIR" for pub fn glob-reexported alongside a restricted glob duplicate" [rust#159038](https://github.com/rust-lang/rust/issues/159038)
Creation date: about 20 days ago
Update at: about 16 days ago
Labels: [A-resolve, A-visibility, P-high, T-compiler, regression-from-stable-to-stable, C-bug, S-has-bisection]
Author: `calvinrp`
Assignees: `none`
Working groups:
Notes:

### "1.98 beta regression: "queries overflow the depth limit!"" [rust#159427](https://github.com/rust-lang/rust/issues/159427)
Creation date: about 13 days ago
Update at: about 9 days ago
Labels: [P-high, T-compiler, regression-from-stable-to-beta, C-bug, A-async-await, S-has-mcve, S-has-bisection]
Author: `theemathas`
Assignees: `none`
Working groups:
Notes:

### "1.98 beta regression due to name collision with `splat`" [rust#159428](https://github.com/rust-lang/rust/issues/159428)
Creation date: about 13 days ago
Update at: about 0 days ago
Labels: [A-attributes, A-resolve, A-macros, P-high, T-compiler, regression-from-stable-to-beta, C-bug, F-splat]
Author: `theemathas`
Assignees: `[teor2345]`
Working groups:
Notes:

### "1.98 beta regression due to name collision with `unroll`" [rust#159429](https://github.com/rust-lang/rust/issues/159429)
Creation date: about 13 days ago
Update at: about 0 days ago
Labels: [A-attributes, A-resolve, A-macros, P-high, T-compiler, regression-from-stable-to-beta, C-bug, I-lang-nominated]
Author: `theemathas`
Assignees: `none`
Working groups:
Notes:

### "EarlyOtherwiseBranch introduces access to a dead local variable" [rust#159618](https://github.com/rust-lang/rust/issues/159618)
Creation date: about 9 days ago
Update at: about 2 days ago
Labels: [P-high, T-compiler, C-bug, A-mir-opt, I-miscompile]
Author: `tmiasko`
Assignees: `none`
Working groups:
Notes:


## P-high without a team label
No issues at this time.
