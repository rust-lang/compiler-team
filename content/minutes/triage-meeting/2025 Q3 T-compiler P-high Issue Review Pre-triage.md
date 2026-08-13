<!-- stubs generated with pcr-util -->

# 2025 Q3 T-compiler P-high Issue Review Pre-triage

*Issues snapshot collected on 2025-07-17T12:25:42.073405408Z*


## P-high missing team label

[P-high issues without team label](https://github.com/rust-lang/rust/issues?q=is%3Aopen%20is%3Aissue%20label%3AP-high%20-label%3AT-cargo%20-label%3AT-community%20-label%3AT-compiler%20-label%3AT-core%20-label%3AT-crates-io%20-label%3AT-dev-tools%20-label%3AT-docs-rs%20-label%3AT-infra%20-label%3AT-libs%20-label%3AT-libs-api%20-label%3AT-release%20-label%3AT-release%20-label%3AT-rustdoc%20-label%3AT-style%20-label%3AT-types%20-label%3AT-lang%20-label%3AT-leadership-council)


**Did not find P-high issues without a team label**


## P-high T-compiler issues missing owner (no WG and no assignee)

[P-high issues with no owner](https://github.com/rust-lang/rust/issues?q=is%3Aissue%20is%3Aopen%20label%3AT-compiler%20label%3AP-high%20-label%3Awg-debugging%20-label%3AWG-embedded%20-label%3AWG-diagnostics%20-label%3AWG-async%20-label%3AWG-incr-comp%20no%3Aassignee%20sort%3Acreated-asc%20-label%3AI-types-nominated%20-label%3AI-lang-nominated%20-label%3AI-compiler-nominated%20-label%3AT-types%20-label%3AWG-llvm)


### #57893: Coherence can be bypassed by an indirect impl for a trait object
Link: <https://github.com/rust-lang/rust/issues/57893>
Creation date: 2019-01-25
Labels: `A-dyn-trait`, `A-trait-system`, `C-bug`, `I-ICE`, `I-unsound`, `P-high`, `S-bug-has-test`, `T-compiler`, `T-lang`, `T-types`
Author: `arielb1`
Working groups: 
Assignees: 
Notes: Still open issue but seems under T-types purview (starting from [comment](https://github.com/rust-lang/rust/issues/57893#issuecomment-1883989528)) and relevant [rollup commit](https://github.com/matthiaskrgr/rust/commit/69b13e4cabac3dcfa6a503e71781cc8fc3e86030)

**TODO**


### #84366: 'static closures/FnDefs/futures with non-'static return type are unsound
Link: <https://github.com/rust-lang/rust/issues/84366>
Creation date: 2021-04-20
Labels: `A-associated-items`, `A-async-await`, `A-closures`, `A-lifetimes`, `A-trait-system`, `A-type-system`, `AsyncAwait-Triaged`, `C-bug`, `I-unsound`, `P-high`, `S-bug-has-test`, `T-compiler`, `T-lang`, `T-types`
Author: `steffahn`
Working groups: 
Assignees: 
Notes: Still reproduces (see last [comment](https://github.com/rust-lang/rust/issues/84366#issuecomment-2831858257)). Also much newer related issue #141713

**TODO**


### #84591: HRTB on subtrait unsoundly provides HTRB on supertrait with weaker implied bounds
Link: <https://github.com/rust-lang/rust/issues/84591>
Creation date: 2021-04-26
Labels: `A-higher-ranked`, `A-implied-bounds`, `A-lifetimes`, `A-trait-system`, `A-type-system`, `C-bug`, `I-unsound`, `P-high`, `S-bug-has-test`, `T-compiler`, `T-types`
Author: `steffahn`
Working groups: 
Assignees: 
Notes: Mentioned in [#129005](https://github.com/rust-lang/rust/issues/129005#issue-2461029365) as known bug

**TODO**


### #85099: A `Pin` unsoundness involving an `impl DerefMut for Pin<&dyn LocalTrait>`
Link: <https://github.com/rust-lang/rust/issues/85099>
Creation date: 2021-05-09
Labels: `A-pin`, `C-bug`, `I-unsound`, `P-high`, `S-bug-has-test`, `T-compiler`, `T-lang`, `T-libs-api`, `T-types`
Author: `steffahn`
Working groups: 
Assignees:
Notes: Seems not actively being worked on?

**TODO**


### #103762: Broken compilation with `&(dyn Trait + '_)`
Link: <https://github.com/rust-lang/rust/issues/103762>
Creation date: 2022-10-30
Labels: `A-lifetimes`, `A-resolve`, `C-bug`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `Cerber-Ursi`
Working groups: 
Assignees:
Notes: Attempted a fix in #104272 but author abandoned the effort

**TODO**


### #113104: Linking error on Rust 1.70 aarch64-unknown-linux-musl toolchain
Link: <https://github.com/rust-lang/rust/issues/113104>
Creation date: 2023-06-27
Labels: `A-linkage`, `C-bug`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `geauxvirtual`
Working groups: 
Assignees: 
Notes: Will it change anything when we upgrade to musl 1.25 (MCP [rust#887](https://github.com/rust-lang/compiler-team/issues/887))?

**TODO**


### #114838: CI accepted doctests that do not build (due to missing feature gates)
Link: <https://github.com/rust-lang/rust/issues/114838>
Creation date: 2023-08-15
Labels: `A-stability`, `C-bug`, `P-high`, `T-compiler`
Author: `RalfJung`
Working groups: 
Assignees: 
Notes: This specific issue seems was fixed by #114837 (the play.r-l.org link now compiles). The general issue ("Why did CI accept a doctest that does not build?") maybe fixed as well in #97301

**TODO**


### #114858: ICE: unexpected initial operand type.
Link: <https://github.com/rust-lang/rust/issues/114858>
Creation date: 2023-08-15
Labels: `C-bug`, `F-impl_trait_in_assoc_type`, `I-ICE`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `fakeshadow`
Working groups: 
Assignees: 
Notes: related to #57893 (above in this list), see [comment](https://github.com/rust-lang/rust/issues/57893#issuecomment-2621456777).

**TODO**


### #115216: OOM/surprising memory consumption with Rust 1.72
Link: <https://github.com/rust-lang/rust/issues/115216>
Creation date: 2023-08-25
Labels: `A-LLVM`, `C-bug`, `I-compilemem`, `O-wasm`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `silicology1`
Working groups: 
Assignees: 
Notes: Last [comment](https://github.com/rust-lang/rust/issues/115216#issuecomment-2141479465) points to open LLVM issue [llvm-project#44793](https://github.com/llvm/llvm-project/issues/47793). Given the it affects the WASM tier 2 target, maybe downgrade?

**TODO**


### #115336: `extern "C" fn` on sparc64 targets does not respect repr(transparent)
Link: <https://github.com/rust-lang/rust/issues/115336>
Creation date: 2023-08-29
Labels: `A-ABI`, `A-FFI`, `I-unsound`, `O-SPARC`, `P-high`, `T-compiler`
Author: `RalfJung`
Working groups: 
Assignees: 
Notes: SPARC platform, maybe downgrade? PR fixing it #142680 waiting on review 

**TODO**


### #115465: Multiple nested loops taking very long to compile with CPU extensions
Link: <https://github.com/rust-lang/rust/issues/115465>
Creation date: 2023-09-02
Labels: `A-LLVM`, `C-bug`, `I-compiletime`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `Ben-Lichtman`
Working groups: 
Assignees: 
Notes: Tried compiling the Godbolt repro with 1.88 and compiles pretty fast. Probably the LLVM issue (in [comment](https://github.com/rust-lang/rust/issues/115465#issuecomment-1711627094)) was solved?

**TODO**


### #116344: The ABI of float types can be changed by `-Ctarget-feature`
Link: <https://github.com/rust-lang/rust/issues/116344>
Creation date: 2023-10-02
Labels: `A-ABI`, `A-floating-point`, `A-target-feature`, `I-unsound`, `P-high`, `T-compiler`, `T-opsem`
Author: `RalfJung`
Working groups: 
Assignees: 
Notes: by reading [comment](https://github.com/rust-lang/rust/issues/116344#issuecomment-2994393425), I wonder if now only affects phased out i586/i686 targets or legacy 32bit ARM "soft-float" targets ([comment](https://github.com/rust-lang/rust/issues/116344#issuecomment-2575324988))

**TODO**


### #116573: Inlining causes miscompilation of code that mixes target features
Link: <https://github.com/rust-lang/rust/issues/116573>
Creation date: 2023-10-09
Labels: `A-LLVM`, `A-codegen`, `A-target-feature`, `C-bug`, `I-miscompile`, `I-unsound`, `P-high`, `T-compiler`
Author: `RalfJung`
Working groups: 
Assignees: 
Notes: Upstream LLVM issue: https://github.com/llvm/llvm-project/issues/70563 

**TODO**


### #117101: Errors compiling `libc` using rust 1.73.0 on `riscv64/ubuntu:focal` docker image - works with 1.72.1
Link: <https://github.com/rust-lang/rust/issues/117101>
Creation date: 2023-10-23
Labels: `A-linkage`, `C-bug`, `O-riscv`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`, `regression-untriaged`
Author: `emlowe`
Working groups: 
Assignees: 

**TODO**


### #118099: Building 1.74.0 natively on NetBSD/powerpc results in "pattern `Some(_)` not covered" error message
Link: <https://github.com/rust-lang/rust/issues/118099>
Creation date: 2023-11-20
Labels: `A-LLVM`, `C-bug`, `O-PowerPC`, `O-netbsd`, `P-high`, `T-compiler`
Author: `he32`
Working groups: 
Assignees: 
Notes: possibly upstream LLVM issue https://github.com/rust-lang/rust/issues/118099#issuecomment-1830852216

**TODO**


### #118223: x86-64 assembler silently truncates 64-bit address
Link: <https://github.com/rust-lang/rust/issues/118223>
Creation date: 2023-11-24
Labels: `A-LLVM`, `A-inline-assembly`, `C-bug`, `I-miscompile`, `I-unsound`, `O-x86_64`, `P-high`, `T-compiler`
Author: `MauriceKayser`
Working groups: 
Assignees: 
Notes: upstream LLVM issue https://github.com/llvm/llvm-project/issues/73481

**TODO**


### #121124: rust-1.75.0 fails to compile with ICE on aarch64 and various ppc arches with LTO enabled - error: could not compile memchr
Link: <https://github.com/rust-lang/rust/issues/121124>
Creation date: 2024-02-15
Labels: `A-LLVM`, `A-LTO`, `C-bug`, `E-needs-investigation`, `E-needs-mcve`, `I-ICE`, `I-unsound`, `O-AArch64`, `O-PowerPC`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `bowlofeggs`
Working groups: 
Assignees: 

**TODO**


### #122294: f64::round doesn't work properly on arm-unknown-linux-gnueabi
Link: <https://github.com/rust-lang/rust/issues/122294>
Creation date: 2024-03-10
Labels: `A-LLVM`, `C-bug`, `E-needs-investigation`, `I-miscompile`, `I-unsound`, `O-Arm`, `P-high`, `T-compiler`
Author: `vklachkov`
Working groups: 
Assignees: 

**TODO**


### #125033: `-C target_cpu=cortex-a72` (and `-target-cpu=native` on Raspberry Pi) wrongly enables crypto features that are optional on Cortex-A72
Link: <https://github.com/rust-lang/rust/issues/125033>
Creation date: 2024-05-12
Labels: `A-LLVM`, `A-target-feature`, `A-targets`, `C-bug`, `I-miscompile`, `I-unsound`, `O-AArch64`, `P-high`, `T-compiler`, `llvm-fixed-upstream`
Author: `briansmith`
Working groups: 
Assignees: 

**TODO**


### #126747: Undefined behavior from stack overflow on wasm32 targets
Link: <https://github.com/rust-lang/rust/issues/126747>
Creation date: 2024-06-20
Labels: `C-bug`, `E-needs-design`, `I-unsound`, `O-wasm`, `P-high`, `T-compiler`
Author: `adambratschikaye`
Working groups: 
Assignees: 

**TODO**


### #127318: Wasm32 miscompilation when using u128 with multivalue and optimizations
Link: <https://github.com/rust-lang/rust/issues/127318>
Creation date: 2024-07-04
Labels: `A-LLVM`, `C-external-bug`, `I-miscompile`, `I-unsound`, `O-wasm`, `P-high`, `S-has-mcve`, `T-compiler`
Author: `arriven`
Working groups: 
Assignees: 

**TODO**


### #127979: Incorrect behavior on Windows with dylibs and ThinLTO
Link: <https://github.com/rust-lang/rust/issues/127979>
Creation date: 2024-07-19
Labels: `A-linkage`, `C-bug`, `C-optimization`, `I-unsound`, `O-windows`, `P-high`, `S-has-mcve`, `T-compiler`, `regression-from-stable-to-stable`
Author: `janhohenheim`
Working groups: 
Assignees: 

**TODO**


### #130834: Invalid metadata for arm64e due to Xcode 15+ on ARM64e macOS
Link: <https://github.com/rust-lang/rust/issues/130834>
Creation date: 2024-09-25
Labels: `C-bug`, `O-Arm`, `O-macos`, `P-high`, `T-bootstrap`, `T-compiler`, `regression-untriaged`
Author: `arttet`
Working groups: 
Assignees: 

**TODO**


### #139370: Performance regression in nightly with target-cpu=native on znver4
Link: <https://github.com/rust-lang/rust/issues/139370>
Creation date: 2025-04-04
Labels: `A-LLVM`, `C-bug`, `O-x86_64`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `nsarlin-zama`
Working groups: 
Assignees: 

**TODO**


### #139730: A case of compound x86_64 performance regression caused by LLVM 20 and #124810
Link: <https://github.com/rust-lang/rust/issues/139730>
Creation date: 2025-04-13
Labels: `A-LLVM`, `C-optimization`, `P-high`, `T-compiler`, `T-libs`, `regression-untriaged`
Author: `MoSal`
Working groups: 
Assignees: 

**TODO**


### #142519: Function no longer auto-vectorizes in 1.87.0
Link: <https://github.com/rust-lang/rust/issues/142519>
Creation date: 2025-06-14
Labels: `A-LLVM`, `C-optimization`, `I-slow`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `fintelia`
Working groups: 
Assignees: 

**TODO**


### #143836: regression: ICE compiler/rustc_ty_utils/src/abi.rs:485:62, unwrapping None
Link: <https://github.com/rust-lang/rust/issues/143836>
Creation date: 2025-07-12
Labels: `C-bug`, `I-ICE`, `P-high`, `T-compiler`, `regression-from-stable-to-beta`
Author: `Mark-Simulacrum`
Working groups: 
Assignees: 

**TODO**


### #143992: where bounds regression in beta+nightly
Link: <https://github.com/rust-lang/rust/issues/143992>
Creation date: 2025-07-15
Labels: `A-trait-system`, `C-bug`, `I-types-nominated`, `P-high`, `S-has-bisection`, `S-has-mcve`, `T-compiler`, `T-types`, `regression-from-stable-to-beta`
Author: `mejrs`
Working groups: 
Assignees: 

**TODO**




## P-high T-compiler issues with owner (WG or assignee)

### #47949: Panics in destructors can cause the return value to be leaked
Link: <https://github.com/rust-lang/rust/issues/47949>
Creation date: 2018-02-01
Labels: `A-destructors`, `C-enhancement`, `I-unsound`, `P-high`, `T-compiler`, `T-lang`
Author: `arielb1`
Working groups: 
Assignees: `matthewjasper`
Notes: PR #125923 was in the making but seems stalled for now ([comment](https://github.com/rust-lang/rust/pull/125923#issuecomment-2987566092))

**TODO**


### #53014: LNK1189 "library limit of 65535 obj exceeded" building rustc
Link: <https://github.com/rust-lang/rust/issues/53014>
Creation date: 2018-08-03
Labels: `A-codegen`, `A-incr-comp`, `A-linkage`, `C-bug`, `E-help-wanted`, `E-needs-design`, `O-windows-msvc`, `P-high`, `P-medium`, `T-compiler`, `WG-incr-comp`
Author: `scottmcm`
Working groups: `WG-incr-comp`
Assignees: `wesleywiser`
Notes: Both `P-high` and `P-medium`, already visited in a previous [P-high triage meeting](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bsteering.5D.202024-11-15.20P-high.20review/near/482641767), see [comment](https://github.com/rust-lang/rust/issues/53014#issuecomment-2479299193). Since then a bit more discussion.

**TODO**


### #53934: disambiguate between multiple suggestions and a single multi-span suggestion; or, JSON error format is not round-trippable
Link: <https://github.com/rust-lang/rust/issues/53934>
Creation date: 2018-09-03
Labels: `A-diagnostics`, `C-cleanup`, `D-diagnostic-infra`, `E-mentor`, `E-needs-design`, `P-high`, `T-compiler`, `WG-diagnostics`
Author: `zackmdavis`
Working groups: `WG-diagnostics`
Assignees: 
Notes: PR #142980 landed a few weeks ago is linked to this issue but unsure how *exactly*

**TODO**


### #61275: Varargs are completely unchecked if passed as generics
Link: <https://github.com/rust-lang/rust/issues/61275>
Creation date: 2019-05-28
Labels: `A-FFI`, `I-miscompile`, `I-unsound`, `P-high`, `S-has-mcve`, `T-compiler`
Author: `joshuabogue`
Working groups: 
Assignees: `workingjubilee`
Notes: I *think* the miscompilation part was closed in #141341. Seems a definitive solution needs more design work

**TODO**


### #67497: Switching to opt-level=z on i686-windows-msvc triggers STATUS_ACCESS_VIOLATION
Link: <https://github.com/rust-lang/rust/issues/67497>
Creation date: 2019-12-21
Labels: `A-LLVM`, `C-bug`, `E-needs-investigation`, `E-needs-mcve`, `I-unsound`, `O-windows`, `O-x86_32`, `P-high`, `T-compiler`
Author: `dignifiedquire`
Working groups: 
Assignees: `wesleywiser`
Notes: visited in a previous P-high review (see [comment](https://github.com/rust-lang/rust/issues/67497#issuecomment-2494000870)). Asked the reporter(s) is the issue still persists, no feedback. Maybe close?

**TODO**


### #70022: Statics don't support alignments larger than the page size
Link: <https://github.com/rust-lang/rust/issues/70022>
Creation date: 2020-03-15
Labels: `A-align`, `A-target-specs`, `C-bug`, `E-needs-investigation`, `I-unsound`, `O-linux`, `O-windows-gnu`, `O-windows-msvc`, `P-high`, `T-compiler`
Author: `Amanieu`
Working groups: 
Assignees: `pnkfelix`
Notes: visited in a previous P-high review ([comment](https://github.com/rust-lang/rust/issues/70022)). By the way, we could probably unassign Felix from [all open issues](https://github.com/rust-lang/rust/issues?q=sort%3Aupdated-desc+is%3Aissue+is%3Aopen+assignee%3Apnkfelix).

**TODO**


### #70143: Locals aligned to greater than page size can cause unsound behavior
Link: <https://github.com/rust-lang/rust/issues/70143>
Creation date: 2020-03-19
Labels: `A-LLVM`, `C-bug`, `C-external-bug`, `I-unsound`, `O-windows`, `P-high`, `T-compiler`
Author: `retep998`
Working groups: 
Assignees: `cuviper`
Notes: visited during a p-high review in 2022 ([comment](https://github.com/rust-lang/rust/issues/70143#issuecomment-1344458192)) and again in 2024 ([comment](https://github.com/rust-lang/rust/issues/70143#issuecomment-2494035002)). Nothing new since then. Maybe downgrade?

**TODO**


### #76360: Error reporting from attribute macros regressed in 1.46.0
Link: <https://github.com/rust-lang/rust/issues/76360>
Creation date: 2020-09-05
Labels: `A-diagnostics`, `A-proc-macros`, `P-high`, `T-compiler`, `WG-diagnostics`, `regression-from-stable-to-stable`
Author: `ahl`
Working groups: `WG-diagnostics`
Assignees: `estebank`

**TODO**


### #79609: Passing `-C panic=abort` still attempts to link in `libunwind` when targeting `i686-pc-windows-gnu` on `v1.44+`
Link: <https://github.com/rust-lang/rust/issues/79609>
Creation date: 2020-12-01
Labels: `A-cross`, `A-linkage`, `A-runtime`, `C-bug`, `O-windows`, `O-x86_32`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `staticfloat`
Working groups: 
Assignees: `wesleywiser`

**TODO**


### #83060: Regressions with large (2-4GB) stack arrays on large stacks
Link: <https://github.com/rust-lang/rust/issues/83060>
Creation date: 2021-03-12
Labels: `A-LLVM`, `A-array`, `C-bug`, `E-help-wanted`, `E-medium`, `E-mentor`, `I-unsound`, `P-high`, `T-compiler`, `WG-diagnostics`, `WG-llvm`
Author: `joshtriplett`
Working groups: `WG-diagnostics`, `WG-llvm`
Assignees: `iSwapna`, `wesleywiser`

**TODO**


### #84873: Compile time+memory regression between 1.49.0 and 1.50.0
Link: <https://github.com/rust-lang/rust/issues/84873>
Creation date: 2021-05-03
Labels: `C-bug`, `I-compilemem`, `I-compiletime`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `olix0r`
Working groups: 
Assignees: `pnkfelix`

**TODO**


### #86172: Compile error: static lifetime not satisfied but it is
Link: <https://github.com/rust-lang/rust/issues/86172>
Creation date: 2021-06-09
Labels: `A-lifetimes`, `C-bug`, `P-high`, `T-compiler`, `WG-async`, `regression-from-stable-to-stable`
Author: `Skepfyr`
Working groups: `WG-async`
Assignees: 

**TODO**


### #89626: Undefined reference to `getauxval` in function `init_have_lse_atomics`  when compiling to nightly `aarch64-unknown-linux-musl`
Link: <https://github.com/rust-lang/rust/issues/89626>
Creation date: 2021-10-07
Labels: `A-linkage`, `A-linkers`, `C-bug`, `O-Arm`, `O-musl`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `XAMPPRocky`
Working groups: 
Assignees: `pnkfelix`

**TODO**


### #90256: Rustc passes syntactically invalid input to attribute macros
Link: <https://github.com/rust-lang/rust/issues/90256>
Creation date: 2021-10-25
Labels: `A-proc-macros`, `P-high`, `T-compiler`, `WG-diagnostics`, `regression-from-stable-to-stable`
Author: `dtolnay`
Working groups: `WG-diagnostics`
Assignees: 

**TODO**


### #95926: rustc 1.59/1.60 builds musl binaries that segfault, when compiling with musl-gcc wrappers, due to static-pie default
Link: <https://github.com/rust-lang/rust/issues/95926>
Creation date: 2022-04-11
Labels: `C-bug`, `E-help-wanted`, `E-mentor`, `O-musl`, `P-high`, `T-compiler`, `WG-diagnostics`, `regression-from-stable-to-stable`
Author: `joshtriplett`
Working groups: `WG-diagnostics`
Assignees: 

**TODO**


### #98746: libcompiler-builtins contains DWARF5 debuginfo in 1.62.0
Link: <https://github.com/rust-lang/rust/issues/98746>
Creation date: 2022-07-01
Labels: `A-debuginfo`, `C-bug`, `E-needs-mcve`, `E-needs-test`, `P-high`, `T-compiler`
Author: `glandium`
Working groups: 
Assignees: `pnkfelix`

**TODO**


### #99256: Source of lifetime coercion is not reported starting in 1.63
Link: <https://github.com/rust-lang/rust/issues/99256>
Creation date: 2022-07-14
Labels: `A-diagnostics`, `A-lifetimes`, `C-bug`, `P-high`, `T-compiler`, `WG-diagnostics`, `regression-from-stable-to-stable`
Author: `mqudsi`
Working groups: `WG-diagnostics`
Assignees: 

**TODO**


### #100914: LLVM miscompiles large stack allocations
Link: <https://github.com/rust-lang/rust/issues/100914>
Creation date: 2022-08-23
Labels: `A-LLVM`, `C-bug`, `I-miscompile`, `I-unsound`, `P-high`, `T-compiler`, `WG-llvm`
Author: `Cl00e9ment`
Working groups: `WG-llvm`
Assignees: `wesleywiser`

**TODO**


### #101060: Codegen weirdness for `sum` of `count_ones` over an array
Link: <https://github.com/rust-lang/rust/issues/101060>
Creation date: 2022-08-26
Labels: `A-LLVM`, `A-autovectorization`, `A-codegen`, `C-bug`, `I-slow`, `O-x86_64`, `P-high`, `T-compiler`, `WG-llvm`, `regression-from-stable-to-stable`
Author: `alion02`
Working groups: `WG-llvm`
Assignees: 

**TODO**


### #101346: Incorrect handling of lateout pairs in inline asm
Link: <https://github.com/rust-lang/rust/issues/101346>
Creation date: 2022-09-02
Labels: `A-LLVM`, `A-inline-assembly`, `I-miscompile`, `I-unsound`, `P-high`, `T-compiler`, `WG-none`
Author: `newpavlov`
Working groups: `WG-none`
Assignees: `nikic`

**TODO**


### #102174: extern "C" functions don't generate the same IR definitions as clang on x86, causing problems with cross-language LTO
Link: <https://github.com/rust-lang/rust/issues/102174>
Creation date: 2022-09-23
Labels: `A-ABI`, `A-FFI`, `A-LLVM`, `A-LTO`, `C-bug`, `I-unsound`, `O-x86_32`, `P-high`, `T-compiler`, `WG-llvm`, `regression-untriaged`
Author: `glandium`
Working groups: `WG-llvm`
Assignees: 

**TODO**


### #102754: ld64.lld: error: too many personalities (4) for compact unwind to encode
Link: <https://github.com/rust-lang/rust/issues/102754>
Creation date: 2022-10-06
Labels: `A-linkage`, `C-bug`, `O-ios`, `O-macos`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`, `relnotes`
Author: `glandium`
Working groups: 
Assignees: `pnkfelix`

**TODO**


### #107975: Miscompilation: Equal pointers comparing as unequal
Link: <https://github.com/rust-lang/rust/issues/107975>
Creation date: 2023-02-13
Labels: `A-LLVM`, `C-external-bug`, `I-miscompile`, `I-unsound`, `P-high`, `T-compiler`, `WG-llvm`
Author: `JakobDegen`
Working groups: `WG-llvm`
Assignees: 

**TODO**


### #108216: miscompilation with incremental + unpacked debug + macos 
Link: <https://github.com/rust-lang/rust/issues/108216>
Creation date: 2023-02-18
Labels: `A-incr-comp`, `C-bug`, `I-unsound`, `O-macos`, `P-high`, `T-compiler`, `regression-from-stable-to-stable`
Author: `ehuss`
Working groups: 
Assignees: `lqd`

**TODO**


### #109114: `-Zdylib-lto` with ThinLTO is broken on windows-msvc
Link: <https://github.com/rust-lang/rust/issues/109114>
Creation date: 2023-03-14
Labels: `A-LLVM`, `A-LTO`, `I-miscompile`, `I-unsound`, `O-windows-msvc`, `P-high`, `T-compiler`, `WG-llvm`, `requires-nightly`
Author: `Noratrieb`
Working groups: `WG-llvm`
Assignees: 

**TODO**


### #110174: Floating point comparisons are miscompiled for signalling NaN inputs on AArch64
Link: <https://github.com/rust-lang/rust/issues/110174>
Creation date: 2023-04-11
Labels: `A-LLVM`, `A-floating-point`, `C-external-bug`, `I-miscompile`, `I-unsound`, `O-AArch64`, `P-high`, `T-compiler`, `WG-llvm`, `regression-from-stable-to-stable`
Author: `thomcc`
Working groups: `WG-llvm`
Assignees: 

**TODO**


### #111229: mutable_transmutes lint should catch transmutes from a type without interior mutability to one with
Link: <https://github.com/rust-lang/rust/issues/111229>
Creation date: 2023-05-05
Labels: `A-LLVM`, `A-lints`, `C-bug`, `P-high`, `T-compiler`
Author: `glandium`
Working groups: 
Assignees: `ChayimFriedman2`

**TODO**


### #131960: Regression: geoarrow crate does not compile in release mode on 1.82
Link: <https://github.com/rust-lang/rust/issues/131960>
Creation date: 2024-10-20
Labels: `A-mir-opt-inlining`, `C-bug`, `P-high`, `T-compiler`, `T-types`, `WG-mir-opt`, `regression-from-stable-to-stable`
Author: `theemathas`
Working groups: `WG-mir-opt`
Assignees: 

**TODO**


### #132673: Hang after encountering overflow errors for huge types 
Link: <https://github.com/rust-lang/rust/issues/132673>
Creation date: 2024-11-06
Labels: `A-diagnostics`, `C-bug`, `I-hang`, `P-high`, `S-has-mcve`, `T-compiler`, `regression-from-stable-to-stable`
Author: `wxie7`
Working groups: 
Assignees: `compiler-errors`

**TODO**


### #141006: `lemmy_db_views_modlog_combined` has a weird performance regression
Link: <https://github.com/rust-lang/rust/issues/141006>
Creation date: 2025-05-14
Labels: `C-bug`, `E-needs-mcve`, `I-compiletime`, `P-high`, `T-compiler`, `regression-untriaged`
Author: `lcnr`
Working groups: 
Assignees: `steffahn`

**TODO**




