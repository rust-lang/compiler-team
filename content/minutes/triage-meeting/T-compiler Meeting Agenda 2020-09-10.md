---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-09-10

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Please fill out the [MCP retrospective survey](https://docs.google.com/forms/d/e/1FAIpQLSc-7SN8HCkJBwgQverz9NfBAo2Ik_dwk6DyJtsQjVjnWxK5Pw/viewform); we'll use the results to guide the upcoming design meeting  Friday Sep 18.
- Contributors may want to check out [improving bootstrap times for contributor fun and profit Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/improving.20bootstrap.20times.20for.20contributor.20fun.20and.20profit)
- New MCPs (take a look, see if you like them!)
  - "Accept RFC 2951 "Linking modifiers for native libraries"" [compiler-team#356](https://github.com/rust-lang/compiler-team/issues/356)
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
  - "Uplift `temporary-cstring-as-ptr` lint from `clippy` into rustc" [compiler-team#346](https://github.com/rust-lang/compiler-team/issues/346)
  - "Uplift `drop-bounds` lint from clippy into rustc" [compiler-team#347](https://github.com/rust-lang/compiler-team/issues/347)
  - "Add StatementKind::Intrinsic to MIR" [compiler-team#348](https://github.com/rust-lang/compiler-team/issues/348)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
- Pending FCP requests (check your boxes!)
  - "Promote aarch64-pc-windows-msvc to Tier 2 Development Platform" [rust#75914](https://github.com/rust-lang/rust/pull/75914)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - "Don't build tools by default with `x.py build`" [compiler-team#351](https://github.com/rust-lang/compiler-team/issues/351)
- Finalized FCPs (disposition merge)
  - [T-libs] "Update stdarch" [rust#73166](https://github.com/rust-lang/rust/pull/73166)

### WG checkins

@*WG-mir-opt* checkin by @**oli**:
>* `x != false` -> `x` optimization: (https://github.com/rust-lang/rust/pull/76067)
>* `x = y == CONST; switch(x)` -> `switch(y)` optimization: (https://github.com/rust-lang/rust/pull/75370)
>* various clean ups of mir printing making it less noisy: https://github.com/rust-lang/rust/pull/75697 https://github.com/rust-lang/rust/pull/75670 https://github.com/rust-lang/rust/pull/75566
>* deaggregate `Rvalue::Aggregate` before running optimizations: https://github.com/rust-lang/rust/pull/73656
>* mir validation checks that we don't reintroduce aggregates after deaggregation: https://github.com/rust-lang/rust/pull/75562
>* optimize away `_x = true`, `_x = false` basic blocks if `_x` can be computed without branches https://github.com/rust-lang/rust/pull/75382
>* OOM bugfix in const prop optimization: https://github.com/rust-lang/rust/pull/74821
>* make simplify match arms opt more powerful: https://github.com/rust-lang/rust/pull/74748
>* peephole optimize identity ops on BitAnd, BitOr and Mul: https://github.com/rust-lang/rust/pull/74491

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Account for version number in NtIdent hack" [rust#76331](https://github.com/rust-lang/rust/pull/76331)
  - Opened by @**Aaron Hill** and approved by @**Vadim Petrochenkov**
  - @**Aaron Hill** suggests a beta-backport, since this PR just fixes what PR [rust#73084](https://github.com/rust-lang/rust/pull/73084) was supposed to do in the first place.
- "Fix HashMap visualizers in Visual Studio (Code)" [rust#76389](https://github.com/rust-lang/rust/pull/76389)
  - Opened by [MaulingMonkey](https://github.com/MaulingMonkey) and approved by @**Vadim Petrochenkov**
  - @**Vadim Petrochenkov** suggests beta-backport to fix an issue introduced in [rust#70052](https://github.com/rust-lang/rust/pull/70052) (update hashbrown crate to 0.8.1)

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
- "Don't run tidy exec check on WSL2" [rust#74753](https://github.com/rust-lang/rust/pull/74753)
  - @**nikomatsakis** approved the changes
  - @**mati865** is not convinced this is the right solution
  - Windows WG was just pinged
- "build aarch64-musl host compiler in CI" [rust#75751](https://github.com/rust-lang/rust/pull/75751)
  - Assigned to @**Pietro Albini**
  - @**Pietro Albini** suggests `T-compiler` to review since this PR bumps AArch64 MUSL from **Cross-compilation Tier 2** to **Development Platform Tier 2**
  - This issue is `I-nominated` for `T-compiler` discussion

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [52 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [31 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 2 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 20 P-high, 57 P-medium, 6 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "incorrect code generation for i686 release build for 1.47 beta and nightly" [rust#76042](https://github.com/rust-lang/rust/issues/76042)
  - Assigned to @**pnkfelix**
  - `I-unsound` issue and beta regression
  - It seems to be [a bug in LLVM](https://bugs.llvm.org/show_bug.cgi?id=47278), introduced in the LLVM 11 upgrade and triggered by compiler flag `-Copt-level=0`
- "Optimisation-caused UB during cross-crate compilation" [rust#76387](https://github.com/rust-lang/rust/issues/76387)
  - Unassigned
  - Also nominated for discussion
  - Is not a regression, this never worked so it was also discussed if this was `P-critical` or `P-high`
  - [It's an LLVM bug](https://bugs.llvm.org/show_bug.cgi?id=47444)
  - @**Aaron Hill** is working on an LLVM patch
- "regression: get_unchecked resolves to unstable feature use" [rust#76479](https://github.com/rust-lang/rust/issues/76479)
  - Unassigned
  - Opened by @**simulacrum** after hitting the issue on a crater run
  - @**simulacrum** suggested that is expected breakage (before the MCVE was built)
  - Beta regression that started in PR [rust#73565](https://github.com/rust-lang/rust/pull/73565) cc @**Matthew Jasper** @**nagisa**

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- No unassigned `P-high` beta regressions this time.

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

A few small compile-time regressions this week. The first was [#70793](https://github.com/rust-lang/rust/pull/70793), which added some specializations to the standard library in order to increase runtime performance. The second was [#73996](https://github.com/rust-lang/rust/pull/73996), which adds an option to the diagnostics code to print only the names of types and traits when they are unique instead of the whole path. The third was [#75200](https://github.com/rust-lang/rust/pull/75200), which refactored part of `BTreeMap` to avoid aliasing mutable references.

Triage done by @**ecstatic-morse** 
Revision range: [d927e5a655809b6b20501889e093c085d6ffe6f7..35fc8359868e65a0970094f648ba87fce634e8c7](https://perf.rust-lang.org/?start=d927e5a655809b6b20501889e093c085d6ffe6f7&end=35fc8359868e65a0970094f648ba87fce634e8c7&absolute=false&stat=instructions%3Au)

3 Regressions, 0 Improvements, 0 of them in rollups.

#### Regressions

[#75200](https://github.com/rust-lang/rust/pull/75200)
- A small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c59199efca5856cdf810919fbf9b5bce32dc4523&end=70c5f6efc445963bbfa5dd53f81c245741eac8cb&stat=instructions:u)

[#73996](https://github.com/rust-lang/rust/pull/73996)
- A small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=0d0f6b113047b2cf9afbde990cee30fd5b866469&end=af3c6e733a40e671550e0f0f5aeecaa13772ba56&stat=instructions:u)

[#70793](https://github.com/rust-lang/rust/pull/70793)
- A small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=62dad457bc73804891c6ac9a31f90de19cbb59a3&end=0d0f6b113047b2cf9afbde990cee30fd5b866469&stat=instructions:u) for `check`, `debug` and `opt` benchmarks.
- However, an improvement in `doc` benchmarks, likely due to better optimized standard library.

#### Improvements

- None

#### Nags requiring follow up

- [#75200](https://github.com/rust-lang/rust/pull/75200)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- [T-compiler RFC backlog](https://github.com/rust-lang/rfcs/pulls?q=is%3Apr+is%3Aopen+label%3AT-compiler+sort%3Aupdated-asc)
  - 13 total RFCs tagged with T-compiler
  - 6 have not had any activity since last year
  - @**wesleywiser** suggests "Perhaps we should try to triage these during the weekly compiler team meetings?"
- "build aarch64-musl host compiler in CI" [rust#75751](https://github.com/rust-lang/rust/pull/75751)
  - Assigned to @**Pietro Albini**
  - @**Pietro Albini** suggests `T-compiler` to review since this PR bumps AArch64 MUSL from **Cross-compilation Tier 2** to **Development Platform Tier 2**
- "diagnostics: "one type is more general" for two identical types?" [rust#75791](https://github.com/rust-lang/rust/issues/75791)
  - Opened by @**matthiaskrgr** and assigned to @**Esteban Küber** 
  - Confusing diagnostics suggestion
  - `P-high` stable regression, duplicate of [rust#74400](https://github.com/rust-lang/rust/issues/74400)
  - Nominated to ensure we circle back around to it this week if progress isn't made
- "Widen TypeId from 64 bits to 128." [rust#75923](https://github.com/rust-lang/rust/pull/75923)
  - Opened by @**eddyb**
  - @**simulacrum** [nominated it to talk about @**eddyb**'s concern wrt to typeid stabilization; it might be a T-lang question too](https://github.com/rust-lang/rust/pull/75923#issuecomment-684051064).
- "Optimisation-caused UB during cross-crate compilation" [rust#76387](https://github.com/rust-lang/rust/issues/76387)
  - Unassigned
  - Also nominated for discussion
  - Is not a regression, this never worked so it was also discussed if this was `P-critical` or `P-high`
  - [It's an LLVM bug](https://bugs.llvm.org/show_bug.cgi?id=47444)
  - @**Aaron Hill** is working on an LLVM patch
- "Macro hygiene change breaks Firefox builds." [rust#76480](https://github.com/rust-lang/rust/issues/76480)
  - Breaking change
  - Nominated for discussion about how can we do better here
  - cc @**Esteban Küber** @**Aaron Hill**

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.