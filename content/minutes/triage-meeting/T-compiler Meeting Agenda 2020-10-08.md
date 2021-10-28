---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-10-08

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Today we are releasing Rust 1.47! :tada::tada::tada:
- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
- Pending FCP requests (check your boxes!)
  - "Accept RFC 2951 "Linking modifiers for native libraries"" [compiler-team#356](https://github.com/rust-lang/compiler-team/issues/356)
- Things in FCP (make sure you're good with it)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "`ty.kind()` -> `ty.data()`" [compiler-team#359](https://github.com/rust-lang/compiler-team/issues/359)
  - "Internal lint: Ban `pub` re-exports in compiler/" [compiler-team#368](https://github.com/rust-lang/compiler-team/issues/368)
  - "Promote aarch64-pc-windows-msvc to Tier 2 Development Platform" [rust#75914](https://github.com/rust-lang/rust/pull/75914)
  - "Set up CI for aarch64-apple-darwin" [rust#75991](https://github.com/rust-lang/rust/pull/75991)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - [T-libs] "Relax promises about condition variable." [rust#76932](https://github.com/rust-lang/rust/pull/76932)
  - [T-libs] "Make RawFd implement the RawFd traits" [rust#76969](https://github.com/rust-lang/rust/pull/76969)
  - [T-libs] "Remove std::io::lazy::Lazy in favour of SyncOnceCell" [rust#77154](https://github.com/rust-lang/rust/pull/77154)

### WG checkins

@*WG-traits* checkin by @**jackh726**:
> We started sprint 4 of the year on Sept. 15.
> rustc PRs:
> * Separate projection bounds and predicates (#73905)
> * Refactor `ty.kind` -> `ty.kind()`` (#75077)
> * Several Chalk updates
>   * Includes fix for fundamental types that unblocks #77187
>
> Chalk PRs:
> * Add foreign types and generators (#601 and #593)
> * Add `Unpin` and `CoerceUnsized` (#603 and #607)
> * Extend auto trait impls for some builtin types (#612)
> * Add `'static` (#617)
>
> Some changes on the horizon:
> * `TyKind` -> `TyData`
> * Refactoring `Binder` to track late-bound variables
> * Adding variance and subtyping to Chalk
> * Adding canonicalization of placeholders to Chalk
>
> Also, about half of rustc tests pass in `compare-mode=chalk`; we're working on triaging these and making more pass.

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Move `EarlyOtherwiseBranch` to mir-opt-level 2" [rust#77582](https://github.com/rust-lang/rust/pull/77582)
  - Opened by @**ecstatic-morse** and assigned to @**Wesley Wiser**
  - References [PR #75119](https://github.com/rust-lang/rust/pull/75119)
- "Update RLS and Rustfmt" [rust#77590](https://github.com/rust-lang/rust/pull/77590)
  - Nominated because the rustfmt bump includes support for some syntax that is newly introduced in 1.48.0. When adding syntax we should aim for the rustfmt which ships with the same version of rustc to not fail on the new syntax.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No stable nominations for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations for `libs-impl` this time.

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

- [5 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [50 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [32 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [3 P-critical, 1 P-high, 4 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 20 P-high, 60 P-medium, 6 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Optimisation-caused UB during cross-crate compilation" [rust#76387](https://github.com/rust-lang/rust/issues/76387)
  - This one was already discussed
  - Assigned to @**Aaron Hill**
  - [A different LLVM patch has been accepted](https://reviews.llvm.org/D88529) and will be included in LLVM 12
  - The accepted patch is pretty small and self-contained, so we could cherry-pick it if we wanted to
- "coreos-installer test segfaults on s390x-unknown-linux-gnu" [rust#77382](https://github.com/rust-lang/rust/issues/77382)
  - This was discussed last week
  - Opened by @**cuviper**
  - @**ecstatic-morse** points to this issue as duplicate of [rust#74551](https://github.com/rust-lang/rust/issues/74551)
  - Crossreferenced in Bugzilla issue [#1883457](https://bugzilla.redhat.com/show_bug.cgi?id=1883457)
  - @**cuviper** opened an issue on [LLVM](https://bugs.llvm.org/show_bug.cgi?id=47736)
  - There's an [LLVM patch already](https://reviews.llvm.org/D89034)
- "Type inference regression and ICE in nightly 2020-10-06" [rust#77638](https://github.com/rust-lang/rust/issues/77638)
  - Assigned to @**Matthew Jasper**
  - Nightly regression
  - Bisected to [rust#73905](https://github.com/rust-lang/rust/pull/73905). The issue below regressed in the same PR
- "[ICE] Encountered errors resolving bounds after type-checking" [rust#77653](https://github.com/rust-lang/rust/issues/77653)
  - Assigned to @**Matthew Jasper**
  - Nightly regression
  - Opened by @**lzutao** to highlight comment from issue above :point_up: [rust#77638](https://github.com/rust-lang/rust/issues/77638#issuecomment-704892157)
- "ICE: Projection bound ... was applicable to ... but now is not" [rust#77656](https://github.com/rust-lang/rust/issues/77656)
  - Opened by @**Tavian Barnes** 
  - Nightly regression that impacts code in a crate
  - Bisected to commit [08e2d46](https://github.com/rust-lang/rust/commit/08e2d4616613716362b4b49980ff303f2b9ae654), merged in [rust#73905](https://github.com/rust-lang/rust/pull/73905)

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "Build hang on Linux with nightly and beta toolchains" [rust#76980](https://github.com/rust-lang/rust/issues/76980)
  - Unassigned
  - Build hangs on beta
  - @**Eric Huss** bisected it to [rust#73526](https://github.com/rust-lang/rust/pull/73526)
  - @**cuviper** [is not aware of any LLVM 11 issue like that ](https://github.com/rust-lang/rust/issues/76980#issuecomment-695805807)
  - A [possible work-around was added](https://github.com/rust-lang/rust/pull/77642) by @**Pietro Albini** but it doesn't seem to be confirmation if works or not.
  - [@**cuviper** believes that the work-around is not the whole story about this issue](https://github.com/rust-lang/rust/issues/76980#issuecomment-705244990)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

A quiet week. One rather large regression on a synthetic benchmark and a few
small improvements.

[#77023](https://github.com/rust-lang/rust/issues/77023) is an interesting
case. It encoded an invariant about slice lengths as an `assume` intrinsic
inside `len` function. It seems to have caused a small compile-time slowdown,
but there was no improvement in `check` build performance (a proxy for generated
code quality). In fact, the LLVM documentation [specifically advises
against](https://llvm.org/docs/LangRef.html#llvm-assume-intrinsic) overuse of
the `assume` intrinsic in cases where the invariant is unlikely to be of much
help to the optimizer. That seems to be the case here.

Triage done by **@ecstaticmorse**.
Revision range: [6369a98ebdee8ce01510f5d4307ddb771c8cb0e5..ea7e131435a960d154e9a5d6a9297039574ffd7d](https://perf.rust-lang.org/?start=6369a98ebdee8ce01510f5d4307ddb771c8cb0e5&end=ea7e131435a960d154e9a5d6a9297039574ffd7d&absolute=false&stat=instructions%3Au)

1 Regressions, 2 Improvements, 1 Mixed

1 of them in rollups

### Regressions

[#77381](https://github.com/rust-lang/rust/issues/77381) Rollup of 12 pull requests
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=9bb55dc8642d811d66a7599812009cc063577e00&end=b218b952f800c1160b8b5e764ca651b02d678565&stat=instructions:u) (up to 18.3% on `incr-full` builds of `deeply-nested-debug`)
- I suspect [#76909](https://github.com/rust-lang/rust/pull/76909).

### Improvements

[#77257](https://github.com/rust-lang/rust/issues/77257) Optimize `IntRange::from_pat`, then shrink `ParamEnv`
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=fc2daaae610b5515438b551a2f3706196a997f35&end=48cab6744786cdc5cb5428d2b64efc967ae90496&stat=instructions:u) (up to -2.1% on `full` builds of `ctfe-stress-4-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=fc2daaae610b5515438b551a2f3706196a997f35&end=48cab6744786cdc5cb5428d2b64efc967ae90496&stat=instructions:u) (up to 1.3% on `full` builds of `unicode_normalization-check`)

[#77466](https://github.com/rust-lang/rust/issues/77466) Re-land PR #71840 (Rework MIR drop tree lowering) #77466
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=beb5ae474d2835962ebdf7416bd1c9ad864fe101&end=ced813fec0fb9e883906f18b76d618baf9f5bc08&stat=instructions:u) (up to 2.3% on `full` builds of `regex-opt`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=beb5ae474d2835962ebdf7416bd1c9ad864fe101&end=ced813fec0fb9e883906f18b76d618baf9f5bc08&stat=instructions:u) (up to -2.2% on `incr-unchanged` builds of `webrender-wrench-opt`)

### Mixed

[#77023](https://github.com/rust-lang/rust/issues/77023) Hint the maximum length permitted by invariant of slices
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=4ccf5f731bb71db3470002d6baf5ab4792b821d9&end=beb5ae474d2835962ebdf7416bd1c9ad864fe101&stat=instructions:u) (up to 2.5% on `incr-patched: sparse set` builds of `regex-opt`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=4ccf5f731bb71db3470002d6baf5ab4792b821d9&end=beb5ae474d2835962ebdf7416bd1c9ad864fe101&stat=instructions:u) (up to -1.2% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo-debug`)

### Nags requiring follow up

- [#77381](https://github.com/rust-lang/rust/issues/77381)
- [#77023](https://github.com/rust-lang/rust/issues/77023)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "`use dep1::foo as dep1` is considered ambiguous on nightly but not beta" [rust#77586](https://github.com/rust-lang/rust/issues/77586)
  - @**Vadim Petrochenkov** explains that the reason of this regression is [rust#77421](https://github.com/rust-lang/rust/pull/77421) that addresses [rust#74556](https://github.com/rust-lang/rust/issues/74556) which is not [a bug fix, but rather an implementation of a slightly more conservative language rule giving us some more freedom in the future](https://github.com/rust-lang/rust/issues/77586#issuecomment-703812974).
  - Reporter mentions that [fixing to code to make it compile](https://github.com/rust-lang/rust/issues/77586#issuecomment-703817449) is not a big deal 
  - We're slighty inclined to either close it or maybe run craterbot over it

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- "regression 1.46 -> 1.47 big-endian backtrace-related UI tests failing" [rust#77410](https://github.com/rust-lang/rust/issues/77410)
  - Looks like there's a regression on Tier 2 platforms: `s390x | powerpc | ppc64 | sparc64` but OK on 1.46: `s390x | ppc64`
  - Could be related to PR [rust#74682](https://github.com/rust-lang/rust/pull/74682) and [rust#77424](https://github.com/rust-lang/rust/issues/77424)