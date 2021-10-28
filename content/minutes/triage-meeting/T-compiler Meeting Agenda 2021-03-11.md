---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-03-11

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow, at 10 AM EST, is the T-compiler planning meeting for the upcoming cycle

### MCPs/FCPs status

- New MCPs (take a look, see if you like them!)
  - "Lang Item for Transmutability" [compiler-team#411](https://github.com/rust-lang/compiler-team/issues/411)
- Old MCPs (not seconded, take a look)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
- Pending FCP requests (check your boxes!)
  - "Adding diesel to the cargotest suite" [rust#81507](https://github.com/rust-lang/rust/pull/81507)
  - "reduce threads spawned by ui-tests" [rust#81942](https://github.com/rust-lang/rust/pull/81942)
- Things in FCP (make sure you're good with it)
  - "Filter out query machinery from compiler backtraces by default" [compiler-team#410](https://github.com/rust-lang/compiler-team/issues/410)
  - "MCP: Embed the `hir_id` of the _awaited expression_ into `DesugaringKind`" [compiler-team#413](https://github.com/rust-lang/compiler-team/issues/413)
- Accepted MCPs
  - "Eagerly construct bodies of THIR" [compiler-team#409](https://github.com/rust-lang/compiler-team/issues/409)
- Finalized FCPs (disposition merge)
  - "Allow specifying alignment for functions" [rust#81234](https://github.com/rust-lang/rust/pull/81234)

### WG checkins

@*WG-async-foundations* by @**nikomatsakis** and @**tmandry**:
> * Ongoing preparations to launch the ["async vision doc"](https://rust-lang.github.io/wg-async-foundations/vision.html) effort.
> * [RFC #3014](https://github.com/rust-lang/rfcs/pull/3014) (`must_not_suspend_lint`) was accepted 18 days ago, will be merged soon.
> * Other ongoing work can be found on the [project board](https://github.com/orgs/rust-lang/projects/2).

@*WG-traits* by @**nikomatsakis** and @**Jack Huey**:
> * Incremental progress on the binder refactor PR #76814
> * Design work on how to move types out of `rustc_middle` into `rustc_type_ir`, particularly around `Encodable`/`Decodable`
> * Work towards GATs stabilization
>   - #82066
>   - #82272
> * Work towards `type_alias_impl_trait`/`min_type_alias_impl_trait` stabilization
>   - #82558
>   - #82898

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No backport nominations for `T-compiler` this time.

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- :beta: "std: Fix a bug on the wasm32-wasi target opening files" [rust#82804](https://github.com/rust-lang/rust/pull/82804)
  - fixes [rust#82758](https://github.com/rust-lang/rust/issues/82758)
  - P-high regression on target wasm32-wasi prevents from opening files
  - see [P-high regressions](#P-high-regressions) in agenda :point_down:
  - cc: @**Mara**
- :stable: should also discuss a stable backport?

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "add dynamically-linked musl targets" [rust#82556](https://github.com/rust-lang/rust/pull/82556)
  - opened by @**Ariadne Conill**
  - assigned to @**nagisa**, raises some concerns [on the behaviour consistency](https://github.com/rust-lang/rust/pull/82556#issuecomment-787088016)
  - assigned also to @**Vadim Petrochenkov**, [provides a great summary on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/227806-t-compiler.2Fwg-prioritization/topic/2021-03-03.20meeting.20agenda/near/228681359), suggests to [enable dynamic linking on nightly](https://github.com/rust-lang/rust/pull/82556#issuecomment-787431717) to see what breaks
  - [@richfelker](https://github.com/richfelker) (author and mantainer of musl) recommends [proper naming to avoid confusion](https://github.com/rust-lang/rust/pull/82556#issuecomment-788172193)
  - discussion is still ongoing, revolves around clarifying the `--target` behaviour and what people expect when compiling for MUSL

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [65 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 38 P-high, 90 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "char::encode_utf8 crash on nightly" [rust#82833](https://github.com/rust-lang/rust/issues/82833)
  - Opened by @**David Hewitt**
  - Assigned to @**Nikita Popov**
  - Unsoundness on nightly when compiling with RUSTFLAGS="-Ccodegen-units=1 -Cinline-threshold=0 -Clink-dead-code"
  - [comment shows](https://github.com/rust-lang/rust/issues/82833#issuecomment-791968727) that regressed in pr [rust#81451](https://github.com/rust-lang/rust/pull/81451)
  - seems caused by an LLVM [upstream issue](https://github.com/rust-lang/rust/issues/82833#issuecomment-792301830)
- "Slice length becomes random between nightly-2021-03-04 and nightly-2021-03-05" [rust#82859](https://github.com/rust-lang/rust/issues/82859)
  - Assigned to @**Nikita Popov**
  - On nightly `println!()` macro prints garbage when inlining functions
  - Related to the above :point_up: (#82833) LLVM 12 upgrade unsoundness

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- "std::io::copy returns Bad File Descriptor with writer files in append mode in 1.50" [rust#82410](https://github.com/rust-lang/rust/issues/82410)
  - Issue happens when streaming one file into another and the writer is in append mode, only when using BufWriter/BufReader
  - @**The 8472|239181** provides a patch [rust#82417](https://github.com/rust-lang/rust/pull/82417), pending review

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- [t-libs-impl] "WASI: path_open regression in Rust 1.51 when using LTO" [rust#82758](https://github.com/rust-lang/rust/issues/82758)
  - compiling for `--release` *and* with LTO enabled breaks loading files from the filesystem
  - WASI is [Tier 2 target](https://doc.rust-lang.org/nightly/rustc/platform-support.html)
  - Alex Crichton submitted a patch in [#82804](https://github.com/rust-lang/rust/pull/82804) (nominated for beta backport)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

[2021-03-10 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-03-10.md)

A generally positive albeit quiet week though many of the perf improvements were gaining performance back from previous regressions. We'll need to continue to keep an eye on rollups as there were two that caused small performance changes.

Triage done by **@rylev**.

1 Regression, 4 Improvements, 1 Mixed
2 of them in rollups

#### Regressions

Rollup of 8 pull requests [#82929](https://github.com/rust-lang/rust/issues/82929)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=4b9f5cc4c10a161047475cb9bbe02c4fda57fb07&end=3a5d45f68cadc8fff4fbb557780f92b403b19c19&stat=instructions:u) (up to 1.6% on `full` builds of `keccak-debug`)
- A fairly consistent (albeit small) regression in the `typecheck` query across different benchmarks though none of the PRs in the rollup seem to touch that query. This might be noise, but it's hard to tell

#### Improvements

- Move check only relevant in error case out of critical path [#82738](https://github.com/rust-lang/rust/issues/82738)
- Backport some LLVM compile-time improvements [#82783](https://github.com/rust-lang/rust/issues/82783)
- Rollup of 10 pull requests [#82953](https://github.com/rust-lang/rust/issues/82953)
- Update tracing to 0.1.25 [#82553](https://github.com/rust-lang/rust/issues/82553)

#### Mixed

Upgrade to LLVM 12 [#81451](https://github.com/rust-lang/rust/issues/81451)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=ec7f258d543e1ac7d0b94435972331e85da8c509&end=409920873cf8a95739a55dc5fe5adb05e1b4758e&stat=instructions:u) (up to -11.3% on `full` builds of `keccak-opt`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ec7f258d543e1ac7d0b94435972331e85da8c509&end=409920873cf8a95739a55dc5fe5adb05e1b4758e&stat=instructions:u) (up to 7.7% on `full` builds of `deeply-nested-opt`)
- Some of the perf regression seen here was gained back in [#82783](https://github.com/rust-lang/rust/issues/82783).

#### Nags requiring follow up

No nags for this week and the nag from last week has been resolved by [#81458](https://github.com/rust-lang/rust/pull/81458).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Invalid `field is never read: ` lint warning" [rust#81658](https://github.com/rust-lang/rust/issues/81658)
  - Already discussed during [`T-lang` meeting](https://github.com/rust-lang/rust/issues/81658#issuecomment-794334545)
  - Conclusion is to improve diagnostic
  - However, related issue [rust#81626](https://github.com/rust-lang/rust/issues/81626) *is* a stable-to-beta regression
  - Should we "just" revert [PR #81473](https://github.com/rust-lang/rust/pull/81473) on beta-alone, and in parallel improve the diagnostic on nightly?
- "Make symbols stripping work on MacOS X" [rust#82037](https://github.com/rust-lang/rust/pull/82037)
  - MacOS' linker can't strip binaries anymore, [Apple documentation](https://github.com/rust-lang/rust/issues/72110#issuecomment-641169818) recommend using a separate `strip` tool for that.
  - This change allows the compiler to use that tool after a target has been compiled to strip symbols.
  - Assigned to @**Esteban Küber** asks more eyeballs on this
- "`undefined reference to` linker error when using dylibs" [rust#82151](https://github.com/rust-lang/rust/issues/82151)
  - Opened by @**Alex Kornitzer**
  - Unassigned and mentioned [two meetings ago](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202021-02-25.20.2354818/near/227788998), scheduled to be discussed again today
- "add dynamically-linked musl targets" [rust#82556](https://github.com/rust-lang/rust/pull/82556)
  - Mentioned in [PR waiting on team](https://hackmd.io/3dTKNk1_RiK3NOZMfyOldw?view#PRs-S-waiting-on-team)
- "`fn() -> Out` is a valid type for unsized types `Out`, and it implements `FnOnce<(), Output = Out>`" [rust#82633](https://github.com/rust-lang/rust/issues/82633)
  - opened by @**Frank Steffahn**
  - issue bisection seems to point to PR [#73905](https://github.com/rust-lang/rust/pull/73905)
  - issue seems to [reproducible on stable since long](https://github.com/rust-lang/rust/issues/82633#issuecomment-789168223) (so not a regression) but to be unsound on nightly
  - something to investigate a bit closer -> (needs an owner)

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
