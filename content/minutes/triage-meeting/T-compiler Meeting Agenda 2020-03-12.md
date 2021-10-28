---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-03-12

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

 * [Planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html) tomorrow (March 13th)
 * Rust 1.42 is released today

## Beta-nominations

[T-compiler beta noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler)

* Use TypeRelating for instantiating query responses [#69591][] :back: / :hand:

[#69591]: https://github.com/rust-lang/rust/pull/69591

## Stable-nominations

[T-compiler stable noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler+)

No stable nominations this time.

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+)

No PR's S-waiting-on-team this time.

## Issues of Note

- [52 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+) and [32 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-medium regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [3 P-high and 1 P-medium regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- [ ] "Compiler incorrectly assumes int will never be one" [#69841][]
- [ ] "ICE in collect_and_partition_mono_items" [#69785][]
- [ ] "ICE: src/librustc/middle/region.rs:1037: Encountered greater count 28" [#69307][]
- [ ] "Replace our fragile safety scheme around erroneous constants" [#67191][]
- [ ] "ICE field: higher-rank trait bound (HRTB) `for<'a> ...` hits OutputTypeParameterMismatch in librustc/traits/codegen" [#62529][]

[#69841]: https://github.com/rust-lang/rust/issues/69841
[#69785]: https://github.com/rust-lang/rust/issues/69785
[#69307]: https://github.com/rust-lang/rust/issues/69307
[#67191]: https://github.com/rust-lang/rust/issues/67191
[#62529]: https://github.com/rust-lang/rust/issues/62529

## WG checkins

WG-nll: nothing to share and the wg should be removed from the rotation.
WG-parallel-rustc: no updates.