---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-02-25

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

### MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  - "Never Rollup When Changing the `compiler` Directory" [compiler-team#407](https://github.com/rust-lang/compiler-team/issues/407)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Add `-Z unpretty` flags for the AST and the THIR" [compiler-team#408](https://github.com/rust-lang/compiler-team/issues/408)
  - "Eagerly construct bodies of THIR" [compiler-team#409](https://github.com/rust-lang/compiler-team/issues/409)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Add `NotSupported` to `std::io::ErrorKind`" [rust#78880](https://github.com/rust-lang/rust/pull/78880)
  - "`impl PartialEq<Punct> for char`; symmetry for #78636" [rust#80595](https://github.com/rust-lang/rust/pull/80595)
  - "Demote x86_64-rumprun-netbsd target" [rust#81514](https://github.com/rust-lang/rust/issues/81514)
  - "Make char and u8 methods const" [rust#82078](https://github.com/rust-lang/rust/pull/82078)

### WG checkins

- @_*WG-rfc-2229*  by @**nikomatsakis** @**Matthew Jasper**:
  > - Discussed milestones for edition release: https://github.com/rust-lang/project-rfc-2229/milestones 
  > - `disjoint_capture_drop_reorder` lint partly implement to suppport migration around breaking changes across the edition boundry
  > - T-Lang decided on migration syntax to be `catpure!(var)` within a closure to force a complete capture of `var` by the closure. 
  > - Implemented better support for precise captures in move closures

- @_*wg-polymorphization* by @**davidtwco**:
  > There's no news from the polymorphization working group. Working group members have been focusing their efforts elsewhere in the compiler recently.

## Backport nominations

[T-compiler (stable)](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
[T-compiler (beta)](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- :beta: :stable: "Substitute erased lifetimes on bad placeholder type" [rust#82494](https://github.com/rust-lang/rust/pull/82494)
  - opened by @**Esteban Küber** 
  - not yet reviewed
  - Fixes [rust#82455](https://github.com/rust-lang/rust/issues/82455) a `P-medium` a stable to stable regression that emitted an ICE after showing a compilation error on invalid code.

[T-libs-impl (stable)](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl)
[T-libs-impl (beta)](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No backport nominations for `T-libs-impl` this time.

[T-rustdoc (beta)](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
[T-rustdoc (stable)](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- :beta: "[intra-doc links] Don't check feature gates of items re-exported across crates" [rust#82295](https://github.com/rust-lang/rust/pull/82295)
  - opened by @**Joshua Nelson** 
  - approved by @_**GuillaumeGomez**  @_**Manish Goregaokar** @_**Camelid**
  - fixes [rust#82284](https://github.com/rust-lang/rust/issues/82284), a `P-critical` regression that broke documentation for `serde` and other crates
- :beta: "rustdoc: Remove duplicate "List of all items"" [rust#82484](https://github.com/rust-lang/rust/pull/82484)
  - opened by @**Dániel Buga** 
  - approved by @_**GuillaumeGomez**  @_**Manish Goregaokar** @_**Camelid** 
  - closes [rust#82477](https://github.com/rust-lang/rust/issues/82477), rustdoc showed a title twice in the header 

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
  - "reduce threads spawned by ui-tests" [rust#81942](https://github.com/rust-lang/rust/pull/81942)
    - opened by @**The 8472|239181** (@**The 8472|330154**?) 
    - @**simulacrum** [raises concerns about](https://github.com/rust-lang/rust/pull/81942#issuecomment-778685649) maintaining the complexity cost, suggests more eyeballs on this PR
    - @**nagisa** [raise a concern](https://github.com/rust-lang/rust/pull/81942#issuecomment-782762020) that this could break tests sensible to the absence of a `-Ccodegen-units` flag
    - CI seems to not pass consistently

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [64 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 39 P-high, 88 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Starting with nightly-2021-01-13 (1.51) rustc fails to build archives on Windows 7" [rust#81051](https://github.com/rust-lang/rust/issues/81051)
  - Assigned to @**cuviper**, comments this bug looks similar to LLVM [#48378](https://bugs.llvm.org/show_bug.cgi?id=48378)
  - Win7 (x86_64-pc-windows-gnu) is still [Tier 1 platform](https://doc.rust-lang.org/nightly/rustc/platform-support.html#tier-1): a side question about this issue could be if it should be demoted
  - the problem disappears if reverting to [nightly-2021-01-12](https://github.com/rust-lang/rust/issues/81051#issuecomment-769520843) or up to LLVM [commit 6ec777c](https://github.com/rust-lang/llvm-project/commit/6ec777c)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

[2021-02-24 full Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-02-24.md)

Overall, a positive week for compiler performance with only one moderate regression. The change that introduced the regression leads to significantly improved [bootstrap speed](https://github.com/rust-lang/rust/pull/70951#issuecomment-766292996) of the compiler as well as easier maintainability.

Triage done by **@rylev**.

1 Regression, 5 Improvements, 0 Mixed
0 of them in rollups

#### Regressions

- Move the query engine out of rustc_middle [#70951](https://github.com/rust-lang/rust/issues/70951)
  - Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e7c23ab933ebc1f205c3b59f4ebc85d40f67d404&end=83b30a639d5abd1270ade35d9bd92271f5a5ba18&stat=instructions:u) (up to 4.9% on `full` builds of `deeply-nested-check`)
  - While this does somewhat hurt compiler performance, it is a huge gain in bootstrap speed. The performance impact was deemed acceptable, but perhaps an investigation in if the remaining performance regressions can be eliminated, should be looked into.
  - Added a nag to [the pull request](https://github.com/rust-lang/rust/pull/70951#issuecomment-785044935).

#### Improvements

- Only store a LocalDefId in some HIR nodes [#81611](https://github.com/rust-lang/rust/issues/81611)
- Inline try_get_cached [#82197](https://github.com/rust-lang/rust/issues/82197)
- Reduce size of InterpErrorInfo to 8 bytes [#82116](https://github.com/rust-lang/rust/issues/82116)
- Make the `Query` enum a simple struct. [#80891](https://github.com/rust-lang/rust/issues/80891)
- Improve assert_eq! and assert_ne! [#79100](https://github.com/rust-lang/rust/issues/79100)

#### Nags requiring follow up

- One nag for the only regression for the week.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
  - [T-lang] "Invalid `field is never read: ` lint warning" [rust#81658](https://github.com/rust-lang/rust/issues/81658)
  - "reduce threads spawned by ui-tests" [rust#81942](https://github.com/rust-lang/rust/pull/81942)
  - "`undefined reference to` linker error when using dylibs" [rust#82151](https://github.com/rust-lang/rust/issues/82151)
    - opened by @**Alex Kornitzer**, reports that working code on x86_64-unknown-linux-gnu not compiling anymore after updating the MongoDB crate (compiled as dynamic library)
    - @**Hameer Abbasi** did [some bisecting](https://github.com/rust-lang/rust/issues/82151#issuecomment-780520981) but the trail seems to go back to 2018 
    - a minimal mcve [is found at this comment](https://github.com/rust-lang/rust/issues/82151#issuecomment-779368017)
    - issue seems to warrant high priority but since it looks to be in the codebase since long, we are not sure about the implications/impact

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.