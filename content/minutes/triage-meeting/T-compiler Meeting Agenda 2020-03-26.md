---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-03-26

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- As per last week discussion, we are going to stop tagging as I-nominated on toolstate breakage [#70407](https://github.com/rust-lang/rust/pull/70407)
  - Please check if the conclusion stated on Santiago's comment there is what we want. 

## Beta-nominations

[T-compiler beta noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler)

- "Fix smaller issues with invalid placeholder type errors" [#70369] :back: / :hand: / :shrug: 
- "Account for bad placeholder types in where clauses" [#70294] :back: / :hand: / :shrug: 
- "Fix ICE caused by truncating a negative ZST enum discriminant" [#70126] :back: / :hand: / :shrug: 
- "Ensure HAS_FREE_LOCAL_NAMES is set for ReFree" [#69956] :back: / :hand: / :shrug: 

[#70369]: https://github.com/rust-lang/rust/pull/70369
[#70294]: https://github.com/rust-lang/rust/pull/70294
[#70126]: https://github.com/rust-lang/rust/pull/70126
[#69956]: https://github.com/rust-lang/rust/pull/69956

## Stable-nominations

[T-compiler stable noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler+)

No stable nominations this time. :tada: 

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+)

No PR’s S-waiting-on-team this time. :tada: 

## P-high Issues of Note

- [50 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+) (4 less than last week)
- [30 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee) (2 less than last week)
- [3 P-medium regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-high and 3 P-medium regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- [x] "Compiler incorrectly assumes int will never be one" [#69841](https://github.com/rust-lang/rust/issues/69841)
- [ ] "Add cryptographic hash of source files in debug info" [#69718](https://github.com/rust-lang/rust/pull/69718)
- [ ] "Box<dyn FnOnce> doesn't respect self alignment" [#68304](https://github.com/rust-lang/rust/pull/68304)

## WG checkins

WG-learning and WG-LLVM.