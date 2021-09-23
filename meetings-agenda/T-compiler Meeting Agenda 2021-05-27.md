---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-05-27

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

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
  -  "Make `TypeFolder::fold_*` return `Result`" [compiler-team#432](https://github.com/rust-lang/compiler-team/issues/432)
  -  "Introduce ty::WhereClause to align chalk and rustc dyn representation" [compiler-team#433](https://github.com/rust-lang/compiler-team/issues/433)
  -  "Force warnings on lints " [compiler-team#434](https://github.com/rust-lang/compiler-team/issues/434)
- Accepted MCPs
  -  "Update the existing musl targets to be dynamically linked." [compiler-team#422](https://github.com/rust-lang/compiler-team/issues/422)
  -  "A --temps-dir option for specifying where the intermediate files are written" [compiler-team#423](https://github.com/rust-lang/compiler-team/issues/423)
- Finalized FCPs (disposition merge)
  -  "Add functions `Duration::try_from_secs_{f32, f64}`" [rust#82179](https://github.com/rust-lang/rust/pull/82179)
  -  "Move UnwindSafe, RefUnwindSafe, AssertUnwindSafe to core" [rust#84662](https://github.com/rust-lang/rust/pull/84662)
  -  "stabilize member constraints" [rust#84701](https://github.com/rust-lang/rust/pull/84701)
  -  "stabilize `int_error_matching`" [rust#84910](https://github.com/rust-lang/rust/pull/84910)
  -  "stabilize const_fn_unsize" [rust#85078](https://github.com/rust-lang/rust/pull/85078)

### WG checkins

@*WG-self-profile* checkin by @**Wesley Wiser** and michaelwoerister:
> We've had a few small PRs to `measureme` but no major changes during this time.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "have on_completion record subcycles" [rust#85186](https://github.com/rust-lang/rust/pull/85186)
  - Fixes [rust#83538](https://github.com/rust-lang/rust/issues/83538), a P-high issue with the trait evaluation cache
  - approved by @**Jack Huey**
  - [comment](https://github.com/rust-lang/rust/pull/85186#issuecomment-840527579): perf comparison seems to indicate a tiny regression but the gain provided by this patch greatly make it worth
  - nominated by @**nikomatsakis** because [these incremental failures are a big problem](https://github.com/rust-lang/rust/pull/85186#issuecomment-840715095)
- :beta: "readd capture disjoint fields gate" [rust#85564](https://github.com/rust-lang/rust/pull/85564)
  - opened by @**pnkfelix**
  - approved by @**nikomatsakis**
  - adds again a feature gate from PR [rust##83521](https://github.com/rust-lang/rust/pull/83521) to allow a beta backport
  - backport already discussed and approved? (see [this comment](https://github.com/rust-lang/rust/pull/85564#issuecomment-849045553))
- :stable: "have on_completion record subcycles" [rust#85186](https://github.com/rust-lang/rust/pull/85186)
  - (see previous description)

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No beta nominations for `T-libs-impl` this time.
- No stable nominations for `T-libs-impl` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Remove unstable `--pretty` flag" [rust#83491](https://github.com/rust-lang/rust/pull/83491)
  - discussed last week, Felix added some [comments](https://github.com/rust-lang/rust/pull/83491#issuecomment-842470356), any reaction?

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [78 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [51 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [6 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 46 P-high, 85 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE when reifying function pointers to copy / copy_nonoverlapping using an if" [rust#84297](https://github.com/rust-lang/rust/issues/84297)
   - also I-nominated (see below)
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
   - [comment](https://github.com/rust-lang/rust/issues/84970#issuecomment-840602992) from @**pnkfelix** : downgrade issue to P-high?
- "Miscompilation on ARM-M with nightly-2021-04-23" [rust#85351](https://github.com/rust-lang/rust/issues/85351)
  - regression from nightly `nightly-2021-04-23` (therefore `regression-from-stable-to-beta`) on 2 different Tier ARM targets (thumbv8m and thumbv7em)
  - issue reporter mentions that it could affect other targets
  - @yroux [submitted a fix](https://github.com/rust-lang/rust/issues/85351#issuecomment-848813102) to LLVM [D103167](https://reviews.llvm.org/D103167), hopefully will be in LLVM 12.0.1

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-05-25](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

A somewhat quiet week. Some PRs had performance runs performed on them, but the changes were merged despite this. Also, we still have issues with certain benchmarks being noisy.

Triage done by **@rylev**.

2 Regressions, 2 Improvements, 1 Mixed
0 of them in rollups

#### Regressions

Make building THIR a stealable query [#85273](https://github.com/rust-lang/rust/issues/85273)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=126561cb31e8ebe1e2dd9dfd0d3ca621308dc56f&end=d568d63b1f9f5fc47e4202e2a2a84142ff6202d8&stat=instructions:u) (up to 3.7% on `incr-full` builds of `tuple-stress-check`)
- Work needed for other work to land. A performance run was performed, but still the change was allowed to land. I've asked [why](https://github.com/rust-lang/rust/pull/85273#issuecomment-848017988).

Implement the new desugaring from `try_trait_v2` [#84767](https://github.com/rust-lang/rust/issues/84767)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=491cf5561efb1f5ff33c3234ccd0bc5cacbebe3e&end=4e3e6db011c5b482d2bef8ba02274657f93b5e0d&stat=instructions:u) (up to 2.9% on `full` builds of `cranelift-codegen-check`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=491cf5561efb1f5ff33c3234ccd0bc5cacbebe3e&end=4e3e6db011c5b482d2bef8ba02274657f93b5e0d&stat=instructions:u) (up to -1.8% on `full` builds of `deeply-nested-async-check`)
- A much larger performance hit than when the performance suite was run while the pull request was open. This is largely a performance regression with only one non-volatile benchmark showing improvement.
- Biggest change seems to be in the `mir_built` query which seems to make sense given that probably more mir will be produced by this change.
- Follow-up happening [here](https://github.com/rust-lang/rust/pull/84767#issuecomment-848036325).

#### Improvements

- fix deallocation of immutable allocations [#85599](https://github.com/rust-lang/rust/issues/85599)
- std: Attempt again to inline thread-local-init across crates [#84876](https://github.com/rust-lang/rust/issues/84876)

#### Mixed

Avoid zero-length memcpy in formatting [#85391](https://github.com/rust-lang/rust/issues/85391)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=df70463ea5d701489d6f53dc780a2c16294d6143&end=a426fc37f2269093ef1a4dbb3e31b3247980fccc&stat=instructions:u) (up to 3.8% on `incr-patched: println` builds of `cargo-opt`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=df70463ea5d701489d6f53dc780a2c16294d6143&end=a426fc37f2269093ef1a4dbb3e31b3247980fccc&stat=instructions:u) (up to -1.8% on `full` builds of `deeply-nested-async-debug`)
- This seems to have some interactions with LLVM codegen that cause certain benchmarks to fluctuate in performance. These largely cancel each other out.

#### Nags requiring follow up

- Follow-up:
    [#84767](https://github.com/rust-lang/rust/pull/84767#issuecomment-848036325).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "ICE when reifying function pointers to copy / copy_nonoverlapping using an if" [rust#84297](https://github.com/rust-lang/rust/issues/84297)
  - unassigned
  - nominated by @**simulacrum** (also for T-lang)
  - @tmiasko [suggests](https://github.com/rust-lang/rust/issues/84297#issuecomment-830258189) to revert [#81238](https://github.com/rust-lang/rust/pull/81238) as short term solution
- "Preserve, clarify, and extend debug information" [rust#83947](https://github.com/rust-lang/rust/pull/83947)
  - nominated by @**pnkfelix**

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
