---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-04-23

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Today we are releasing Rust 1.43.0
- Tomorrow (Friday) we will have a compiler team meeting about ["Standard library implementation ownership" #267](https://github.com/rust-lang/compiler-team/issues/267)
- There are 5 major changes proposals
  - [Decentralize queries #277](https://github.com/rust-lang/compiler-team/issues/277)
  - [Major change proposal: Support collecting all identifiers encountered during compilation #276](https://github.com/rust-lang/compiler-team/issues/276)
  - [Move `src/test/run-fail` tests to UI #274](https://github.com/rust-lang/compiler-team/issues/274)
  - [Integration of the Cranelift backend with rustc #270](https://github.com/rust-lang/compiler-team/issues/270)
  - [[major change] MIR librarification #233](https://github.com/rust-lang/compiler-team/issues/233)

## Beta-nominations

[T-compiler beta noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler)

- "[beta] fix failing const validation" [#71441](https://github.com/rust-lang/rust/pull/71441) :back: / :hand:

## Stable-nominations

[T-compiler stable noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler+)

No stable nominations this time.

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+)

- "Add Option to Force Unwind Tables" [#69984](https://github.com/rust-lang/rust/pull/69984) 
  - FCP finished, disposition to merge.
- "Remove -Z no-landing-pads flag" [#70175](https://github.com/rust-lang/rust/pull/70175)
  - FCP finished, disposition to merge.

## Issues of Note

### Short Summary

- [1 P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+) (same as last week)
- [43 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+) (2 less than last week)
  - [22 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee) (4 less than last week)
- [1 P-high, 2 P-medium, 1 P-low, 2 T-libs and 1 T-rustdoc regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
  - The only assigned is the P-high one. One of the T-libs and the T-rustdoc are unassigned.
- [3 P-high, 3 P-medium, 1 P-low and 1 T-libs regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
  - Only 2 P-high are assigned.
- [69 regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)
  - [24 of those are not prioritized](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-stable+-label%3AP-critical+-label%3AP-high+-label%3AP-medium+-label%3AP-low).

### P-critical

- "`static FOO:Foo=FOO;` doesn't cause cycle error for zero-sized-type with no public constructor." [#71078](https://github.com/rust-lang/rust/pull/71078)
  - This issue is assigned to @oli
  - This is `P-critical` but is not going to be included in 1.43.0. `P-critical` means that it potentially blocks the release and this time it didn't block it.
  - Should this one be beta-nominated after the nightly to beta promotion happens? (If PR #71078 lands before promotion then point is moot.)

### Unassigned P-high regressions

- "`broken MIR` `NoSolution` sized array initialiser with addition in generic tuple destructure" [#71344](https://github.com/rust-lang/rust/issues/71344)

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "`unsized_locals` fails to uphold alignment requirements" [#71416](https://github.com/rust-lang/rust/issues/71416)
  - We need to discuss about a possible solution for this one.
- "Debuginfo tests are not running" [#47163](https://github.com/rust-lang/rust/issues/47163)
  - According to @jonas-schievink, we have not been able to run these tests for over 2 years. There are some PRs by @tromey. It's not clear if [#71428](https://github.com/rust-lang/rust/pull/71428) fixes this problem entirely or partially.
- "Rename mir::Rvalue to Op." [#70928](https://github.com/rust-lang/rust/pull/70928)
  - We discussed this one last week. It would be good to mention that the discussion keeps going and Zulip may be a good place for it.

## WG checkins

WG-parallel-rustc: @simulacrum mentioned that there are no updates.
WG-polonius: @lqd shared [this](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/weekly.20meeting.202020-04-23.20.2354818/near/194978584).