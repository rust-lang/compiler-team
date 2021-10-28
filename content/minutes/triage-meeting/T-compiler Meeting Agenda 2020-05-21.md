---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-05-21

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- We have a design meeting tomorrow: "codegen unit partitioning"
- Major Changes Proposals:
  - Seconded proposals (in FCP)
    - "Implement LLVM-compatible source-based code coverage" [#278](https://github.com/rust-lang/compiler-team/issues/278)
    - "Inline assembly" [#280](https://github.com/rust-lang/compiler-team/issues/280)
    - "intern predicates, introduce forall/implies" [#285](https://github.com/rust-lang/compiler-team/issues/285)
    - "Reintegrate chalk into rustc" [#289](https://github.com/rust-lang/compiler-team/issues/289) (NEW)
    - "RFC 2229 implementation plan" [#292](https://github.com/rust-lang/compiler-team/issues/292) (NEW)
  - New proposals (not seconded)
    - "create windows target group" [#293](https://github.com/rust-lang/compiler-team/issues/293)
    - "Remove Spans from HIR" [#294](https://github.com/rust-lang/compiler-team/issues/294)
  - Old proposals (not seconded)
    - "Integration of the Cranelift backend with rustc" [#270](https://github.com/rust-lang/compiler-team/issues/270)
    - "Decentralize queries" [#277](https://github.com/rust-lang/compiler-team/issues/277)
    - "illumos toolchain builds" [#279](https://github.com/rust-lang/compiler-team/issues/279)

## Beta-nominations

No beta nominations this time for `T-compiler` and `libs-impl`.

There's one about `T-rustdoc` ...

- "Bump pulldown-cmark" [#71682](https://github.com/rust-lang/rust/pull/71682) 

## Stable-nominations

No stable nominations this time.

## PR's S-waiting-on-team

No PR's waiting on team this time.

## Issues of Note

### Short Summary

- [2 P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [41 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+)
  - [21 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
  - There is only one P-high assigned.
- [0 P-high, 4 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
  - There is only one P-medium assigned.
- [72 regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)
  - [25 of those are not prioritized](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-stable+-label%3AP-critical+-label%3AP-high+-label%3AP-medium+-label%3AP-low).

There is one more `P-critical` issues and one less `P-high` issues in comparison with last week.

### P-critical

- "Unsoundness due to variance of trait objects WRT associated types" [#71550](https://github.com/rust-lang/rust/issues/71550)
  - This issue is assigned to @spastorino and has an PR open.
  - We've run crater and got a bunch of results.
  - Niko is investigating possibilities and started a [HackMD with regressions if PR applies](https://hackmd.io/CxycII6iT8iFjbMr0eQcEQ).
- "Trait object with non-static lifetime is accepted where static lifetime is expected and required" [#72315](https://github.com/rust-lang/rust/issues/72315)
  - This issue is assigned to @matthewjasper
  - This issue may be a variation of the previous one
  - Needs mcve and we need to find out if it's a dupe of the previous one. 

### Unassigned P-high regressions

- "`forbid` overwritten by later `allow` on the same "scope level"" [#70819](https://github.com/rust-lang/rust/issues/70819)
- "'rustc' panicked at 'failed to lookup `SourceFile` in new context'" [#70924](https://github.com/rust-lang/rust/issues/70924)
  - This one is also nominated

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "'rustc' panicked at 'failed to lookup `SourceFile` in new context'" [#70924](https://github.com/rust-lang/rust/issues/70924)
  - Incremental compilation regression
  - There are reproduction steps and the [PR where this regressed identified](https://github.com/rust-lang/rust/issues/70924), PR by @eddyb.
- "vec macro into_boxed codegen regression" [#71861](https://github.com/rust-lang/rust/issues/71861)
  - codegen regression
  - Cleanup Crew is pinged
  - Unsure how much would we be able to discuss with the given information

[libs-impl I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)

- "Integer overflow on String::drain() with an inclusive range" [#72237](https://github.com/rust-lang/rust/issues/72237)
  - There are a bunch of methods in stdlib with this same problem.
- "Regression in usable type complexity: overflow representing the type `...`" [#71359](https://github.com/rust-lang/rust/issues/71359)
  - Regression from beta to stable in a [rollup](https://github.com/rust-lang/rust/pull/70943)
- "`nth_back()` for `Zip` returns wrong values" [#68536](https://github.com/rust-lang/rust/issues/68536)
- "Backtrace is <unknown> for dynamic library loaded through dlopen using absolute file path for rust >= 1.37.0 on OSX" [#67599](https://github.com/rust-lang/rust/issues/67599)

## WG checkins

@**WG-traits** checkin by @**nikomatsakis**:

> Checkin text

@**WG-async-foundations** checkin by @**nikomatsakis**:

> Checkin text

@**WG-diagnostics** checkin by @**estebank**:

> Checkin text