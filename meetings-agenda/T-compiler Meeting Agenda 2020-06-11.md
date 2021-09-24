---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-06-11

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Major Changes Proposals:
  - New accepted proposals
     - "`mv src/lib{std,core,alloc,test,etc} std/lib{std,core,alloc,test,etc}`" [#298](https://github.com/rust-lang/compiler-team/issues/298)
- Seconded proposals (in FCP)
  - "illumos toolchain builds" [#279](https://github.com/rust-lang/compiler-team/issues/279)
  - "Make `CONTRIBUTING.md` into a series of tutorials" [#296](https://github.com/rust-lang/compiler-team/issues/296)
  - "Preserve `PlaceContext` through projections" [#300](https://github.com/rust-lang/compiler-team/issues/300)
  - "Make lang-items private" [#301](https://github.com/rust-lang/compiler-team/issues/301) (NEW)
  - "`#[deny(unsafe_op_in_unsafe_fn)]` in liballoc" [#306](https://github.com/rust-lang/compiler-team/issues/306) (NEW)
- New proposals (not seconded)
  - "--extern-location to specify where an --extern dependency is defined" [#303](https://github.com/rust-lang/compiler-team/issues/303)
  - "Support const parameters in type dependent paths" [#304](https://github.com/rust-lang/compiler-team/issues/304)
- Old proposals (not seconded)
  - "Integration of the Cranelift backend with rustc" [#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [#277](https://github.com/rust-lang/compiler-team/issues/277)
- This week, and for future Thursday meetings, we will start presenting the WG checkins at the *start* of the meeting. Starting now. :wink:

### WG checkins

> @*WG-parallel-rustc* is inactive.

> @*WG-polonius* has nothing to share this time.

## Beta-nominations

[`T-compiler`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler)

- "normalize adt fields during structural match checking" [#72897](https://github.com/rust-lang/rust/pull/72897) :back: / :hand:
  - Beta fix for [this P-critical issue](https://github.com/rust-lang/rust/issues/72896)
- "Revert pr 71840" [#72989](https://github.com/rust-lang/rust/pull/72989) :back: / :hand:
  - Beta fix for [this P-critical issue](https://github.com/rust-lang/rust/issues/72470) by reverting [this PR](https://github.com/rust-lang/rust/pull/71840)
- "Fix link error with #[thread_local] introduced by #71192" [#73065](https://github.com/rust-lang/rust/pull/73065) :back: / :hand:
  - This PR is nominated but is not merged yet
- "Revert #71956" [#73153](https://github.com/rust-lang/rust/pull/73153) :back: / :hand:
  - This fixes on beta [this P-critical issue](https://github.com/rust-lang/rust/issues/73137) by reverting [this PR](https://github.com/rust-lang/rust/pull/71956)

No beta nominations this time for [`libs-impl`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3Alibs-impl) and [`T-rustdoc`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-rustdoc).

## Stable-nominations

No stable nominations this time for [`T-compiler`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler), [`libs-impl`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3Alibs-impl) and [`T-rustdoc`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-rustdoc).

* https://github.com/rust-lang/rust/pull/73238
* simulacrum is thinking to unilaterally accept these changes for stable backport (but if people object, we can discuss).

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "Implement `--extern-location`" [#72603](https://github.com/rust-lang/rust/pull/72603)
  - This was already discussed last week
  - [an MCP was filled](https://github.com/rust-lang/compiler-team/issues/303) for this one
  - Assigned to @**Matthew Jasper** and @**nikomatsakis**
- "`#[deny(unsafe_op_in_unsafe_fn)]` in liballoc" [#72709](https://github.com/rust-lang/rust/pull/72709)
  - Feels like a policy question
  - [An MCP was filed](https://github.com/rust-lang/compiler-team/issues/306) for this one.
  - @**nikomatsakis** is in favor of landing it


## Issues of Note

### Short Summary

- [3 P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [39 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+)
  - [17 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 5 P-medium regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
  - There is only 1 P-critical and 1 P-medium assigned.
- [1 P-critical, 4 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
  - Only the P-critical is assigned.
- [70 regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)
  - [14 of those are not prioritized](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-stable+-label%3AP-critical+-label%3AP-high+-label%3AP-medium+-label%3AP-low).

There is 1 less `P-critical` issues and 2 more `P-high` issue in comparison with last week.

### P-critical

- "LLVM error: "Instruction does not dominate all uses!" on Windows" [#72470](https://github.com/rust-lang/rust/issues/72470)
  - This has been fixed by this [PR](https://github.com/rust-lang/rust/pull/72989)
  - This [should probably not be `P-critical` anymore](https://github.com/rust-lang/rust/issues/72470#issuecomment-642271780)
- "Double Drop on Rust beta" [#73137](https://github.com/rust-lang/rust/issues/73137)
  - This has been fixed by this [PR](https://github.com/rust-lang/rust/pull/73153)
  - This [should probably not be `P-critical` anymore](https://github.com/rust-lang/rust/issues/73137#issuecomment-642279433)
- "Slice index becomes wrong (beta regression)" [#73223](https://github.com/rust-lang/rust/issues/73223)
  - This is a regression from stable to beta
  - [It's also a fairly easy to trigger miscompilation](https://github.com/rust-lang/rust/issues/73223#issuecomment-642530618)
  - [Regressed PR was identified](https://github.com/rust-lang/rust/pull/69756)
  - Assigned to @**Wesley Wiser** who is already on it

### Unassigned P-high regressions

No unassigned P-high regressions this time.

## Performance logs

[Triage done by njn](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

Regressions:
- [Update LLVM submodule to include lld NOLOAD fix](https://github.com/rust-lang/rust/pull/73072#issuecomment-640225441)
  ([instructions](https://perf.rust-lang.org/compare.html?start=450abe80f193ccefbfcd48214d70520f2d507f0e&end=a2fc33e0c87a258542cd12d6ffae52c43aa3785a&stat=instructions:u)):
  A small regression in debug builds due to LLVM. Pulling in [this LLVM
  change](https://reviews.llvm.org/D80964) may fix it.
- [Rollup of 5 pull requests](https://github.com/rust-lang/rust/pull/73081#issuecomment-640951745)
  ([instructions](https://perf.rust-lang.org/compare.html?start=9c1857fad849ad56d38327b9bc11377a0bdbb4cf&end=450abe80f193ccefbfcd48214d70520f2d507f0e&stat=instructions:u))

Improvements:
- None.

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "Backtraces don't work during ICE" [#71060](https://github.com/rust-lang/rust/issues/71060)
    - Nominated because: "Rustc ICE backtraces are totally broken on windows-gnu (Tier 1) platform."
    - Assigned: No one
    - @**Alex Crichton** has a partial fix downstream. He says [there are three potential ways to fix this for rustc](https://github.com/rust-lang/rust/issues/71060#issuecomment-642203477).
- "`#[deny(unsafe_op_in_unsafe_fn)]` in liballoc" [#72709](https://github.com/rust-lang/rust/pull/72709)
    - Nominated for discussion by @**nikomatsakis**: Do we want to make use of the new `unsafe_op_in_unsafe_fn` lint? 
    - Assigned: @**Mark-Simulacrum**
    - Some reviews have already been done. It seems like we just want to see if anyone disagrees with landing this.

[libs-impl I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)

- "`nth_back()` for `Zip` returns wrong values" [#68536](https://github.com/rust-lang/rust/issues/68536)
  - Nominated to determine how can we fix this problem and to raise awareness of it.
