---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-06-03

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Friday **June, 4th 2021 at 10:00 ET / 14:00 UTC** is planning meeting. Get your proposals in at [proposal site](https://github.com/rust-lang/compiler-team/issues/new?assignees=&labels=meeting-proposal&template=meeting-proposal.md&title=%28My+meeting+proposal%29)

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  -  "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  -  "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  -  "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
  -  "Promote `aarch64-apple-ios-sim` to Tier 2" [compiler-team#428](https://github.com/rust-lang/compiler-team/issues/428)
  -  "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  -  "Make `TypeFolder::fold_*` return `Result`" [compiler-team#432](https://github.com/rust-lang/compiler-team/issues/432)
  -  "Introduce ty::WhereClause to align chalk and rustc dyn representation" [compiler-team#433](https://github.com/rust-lang/compiler-team/issues/433)
  -  "Force warnings on lints " [compiler-team#434](https://github.com/rust-lang/compiler-team/issues/434)
- Finalized FCPs (disposition merge)
  -  "Tracking issue for WebAssembly SIMD support" [rust#74372](https://github.com/rust-lang/rust/issues/74372)
  -  "Tracking Issue for VecDeque binary search functions" [rust#78021](https://github.com/rust-lang/rust/issues/78021)
  -  "Use try_reserve in Vec's io::Write" [rust#84612](https://github.com/rust-lang/rust/pull/84612)
  -  "Show test type during prints" [rust#84863](https://github.com/rust-lang/rust/pull/84863)
  -  "rustc: Allow safe #[target_feature] on wasm" [rust#84988](https://github.com/rust-lang/rust/pull/84988)

### WG checkins

@*WG-async-foundations* @**nikomatsakis**  @**tmandry** 
> * Currently iterating on the async vision doc.
> * Completed the brainstorming period.
> * Working on a "harmonized shiny future".
> * Little coding at present that @nikomatsakis is aware of, anyhow.

@*WG-traits* by @**nikomatsakis**  @**Jack Huey** 
> * Stabilized member constraints (https://github.com/rust-lang/rust/pull/84701).
> * Working towards stabilized named impl Trait and generic associated types.
> * Jack Huey has a PR that is aiming to normalize under binders (https://github.com/rust-lang/rust/pull/85499), which is pretty exciting.
> * Still making small steps towards chalk-ty library, such as synchronizing rustc and chalk's folder traits.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Reachable statics have reachable initializers" [rust#84549](https://github.com/rust-lang/rust/pull/84549)
  - opened by `@tmiasko`
  - reviewed by @**varkor**
  - patch is already merged, fixes [#84455](https://github.com/rust-lang/rust/issues/84455) a P-medium()
- :beta: "Build crtbegin.o/crtend.o from source code" [rust#85395](https://github.com/rust-lang/rust/pull/85395)
  - opened by @**12101111** 
  - fixes [#85310](https://github.com/rust-lang/rust/issues/85310), [#47551](https://github.com/rust-lang/rust/issues/47551), [#84033](https://github.com/rust-lang/rust/issues/84033)
  - already merged, reviewed by @**Vadim Petrochenkov**
- :stable: "Build crtbegin.o/crtend.o from source code" [rust#85395](https://github.com/rust-lang/rust/pull/85395)
  - (see beta nomination)
  - possibly a dot release? (see [comment](https://github.com/rust-lang/rust/pull/85395#issuecomment-850870521))
  - or revert [#82534](https://github.com/rust-lang/rust/pull/82534)

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No backport nominations for `T-libs-impl` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [5 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [3 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [76 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [49 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [6 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 46 P-high, 86 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE when reifying function pointers to copy / copy_nonoverlapping using an if" [rust#84297](https://github.com/rust-lang/rust/issues/84297)
  - issue of interest for T-lang? 
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - issue is being followed
- "Miscompilation on ARM-M with nightly-2021-04-23" [rust#85351](https://github.com/rust-lang/rust/issues/85351)
  - issue reported and fixed on LLVM end [D103167](https://reviews.llvm.org/D103167)
  - issue unassigned, does it need an owner?
- "iter::Fuse is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85863](https://github.com/rust-lang/rust/issues/85863)
  - opened by @**Frank Steffahn**
  - reporter suggests possible fixes, on Zulip [some more thoughts](https://rust-lang.zulipchat.com/#narrow/stream/227806-t-compiler.2Fwg-prioritization/topic/Issues.20.2385863.20and.20.2385873)
  - is this issue of interest for T-lang? Also for T-libs?
- "TrustedRandomAccess optimization for Zip containing vec::IntoIter is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85873](https://github.com/rust-lang/rust/issues/85873)
  - opened by @**Frank Steffahn**, related to issue [#85863](https://github.com/rust-lang/rust/issues/85863)
  - issue unassigned
  - is this issue of interest for T-lang? Also for T-libs?

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- "iter::Fuse is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85863](https://github.com/rust-lang/rust/issues/85863)
  - (see above) issue of interest also for T-libs-impl? 
- "TrustedRandomAccess optimization for Zip containing vec::IntoIter is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85873](https://github.com/rust-lang/rust/issues/85873)
  - (see above) issue of interest also for T-libs-impl? 

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-06](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-06-01.md)

# 2021-06-01 Triage Log

Busy week, with several reverted PRs due to performance regressions, but overall a positive week.

Triage done by **@simulacrum**.

3 Regressions, 3 Improvements, 5 Mixed

#### Regressions

Merge CrateDisambiguator into StableCrateId [#85804](https://github.com/rust-lang/rust/issues/85804)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2023cc3aa1ea98530f3124ed07713e6f95fd26ab&end=59579907ab52ad2369735622185a26f158bf0f0f&stat=instructions:u) (up to 1.6% on `full` builds of `html5ever-opt`)
- Seems to differ from the benchmark on PR, but held up over the rest of the
  week on the graph. Suggested a revert on PR.

#### Improvements

- Don't hash `thir_body` [#85729](https://github.com/rust-lang/rust/issues/85729)
- Optimize proc macro bridge [#85390](https://github.com/rust-lang/rust/issues/85390)

#### Mixed

Add `TrustedRandomAccess` specialization for `Vec::extend()` [#83770](https://github.com/rust-lang/rust/issues/83770)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=9a700d2947f2d7f97a2c0dfca3117a8dcc255bdd&end=9111b8ae9793f18179a1336417618fc07a9cac85&stat=instructions:u) (up to 2.1% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo-debug`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=9a700d2947f2d7f97a2c0dfca3117a8dcc255bdd&end=9111b8ae9793f18179a1336417618fc07a9cac85&stat=instructions:u) (up to -1.6% on `incr-patched: println` builds of `cargo-debug`)
- Reverted in the next result, seems to surprisingly in practice not be an improvement on
  some of our larger benchmarks.

Revert "Auto merge of #83770 - the8472:tra-extend, r=Mark-Simulacrum" [#85754](https://github.com/rust-lang/rust/issues/85754)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=9a72afa7dd5689da1844695086d1f89130956a88&end=bff138dbd95cec763f4def6b91bb465a26aaad9f&stat=instructions:u) (up to -2.1% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo-debug`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=9a72afa7dd5689da1844695086d1f89130956a88&end=bff138dbd95cec763f4def6b91bb465a26aaad9f&stat=instructions:u) (up to 1.5% on `incr-patched: println` builds of `cargo-debug`)

Simplification of query forcing [#85319](https://github.com/rust-lang/rust/issues/85319)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=d93b6a4598946a6a97e8f1b073b1cfc08d332a86&end=f60a67025607e74fbee31c2007f8791c2f352b6a&stat=instructions:u) (up to -3.2% on `full` builds of `unused-warnings-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d93b6a4598946a6a97e8f1b073b1cfc08d332a86&end=f60a67025607e74fbee31c2007f8791c2f352b6a&stat=instructions:u) (up to 1.4% on `incr-unchanged` builds of `stm32f4-check`)
- Regressions seem to be limited to unused-warnings incremental.

Reduce the amount of untracked state in TyCtxt [#85153](https://github.com/rust-lang/rust/issues/85153)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d2091147b16a1e3e1f9a73b6ee29fbe941c8abce&end=41278062c8399ac02ed281e8b1648b99a36942e6&stat=instructions:u) (up to 1038.2% on `incr-unchanged` builds of `regex-opt`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=d2091147b16a1e3e1f9a73b6ee29fbe941c8abce&end=41278062c8399ac02ed281e8b1648b99a36942e6&stat=instructions:u) (up to -1.3% on `full` builds of `cranelift-codegen-check`)
- This was a pretty big regression, and wasn't detected on the PR run,
  presumably due to work since the merge.

Revert "Reduce the amount of untracked state in TyCtxt" [#85884](https://github.com/rust-lang/rust/issues/85884)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=80af6b091f6a4855be71bba1cd0c1ee9fd2a57a8&end=1160cf864f2a0014e3442367e1b96496bfbeadf4&stat=instructions:u) (up to -91.2% on `incr-unchanged` builds of `regex-opt`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=80af6b091f6a4855be71bba1cd0c1ee9fd2a57a8&end=1160cf864f2a0014e3442367e1b96496bfbeadf4&stat=instructions:u) (up to 1.4% on `full` builds of `cranelift-codegen-check`)

#### Nags requiring follow up

* Expecting to revert [#85804](https://github.com/rust-lang/rust/pull/85804)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- Regression: undefined symbol __atomic_load_4 on risvc32imac-unknown-none-elf [#85736](https://github.com/rust-lang/rust/issues/85736)
  - opened by github user `@xobs`
  - regression on nightly-2021-03-18, affects target `riscv32imac-unknown-none`
  - (spurious?) calls are generated to non-existing symbol `__atomic_load_4`
  - workaround is to use target `riscv32i-unknown-none-elf`
  - we have a [repro](https://github.com/rust-lang/rust/issues/85736#issuecomment-849881145)
  - who can own this?

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
