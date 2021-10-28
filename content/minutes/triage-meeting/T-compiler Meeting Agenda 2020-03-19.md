---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-03-19

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- We are in the process of forming a WG-prioritization working group.
  - Focus: mainly on deciding if bugs are critical (potential release blockers) or not.
  - There's a [new WG-prioritization stream](https://rust-lang.zulipchat.com/#narrow/stream/227806-t-compiler.2Fwg-prioritization) where pre-triage is going to happen from now on.
- [Poll] Should we remove I-nominated on toolstate breakage issues?.

## Beta-nominations

[T-compiler beta noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler)

- can_begin_literal_or_bool: `true` on `"-"? lit` NTs. [#70058](https://github.com/rust-lang/rust/pull/70058) :back: / :hand:


Already beta accepted ...
- Use TypeRelating for instantiating query responses [#69591](https://github.com/rust-lang/rust/pull/69591)


## Stable-nominations

[T-compiler stable noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler+)

No stable nominations this time.

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+)

No PR's S-waiting-on-team this time.

## Issues of Note

- [54 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+) and [32 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-high and 4 P-medium regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [5 P-high and 1 P-medium regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- [ ] "rustc segfault" [#70117](https://github.com/rust-lang/rust/issues/70117)
- [ ] "ICE using associated type from higher ranked trait" [#70120](https://github.com/rust-lang/rust/issues/70120)

## WG checkins

WG-PGO: working group is retired.
WG-pipelining: working group is disbanded.

We should remove both from rotation, also nll and probably check the status of all the working groups.