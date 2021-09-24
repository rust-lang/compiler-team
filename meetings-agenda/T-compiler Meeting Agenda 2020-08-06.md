---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-08-06

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- `tracing` has been added to rustc, @oli is playing with features, comment if you have opinions: https://github.com/rust-lang/rust/pull/75143
- New MCPs (take a look, see if you like them!)
  - "refactor types to fit the chalk-ty generic plan" [compiler-team#341](https://github.com/rust-lang/compiler-team/issues/341)
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
  - "Move the compiler to a new `compiler/` directory" [compiler-team#336](https://github.com/rust-lang/compiler-team/issues/336)
  - "Form t-compiler/wg-parser-library" [compiler-team#338](https://github.com/rust-lang/compiler-team/issues/338)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Stabilizable subset of const generics" [compiler-team#332](https://github.com/rust-lang/compiler-team/issues/332)
  - "Create a WebAssembly target notification group." [compiler-team#337](https://github.com/rust-lang/compiler-team/issues/337)
  - "Set ninja=true by default" [compiler-team#339](https://github.com/rust-lang/compiler-team/issues/339)
  - "Implement const equality and const wf" [compiler-team#340](https://github.com/rust-lang/compiler-team/issues/340)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs
  - No finalized FCPs this time.

### WG checkins

@*WG-prioritization*  checkin by @**spastorino**:
>- We have now a [repo for the working group](https://github.com/rust-lang/compiler-team-prioritization/) and we are mainly handling our todo list as issues there.
>- Our procedure automation cli is "complete" and outputs the agenda but we still need to integrate it with the Zulip bot.
>- We've [documented our procedure](https://forge.rust-lang.org/compiler/prioritization/procedure.html) with a lot of details on Rust Forge.
>- We have added Pre-FCP and FCP information to the announcements.
>- There's a list of things we need to tweak [in our issue tracker](https://github.com/rust-lang/compiler-team-prioritization/issues?q=is%3Aopen+is%3Aissue), help is appreciated :)

@*WG-rfc-2229* checkin by @**Aman Arora** and @**nikomatsakis**:
> Work is currently on a temporary hiatus because of exam period.
> 
> We have been working on various refactorings to allow captures
> to capture not just individual variables but arbitrary places.
> 
> Some of the refactorings we are working on:
> 
> * Making it so that we don't assume that we always know how many
>   captured variables there are for a particular closure, since
>   that will now need to be inferred by upvar analysis.
> * Extending the [**HIR** definition of a 
>   place](https://doc.rust-lang.org/nightly/nightly-rustc/rustc_middle/hir/place/struct.Place.html)
>   to have more information. (rust-lang/project-rfc-2229#10)
> * Created a data structure that captures the full places that a closure uses
>   and then uses that to create the existing capture data structures of
>   individual variables, thus testing out the new visitor and place information. (rust-lang/project-rfc-2229#7)
> * Experimenting with the algorithm to capture minimal places (rust-lang/project-rfc-2229#9)

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "typeck: check for infer before type impls trait" [rust#73965](https://github.com/rust-lang/rust/pull/73965)
  - PR by @**davidtwco**, assigned to @**Esteban Küber** 
  - Fixes [rust#73886](https://github.com/rust-lang/rust/issues/73886) a `P-medium` nightly regression
  - [Nominated](https://github.com/rust-lang/rust/issues/74734#issuecomment-667711436) to also fix [rust#74734](https://github.com/rust-lang/rust/issues/74734)
- "forbid `#[track_caller]` on main" [rust#75130](https://github.com/rust-lang/rust/pull/75130)
  - PR by @**lcnr**, assigned to @**ecstatic-morse**
  - Fixes [rust#75125](https://github.com/rust-lang/rust/issues/75125) a `P-high` `I-unsound`  issue
- "Forbid non-derefable types explicitly in unsizing casts" [rust#75136](https://github.com/rust-lang/rust/pull/75136)
  - PR by @**Yuki Okushi**, assigned to @**oli**
  - Fixes [rust#75118](https://github.com/rust-lang/rust/issues/75118) a beta regression

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Rename "cyclone" to "apple-a7" per changes in upstream LLVM" [rust#73086](https://github.com/rust-lang/rust/pull/73086)
  - "cyclone" is now a legacy and flood with warnings + probably creates incorrectly optimized artifacts.
  - Nominated by @**simulacrum**, [reason here](https://github.com/rust-lang/rust/pull/73086#issuecomment-666762193)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations this time.

:back: / :shrug: / :hand:

## PR's S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "[android] Add support for android's file descriptor ownership tagging to libstd." [rust#74860](https://github.com/rust-lang/rust/pull/74860)
  - @**nikomatsakis** is inclined to land the PR but thinks it needs an FCP given it's a user-facing change.
  - This is also of interest of `T-libs` but it lies somewhere on the boundary of "implementation detail" and "public facing API change", so maybe everyone wants weigh in.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on libs-impl this time.

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [51 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [28 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 2 P-high, 3 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 6 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 14 P-high, 50 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3AP-critical+label%3AT-compiler)
- "LTO triggers apparent miscompilation on Windows 10 x64" [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - Discussed last week
  - Assigned to @**pnkfelix**
  - I-unsound regression from stable to stable, started failing when we updated to LLVM 9.0
  - [LLVM issue reproduced on LLVM master](https://github.com/rust-lang/rust/issues/74498#issuecomment-661950983)
  - Rust started to trigger this misbehavior more frequent since the introduction of [rust#69659](https://github.com/rust-lang/rust/pull/69659) that happened in 1.45+.
  - @**pnkfelix** [filled a bug with LLVM upstream](https://bugs.llvm.org/show_bug.cgi?id=46943)
  - [According to @**pnkfelix**](https://github.com/rust-lang/rust/issues/74498#issuecomment-667452406) the remaining question is if we should, for the short term, change that `range.rs` code to not used an `unchecked_add`, in order to (hopefully) bypass the misoptimization here or patch LLVM.
  - @**pnkfelix** [also discusses](https://github.com/rust-lang/rust/issues/74498#issuecomment-668598776) if this generates an overflow or not.
- "Unexpected trait resolution overflow error" [rust#74868](https://github.com/rust-lang/rust/issues/74868)
  - Assigned to @**pnkfelix**
  - Needs MCVE and bisection
  - Possible culprits [rust#73357](https://github.com/rust-lang/rust/pull/73357) or [rust#73261](https://github.com/rust-lang/rust/pull/73261) maybe?
  - According to @**Matthew Jasper** this is probably due to [rust#73452](https://github.com/rust-lang/rust/pull/73452), [rust#73905](https://github.com/rust-lang/rust/pull/73905) fixes that issue but is not suitable for a backport. @**Matthew Jasper** is going to provide a PR suitable for a backport.
- "Lifetime error when indexing with borrowed index in beta but not in stable" [rust#74933](https://github.com/rust-lang/rust/issues/74933)
  - Assigned to @**Gary Guo**
  - Code that compiles on stable, fails on beta
  - Regressed in [rust#73504](https://github.com/rust-lang/rust/pull/73504) which is a roll-up, likely [rust#72280](https://github.com/rust-lang/rust/pull/72280)
  - PR by @**Gary Guo** and assigned to @**nikomatsakis** is up in [rust#74960](https://github.com/rust-lang/rust/pull/74960)

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No P-critical issues for libs-impl this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No P-critical issues for T-rustdoc this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- "libtest panics when running `should_panic` tests under QEMU armv7 " [rust#74820](https://github.com/rust-lang/rust/issues/74820)
  - Cargo lib skeleton + should_panic test code fails on armv7
  - It seems to be caused by [rust#72746](https://github.com/rust-lang/rust/pull/72746) by @**tmandry**

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- "Type mismatch in function arguments E0631, E0271 are falsely recognized as E0308 mismatched types" [rust#74400](https://github.com/rust-lang/rust/issues/74400)
  - Discussed last week
  - Regressed on [rust#73643](https://github.com/rust-lang/rust/pull/73643) which is a rollup, likely to be [rust#72493](https://github.com/rust-lang/rust/pull/72493)

## Performance logs

Triage done by [simulacrum](https://github.com/Mark-Simulacrum).
Revision range: [efc02b03d18b0cbaa55b1e421d792f70a39230b2..19cefa68640843956eedd86227ddc1d35dbc6754](https://perf.rust-lang.org/?start=efc02b03d18b0cbaa55b1e421d792f70a39230b2&end=19cefa68640843956eedd86227ddc1d35dbc6754&absolute=false&stat=instructions%3Au)

8 regressions, 2 improvements, 1 of them on rollups.
1 outstanding nag from last week.

Regressions
* [convert higher ranked `Predicate`s to `PredicateKind::ForAll` #73503](https://github.com/rust-lang/rust/pull/73503)
  ([instructions](https://perf.rust-lang.org/compare.html?start=efc02b03d18b0cbaa55b1e421d792f70a39230b2&end=76e83339bb619aba206e5590b1e4b813a154b199&stat=instructions%3Au))
  Up to 2.5% losses on stress tests, 1-2% on some other real-world crates. This was [expected](https://github.com/rust-lang/rust/pull/73503#issuecomment-661053865).
* [mv std libs to library/ #73265](https://github.com/rust-lang/rust/pull/73265#issuecomment-668254522)
  ([instructions](https://perf.rust-lang.org/compare.html?start=9be8ffcb0206fc1558069a7b4766090df7877659&end=ac48e62db85e6db4bbe026490381ab205f4a614d&stat=instructions%3Au))
  Up to 3% losses on tiny crates, and stress tests show 1-3% regressions.
* [Update cargo #74923](https://github.com/rust-lang/rust/pull/74923#issuecomment-668261346)
  ([instructions](https://perf.rust-lang.org/compare.html?start=efc02b03d18b0cbaa55b1e421d792f70a39230b2&end=76e83339bb619aba206e5590b1e4b813a154b199&stat=instructions%3Au))
  This was up to a 28% loss on some incremental benchmarks, as a result of regressions in proc macro performance (expansion is slower).
* [Replace all uses of `log::log_enabled` with `Debug` printers #74876](https://github.com/rust-lang/rust/pull/74876#issuecomment-668262178)
  ([instructions](https://perf.rust-lang.org/compare.html?start=6e50a225fd67576e43bab1d4dfa3c97f310786a8&end=1799d31847294d6e3816c17679247a5c206e809a&stat=instructions%3Au))
  A 1.5% regression on the ctfe stress test.
* [std: Switch from libbacktrace to gimli (take 2) #74682](https://github.com/rust-lang/rust/pull/74682#issuecomment-668264270)
  ([instructions](https://perf.rust-lang.org/compare.html?start=cfc572cae2d1fc381cce476b5c787fd7221af98c&end=c058a8b8dc5dea0ed9b33e14da9e317e2749fcd7&stat=instructions%3Au))
  An expected loss of up to 20% on smaller benchmarks. This was also a [max-rss](https://perf.rust-lang.org/compare.html?start=cfc572cae2d1fc381cce476b5c787fd7221af98c&end=c058a8b8dc5dea0ed9b33e14da9e317e2749fcd7&stat=max-rss)
  regression, though how big is difficult to determine as this statistics is noisy. See discussion on [Zulip](https://rust-lang.zulipchat.com/#narrow/stream/247081-t-compiler.2Fperformance/topic/gimli.20regressions).
  Optimistically, there is a follow-up PR, "metadata: track the simplified Self type for every trait impl #75008", which may [eliminate](https://github.com/rust-lang/rust/pull/75008#issuecomment-667577993) a good portion of these losses.
* [Normalize all opaque types when converting ParamEnv to Reveal::All #65989](https://github.com/rust-lang/rust/pull/65989#issuecomment-668267468)
  ([instructions](https://perf.rust-lang.org/compare.html?start=62f9aa94c0d0312544589bed78679d85646d4e62&end=6e87bacd37539b7e7cd75152dffd225047fa983a&stat=instructions%3Au))
  A slight performance regression, of up to 4%. Expected.
* [Move 'probably equal' methods to librustc_parse #75004](https://github.com/rust-lang/rust/pull/75004#issuecomment-668271907)
  ([instructions](https://perf.rust-lang.org/compare.html?start=8141873e6d50a0a0829fd756b0a16a92b27cfe22&end=46cf80dc1a75ad27f67e79f73fec371a16762494&stat=instructions%3Au))
  A 1% regression on some smaller crates, rustdoc-only.
* [Rollup of 10 pull requests #75060](https://perf.rust-lang.org/compare.html?start=e8876ae2c11f341565059b900eeae1254a9accf1&end=a99ae95c722d4dc8d1eef09aaa4e72d50d496e75&stat=instructions%3Au)
  ([instructions](https://perf.rust-lang.org/compare.html?start=e8876ae2c11f341565059b900eeae1254a9accf1&end=a99ae95c722d4dc8d1eef09aaa4e72d50d496e75&stat=instructions%3Au))
  Up to 1% regression; unclear cause -- possibly `BTreeMap` changes.

Improvements
* [Cache non-exhaustive separately from attributes #74887](https://github.com/rust-lang/rust/pull/74887#issuecomment-668258043)
  ([instructions](https://perf.rust-lang.org/compare.html?start=517385b31b0add8487ff3cc27e216cf3f867ab44&end=10c375700ce170fc57cb617754dc6d0631d3d573&stat=instructions%3Au))
  Up to 2% wins on tiny crates. This arose as an attempt to mitigate some of the effects of [re-landing gimli](https://github.com/rust-lang/rust/pull/74682).
* [Move from `log` to `tracing` #74726](https://github.com/rust-lang/rust/pull/74726#issuecomment-668269871)
  ([instructions](https://perf.rust-lang.org/compare.html?start=de10abf50c514ca648eb3bdcbc912d46b7eb32a6&end=05762e3d6f5facafdd47efdf4203021fadf61bb1&stat=instructions%3Au))
  Up to 1.5% wins, scattered across the smaller benchmarks. Expected.

Nags:
 * [Disable polymorphisation #74633](https://github.com/rust-lang/rust/pull/74633#issuecomment-668243225)
   From last week, this was a performance neutral PR even though the landing of polymorphisation was a regression. Investigation on why needs to be conducted.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- async-std docs no longer build on recent nightlies [rust#75100](https://github.com/rust-lang/rust/issues/75100)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for libs-impl this time.

