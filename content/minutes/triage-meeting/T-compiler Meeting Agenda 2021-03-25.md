---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-03-25

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :tada: Today the new stable release 1.51 is out :tada:

- Tomorrow **March 26 10am EDT (14:00 UTC)** [compiler team meeting](https://github.com/rust-lang/rust/pull/82556#issuecomment-804087406) to decide on the behaviour of `musl-` targets compiling
    - current background doc for design meeting: https://hackmd.io/YoAGSxUsRWumVvbRiHddrg

### MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Lint large assignments and locals" [compiler-team#420](https://github.com/rust-lang/compiler-team/issues/420)
- Old MCPs (not seconded, take a look)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  - "Eagerly construct bodies of THIR" [compiler-team#409](https://github.com/rust-lang/compiler-team/issues/409)
  - "Lang Item for Transmutability" [compiler-team#411](https://github.com/rust-lang/compiler-team/issues/411)
  - "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
- Pending FCP requests (check your boxes!)
  - "reduce threads spawned by ui-tests" [rust#81942](https://github.com/rust-lang/rust/pull/81942)
- Things in FCP (make sure you're good with it)
  - "Filter out query machinery from compiler backtraces by default" [compiler-team#410](https://github.com/rust-lang/compiler-team/issues/410)
  - "MCP: Embed the `hir_id` of the _awaited expression_ into `DesugaringKind`" [compiler-team#413](https://github.com/rust-lang/compiler-team/issues/413)
  - "Switch JSON serialization from rustc_serialize to serde" [compiler-team#418](https://github.com/rust-lang/compiler-team/issues/418)
  - "Adding diesel to the cargotest suite" [rust#81507](https://github.com/rust-lang/rust/pull/81507)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "tracking issue for `debug_non_exhaustive` feature" [rust#67364](https://github.com/rust-lang/rust/issues/67364)
  - "Add IEEE 754 compliant fmt/parse of -0, infinity, NaN" [rust#78618](https://github.com/rust-lang/rust/pull/78618)
  - "Added #[repr(transparent)] to core::cmp::Reverse" [rust#81879](https://github.com/rust-lang/rust/pull/81879)
  - "Deprecate `doc(include)`" [rust#82539](https://github.com/rust-lang/rust/pull/82539)
  - "rustdoc: allow list syntax for #[doc(alias)] attributes" [rust#82846](https://github.com/rust-lang/rust/pull/82846)

### WG checkins

-  @*wg-incr-comp* checkin by @**pnkfelix** and @**Wesley Wiser**:
> Most of wg-incr-comp members have been busy with other tasks. We have not had time to revisit any of the A-incr-comp labelled backlog.
> We have had a lot of positive activity from @_**cjgillot** ([PRs](https://github.com/rust-lang/rust/pulls?q=is%3Apr+author%3Acjgillot)) and @_**mw** ([PRs](https://github.com/rust-lang/rust/pulls?q=is%3Apr+author%3Amw)), especially inflight improvements to how we handle disk/memory traffic for the incremental state ([PR #82780](https://github.com/rust-lang/rust/pull/82780), [PR #83214](https://github.com/rust-lang/rust/pull/83214))
> @_**Aaron Hill** enabled incremental hash (ICH) validation ([PR #83007](https://github.com/rust-lang/rust/pull/83007)) which has uncovered many pre-existing bugs that they are now fixing.

-  @*WG-llvm* by @**nagisa**: 

> WG-llvm update: We bumped the LLVM version to a commit from a 12-series branch as well as the minimum LLVM version from 9 to 10. There has been a concentrated effort to clean up a number of regressions that we ended up hitting as well as to enable various features (e.g. noalias) that are fixed in LLVM 12.
>
> As there was a recent train roll-over and there are still some outstanding issues surfaced by LLVM12, fixes that we make over the next 6 weeks to the regressions caused by this upgrade should be often be backported.

 * Example of note: [Issue #83335](https://github.com/rust-lang/rust/issues/83335), an AArch64 bare metal miscompile on LLVM12

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Lower condition of `if` expression before it's "then" block" [rust#82308](https://github.com/rust-lang/rust/pull/82308)
  - PR from @**Esteban Küber** fixes [#82290](https://github.com/rust-lang/rust/issues/82290) and a duplicate [#82250](https://github.com/rust-lang/rust/issues/82250). A `P-medium`, [see brief explaination](https://github.com/rust-lang/rust/issues/82290#issuecomment-782482808)
  - fairly [safe to backport](https://github.com/rust-lang/rust/pull/82308#issuecomment-782487249), was nightly only, a week ago started affecting beta
  - reviewed by @**lcnr** 
- No stable nominations for `T-compiler` this time.

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No beta nominations for `T-libs-impl` this time.
- No stable nominations for `T-libs-impl` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "add dynamically-linked musl targets" [rust#82556](https://github.com/rust-lang/rust/pull/82556)
  - Issue will be discussed at compiler meeting on [March 26 10am EDT (14:00 UTC)](https://github.com/rust-lang/rust/pull/82556#issuecomment-804087406)

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- "Use getrandom for generating HashMap seed" [rust#80149](https://github.com/rust-lang/rust/pull/80149)
  - Opened by @**Artyom Pavlov**
  - assigned to @**Steven Fackler**, [raises a question](https://github.com/rust-lang/rust/pull/80149#issuecomment-776352953) about the policy for adding `getrandom` as new std dependency
  - @**dhardy** describes how [the evaluation process could be](https://github.com/rust-lang/rust/pull/80149#issuecomment-776352953)
  - labeled for T-libs-impl discussion


## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 37 P-high, 90 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "`probe-stack=inline-asm` generates wrong DWARF information" [rust#83139](https://github.com/rust-lang/rust/issues/83139)
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-03-18.20.2354818/near/230877570), outcome was that @**pnkfelix** self assigns and revert PR [#77885](https://github.com/rust-lang/rust/pull/77885) (or part of it)
  - probably can be now downgraded to `P-high` (as it's clearly not a release blocker)

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Method resolution error" [rust#81211](https://github.com/rust-lang/rust/issues/81211)
  - @**simulacrum** [comments](https://github.com/rust-lang/rust/issues/81211#issuecomment-802917170) being a minor breakage that can slip
  - anything to add for this issue?
- "WASI: path_open regression in Rust 1.51 when using LTO" [rust#82758](https://github.com/rust-lang/rust/issues/82758)
  - Should be fixed by @**simulacrum** in commit [b9438e](https://github.com/Mark-Simulacrum/rust/commit/b9438e090570424d4f0813a94ce96be34351ae4d)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2021-03-23 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-03-23.md)

An overall busy but decent week for performance. While there were some performance regressions they were mostly small, and they were outnumbered by performance gains. Perhaps the most interesting news is not a compiler performance improvement but rather the introduction of no-alias optimizations at the LLVM level. This slightly hurts optimized build time performance in some cases, but it should make some workloads run faster after compilation.

Triage done by **@rylev**.

2 Regressions, 5 Improvements, 3 Mixed
1 of them in rollups

## Performance logs

> [2021-03-23 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-03-23.md)

An overall busy but decent week for performance. While there were some performance regressions they were mostly small, and they were outnumbered by performance gains. Perhaps the most interesting news is not a compiler performance improvement but rather the introduction of no-alias optimizations at the LLVM level. This slightly hurts optimized build time performance in some cases, but it should make some workloads run faster after compilation.

Triage done by **@rylev**.

2 Regressions, 5 Improvements, 3 Mixed
1 of them in rollups

#### Regressions

Implement (but don't use) valtree and refactor in preparation of use [#82936](https://github.com/rust-lang/rust/issues/82936)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f5d8117c338a788bd24abec733fd143dfceb25a0&end=e655fb62216b6ba64a094b30f116d7988d19322d&stat=instructions:u) (up to 2.1% on `full` builds of `ctfe-stress-4-opt`)
- Purely an addition of unused code (for a future feature). It is possible that this changed some inlining behavior, but the benchmark in question is susceptible to high variance though it seemed to impact full builds and not incremental builds.
- The query impacted is `eval_to_allocation_raw` which is what ctfe stresses, so we'll [look into it](https://github.com/rust-lang/rust/pull/82936#issuecomment-805029518).

Use TrustedRandomAccess for in-place iterators where possible [#79846](https://github.com/rust-lang/rust/issues/79846)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=97663b6690689379aa0493deb494dfe14627c46b&end=35385770ae1ea86a911cc44ac43f856831e44b26&stat=instructions:u) (up to 1.5% on `full` builds of `deep-vector-debug`)
- This is a change in the standard library that seems to only impact one benchmark: `deep-vector-debug` full compilation. It looks to be impacting `typeck`, but I'm not sure why this would be. It's also possible that it's noise.
- There's also a possibility that this has some strange interaction with the performance gained in [#83360](https://github.com/rust-lang/rust/issues/83360).

#### Improvements

- Add a check for ASCII characters in to_upper and to_lower [#81358](https://github.com/rust-lang/rust/issues/81358)
- ast/hir: Rename field-related structures [#83188](https://github.com/rust-lang/rust/issues/83188)
- Revert performance-sensitive change in #82436 [#83293](https://github.com/rust-lang/rust/issues/83293)
- Rollup of 9 pull requests [#83360](https://github.com/rust-lang/rust/issues/83360)
- Simplify encoder and decoder [#83273](https://github.com/rust-lang/rust/issues/83273)

#### Mixed

- feat: Update hashbrown to instantiate less llvm IR [#77566](https://github.com/rust-lang/rust/issues/77566)
- Replace closures_captures and upvar_capture with closure_min_captures [#82951](https://github.com/rust-lang/rust/issues/82951)
- Enable mutable noalias for LLVM >= 12 [#82834](https://github.com/rust-lang/rust/issues/82834)

#### Nags requiring follow up

- [Issue](https://github.com/rust-lang/rust/pull/82964#issuecomment-800663588) from last week needs to still be addressed.
- This weeks follow-ups:
    - https://github.com/rust-lang/rust/pull/77566#issuecomment-805033514
    - https://github.com/rust-lang/rust/pull/82951#issuecomment-805038336
    - https://github.com/rust-lang/rust/pull/82936#issuecomment-805029518

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "`undefined reference to` linker error when using dylibs" [rust#82151](https://github.com/rust-lang/rust/issues/82151)
  - mentioned during last [meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-03-18.20.2354818/near/230879756)
  - @**pnkfelix** has discussed it a bit with @**Alex Kornitzer**, still trying to figure out what the scope of it is, in terms of rustc's role
  - @**Alex Kornitzer** [points out](https://github.com/rust-lang/rust/issues/82151#issuecomment-801310681) that the issue is related to how cargo changed behaviour

- "add dynamically-linked musl targets" [rust#82556](https://github.com/rust-lang/rust/pull/82556)
  - mentioned in `P-waiting-on-team`

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- "Use getrandom for generating HashMap seed" [rust#80149](https://github.com/rust-lang/rust/pull/80149)
  - mentioned in `P-waiting-on-team`

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.