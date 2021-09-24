---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-05-13

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  -  "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  -  "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  -  "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
  -  "Promote `aarch64-apple-ios-sim` to Tier 2" [compiler-team#428](https://github.com/rust-lang/compiler-team/issues/428)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  -  "Update the existing musl targets to be dynamically linked." [compiler-team#422](https://github.com/rust-lang/compiler-team/issues/422)
  -  "A --temps-dir option for specifying where the intermediate files are written" [compiler-team#423](https://github.com/rust-lang/compiler-team/issues/423)
- Accepted MCPs
  -  "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  -  "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  -  "Rename -Cllvm-args to something backend agnostic" [compiler-team#421](https://github.com/rust-lang/compiler-team/issues/421)
  -  "Split rustc_mir" [compiler-team#426](https://github.com/rust-lang/compiler-team/issues/426)
- Finalized FCPs (disposition merge)
  -  "rustdoc: Make "rust code block is empty" and "could not parse code block" warnings a lint (`INVALID_RUST_CODEBLOCKS`)" [rust#84587](https://github.com/rust-lang/rust/pull/84587)

### WG checkins

@*WG-mir-opt* by @**wesleywiser**:
> Not much has been merged recently but there are a number of different projects in flight at the moment. A few highlights:
> - Run RemoveZsts pass at mir-opt-level=1 [#83417](https://github.com/rust-lang/rust/pull/83417)
> - Optimize calls to CopyNonOverlapping [#83785](https://github.com/rust-lang/rust/pull/83785)
> - Mir-Opt for copying enums with large discrepancies [#85158](https://github.com/rust-lang/rust/pull/85158)
> - Constant::eq skips spans [#85208](https://github.com/rust-lang/rust/pull/85208)

@*WG-polymorphization by @**davidtwco**:
> There's no update from the polymorphization working group. Working group members are focusing their efforts elsewhere currently.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Disallows `#![feature(no_coverage)]` on stable and beta (using standard crate-level gating)" [rust#84871](https://github.com/rust-lang/rust/pull/84871)
  - opened by @**Rich Kadel**
  - reviewed by @**nagisa** and @**tmandry**
  - fixes P-critical [#84836](https://github.com/rust-lang/rust/issues/84836)
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
- "Remove unstable `--pretty` flag" [rust#83491](https://github.com/rust-lang/rust/pull/83491)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-05-06.20.2354818/near/237667433)
  - (@**pnkfelix** had some thoughts to be published on the PR)

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [74 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [50 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 43 P-high, 87 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - issue (and related ones) is being followed
  - are there already candidate patches for a stable backport? (ref. [this comment](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/unstable.20fingerprints.20-.20actually.20in.201.2E52/near/238357575))
  - anything else to discuss for this tracking issue?

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "On nightly rustc, E0599 emits a massive diagnostic to suggest wrapping the receiver in every combination of `{Box,Pin,Rc,Arc}::new({,&,&mut} expr)`" [rust#84769](https://github.com/rust-lang/rust/issues/84769)
  - beta backport of patch [rust#84808](https://github.com/rust-lang/rust/issues/84808) has been approved
  - issue be closed once lands in 1.53 beta

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Improve diagnostics of `evaluation of constant value failed` errors" [rust#85155](https://github.com/rust-lang/rust/issues/85155)
  - opened by @**Mike Welsh**
  - misleading diagnostic which could be annoying, potentially impacting other crates
  - being tracked in issue [rust#https://github.com/rust-lang/rust/issues/73961](https://github.com/rust-lang/rust/issues/85155#issuecomment-838072043)
  - regressed in [#83278](https://github.com/rust-lang/rust/pull/83278)
  - (unsure if this issue warrants a P-high or lower)

## Performance logs

> [triage full logs for 2021-05-11](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-05-11.md)

Not much change overall - both regressions and improvements were all minor, apart from the 2x compile-time improvement for libcore from PR [#83278](https://github.com/rust-lang/rust/issues/83278).

We did see a pretty clear 2% improvement in memory usage ([max-rss](https://perf.rust-lang.org/?start=7a0f1781d04662041db5deaef89598a8edd53717&end=382f748f23979e37e3e012b090e5a0313463f182&absolute=false&stat=max-rss)), and that was again due to PR [#83278](https://github.com/rust-lang/rust/issues/83278).

Triage done by **@pnkfelix**. 2 Regressions, 3 Improvements, 0 Mixed, 0 of them in rollups

#### Regressions

Integrate attributes as part of the crate hash [#83901](https://github.com/rust-lang/rust/issues/83901)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=770792ff8d1ec542e78e77876ac936f43ffb8e05&end=467253ff6a2aecd008d273286315ac14ff8ad937&stat=instructions:u) (up to 1.6% on `full` builds of `externs-check`)
- There was a regression, seems roughly consistent with the results that we got from the perf run on the PR, so this regression was expected outcome.

Bump stdarch submodule [#83278](https://github.com/rust-lang/rust/issues/83278)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ff34b919075f35a1787659e9c448a34b06bab8de&end=881c1ac408d93bb7adaa3a51dabab9266e82eee8&stat=instructions:u) (up to 3.3% on `full` builds of `keccak-debug`)
- There are regressions, but as noted in [PR comments](https://github.com/rust-lang/rust/pull/83278#issuecomment-835570336), they were not as bad as anticipated. And also, we did continue to see the 2x win on compile-time for libcore.

#### Improvements

- Retain data in vectorized registers for longer [#84915](https://github.com/rust-lang/rust/issues/84915)
- lazify backtrace formatting for delayed diagnostics [#84965](https://github.com/rust-lang/rust/issues/84965)
- Optimize BufWriter [#79930](https://github.com/rust-lang/rust/issues/79930)

#### Mixed

- None

#### Nags requiring follow up

No new nags this week, and none leftover from last week.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
