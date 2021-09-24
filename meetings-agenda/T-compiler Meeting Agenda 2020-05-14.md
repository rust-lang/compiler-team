---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-05-14

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- We have a design meeting tomorrow: "survey overview and discussion"
- Major Changes Proposals:
  - Seconded proposals (in FCP)
    - "Implement LLVM-compatible source-based code coverage" [#278](https://github.com/rust-lang/compiler-team/issues/278)
    - "Inline assembly" [#280](https://github.com/rust-lang/compiler-team/issues/280)
    - "intern predicates, introduce forall/implies" [#285](https://github.com/rust-lang/compiler-team/issues/285)
    - "Reintegrate chalk into rustc" [#289](https://github.com/rust-lang/compiler-team/issues/289) (NEW)
  - New proposals (not seconded)
    - "RFC 2229 implementation plan" [#292](https://github.com/rust-lang/compiler-team/issues/292)
  - Old proposals (not seconded)
    - "Integration of the Cranelift backend with rustc" [#270](https://github.com/rust-lang/compiler-team/issues/270)
    - "Decentralize queries" [#277](https://github.com/rust-lang/compiler-team/issues/277)
    - "illumos toolchain builds" [#279](https://github.com/rust-lang/compiler-team/issues/279)

## Beta-nominations

[T-compiler beta noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler)

- "Fix hang in lexical_region_resolve" [#72087](https://github.com/rust-lang/rust/pull/72087) :back: / :hand:
- "Fix E0284 to not use incorrect wording" [#71960](https://github.com/rust-lang/rust/pull/71960) :back: / :hand:


## Stable-nominations

[T-compiler stable noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler+)

No stable nominations this time.

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+)

No PR's waiting on team this time.

## Issues of Note

### Short Summary

- [1 P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [42 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+)
  - [22 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-high and 3 P-medium regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
  - There is only 1 P-high assigned.
- [4 P-medium and 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
  - There is only 1 P-medium assigned.
- [71 regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)
  - [25 of those are not prioritized](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-stable+-label%3AP-critical+-label%3AP-high+-label%3AP-medium+-label%3AP-low).

There are the same `P-critical` issues and 2 more `P-high` issues in comparison with last week.

### P-critical

- "Unsoundness due to variance of trait objects WRT associated type" [#71550](https://github.com/rust-lang/rust/issues/71550)
  - This issue is assigned to @spastorino and has a PR open.
  - We've run crater and got a bunch of results.
  - Niko is investigating possibilities and started a [HackMD with regressions if PR applies](https://hackmd.io/CxycII6iT8iFjbMr0eQcEQ).

### Unassigned P-high regressions

- "`forbid` overwritten by later `allow` on the same "scope level"" [#70819](https://github.com/rust-lang/rust/issues/70819)

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "vec macro into_boxed codegen regression" [#71861](https://github.com/rust-lang/rust/issues/71861)
- "'rustc' panicked at 'failed to lookup `SourceFile` in new context'" [#70924](https://github.com/rust-lang/rust/issues/70924)

`libs-impl` nominations ...

- "Regression in usable type complexity: overflow representing the type `...`" [#71359](https://github.com/rust-lang/rust/issues/71359)
- "`nth_back()` for `Zip` returns wrong values" [#68536](https://github.com/rust-lang/rust/issues/68536)
- "Backtrace is <unknown> for dynamic library loaded through dlopen using absolute file path for rust >= 1.37.0 on OSX" [#67599](https://github.com/rust-lang/rust/issues/67599)
  - See [Alex comment](https://github.com/rust-lang/rust/issues/67599#issuecomment-628687241) maybe there's no point in keeping this one nominated.

## WG checkins

@**WG-traits** checkin by @**nikomatsakis**:

> Checkin text