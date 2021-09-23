---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-04-30

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- There are 3 major changes proposals 
  - Implement LLVM-compatible source-based code coverage [#278](https://github.com/rust-lang/compiler-team/issues/278)
  - illumos toolchain builds [#279](https://github.com/rust-lang/compiler-team/issues/279)
  - Inline assembly [#280](https://github.com/rust-lang/compiler-team/issues/280)

## Beta-nominations

[T-compiler beta noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler)

- "Quick and dirty fix of the unused_braces lint" [#71517](https://github.com/rust-lang/rust/pull/71517) :back: / :hand:
- "normalize field projection ty to fix broken MIR issue" [#71488](https://github.com/rust-lang/rust/pull/71488) :back: / :hand:
- "fix error code in E0751.md" [#71426](https://github.com/rust-lang/rust/pull/71426) :back: / :hand:
- "Remove some `Vec` allocations to improve performance" [#71268](https://github.com/rust-lang/rust/pull/71268) :back: / :hand:

T-libs ones ...

- "Update stdarch submodule" [#71495](https://github.com/rust-lang/rust/pull/71495) :back: / :hand:

## Stable-nominations

[T-compiler stable noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler+)

No stable nominations this time.

T-libs ones ...

- "Update stdarch submodule" [#71495](https://github.com/rust-lang/rust/pull/71495) :back: / :hand:
- "avx512 support regression in 1.43" [#71473](https://github.com/rust-lang/rust/issues/71473) :back: / :hand:

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+)

- "Add Option to Force Unwind Tables" [#69984](https://github.com/rust-lang/rust/pull/69984)
  - FCP finished, disposition to merge.

## Issues of Note

### Short Summary

- [2 P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+) (one more than last week)
  - [both are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+no%3Aassignee) (one more than last week)
- [42 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+) (one less than last week)
  - [21 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee) (one less than last week)
- [1 P-high, 2 P-medium, 1 P-low, 1 T-libs regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
  - The only assigned is the P-high one.
- [2 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
  - Both P-high are assigned and one P-low is assigned too.
- [71 regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)
  - [25 of those are not prioritized](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-stable+-label%3AP-critical+-label%3AP-high+-label%3AP-medium+-label%3AP-low).

There are 1 more `P-critical` issue and 1 less `P-high` issues in comparison with last week.

### P-critical

- "rust-analyser segfault with lto=thin, linker=lld-link" [#71504](https://github.com/rust-lang/rust/issues/71504)
  - Unassigned.
- "Unsoundness due to variance of trait objects WRT associated types" [#71550](https://github.com/rust-lang/rust/issues/71550)
  - Unassigned.

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "Unsoundness due to variance of trait objects WRT associated types" [#71550](https://github.com/rust-lang/rust/issues/71550)
  - This is a very bad issue, already listed as P-critical
- ~~"`unsized_locals` fails to uphold alignment requirements" [#71416](https://github.com/rust-lang/rust/issues/71416)~~
  - (@pnkfelix opened some fresh sub-issues.)

## WG checkins

WG-Polymorphization by @davidtwco:

> I can't remember where the polymorphisation work was last time I gave an update at the meeting, so to remind everyone, the polymorphisation working group is for tracking my master's project - implementing an analysis that will detect when generic parameters are unused, and then reducing monomorphisation as a result.
>
> #69749 has a working implementation of polymorphisation (I've paused working on it until my exams are over), which we've run perf on and gotten mixed results - there are some interesting interactions with LTO on one benchmark configuration, and some cases see 3-5% improvements, but some are worse-off (normally by 1-2%). There's probably some room for improvement yet.

WG-prioritization by @spastorino:

This is the first checkin from WG Prioritization.

- [The group is formally formed](https://rust-lang.github.io/compiler-team/working-groups/prioritization/)
  - Main goal is to triaging bugs, mainly deciding if bugs are critical (potential release blockers) or not.
  - Route bugs to folks who can fix them.
  - Build the agenda for these meetings.
  - Among other things :)
- We have [some plans](https://hackmd.io/P3yvagSSS7yAI2QxhLfPtQ?view) and [procedures](https://hackmd.io/pHb6eTZ2Sjy6XZmwXZHIBA?view) documented.
- We've created I-prioritize and splitted the meaning of it with I-nominated for easier request for prioritization.
- We've created P-critical and defined the [different priority levels](https://hackmd.io/7NRRbq62TnaezW7-n15cDw) this is still WIP.
- We're trying to have all this process async
  - When someone tags `I-prioritize` a Zulip topic is automatically created requesting for prioritization of the issue in question so we can prioritize async.
  - @rustbot prioritize works too for non-members
  - We should do the same for beta/stable backports, I-nominated, S-waiting-on-team
  - We're also trying to automate with commands our meetings and this one in particular.