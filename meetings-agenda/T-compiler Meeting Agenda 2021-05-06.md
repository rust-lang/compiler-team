---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-05-06

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

- :tada: Today the new stable release 1.52 is out :tada:
- Tomorrow **May, 7th 2021 10:00 ET** (14:00 UTC) monthly [Compiler Team planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)


## Announcements

- New MCPs (take a look, see if you like them!)
  -  "Promote `aarch64-apple-ios-sim` to Tier 2" [compiler-team#428](https://github.com/rust-lang/compiler-team/issues/428)
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
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  -  "Tracking Issue for {HashMap,BTreeMap}::into_{keys,values}" [rust#75294](https://github.com/rust-lang/rust/issues/75294)
  -  "Add default search path to `Target::search()`" [rust#83800](https://github.com/rust-lang/rust/pull/83800)

### WG checkins

- @*wg-incr-comp* by @**pnkfelix** and @**Wesley Wiser**:

> The incr-comp working group will be shifting to having its bi-weekly meetings [on zulip](https://rust-lang.zulipchat.com/#narrow/stream/241847-t-compiler.2Fwg-incr-comp/topic/change.20meeting.20time.20or.20other.20changes.20to.20drive.20engagement/near/235333445) instead of zoom.
>
> Since the last checkin (on [25 march 2021](https://hackmd.io/UZ8VFdqFT0mJtGRnm-Lwmw?view#WG-checkins)), thanks to efforts by cjgillot, we have started streaming the dep-graph to a file instead of storing it in-memory ([PR #82780](https://github.com/rust-lang/rust/pull/82780)).
>
- @*WG-llvm* checkin by @**nagisa**:
> Since the LLVM 12's landing there have been a large number of issues. Many were fixed. We also enabled a some features we thought were fixed. So we still have plenty of problems that are still outstanding. We'll have to disable some of those features (mutable-noalias, inline-asm stack probes...) until we've more confidence they're fixed again

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Deduplicate ParamCandidates with the same value except for bound vars" [rust#84559](https://github.com/rust-lang/rust/pull/84559)
  - Opened by @**Jack Huey**
  - changes requested by @**nikomatsakis**
  - Fixes a [p-high regression](https://github.com/rust-lang/rust/issues/84398) that slipped into beta 1.53
- :beta: "Account for unsatisfied bounds in E0599" [rust#84808](https://github.com/rust-lang/rust/pull/84808)
  - Opened by @**Esteban Küber**
  - reviewed by @**Vadim Petrochenkov**, already merged
  - Fixes a [P-high](https://github.com/rust-lang/rust/issues/84769)
  - Nominated for 1.53 beta backport
- :beta: "Do not ICE on invalid const param" [rust#84913](https://github.com/rust-lang/rust/pull/84913)
  - Opened by @**Esteban Küber**
  - reviewed by @**varkor**, already merged
  - Fixes a [P-medium ICE](https://github.com/rust-lang/rust/issues/84831)
  - Nominated for 1.53 beta backport
- No stable nominations for `T-compiler` this time.

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No backport nominations for `T-libs-impl` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Remove unstable `--pretty` flag" [rust#83491](https://github.com/rust-lang/rust/pull/83491)
  - Should disambiguate and consolidate the usage of two apparently redundant flags (`--unpretty` and `--pretty`) into one
  - Only known usage seems to be in the Rust Playground
  - Reviewed by @**varkor**, suggests removing it from the Rust Playground before landing this (@**Jake Goulding** agrees on removing the flag)
  - [@**Santiago Pastorino** suggests](https://github.com/rust-lang/rust/pull/83491#issuecomment-831894280) renaming/aliasing the flag to a `--dump-*` to better reflect its purpose

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- "Use try_reserve in Vec's io::Write" [rust#84612](https://github.com/rust-lang/rust/pull/84612)
  - Opened by @**Kornel**
  - Assigned for review to @**Mara**, waiting for consensus from T-libs
  - Currently discussing the possible breakage this could cause (although fixing an incorrect behaviour)
  - addressed the concern by [making it a warning](https://github.com/rust-lang/rust/pull/84612#issuecomment-833052459) and maybe `io::Error` in the future

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [73 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [51 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 42 P-high, 88 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "no_coverage feature-gated on function, not crate?" [rust#84836](https://github.com/rust-lang/rust/issues/84836)
   - opened by @**simulacrum**
   - @**Rich Kadel** pushed [a PR to address the concern](https://github.com/rust-lang/rust/pull/84871)
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - opened by @**simulacrum** and nominated for discussion (see below)

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Type annotations needed error on definition site" [rust#84398](https://github.com/rust-lang/rust/issues/84398)
  - This should be fixed by PR [#84559](https://github.com/rust-lang/rust/pull/84559) (mentioned before in beta backports)
- "On nightly rustc, E0599 emits a massive diagnostic to suggest wrapping the receiver in every combination of `{Box,Pin,Rc,Arc}::new({,&,&mut} expr)`" [rust#84769](https://github.com/rust-lang/rust/issues/84769)
  - Addressed by @**Esteban Küber** in PR [#84808](https://github.com/rust-lang/rust/pull/84808)
  - Will be also beta backported with PR [#84969](https://github.com/rust-lang/rust/pull/84969) (waiting for review, see previous beta nomination)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-05-04](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-05-04.md)

Quiet week overall.

Triage done by **@simulacrum**, 2 Regressions, 1 Improvements, 1 Mixed

#### Regressions

Revert PR 77885 everywhere [#84708](https://github.com/rust-lang/rust/issues/84708)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=18587b14d1d820d31151d5c0a633621a67149e78&end=478a07df05e3fe8df964291d8b25dd80b7e0e76b&stat=instructions:u) (up to 2.0% on `incr-unchanged` builds of `cargo-check`)

Update BARE_TRAIT_OBJECT and ELLIPSIS_INCLUSIVE_RANGE_PATTERNS to errors in Rust 2021 [#83213](https://github.com/rust-lang/rust/issues/83213)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c20c9219dae5ea56ce9bf1c211fafdc7da8700b9&end=7a0f1781d04662041db5deaef89598a8edd53717&stat=instructions:u) (up to 3.0% on `incr-unchanged` builds of `encoding-check`)

#### Improvements

- "const" initialized thread locals in rustc [#84833](https://github.com/rust-lang/rust/issues/84833)

#### Mixed

Move HIR parenting information out of hir_owner [#83114](https://github.com/rust-lang/rust/issues/83114)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5f304a5d7908d9dd55dda3baadd3cf564d907369&end=6e2a34474bb86911c5235476d2ea820e163629fe&stat=instructions:u) (up to -5.0% on `incr-patched: println` builds of `piston-image-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5f304a5d7908d9dd55dda3baadd3cf564d907369&end=6e2a34474bb86911c5235476d2ea820e163629fe&stat=instructions:u) (up to 2.2% on `incr-unchanged` builds of `unused-warnings-check`)

#### Nags requiring follow up

* None this week

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - opened by @**simulacrum**
  - a `P-critical` nominated for discussion to be addressed before next stable
  - [as per comment](https://github.com/rust-lang/rust/issues/84970#issue-877005793): there will be new ICEs emitted as a result of improved error detection in the incremental code, are there more user-friendly alternatives than emitting ICEs?

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
