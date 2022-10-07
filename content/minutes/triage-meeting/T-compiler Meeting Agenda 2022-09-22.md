---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-09-22

## Announcements

- Today we release Rust stable 1.64! yay :tada: 
- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMjA5MjNUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-23T10:00:00-04:00>
- [Types Team: RPIT Refactor review](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA5MjNUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-23T09:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMjA5MjZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-26T11:00:00-04:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjA5MjZUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-26T11:30:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA5MjZUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-26T16:00:00-04:00>
- [[Types team] Hack session: Advanced subtyping](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA5MjhUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-28T09:00:00-04:00>
- [MIR Formality Walkthroughs](https://www.google.com/calendar/event?eid=NWtvMGpxaTZ1dTc2YzEwZWcxb2d0dHE3N2tfMjAyMjA5MjhUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-28T12:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 4 months ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 2 months ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: about 27 days ago)
  - "Allow informational -Z flags on stable compiler" [compiler-team#542](https://github.com/rust-lang/compiler-team/issues/542) (last review activity: about 27 days ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: about 27 days ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 13 days ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 13 days ago)
  - "New Tier-3 target proposal: powerpc64-ibm-aix" [compiler-team#553](https://github.com/rust-lang/compiler-team/issues/553) (last review activity: about 13 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 13 days ago)
  - "MCP: Raise UEFI Targets to Tier-2" [compiler-team#555](https://github.com/rust-lang/compiler-team/issues/555) (last review activity: about 13 days ago)
  - "Raise minimum supported macOS and iOS versions" [compiler-team#556](https://github.com/rust-lang/compiler-team/issues/556) (last review activity: about 13 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 0 days ago)
- Pending FCP requests (check your boxes!)
  - "Remove save-analysis." [rust#101841](https://github.com/rust-lang/rust/pull/101841) 
- Things in FCP (make sure you're good with it)
  - "`DROP` to `DROP_IF`" [compiler-team#558](https://github.com/rust-lang/compiler-team/issues/558) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking issue for `..X`, and `..=X` (`#![feature(half_open_range_patterns)]`)" [rust#67264](https://github.com/rust-lang/rust/issues/67264) 
  - "Tracking Issue for `#[instruction_set]` attribute (RFC 2867)" [rust#74727](https://github.com/rust-lang/rust/issues/74727) 
  - "Stabilize `let else`" [rust#93628](https://github.com/rust-lang/rust/pull/93628) 
  - "Stabilize generic associated types" [rust#96709](https://github.com/rust-lang/rust/pull/96709) 
  - "Make typeck aware of uninhabited types" [rust#100288](https://github.com/rust-lang/rust/pull/100288) 
  - "Consider `#[must_use]` annotation on `async fn` as also affecting the `Future::Output`" [rust#100633](https://github.com/rust-lang/rust/pull/100633) 
  - "Commit to safety rules for dyn trait upcasting" [rust#101336](https://github.com/rust-lang/rust/issues/101336)

### WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > #### Most notable changes
  > 
  > - Document multipart_suggestion derive on SessionSubdiagnostic [#1446](https://github.com/rust-lang/rustc-dev-guide/pull/1446)
  > - Document changes introduced by kind-less SessionDiagnostics [#1440](https://github.com/rust-lang/rustc-dev-guide/pull/1440)
  > - diagnostics: fix outdated use of string slugs [#1436](https://github.com/rust-lang/rustc-dev-guide/pull/1436)
  > 
  > #### Most notable WIPs
  > 
  > - Add a review checklist and suggest reviews as a way to get started with the project [#1463](https://github.com/rust-lang/rustc-dev-guide/pull/1463)
  > - date-check: updating-llvm [#1424](https://github.com/rust-lang/rustc-dev-guide/pull/1424)
  > - Added detail to codegen section [#1216](https://github.com/rust-lang/rustc-dev-guide/pull/1216)
  > - Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)

- Impl Trait initiative by @**oli** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > we had a deep dive on TAIT stabilization status: https://hackmd.io/FNLjLrevQcSKoIDAsf9ivQ
  > TLDR: 5 issues left to fix, then we could stabilize.
  > missing things are either "X doesn't compile, but should" or "diagnostics are weird"

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Avoid duplicating StorageLive in let-else" [rust#101894](https://github.com/rust-lang/rust/pull/101894)
  - Fixes [rust#101867](https://github.com/rust-lang/rust/issues/101867) and [rust#101932](https://github.com/rust-lang/rust/issues/101932)
  - Mark suggested backport ([comment](https://github.com/rust-lang/rust/pull/101894#issuecomment-1249284138)) will make this land in 1.65
- :beta: "Re-add HRTB implied static bug note" [rust#101924](https://github.com/rust-lang/rust/pull/101924)
  - suggested by @**Jack Huey** (to have this along the GATs stabilization)
- :beta: "fix ConstProp handling of written_only_inside_own_block_locals" [rust#102045](https://github.com/rust-lang/rust/pull/102045)
  - Fixes `P-critical` unsoundness in [rust#101973](https://github.com/rust-lang/rust/issues/101973)
  - (backport suggested by @**RalfJ**)
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- 2 issues waiting on other teams or recently discussed

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Enable MIR inlining for generators too" [rust#99782](https://github.com/rust-lang/rust/pull/99782) (last review activity: about 57 days ago)
  - on the radar of @**cjgillot**, is it waiting on a comment for latest perf. run?
- "Initial support for loongarch64_unknown_linux_gnuf64" [rust#96971](https://github.com/rust-lang/rust/pull/96971) (last review activity: about 38 days ago)
  - rust :robot: assigned @**Wesley Wiser**
- "Inline SyntaxContext in both encoded span representation." [rust#98840](https://github.com/rust-lang/rust/pull/98840) (last review activity: about 37 days ago)
  - can be merged? reviewer @__**nnethercote** approved 
- "Allow `impl Fn() -> impl Trait` in return position" [rust#93582](https://github.com/rust-lang/rust/pull/93582) (last review activity: about 36 days ago)
  - unsure about actual status. Does the author needs input?

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 84 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Potential miscompilation on i686 of chacha20" [rust#101346](https://github.com/rust-lang/rust/issues/101346)
  - [last week T-compiler discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-09-15/near/298985661)
  - Related #101861 (T-libs) has been merged
  - Still needs a fix on LLVM upstream
  - Jack [commented](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-09-15/near/298986765) that the submodules changes from #101861 were not yet in nightly? Are they now?
- "E0477 triggered with current nightly" [rust#101951](https://github.com/rust-lang/rust/issues/101951)
  - addressed in [rust#102016](https://github.com/rust-lang/rust/pull/102016) by @**lcnr** (PR is approved and is waiting on bors)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Anon lifetime in `impl Trait` no longer suggests adding a lifetime parameter" [rust#100615](https://github.com/rust-lang/rust/issues/100615) 
  - discussed and added comments, this will slip into 1.64
- "Borrow checking for static methods became more strict" [rust#100725](https://github.com/rust-lang/rust/issues/100725)
  - this will also slip into 1.64

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "codegen regression for bool" [rust#101048](https://github.com/rust-lang/rust/issues/101048)
  - this will be a beta regression now

## Performance logs

> [triage logs for 2022-09-20](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-09-20.md)

This was a fairly negative week for compiler performance, with regressions
overall up to 14% on some workloads (primarily incr-unchanged scenarios),
largely caused by [#101620](https://github.com/rust-lang/rust/pull/101620). We
are still chasing down either a revert or a fix for that regression, though a
partial mitigation in [#101862](https://github.com/rust-lang/rust/pull/101862)
has been applied. Hopefully the full fix or revert will be part of the next
triage report.

We also saw a number of other regressions land, though most were much smaller in magnitude.

Triage done by **@simulacrum**.
Revision range: [17cbdfd07178349d0a3cecb8e7dde8f915666ced..8fd6d03e22fba2930ad377b87299de6a37076074](https://perf.rust-lang.org/?start=17cbdfd07178349d0a3cecb8e7dde8f915666ced&end=8fd6d03e22fba2930ad377b87299de6a37076074&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 3.8%  | [0.3%, 14.0%]   | 148   |
| Regressions (secondary)  | 4.3%  | [0.3%, 23.6%]   | 141   |
| Improvements (primary)   | -6.4% | [-24.8%, -0.5%] | 24    |
| Improvements (secondary) | -2.1% | [-4.0%, -0.4%]  | 12    |
| All  (primary)           | 2.4%  | [-24.8%, 14.0%] | 172   |


1 Regressions, 2 Improvements, 6 Mixed; 2 of them in rollups
43 artifact comparisons made in total

#### Regressions

Cleanup slice sort related closures in core and alloc [#101816](https://github.com/rust-lang/rust/pull/101816) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=65c16dc3a83e34de0360c4667a0dac7f0e217e2b&end=4c2e500788cb3875f90eedb0791b76bcbb91d758&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.1% | [1.1%, 1.1%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.1% | [1.1%, 1.1%] | 1     |

This regression occurred in a single benchmark and only in the incremental
scenario, so it isn't worth follow up investigation at this time.

#### Improvements

Partially revert #101433 [#101902](https://github.com/rust-lang/rust/pull/101902) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=54f20bbb8a7aeab93da17c0019c1aaa10329245a&end=4d4e51e428ba7b1ece3c67d1c114e2b486dc85dd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.7%, -0.4%] | 6     |
| Improvements (secondary) | -0.6% | [-0.6%, -0.6%] | 1     |
| All  (primary)           | -0.5% | [-0.7%, -0.4%] | 6     |

Do not fetch HIR node when iterating to find lint. [#101862](https://github.com/rust-lang/rust/pull/101862) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5253b0a0a1f366fad0ebed57597fcf2703b9e893&end=bc7b17cfe3bf08b618d1c7b64838053faeb1f590&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | -      | -               | 0     |
| Regressions (secondary)  | -      | -               | 0     |
| Improvements (primary)   | -0.6%  | [-2.3%, -0.2%]  | 24    |
| Improvements (secondary) | -13.1% | [-39.1%, -3.2%] | 6     |
| All  (primary)           | -0.6%  | [-2.3%, -0.2%]  | 24    |


#### Mixed

Simplify caching and storage for queries [#101307](https://github.com/rust-lang/rust/pull/101307) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=88a192257ce110e7fb1732aa2b65e481f811db7a&end=a5b58addae4d629734ebbfc9c69f4e0653b99569&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.7%  | [1.7%, 1.7%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 7     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 3     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 7     |

This change is either neutral or a slight improvement; the one regression
occurs in a benchmark and only in one scenario, which is also prone to noise,
so further investigation isn't necessary.


Rollup of 6 pull requests [#101805](https://github.com/rust-lang/rust/pull/101805) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c97922dca563cb7f9385b18dbf7ca8c97f8e1597&end=a92669638461836f41f54f95e396f9082bb91391&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.5%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -4.5% | [-5.0%, -4.1%] | 6     |
| All  (primary)           | 0.4%  | [0.4%, 0.5%]   | 2     |

Using the newish rollup-introspection tooling, @nnethercote narrowed this down
to [#101433](https://github.com/rust-lang/rust/pull/101433). Put a
[comment](https://github.com/rust-lang/rust/pull/101433#issuecomment-1252309512)
on that PR and marked it as a perf-regression.

Compute lint levels by definition [#101620](https://github.com/rust-lang/rust/pull/101620) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=750bd1a7ff3e010611b97ee75d30b7cbf5f3a03c&end=2cb9a65684dba47c52de8fa938febf97a73e70a9&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 4.1%  | [0.4%, 14.5%]   | 133   |
| Regressions (secondary)  | 5.2%  | [0.2%, 64.1%]   | 131   |
| Improvements (primary)   | -5.1% | [-24.3%, -0.4%] | 30    |
| Improvements (secondary) | -1.0% | [-1.2%, -0.5%]  | 5     |
| All  (primary)           | 2.4%  | [-24.3%, 14.5%] | 163   |

Regression is partially addressed by
[#101862](https://github.com/rust-lang/rust/pull/101862), but not completely.
Week/week diff remains negative. Left a comment asking us to pursue the revert
for the time being, since the suggested fix for this regression didn't recover
performance fully.

Derive various impls instead of hand-rolling them [#101858](https://github.com/rust-lang/rust/pull/101858) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=35a0407814a6b5a04f0929105631e9c69e293e9d&end=df34db9b032b15efd86df3544cc75e6d55dc492e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.2%, 2.2%]   | 11    |
| Regressions (secondary)  | 0.9%  | [0.3%, 2.1%]   | 18    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-0.9%, -0.5%] | 6     |
| All  (primary)           | 1.2%  | [0.2%, 2.2%]   | 11    |

This was a fairly large regression in a number of benchmarks;
[#101893](https://github.com/rust-lang/rust/pull/101893) is pursuing further
investigation here and tracking either improvements or a possible revert. It
seems like moving to the derive'd impls may have also been a (correct) behavior
change in [some cases](https://github.com/rust-lang/rust/pull/101893#issuecomment-1250741413)
so a straightforward revert may be undesirable.

Change `FnMutDelegate` to trait objects [#101857](https://github.com/rust-lang/rust/pull/101857) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=672831a5c890f51d3222511ab2575ca7a86c8e20&end=48de123d7a0753026c362a06109f9a9cebde2a2a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.2%  | [0.9%, 1.6%]   | 9     |
| Improvements (primary)   | -1.2% | [-1.2%, -1.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.2% | [-1.2%, -1.2%] | 1     |

Regressions are limited to secondary benchmarks and stress tests at that. The
goal here is an improvement in bootstrap times (measured at ~1.5% earlier,
though the actual PR merge was during a window where that measurement was
failing). That improvement is worth the slight loss on stress tests.

Rollup of 7 pull requests [#101949](https://github.com/rust-lang/rust/pull/101949) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=98ad6a5519651af36e246c0335c964dd52c554ba&end=5253b0a0a1f366fad0ebed57597fcf2703b9e893&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 3     |
| Regressions (secondary)  | 0.8%  | [0.2%, 3.5%]   | 15    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.4% | [-1.6%, -1.3%] | 6     |
| All  (primary)           | 0.2%  | [0.2%, 0.2%]   | 3     |

Still working on identifying the causes. Likely to be a minor enough delta that
spending too much more time won't make sense.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**
- Types team by @**nikomatsakis** and @**Jack Huey**
