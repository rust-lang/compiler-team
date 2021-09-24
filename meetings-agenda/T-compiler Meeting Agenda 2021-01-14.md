---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-01-14

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
- Pending FCP requests (check your boxes!)
  - "rustc: Stabilize `-Zrun-dsymutil` as `-Csplit-debuginfo`" [rust#79570](https://github.com/rust-lang/rust/pull/79570)
- Things in FCP (make sure you're good with it)
  - "Make it easier to build the standard library" [compiler-team#394](https://github.com/rust-lang/compiler-team/issues/394)
  - "Add a scheme to register functions from other crates with TyCtxt" [compiler-team#395](https://github.com/rust-lang/compiler-team/issues/395)
  - "Remove PredicateKind in favor of only Binder<PredicateAtom>" [compiler-team#397](https://github.com/rust-lang/compiler-team/issues/397)
- Accepted MCPs
  - "Make it easier to build the standard library" [compiler-team#394](https://github.com/rust-lang/compiler-team/issues/394)
  - "Add a scheme to register functions from other crates with TyCtxt" [compiler-team#395](https://github.com/rust-lang/compiler-team/issues/395)
- Finalized FCPs (disposition merge)
  - [T-libs] "Stabilize slice::strip_prefix and slice::strip_suffix" [rust#77853](https://github.com/rust-lang/rust/pull/77853)
  - [T-libs] "Stabilize split_inclusive" [rust#77858](https://github.com/rust-lang/rust/pull/77858)

### WG checkins

@*WG-rls2.0* checkin by @**matklad** 
> rls-2.0 also have been pretty quiet lately.
This means that there are a lot of improvements all over the place, but nothing particularly earth-shattering happened.
We did ship on-the-fly (during completion) auto-imports.
We are also in the process of yet-another redesign of the core syntax tree datastructure: https://github.com/rust-analyzer/rust-analyzer/issues/6857.
> The parser library-ification work is sadly on-hold :-[
> Finally, to re-invigorate more ambitious undertakings, we will now hold a rust-analyzer steering meeting every six weeks.
> The first one will happen next Monday, check the t-compiler calendar for details.

@*WG-self-profile* checkin by @**Wesley Wiser**:
> WG activity was light this cycle:
> 
> - @**andjo403** fixed a bug in the tooling where blocked queries weren't being properly counted when rustc was compiled with `parallel-compiler = true` ([measureme#148](https://github.com/rust-lang/measureme/pull/148))

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Make sure rust-call errors occur correctly for traits" [rust#79675](https://github.com/rust-lang/rust/pull/79675)
  - Opened by @**Rune Tynan** 
  - @**Esteban Küber** approves backport
  - Fixes issue [#79669](https://github.com/rust-lang/rust/issues/79669), where an ICE was returned when checking an item that wasn't a function/closure

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

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 5 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 7 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 37 P-high, 83 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)


### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- "Heap buffer overflow in `read_to_end_with_reservation()`" [rust#80894](https://github.com/rust-lang/rust/issues/80894)
  - Opened by @**Yechan Bae** 
  - unsoundness causing a heap overflow
  - possible culprit on commit [ecbb896](https://github.com/rust-lang/rust/commit/ecbb896b9eb2acadefde57be493e4298c1aa04a3)
  - @**Steven Fackler** prepared PR [#80895](https://github.com/rust-lang/rust/pull/80895)
  - issue probably will be mentioned [in a CVE](https://github.com/RustSec/advisory-db/issues/539)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "Cross-compiling Rust to s390x yields a faulty toolchain" [rust#80810](https://github.com/rust-lang/rust/issues/80810)
  - Opened by [Jakob-Naucke](https://github.com/Jakob-Naucke)
  - not yet assigned
  - seems to affect specific s390x or to be related to endianess
  - @**Santiago Pastorino** [suggests testing again](https://github.com/rust-lang/rust/issues/80810#issuecomment-758204892) against PR [#80732](https://github.com/rust-lang/rust/pull/80732) (ready for review)
- "regression 1.50: Borrow checker reports function param as not living long enough" [rust#80949](https://github.com/rust-lang/rust/issues/80949)
  - opened by @**rylev**, emerged in crater run for 1.50
  - [Smallest MCVE found](https://github.com/rust-lang/rust/issues/80949#issuecomment-759432282) points to PR [#78373](https://github.com/rust-lang/rust/pull/78373)
  - @**Matthew Jasper** mentions that pr #78373 [is possibly leading to a less precise borrowcheck](https://github.com/rust-lang/rust/issues/80949#issuecomment-760019484) on how long the borrow lasts
- "regression 1.50: deny after forbid breaks build" [rust#80988](https://github.com/rust-lang/rust/issues/80988)
  - Opened by @**rylev**, emerged in crater run for 1.50 
  - possibly related to issue [#77713](https://github.com/rust-lang/rust/issues/77713)
  - @**simulacrum** self assigns this issue and points to PR [#78864](https://github.com/rust-lang/rust/pull/78864) ~~and check that against the crates breaking in this issue~~ going to figure out if the regressions here seem expected and nominate for t-lang probably

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

[2021-01-12 Triage full report](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-01-12.md)

Overall, a positive albeit quiet week. The largest change came from the incremental compilation working group which delivered large gains in performance caused by [changes](https://github.com/rust-lang/rust/issues/76896) in how inlining is handled in debug mode. Unfortunately, these changes may be reversed due to concerns.

Triage done by **@rylev**.

1 Regressions, 2 Improvements, 3 Mixed 2 of them in rollups

#### Regressions

Rollup of 9 pull requests [#80867](https://github.com/rust-lang/rust/issues/80867)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=7a193921a024e910262ff90bfb028074fddf20d0&end=34628e5b533d35840b61c5db0665cf7633ed3c5a&stat=instructions:u) (up to 1.7% on `incr-full` builds of `syn-opt`)
- Minor regressions in mostly incremental builds (both opt and debug).
- It's hard to tell which PR was responsible but [#79968](https://github.com/rust-lang/rust/pull/79968/) seems to be the most likely. We will investigate.
- There was a change in the `impl_trait_ref` which may give hints as to the root cause.

#### Improvements

- Rollup of 9 pull requests [#80928](https://github.com/rust-lang/rust/issues/80928)
- Do not query the HIR directly in `opt_associated_item`. [#80889](https://github.com/rust-lang/rust/issues/80889)

#### Mixed

- Do not make local copies of inline fns in debug mode [#76896](https://github.com/rust-lang/rust/issues/76896)
- ast: Remove some indirection layers from values in key-value attributes [#80441](https://github.com/rust-lang/rust/issues/80441)
- Serialize incr comp structures to file via fixed-size buffer [#80463](https://github.com/rust-lang/rust/issues/80463)

#### Nags requiring follow up

- Follow up needs to happen on the regressions, especially on the rollup [#80928](https://github.com/rust-lang/rust/issues/80928) and [#80441](https://github.com/rust-lang/rust/issues/80441) where the performance regressed from an early perf run done while the PR was still open.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "RFC: Checking conditional compilation at compile time" [rfcs#3013](https://github.com/rust-lang/rfcs/pull/3013)