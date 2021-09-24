---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-04-22

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

Reminder: meeting [rustc steering: "guiding principles" doc](https://github.com/rust-lang/compiler-team/issues/424) tomorrow **April, 23rd at 10am EST (14:00 UTC)**

## Announcements

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  - "Eagerly construct bodies of THIR" [compiler-team#409](https://github.com/rust-lang/compiler-team/issues/409)
  - "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
  - "A --temps-dir option for specifying where the intermediate files are written" [compiler-team#423](https://github.com/rust-lang/compiler-team/issues/423)
- Pending FCP requests (check your boxes!)
  - "Add default search path to `Target::search()`" [rust#83800](https://github.com/rust-lang/rust/pull/83800)
- Things in FCP (make sure you're good with it)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Rename -Cllvm-args to something backend agnostic" [compiler-team#421](https://github.com/rust-lang/compiler-team/issues/421)
  - "Update the existing musl targets to be dynamically linked." [compiler-team#422](https://github.com/rust-lang/compiler-team/issues/422)
  - "Split rustc_mir" [compiler-team#426](https://github.com/rust-lang/compiler-team/issues/426)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking issue for RFC 2457, "Allow non-ASCII identifiers"" [rust#55467](https://github.com/rust-lang/rust/issues/55467)

### WG checkins

@*WG-async-foundations* checkin by @**nikomatsakis** and @**tmandry**
> The major work has been the [async vision doc](https://rust-lang.github.io/wg-async-foundations/vision.html).
> We now have 30 [status quo stories](https://rust-lang.github.io/wg-async-foundations/vision/status_quo.html), with more on the way.
> We recently announced the start of the [shiny future brainstorming session](https://blog.rust-lang.org/2021/04/14/async-vision-doc-shiny-future.html).
> If you're interested in participating, you might consider joining one of the [writing sessions](https://smallcultfollowing.com/babysteps/blog/2021/04/19/async-vision-doc-writing-sessions-vi/) that are taking place tomorrow, hosted by @**rylev** and @**nikomatsakis**.

@*WG-traits*  checkin by @**nikomatsakis** and @**Jack Huey**
> We've been concentrating on a number of initiatives:
> 
> * Creating a standalone library for Rust types: @**Jack Huey** recently landed #76814, which refactored binders so that they have a list of the things which they bind. This helps to align with Chalk's representation and permits us to represent things like `for<'a> fn(i32)`, where the `'a` in the binder doesn't actually appear in the type. Other notable PRs are on the way.
> * Improving chalk: @**FireFighterDuck** landed rust-lang/chalk#698 that fixes coinductive handling in the recursive solver. Movement here has otherwise been slow.
> * Async fn in traits: We created a [project board](https://github.com/rust-lang/wg-traits/projects/4) tracking the major blockers and milestones in this effort. 
> * Closing various bugs: most notably, @**nikomatsakis** has been working with @**Aaron Hill** on #83913 and with @**Jack Huey** to resolve some problems that arose aftr #76814 landed.
>
> Office hours: We've also designed some regular blocks ("office hours") where @**nikomatsakis** and others are around and working on tasks. There is one general office hours and the other is designed for async fn in traits. Check the compiler team calendar for details.


## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "move new c abi abort behavior behind feature gate" [#84158](https://github.com/rust-lang/rust/pull/84158)
  - "PR [#76570](https://github.com/rust-lang/rust/pull/76570), which implements the "C-unwind" ABI, also changes the behavior of the "C" ABI, re-introducing the abort-on-unwind logic once more. However, while "C-unwind" is behind a feature flag, the abort-on-unwind logic is not."
  - nomination postponed [from previous meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-04-15.20.2354818/near/234681707), @**simulacrum** suggests asking the project group to come back with a summary of the pros/cons and whys
- :beta: "Update to LLVM 12.0.0 final" [rust#84230](https://github.com/rust-lang/rust/pull/84230)
  - opened by @**cuviper**, already merged
  - @**Nikita Popov** [comments](https://github.com/rust-lang/rust/pull/84230#issuecomment-821001707) we should wait for the backport of [https://reviews.llvm.org/D99469](https://reviews.llvm.org/D99469) (not landed upstream yet)
  - @**nagisa** [comments](https://github.com/rust-lang/rust/pull/84230#issuecomment-821399329) that the patch to [add dwarf annotation for inline stack probe](https://reviews.llvm.org/rG1c268a8ff4e90a85d0e634350b1104080614cf2b) won't make it LLVM12 final so it will need to be manually backported to nightly/beta
- :beta: "[beta] Bump LLVM to a upstream 12.0 release" [rust#84271](https://github.com/rust-lang/rust/pull/84271)
  - opened by @**nagisa**
  - Current beta branch utilizes a release candidate of LLVM 12.0. We want the upstream fixes (also those we know affecting Rust) before the next stable rust release (May, 6th).
- No stable nominations for `T-compiler` this time.

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- :beta: "Fixes API soundness issue in join()" [rust#81728](https://github.com/rust-lang/rust/pull/81728)
  - opened by @**Yechan Bae** , already merged
  - nominated by @**cuviper** because of [CVE-2020-36323](https://github.com/rust-lang/rust/pull/81728#issuecomment-821351869)
- :beta: "Fix double-drop in `Vec::from_iter(vec.into_iter())` specialization when items drop during panic" [rust#83629](https://github.com/rust-lang/rust/pull/83629)
  - nominated by @**cuviper** because of [CVE-2020-31162](https://github.com/rust-lang/rust/pull/83629#issuecomment-821352426)
  - r'ed by @**Mara**
- No stable nominations for `T-libs-impl` this time.

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

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [69 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [45 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 6 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 3 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 86 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "`probe-stack=inline-asm` generates wrong DWARF information" [rust#83139](https://github.com/rust-lang/rust/issues/83139)
  - @**nagisa** handled backporting of [https://reviews.llvm.org/D99579](https://github.com/rust-lang/rust/issues/83139#issuecomment-815871790) in [PR #84270](https://github.com/rust-lang/rust/pull/84270)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Diagnostic when a trait is not in scope no longer tells you to add a use, instead tells you to box the receiver." [rust#84272](https://github.com/rust-lang/rust/issues/84272)
  - A very useful diagnostic is lost, apparently regressed in [commit](https://github.com/rust-lang/rust/commit/16156fb2787f745e57504197bd7fe38b69c6cbea)
  - perhaps happened in [PR #83667](https://github.com/rust-lang/rust/pull/83667)
  - @**estebank** [suggests](https://github.com/rust-lang/rust/issues/84272#issuecomment-821909819) a fix but not sure if applicable in all cases

## Performance logs

> [2021-04-21 triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-04-21.md)

Another quiet week with very small changes to compiler performance.

Triage done by **@rylev**. 1 Regressions, 0 Improvements, 1 Mixed, 0 of them in rollups

#### Regressions

Fix lookahead with None-delimited group [#84130](https://github.com/rust-lang/rust/issues/84130)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=7537b20626100e7e7fc8c4ad3079d38c05338121&end=16bf626a31cb5b121d0bca2baa969b4f67eb0dab&stat=instructions:u) (up to 1.4% on `incr-unchanged` builds of `deep-vector-check`)
- While this change fixes a bug, it does introduce moderate regressions in runtime performance on some benchmarks and a fairly large regression on the compilation of the rustc_parse crate itself.
- We will [follow up](https://github.com/rust-lang/rust/pull/84130#issuecomment-823898920) on this particularly in the matter of `rustc_parse`'s compilation times regressing.

#### Improvements

- none

#### Mixed

Add some #[inline(always)] to arithmetic methods of integers [#84061](https://github.com/rust-lang/rust/issues/84061)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=392ba2ba1a7d6c542d2459fb8133bebf62a4a423&end=83ca4b7e600241850e61be48dee859f1604de50d&stat=instructions:u) (up to 1.7% on `full` builds of `regex-debug`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=392ba2ba1a7d6c542d2459fb8133bebf62a4a423&end=83ca4b7e600241850e61be48dee859f1604de50d&stat=instructions:u) (up to -1.3% on `incr-unchanged` builds of `cargo-check`)
- This change inlines a bunch of code that might not have been previously. It's not really a surprise that codegen now is taking longer to churn through all those inline calls.
- While this tradeoff on compile times for runtime performance is likely worth it, we are [checking in with the PR author and reviewer](https://github.com/rust-lang/rust/pull/84061#issuecomment-823908561) to make sure this is discussed.

#### Nags requiring follow up

- This week's follow ups:
  - https://github.com/rust-lang/rust/pull/84130#issuecomment-823898920

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
