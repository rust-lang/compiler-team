---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-01-28

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
  - "refactor the unsafe checking to work on the THIR" [compiler-team#402](https://github.com/rust-lang/compiler-team/issues/402)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - [T-libs] "Stabilize `Seek::stream_position` (feature `seek_convenience`)" [rust#70904](https://github.com/rust-lang/rust/pull/70904)
  - [T-compiler] "rustc: Stabilize `-Zrun-dsymutil` as `-Csplit-debuginfo`" [rust#79570](https://github.com/rust-lang/rust/pull/79570)
  - [T-libs] "Stabilize `unsigned_abs`" [rust#80959](https://github.com/rust-lang/rust/pull/80959)

### WG checkins

@*WG-async-foundations*  by @**nikomatsakis** and @**tmandry**:
* currently in a planning phase for the coming year, see [2021 roadmap topic](https://rust-lang.zulipchat.com/#narrow/stream/187312-wg-async-foundations/topic/2021.20roadmap)
* have some pending RFCs (stream trait, warnings about types that ought not to be live over yield)
* nikomatsakis is working on an [async vision document](https://hackmd.io/p6cmRZ9ZRQ-F1tlhGaN9rg) and interested in [getting feedback](https://rust-lang.zulipchat.com/#narrow/stream/187312-wg-async-foundations/topic/2021.20roadmap/near/224241416)

@*WG-diagnostics* by @**Esteban Küber** and @**oli** :
* @**Esteban Küber** and @**oli** (soon) have much more time for diagnostics
* cross-await-borrow-failure explanation: #80614
* move in method call in loop explanation:  #80324
* [internal] document diagnostics infrastructure:  #80046
* take negative impls into account for "trait item not found" errors: #79790
* improve attribute spans for diagnostics on attributes: #79509

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Revert 78373 ("dont leak return value after panic in drop")" [rust#81257](https://github.com/rust-lang/rust/pull/81257)
  - This revert [#78373](https://github.com/rust-lang/rust/pull/78373), as per [last week's discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202021-01-21.20.2354818/near/223526167)
  - Is being reviewed
- "parser: Collect tokens for values in key-value attributes" [rust#81337](https://github.com/rust-lang/rust/pull/81337)
  - opened by @**Vadim Petrochenkov** 
  - approved by @**Aaron Hill** 
  - Fixes [rust#81208](https://github.com/rust-lang/rust/issues/81208), a `P-medium` issue where a non-ASCII string in the `#[path]` attribute raised an ICE

:back: :shrug: :hand:

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- "rustdoc: Fix visibility of trait and impl items" [rust#81288](https://github.com/rust-lang/rust/pull/81288)
  - Opened by @**Camelid**
  - r'ed and approved by @_**Joshua Nelson**
  - Fixes part of [#81274](https://github.com/rust-lang/rust/issues/81274), where documentation does not show as `pub` the `next()` method from Iterator (and other Traits) 

:back: :shrug: :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Make hitting the recursion limit in projection non-fatal" [rust#81055](https://github.com/rust-lang/rust/pull/81055)
  - opened by @**Matthew Jasper**
  - assigned to @**nikomatsakis** not yet approved
  - Fixes [rust#80953](https://github.com/rust-lang/rust/issues/80953), a regression discovered the crater run for 1.50 that impacted 
  - approved for beta backport, [stable backport was left open to discussion last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202021-01-21.20.2354818/near/223524147)

:back: :shrug: :hand:

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Restore .editorconfig" [rust#81260](https://github.com/rust-lang/rust/pull/81260)
    - opened by [vn971](https://github.com/vn971)
    - Looks like the `.editorconfig` (a suggest file for text editors on how to handle code) was unintentionally removed. 
    - @**simulacrum** inclined to merge if no concerns, what's the general opinion on adding it back?

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [64 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 5 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 3 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 89 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- "File implementation on Windows has unsound methods" [rust#81357](https://github.com/rust-lang/rust/issues/81357)
  - an unsoundness on how Rust handles the Windows I/O API, should be probably marked as critical. we don't have a MVCE from a Windows user, but possibly it's been there since long time. 
  - [libs meeting report](https://github.com/rust-lang/rust/issues/81357#issuecomment-768607504) by @**Ashley Mannix**: seems the consensus is ack one of the options suggested by the issue reporter (call `GetOverlappedResult` and if it returns error, call `abort()`)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "Cross-compiling Rust to s390x yields a faulty toolchain" [rust#80810](https://github.com/rust-lang/rust/issues/80810)
  - Opened by [Jakob-Naucke](https://github.com/Jakob-Naucke)
  - discussed last week, @**pnkfelix** self-assigned
  - seems to affect specifically s390x or to be related to endianess
  - Issue not yet completely clear, could be checked against PR [#80732](https://github.com/rust-lang/rust/pull/80732) (not ready for merge yet)
  - @**cuviper** comments that this issue [could also be unrelated to endianess](https://github.com/rust-lang/rust/issues/80810#issuecomment-761253970)
- "regression 1.50: Borrow checker reports function param as not living long enough" [rust#80949](https://github.com/rust-lang/rust/issues/80949)
  - opened by @**rylev**, emerged in crater run for 1.50
  - [Smallest MCVE found](https://github.com/rust-lang/rust/issues/80949#issuecomment-759432282) points to PR [#78373](https://github.com/rust-lang/rust/pull/78373)
  - @**Matthew Jasper** comments that pr #78373 [caused MIR to have one fewer basic block](https://github.com/rust-lang/rust/issues/80949#issuecomment-760019484) which reduced borrowck precision
  - @**Matthew Jasper** added [additional details ](https://github.com/rust-lang/rust/issues/80949#issuecomment-760417066)
  - @**pnkfelix** is working on PR [rust#81257](https://github.com/rust-lang/rust/pull/81257) to revert [rust#78373](https://github.com/rust-lang/rust/pull/78373) and fix this issue
- "regression 1.50: deny after forbid breaks build" [rust#80988](https://github.com/rust-lang/rust/issues/80988)
  - Opened by @**rylev**, emerged in crater run for 1.50 
  - Assigned to @**pnkfelix**
  - possibly related to issue [#77713](https://github.com/rust-lang/rust/issues/77713)
  - @**simulacrum** points to PR [#78864](https://github.com/rust-lang/rust/pull/78864) and figures out [the root cause](https://github.com/rust-lang/rust/issues/80988#issuecomment-761622611)
  - discussed in the [T-lang meeting](https://github.com/rust-lang/rust/issues/80988#issuecomment-763096218), the decision would be to close this
  - @**pnkfelix** [comments](https://github.com/rust-lang/rust/issues/80988#issuecomment-763874759) that the specific issue discussed in the RFC is probably best dealt in issue [#81218](https://github.com/rust-lang/rust/issues/81218)
  - ***entered in final-comment-period as disposition closed***
- "beta regression: forbid(warnings) interacts poorly with common derives." [rust#81218](https://github.com/rust-lang/rust/issues/81218)
    - Spawned from above issue [rust#80988](https://github.com/rust-lang/rust/issues/80988) ([discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202021-01-21.20.2354818/near/223527544)) to address specifically `forbid` and `derive` interacting surprisingly
    - @**simulacrum** [added some comments](https://github.com/rust-lang/rust/issues/81218#issuecomment-766500893) after last week's discussion

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- "Breaking change in wasm32-unknown-unknown's ABI on nightly" [rust#81386](https://github.com/rust-lang/rust/issues/81386)
    - opened by @**Alex Crichton** 
    - he points to PR [rust#80594](https://github.com/rust-lang/rust/pull/80594) (cc: @**Vadim Petrochenkov**)
    - @**bjorn3** has worked on PR [rust#81388](https://github.com/rust-lang/rust/pull/81388) for a possible fix, needs a review

## Performance logs

> [2020-01-26 Triage full logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-01-26.md)

This week continues a trend of relatively large rollups, which often contain perf-sensitive PRs. We need to get better at marking PRs as rollup=never or otherwise not including them, but it is unclear how precisely to go about doing so. The tooling for testing individual PRs merged in rollups should also be improved to work better in the next few days, though.

Other than that, this week saw several regressions, most of which were not easily explained. We are seeking feedback from PR authors and reviewers on whether the results are expected and if anything can be done.

Triage done by **@rylevick** and **@simulacrum**.

5 Regressions, 2 Improvements, 1 Mixed;
3 of them in rollups

#### Regressions

Deprecate-in-future the constants superceded by RFC 2700 [#80958](https://github.com/rust-lang/rust/issues/80958)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=57a71ac0e17e4f7070b090ab7bdc5474d8e37ecc&end=339e19697a39a78f4d669c217b7d21109215de41&stat=instructions:u) (up to 2.4% on `incr-patched: Job` builds of `regex-check`)
- Unsure why this might be causing performance regressions as this change does not touch much code and only produces lint warnings when the user opts into them.
- The author of the PR [was asked why this might be the case](https://github.com/rust-lang/rust/pull/80958#issuecomment-767837811), and a nag noted.

Rollup of 11 pull requests [#81240](https://github.com/rust-lang/rust/issues/81240)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=339e19697a39a78f4d669c217b7d21109215de41&end=a243ad280a4ac57c1b8427e30e31c5b505cf10de&stat=instructions:u) (up to 2.0% on `full` builds of `keccak-check`)
- Revert kicked off [here](https://github.com/rust-lang/rust/pull/81420) to test a possible culprit in [#81178](https://github.com/rust-lang/rust/pull/81178).

Generate metadata by iterating on DefId instead of traversing the HIR tree 1/N [#80919](https://github.com/rust-lang/rust/issues/80919)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=446cbc9db080c63c8742c418bcaa44c808f7e033&end=85e355ea9bd86ac6580a5d422a65dbf689845808&stat=instructions:u) (up to 1.0% on `incr-patched: println` builds of `style-servo-check`)
- Contact the PR author to see why the perf regressions were not discussed in the initial PR (even though perf runs were done). Waiting on [their response](https://github.com/rust-lang/rust/pull/80919#issuecomment-767854932).

Rollup of 14 pull requests [#81355](https://github.com/rust-lang/rust/issues/81355)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1d0d76f8dd4f5f6ecbeab575b87edaf1c9f56bb8&end=d3163e96553ae8cb1fca0e62084b124e8b98310b&stat=instructions:u) (up to 12.6% on `full` builds of `deeply-nested-async-debug`)

Prevent query cycles in the MIR inliner [#68828](https://github.com/rust-lang/rust/issues/68828)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=7fba12bb1d3877870758a7a53e2fe766bb19bd60&end=f4eb5d9f719cd3c849befc8914ad8ce0ddcf34ed&stat=instructions:u) (up to 2.1% on `full` builds of `keccak-check`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=7fba12bb1d3877870758a7a53e2fe766bb19bd60&end=f4eb5d9f719cd3c849befc8914ad8ce0ddcf34ed&stat=instructions:u) (up to -1.8% on `full` builds of `ctfe-stress-4-check`)
- Nag filed

#### Improvements

- Visit only terminators when removing unneeded drops [#81122](https://github.com/rust-lang/rust/issues/81122)
- Rollup of 15 pull requests [#81304](https://github.com/rust-lang/rust/issues/81304)

#### Mixed

- mark raw_vec::ptr with inline [#79113](https://github.com/rust-lang/rust/issues/79113)

#### Nags requiring follow up

- Deprecate in future regression [#80958](https://github.com/rust-lang/rust/pull/80958#issuecomment-767837811)
- Waiting on [response](https://github.com/rust-lang/rust/pull/80919#issuecomment-767854932) to inquiry.
- Regression in prevent query cycles in the MIR inliner - expected? [#68828](https://github.com/rust-lang/rust/pull/68828#issuecomment-767872361)


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "split dwarf doesn't work with crate dependencies" [rust#81024](https://github.com/rust-lang/rust/issues/81024)
  - Mentioning @**davidtwco** [message on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/split.20dwarf.20and.20dependencies)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "RFC: Checking conditional compilation at compile time" [rfcs#3013](https://github.com/rust-lang/rfcs/pull/3013)
  - [review by](https://github.com/rust-lang/rfcs/pull/3013#pullrequestreview-568757930) by @**Wesley Wiser** 
  - RFC author implemented new suggestions