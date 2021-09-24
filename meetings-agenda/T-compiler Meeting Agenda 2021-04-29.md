---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-04-29

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

- Tomorrow (Friday April, 30th) rustc steering: [perf triage report construction](https://hackmd.io/@ryanlevick/Bk1Hidcbu) at 10:00 ET (14:00 UTC)
- Next week **May, 6th** the new stable release 1.52 will be out

## Announcements

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  -  "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  -  "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  -  "Eagerly construct bodies of THIR" [compiler-team#409](https://github.com/rust-lang/compiler-team/issues/409)
  -  "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
  -  "A --temps-dir option for specifying where the intermediate files are written" [compiler-team#423](https://github.com/rust-lang/compiler-team/issues/423)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  -  "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  -  "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  -  "Rename -Cllvm-args to something backend agnostic" [compiler-team#421](https://github.com/rust-lang/compiler-team/issues/421)
  -  "Update the existing musl targets to be dynamically linked." [compiler-team#422](https://github.com/rust-lang/compiler-team/issues/422)
  -  "Split rustc_mir" [compiler-team#426](https://github.com/rust-lang/compiler-team/issues/426)
  -  "Add default search path to `Target::search()`" [rust#83800](https://github.com/rust-lang/rust/pull/83800)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  -  "Tracking issue for x86 bittest intrinsics" [rust#59414](https://github.com/rust-lang/rust/issues/59414)
  -  "Tracking issue for array::from_ref and array::from_mut" [rust#77101](https://github.com/rust-lang/rust/issues/77101)
  -  "Tracking Issue for 'ordering helpers'" [rust#79885](https://github.com/rust-lang/rust/issues/79885)
  -  "Tracking Issue for vec_extend_from_within" [rust#81656](https://github.com/rust-lang/rust/issues/81656)
  -  "Update BARE_TRAIT_OBJECT and ELLIPSIS_INCLUSIVE_RANGE_PATTERNS to errors in Rust 2021" [rust#83213](https://github.com/rust-lang/rust/pull/83213)
  -  "Stabilize `:pat_param` and remove `:pat2021`" [rust#83386](https://github.com/rust-lang/rust/pull/83386)
  -  "Allow setting `target_family` to multiple values, and implement `target_family="wasm"`" [rust#84072](https://github.com/rust-lang/rust/pull/84072)
  -  "Stabilize Duration::MAX" [rust#84120](https://github.com/rust-lang/rust/pull/84120)
  -  "Cautiously add IntoIterator for arrays by value" [rust#84147](https://github.com/rust-lang/rust/pull/84147)

### WG checkins

@*WG-diagnostics* by @**Esteban Küber** and @**oli**:
> Checkin text

@*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Joshua Nelson**:

> ### Most notable changes
>- Add sample nix shell [#1113](https://github.com/rust-lang/rustc-dev-guide/pull/1113)
>- Mention -Z unpretty=mir-cfg for debugging MIR [#1112](https://github.com/rust-lang/rustc-dev-guide/pull/1112)
>- Mention CI build of LLVM in build instructions [#1104](https://github.com/rust-lang/rustc-dev-guide/pull/1104)
>- Document test input normalization [#1098](https://github.com/rust-lang/rustc-dev-guide/pull/1098)
>- Add quickstart for adding a new optimization [#1094](https://github.com/rust-lang/rustc-dev-guide/pull/1094)
>- Add Polymorphisation paper [#1093](https://github.com/rust-lang/rustc-dev-guide/pull/1093)
>- Suggest using `git range-diff` [#1092](https://github.com/rust-lang/rustc-dev-guide/pull/1092)

> ### Most notable WIPs
>- Update build instructions for rustdoc [#1117](https://github.com/rust-lang/rustc-dev-guide/pull/1117)
>- Remove requests or suggestions about rebase and fixup contradictory to rust-highfive bot comment [#1111](https://github.com/rust-lang/rustc-dev-guide/pull/1111)
>- Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)
>- Explain the new valtree system for type level constants. [#1097](https://github.com/rust-lang/rustc-dev-guide/pull/1097)
>- Add a section on keeping things up to date in the git section [#1031](https://github.com/rust-lang/rustc-dev-guide/pull/1031)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No backport nominations for `T-compiler` this time.

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No backport nominations for `T-libs-impl` this time.

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

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [70 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [46 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 5 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 41 P-high, 86 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "HRTBs are unsound: HRTB on subtrait provides HTRB on supertrait with weaker implied bounds." [rust#84591](https://github.com/rust-lang/rust/issues/84591)
  - higher ranked trait bound (HRTB) unsoundness on Rust stable
- "Functions, closures, and HRTB-trait-objects can implement traits such that validity of associated types is never checked." [rust#84533](https://github.com/rust-lang/rust/issues/84533)
  - related to previous issue #84591
  - note: perhaps not be a regression, faulty code compiles even on 2018-01-01 nightly

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "rustdoc drops impl Foreign<Local> for Foreign" [rust#82465](https://github.com/rust-lang/rust/issues/82465)
   - this should be handled by PR [#82496](https://github.com/rust-lang/rust/pull/82496) by @**GuillaumeGomez**
   - The PR is blocked by some compiler error, [see stacktrace](https://github.com/rust-lang/rust/pull/82496#issuecomment-785396571)
   - The PR has work done by @**GuillaumeGomez** and @**Joshua Nelson**  (also commented by @**Vadim Petrochenkov** [comments](https://github.com/rust-lang/rust/pull/82496#issuecomment-786951402)) but seems to a bit stuck
   - Perhaps a second look at it?
- "`probe-stack=inline-asm` generates wrong DWARF information" [rust#83139](https://github.com/rust-lang/rust/issues/83139)
   - @nagisa handled backporting of https://reviews.llvm.org/D99579 in PR #84270
   - and @**pnkfelix** with PR [#83412](https://github.com/rust-lang/rust/pull/83412)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Type annotations needed error on definition site" [rust#84398](https://github.com/rust-lang/rust/issues/84398)
  - @**Jack Huey** submitted patch [#84559](https://github.com/rust-lang/rust/pull/84559) (unassigned, waiting for a review)

## Performance logs

> [2021-04-28 triage logs](https://github.com/rust-lang/rustc-perf/blob/fa2f5c61fd8f0490eeb4e41dbcd21cb39a461b44/triage/2021-04-28.md)

It's always nice to have a week without any regressions and 2 small improvements 🎉🎉.

Triage done by **@rylev**.

0 Regressions, 2 Improvements, 0 Mixed, 0 of them in rollups

#### Regressions

#### Improvements

- Use arrayvec 0.7, drop smallvec 0.6 [#84420](https://github.com/rust-lang/rust/issues/84420)
- Update grab bag [#84498](https://github.com/rust-lang/rust/issues/84498)

#### Mixed

#### Nags requiring follow up

* There has still been no follow up to [last week's issue](https://github.com/rust-lang/rust/pull/84130#issuecomment-823898920).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "lldb tests only run on macos" [rust#81813](https://github.com/rust-lang/rust/issues/81813)
  - nominated by @**pnkfelix** [see comment](https://github.com/rust-lang/rust/issues/81813#issuecomment-828786338) about debuginfo tests breakage

- Special case: [highfive#278](https://github.com/rust-lang/highfive/pull/278)

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
