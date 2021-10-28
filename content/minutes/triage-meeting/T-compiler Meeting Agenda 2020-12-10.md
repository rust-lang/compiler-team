---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-12-10

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
- Pending FCP requests (check your boxes!)
  - "Drop official support for Windows XP" [compiler-team#378](https://github.com/rust-lang/compiler-team/issues/378)
  - "rustc: Stabilize `-Zrun-dsymutil` as `-Csplit-debuginfo`" [rust#79570](https://github.com/rust-lang/rust/pull/79570)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - [T-lang] "remove this weird special case from promotion" [rust#78363](https://github.com/rust-lang/rust/pull/78363)

### WG checkins

@*WG-rustc-dev-guide* checkin by @**Santiago Pastorino** and @**Joshua Nelson**:

>#### Changes
>
>- Adds a dev guide section on Rust Coverage [#985](https://github.com/rust-lang/rustc-dev-guide/pull/985)
>- Add notes about running the UI test suite [#977](https://github.com/rust-lang/rustc-dev-guide/pull/977)
>- Document what 'sysroot' means [#976](https://github.com/rust-lang/rustc-dev-guide/pull/976)
>- Add information about common git issues [#974](https://github.com/rust-lang/rustc-dev-guide/pull/974)
>- Improve contributor experience for the dev-guide itself [#973](https://github.com/rust-lang/rustc-dev-guide/pull/973)
>- Update bootstrap documentation with the new envvars for RUSTFLAGS [#970](https://github.com/rust-lang/rustc-dev-guide/pull/970)
>- Document how to modify feature gates [#968](https://github.com/rust-lang/rustc-dev-guide/pull/968)
>- Document when errors should have an associated error code [#967](https://github.com/rust-lang/rustc-dev-guide/pull/967)
>- add mir-opt section for optimization fuel [#963](https://github.com/rust-lang/rustc-dev-guide/pull/963)
>- Document the SessionDiagnostic derive macro. [#961](https://github.com/rust-lang/rustc-dev-guide/pull/961)
>- Add some more examples of using the compiler [#952](https://github.com/rust-lang/rustc-dev-guide/pull/952)
>- Add a section on identifiers in the MIR [#951](https://github.com/rust-lang/rustc-dev-guide/pull/951)
>- Add a section on data-flow convergence [#950](https://github.com/rust-lang/rustc-dev-guide/pull/950)
>- Document `src/tools/x`, an `x.py` wrapper [#945](https://github.com/rust-lang/rustc-dev-guide/pull/945)
>
>#### Changes in progress
>
>- Document lang items [#978](https://github.com/rust-lang/rustc-dev-guide/pull/978)

@*wg-incr-comp* checkin by @**Wesley Wiser** and @**pnkfelix**:
> *wg-incr-comp* has been meeting every two weeks and discussing any open PRs and doing some issue triage. All of the members are busy so not a lot is going on, but here's some of what was discussed in recent meetings:
>
> - @_**Santiago Pastorino** and @_**Wesley Wiser** have been working on changes to whether  or not we make copies of inline functions in debug mode (#76896). Waiting on review from @_**davidtwco**.
> - @_**Aaron Hill** implemented lazy decoding of `DefPathTable` from crate metadata (#74967). This had some great performance wins in incremental mode and has been merged after approval by @_**pnkfelix**.
> - @_**Wesley Wiser** started including the estimated size of codegen units in self-profile data (#78702). This was merged after approval by @_**simulacrum**.
> - @_**davidtwco** has been working on implementing Split DWARF support (#77117). It's currently completely functioning and passing our existing debuginfo tests. PR has been approved by @_**nagisa** but is blocked on #79536.
>
> Issue triage has revealed some recurring themes in the bugs we've looked at:
> 
> 1. Incremental bugs tend 
@*wg-incr-comp* checkin by @**Wesley Wiser** and @**pnkfelix**:
> *wg-incr-comp* has been meeting every two weeks and discussing any open PRs and doing some issue triage. All of the members are busy so not a lot is going on, but here's some of what was discussed in recent meetings:
>
> - @_**Santiago Pastorino** and @_**Wesley Wiser** have been working on changes to whether  or not we make copies of inline functions in debug mode (#76896). Waiting on review from @_**davidtwco**.
> - @_**Aaron Hill** implemented lazy decoding of `DefPathTable` from crate metadata (#74967). This had some great performance wins in incremental mode and has been merged after approval by @_**pnkfelix**.
> - @_**Wesley Wiser** started including the estimated size of codegen units in self-profile data (#78702). This was merged after approval by @_**simulacrum**.
> - @_**davidtwco** has been working on implementing Split DWARF support (#77117). It's currently completely functioning and passing our existing debuginfo tests. PR has been approved by @_**nagisa** but is blocked on #79536.
>
> Issue triage has revealed some recurring themes in the bugs we've looked at:
> 
> 1. Incremental bugs tend to be very hard to reproduce because they depend not only on the current state of the code being compiled, but on previous compilations as well. There's been some discussion of building better tools to help diagnose and report issues in a way that makes it easier for us to fix.
> 2. We've seen a number of issues related to the filesystem. The incremental cache uses some features like linking which are just not supported on certain platforms (Android for example). In other cases, using filesystem features reveals poor performance in the underlying filesystem.
> 
> We don't currently have anything to announce but we're beginning to think about forming project groups to tackle these problems.
to be very hard to reproduce because they depend not only on the current state of the code being compiled, but on previous compilations as well. There's been some discussion of building better tools to help diagnose and report issues in a way that makes it easier for us to fix.
> 2. We've seen a number of issues related to the filesystem. The incremental cache uses some features like linking which are just not supported on certain platforms (Android for example). In other cases, using filesystem features reveals poor performance in the underlying filesystem.
> 
> We don't currently have anything to announce but we're beginning to think about forming project groups to tackle these problems.

## Beta-nominations

Friendly reminder: add `T-compiler` label when nominating issues. We usually catch them up anyway, but some of them were missing due to some github searches misbehaving.

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Fix exhaustiveness in case a byte string literal is used at slice type" [rust#79072](https://github.com/rust-lang/rust/pull/79072)
  - opened by @**oli**
  - reviewed and r+'d by @**Esteban Küber** 
  - Fixes [rust#79048](https://github.com/rust-lang/rust/issues/79048), an incorrect "unreachable pattern" warning on nightly
  
[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- "fix soundness issue in `make_contiguous`" [rust#79814](https://github.com/rust-lang/rust/pull/79814)
  - opened by  @**lcnr** 
  - reviewed by @**Camelid** and  @**lcnr** 
  - not yet r+'d
  - fixes unsoundness in VecDeque::make_contiguous, issue [rust#79808](https://github.com/rust-lang/rust/issues/79808)


[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Transform post order walk to an iterative approach" [rust#78607](https://github.com/rust-lang/rust/pull/78607)
  - opened by [HeroicKatora](https://github.com/HeroicKatora)
  - reviewed and approved by **@davidtwco** 

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- "fix soundness issue in `make_contiguous`" [rust#79814](https://github.com/rust-lang/rust/pull/79814)
  - opened by  @**lcnr** 
  - reviewed by @**Camelid** 
  - not yet r+'ed
  - fixes unsoundness in VecDeque::make_contiguous, issue [rust#79808](https://github.com/rust-lang/rust/issues/79808)

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [53 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 3 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 8 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 28 P-high, 69 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Switching to opt-level=z on i686-windows-msvc triggers STATUS_ACCESS_VIOLATION" [rust#67497](https://github.com/rust-lang/rust/issues/67497)
  - Opened by @**dignifiedquire** 
  - Not yet assigned
  - [Rust 1.36.0 through 1.48.0](https://github.com/rust-lang/rust/issues/67497#issuecomment-733699197) all have broken builds on Windows i686-windows-msvc 
- "Upgrade to LLVM11 caused a codegen regression on Windows" [rust#78283](https://github.com/rust-lang/rust/issues/78283)
  - [Previously discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-11-12.20.2354818/near/216482008)
  - opened by @**Jeff Muizelaar**
  - assigned to  @**pnkfelix** 
  - Firefox code that used to work on Rust 1.46 started to fail after upgrading to LLVM 11
  - Affects only MSVC
  - @**Nikita Popov** suggests could be related to [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - @**Jeff Muizelaar** suggests to be related to LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943), provides a [minimal repro](https://github.com/rust-lang/rust/issues/78283#issuecomment-720156273)
  - @**pnkfelix** has patch in progress for LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943)
- "No error reported when a generic parameter doesn't meet the requirement of an associated type" [rust#78893](https://github.com/rust-lang/rust/issues/78893)
  - [Previously discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-11-12.20.2354818/near/216482210), and [a topic was created to discuss it on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/213817-t-lang/topic/.2378893.20no.20err.20when.20genrc.20param.20doesnt.20meet.20req.20of.20assoc.20type)
  - Nightly regression
  - Regressed on [rust#73905](https://github.com/rust-lang/rust/pull/73905)
  - @**Matthew Jasper** provides a fix in PR [rust#79543](https://github.com/rust-lang/rust/pull/79543)
- "Miscompilation of AVX2 code under --release" [rust#79865](https://github.com/rust-lang/rust/issues/79865)
  - opened by @**Tony Arcieri** 
  - not yet assigned (opened yesterday)
  - unsoundness that impacts cryptographic code
  - no mcve yet, but various bits may help build the case (example: [refactoring some code from a lambda into a function](https://github.com/rust-lang/rust/issues/79865#issuecomment-742039745) makes the issue disappear, adding `dbg!()` statements, etc.) 

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- "VecDeque: length 0 underflow and bogus values from pop_front(), triggered by a certain sequence of reserve(), push_back(), make_contiguous(), pop_front()" [rust#79808](https://github.com/rust-lang/rust/issues/79808)
  - assigned to @**lcnr**
  - fixes unsoundness in VecDeque::make_contiguous, issue [rust#79808](https://github.com/rust-lang/rust/issues/79808)
  - beta and stable nominated

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "1.48 beta broken on mips due to copy_file_range EOVERFLOW" [rust#78979](https://github.com/rust-lang/rust/issues/78979)
  - Reviewed by @**simulacrum**
  - This is already fixed on stable and nightly and a beta backport is approved and waiting to be done.
- "rustc nightly hangs and leaks memory" [rust#79714](https://github.com/rust-lang/rust/issues/79714)
  - opened by @**Isaac Leonard** 
  - not yet assigned
  - [JohnTitor](https://github.com/JohnTitor) mentions likely culprit PR [rust#73905](https://github.com/rust-lang/rust/pull/73905)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- "Failed to recover key for type_of with hash" [rust#79890](https://github.com/rust-lang/rust/issues/79890)
  - ICE when running `cargo test` over code that pulls an external crate
  - Reporter also [bisected the issue](https://github.com/rust-lang/rust/issues/79890#issuecomment-742380554)

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

Quiet week.

Triage done by **@simulacrum**.
Revision range: [c7cff213e937c1bb301be807ce04fcf6092b9163..4fd4a98d4788bc987d7f7add9df5f5ead6a1c15e](https://perf.rust-lang.org/?start=c7cff213e937c1bb301be807ce04fcf6092b9163&end=4fd4a98d4788bc987d7f7add9df5f5ead6a1c15e&absolute=false&stat=instructions%3Au)

0 Regressions, 2 Improvements, 1 Mixed
0 of them in rollups

### Regressions

### Improvements

[#79594](https://github.com/rust-lang/rust/issues/79594)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=c7cff213e937c1bb301be807ce04fcf6092b9163&end=d015f0d92144f0e72735a918aee8510b0fe2cff5&stat=instructions:u) (up to -1.7% on `incr-full` builds of `ctfe-stress-4-debug`)
- Likely due to the stress test not reflecting benefits of memoizing CTFE, which
  this partially removed (due to the addition of heap allocation, which should
  not be deduplicated).

[#79680](https://github.com/rust-lang/rust/issues/79680)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=e6225434fff7d493baac0aa91c57f2da923ea196&end=2218520b8adf8b8e64b817537d9eb0a84840e2f1&stat=instructions:u) (up to -20.6% on `full` builds of `match-stress-enum-check`)
- Fixes a regression from last week by adding a `#[inline]` attribute on some
  hot code. Improvements are likely not significant outside stress tests.

### Mixed

[#78373](https://github.com/rust-lang/rust/issues/78373)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=551a2c6cbcf239f662a18233cf647bf67e5a74ed&end=9122b769c8306b1cb3c8d1f96fca3ea3e208e22e&stat=instructions:u) (up to -28.4% on `incr-patched: println` builds of `clap-rs-debug`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=551a2c6cbcf239f662a18233cf647bf67e5a74ed&end=9122b769c8306b1cb3c8d1f96fca3ea3e208e22e&stat=instructions:u) (up to 9.9% on `incr-patched: println` builds of `regression-31157-opt`)
- Soundness fix ("Don't leak return value after panic in drop") and the perf
  results are mixed, largest ones mostly in incremental and generally likely
  just "generating more (necessary) LLVM IR".

### Nags requiring follow up

- stdarch expansion causing a 40% libcore compile time regression is still not
  resolved, and resolution is unclear. It seems likely that this could be one of
  our key elements for improving std compile times at least, though.
- No new nags.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Miscompilation root-caused to llvm bug" [rust#79708](https://github.com/rust-lang/rust/issues/79708)
    - Reported by @_**Jeremy Fitzhardinge**
    - LLVM alias analysis bug that is causing soundness issues for production users
    - Apparantly appeared in Rust 1.47.0, but the LLVM bug is present since 2015 ([relevant comment](https://github.com/rust-lang/rust/issues/79708#issuecomment-738993565))
    - Fixed in LLVM upstream on December 3rd ([review](https://reviews.llvm.org/D91576), [commit](https://github.com/llvm/llvm-project/commit/18603319321a6c1b158800bcc60035ee01549516))
    - Nominated to discuss if a cherry-pick of the fix is warranted

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "RFC: Checking conditional compilation at compile time" [rfcs#3013](https://github.com/rust-lang/rfcs/pull/3013)