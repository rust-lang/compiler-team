---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-07-30

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow (Friday at 2pm UTC) we have our [Steering Meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)
- New MCPs (take a look, see if you like them!)
  - "Move the compiler to a new `compiler/` directory" [compiler-team#336](https://github.com/rust-lang/compiler-team/issues/336)
  - "Create a WebAssembly target notification group." [compiler-team#337](https://github.com/rust-lang/compiler-team/issues/337)
  - "Form t-compiler/wg-parser-library" [compiler-team#338](https://github.com/rust-lang/compiler-team/issues/338)
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Stabilizable subset of const generics" [compiler-team#332](https://github.com/rust-lang/compiler-team/issues/332)
- Accepted MCPs
  - "Move Rust provided objects, libraries and binaries meant for self-contained linkage to separate directory" [compiler-team#310](https://github.com/rust-lang/compiler-team/issues/310)
  - "Add future-incompat entries to json diagnostic output" [compiler-team#315](https://github.com/rust-lang/compiler-team/issues/315)
- Finalized FCPs
  - "Stabilize core::future::{pending,ready}" [rust#74328](https://github.com/rust-lang/rust/pull/74328)

### WG checkins

@*WG-polonius* checkin by @**nikomatsakis** and @**lqd**:
> We are planning a "sprint" Aug 3 - 5, which means that we'll be putting some energy into pushing polonius along. We've been changing to this "sprint-oriented" model because it's hard to keep a complex project like polonius moving in fits and starts, it requires some dedicated attention.
> 
> Last sprint we focused on getting a "complete write-up" of the polonius rules and in particular incorporating liveness and other things. I'm not sure what we'll focus on this sprint, probably similar themes, but I know that lqd has some ideas. --nikomatsakis

WG-Polymorphization checkin by @**davidtwco**:
> Since the last check-in from the polymorphisation working group (myself with lots of help from @_**eddyb** and @_**lcnr**), we’ve made a few steps forward and a few steps back:
>
> Polymorphisation (#69749) was merged and enabled by default. Another perf run was performed before merge, which found that the improvements from earlier perf runs had vanished - some investigation revealed that this was due to an update to the script-servo benchmark that patched the opportunity that polymorphisation was taking advantage of.
>
> We quickly discovered a regression that was missed by the test suite in #74614. Some investigation revealed the issue but we fixed the issue by disabling polymorphisation again in #74633. #74636 was filed to track fixing the underlying bug - there are some subtle implications of polymorphisation here that we hadn’t thought about and warrant some discussion. 
>
> #74717 has been submitted to fix that regression, but it’s still pending review and warrants some discussion before merge (particularly with respect to the intersection between polymorphisation and reflection). 
> 
> @_**lcnr** fixed another bug with polymorphisation that was discovered while investigating the regression with #74623. 
>
> @_**njn** reported that disabling polymorphisation didn’t regain the performance losses of enabling it - I intend to look into why this might be soon. 

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Add the aarch64-apple-darwin target" [rust#74541](https://github.com/rust-lang/rust/pull/74541)
  - PR by @**Jake Goulding**, Assigned to @**varkor**
- "rustc_target: Add a target spec option for disabling `--eh-frame-hdr`" [rust#74631](https://github.com/rust-lang/rust/pull/74631)
  - PR by @**Vadim Petrochenkov**, Assigned to @**oli**
- "Fix #[track_caller] shims for trait objects." [rust#74784](https://github.com/rust-lang/rust/pull/74784)
  - PR by @**anp**, Assigned to @**eddyb**
  - Fixes an `I-unsound` `P-critical` issue [rust#74764](https://github.com/rust-lang/rust/issues/74764).
  - This is also stable nominated
- "Fix incorrect clashing_extern_declarations warnings." [rust#73990](https://github.com/rust-lang/rust/pull/73990)
    - PR by @**jumbatm**, Assigned to @**nagisa**

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "The const propagator cannot trace references." [rust#73613](https://github.com/rust-lang/rust/pull/73613)
  - Assigned to @**Wesley Wiser**, already merged
  - Fixes an `I-unsound` `P-critical` issue [rust#73609](https://github.com/rust-lang/rust/issues/73609)
- "Fix #[track_caller] shims for trait objects." [rust#74784](https://github.com/rust-lang/rust/pull/74784)
  - PR by @**anp**, Assigned to @**eddyb**
  - Fixes an `I-unsound` `P-critical` issue [rust#74764](https://github.com/rust-lang/rust/issues/74764).
  - This is also beta nominated

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Inlined symbols" [rust#74554](https://github.com/rust-lang/rust/pull/74554)
  - PR by @**njn**, assigned to @**Vadim Petrochenkov** 
  - "Encode symbols that are 4 bytes or shorter directly in the u32"
  - Waiting on [an evaluation of the performance vs complexity tradeoff](https://github.com/rust-lang/rust/pull/74554#issuecomment-664001716)

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on libs-impl this time.

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [51 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [28 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 2 P-high, 3 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 6 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 15 P-high, 48 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "LTO triggers apparent miscompilation on Windows 10 x64" [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - Discussed last week
  - Assigned to @**pnkfelix**
  - I-unsound regression from stable to stable, started failing when we updated to LLVM 9.0
  - [LLVM issue reproduced on LLVM master](https://github.com/rust-lang/rust/issues/74498#issuecomment-661950983)
  - Rust started to trigger this misbehavior more frequent since the introduction of [rust#69659](https://github.com/rust-lang/rust/pull/69659) that happened in 1.45+.
- "Unexpected trait resolution overflow error" [rust#74868](https://github.com/rust-lang/rust/issues/74868)
  -  Unassigned
  -  Needs MCVE and bisection
  -  Possible culprits [rust#73357](https://github.com/rust-lang/rust/pull/73357) or [rust#73261](https://github.com/rust-lang/rust/pull/73261) maybe?
- "Lifetime error when indexing with borrowed index in beta but not in stable" [rust#74933](https://github.com/rust-lang/rust/issues/74933)
  - Unassigned
  - Code that compiles on stable, fails on beta
  - Regressed in [rust#73504](https://github.com/rust-lang/rust/pull/73504) which is a roll-up, likely [rust#72280](https://github.com/rust-lang/rust/pull/72280)

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

We need to first re-discuss [last week's performance report](https://hackmd.io/jK5Cm8QJSGG7ukq7lVilLg?view#Performance-logs) because during last meeting we didn't have time for that.

This week's performance report ...

Triage done by njn. Revision range: [71384101ea3b030b80f7def80a37f67e148518b0..efc02b03d18b0cbaa55b1e421d792f70a39230b2](https://perf.rust-lang.org/?start=71384101ea3b030b80f7def80a37f67e148518b0&end=efc02b03d18b0cbaa55b1e421d792f70a39230b2&absolute=false&stat=instructions%3Au)

2 regressions, 1 improvement, none of them on rollups.

Regressions
- [Serialize span hygiene data #72121](https://github.com/rust-lang/rust/pull/72121#issuecomment-664685450)
  ([instructions](https://perf.rust-lang.org/compare.html?start=c70986264b4d534e35992fc64ecd9139700b5071&end=fa36f960687c41caf5b260ab7610ebd83a7860dd&stat=instructions:u)):
  Up to 3.5% losses on numerous benchmarks. This was expected, and the author and reviewer deemed it reasonable for the improvement in error messages.
- [Polymorphization #69749](https://github.com/rust-lang/rust/pull/69749#issuecomment-664688297)
  ([instructions](https://perf.rust-lang.org/compare.html?start=734233d29771869f824d8ddbaddabb90b3b68e03&end=b52522ade1f6979a35b24087dadcf5ba5c981cbe&stat=instructions:u)):
  Up to 1.8% losses (ignoring the noisy `script-servo-2-opt` results), which was expected. (Hopefully extensions to this change will allow for compile time improvements in the future.) This feature was later disabled due to correctness issues, but the disabling was [performance neutral](https://github.com/rust-lang/rust/pull/74633#issuecomment-664691511), oddly enough.

Improvements
- [Revert libbacktrace -> gimli #74613](https://github.com/rust-lang/rust/pull/74613#issuecomment-664682974)
  ([instructions](https://perf.rust-lang.org/compare.html?start=2bbfa02b1b15974d5772b520aa027bf79f8c248e&end=371917ab218de72a625227ba6eed7e84e610a058&stat=instructions:u)):
  Up to 25.5% wins across many benchmarks. A reversion of one of last week's regressions. This PR may re-land because it's a big functional improvement and the regressions are mostly on very short-running benchmarks. If it does it will be after consideration and with intention.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Compiler doesn't terminate with --release" [rust#74384](https://github.com/rust-lang/rust/issues/74384)
  - Compiler doesn't "terminate" when nesting 3 arrays.
  - "It seems like this is an LLVM bug."
  - Nominated to assign it
  - On our last meeting we briefly mention it but wasn't picked up yet
- "error: could not compile `gkrust` since Rust 1.43 on SPARC Solaris" [rust#74551](https://github.com/rust-lang/rust/issues/74551)
  - Unassigned `I-unsound` stable to stable regression
  - Nominated by @**ecstatic-morse**, [they think this is concerning and may affect tier 1 platforms](https://github.com/rust-lang/rust/issues/74551#issuecomment-662273391)
- "ICE with the `(foo @ ..,)` pattern" [rust#74702](https://github.com/rust-lang/rust/issues/74702)
  - `I-ICE`, `I-nominated` for discussion, see [Zulip](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/I-prioritize.20.2374702.20ICE.20with.20the.20.60(foo.20.40.20.2E.2E.2C).60.20pattern) topic
  - No assignee yet
- "std: Switch from libbacktrace to gimli (take 2)" [#74682](https://github.com/rust-lang/rust/pull/74682)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for libs-impl this time.