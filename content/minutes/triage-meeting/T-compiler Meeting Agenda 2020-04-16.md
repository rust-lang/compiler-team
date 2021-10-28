---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-04-16

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Next Thursday, April 23rd we are releasing 1.43
- [MCP RFC is pending](https://github.com/rust-lang/rfcs/pull/2904)
- Automate compiler development [#272](https://github.com/rust-lang/compiler-team/issues/272)
  - We have `@rustbot seconded` support

## Beta-nominations

[T-compiler beta noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler)

- "Do not reuse post LTO products when exports change" [#71131](https://github.com/rust-lang/rust/pull/71131) :back: / :hand:

## Stable-nominations

[T-compiler stable noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler+)

No stable nominations this time.

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+)

- "Add Option to Force Unwind Tables" [#69984](https://github.com/rust-lang/rust/pull/69984) 
  - In FCP, Disposition to merge.
- "A big options clean-up" [#70729](https://github.com/rust-lang/rust/pull/70729)
  - In FCP, disposition to merge.
- "Remove -Z no-landing-pads flag" [#70175](https://github.com/rust-lang/rust/pull/70175)
  - FCP finished, disposition to merge.
- "Move LLVM bitcode destination" [#70458](https://github.com/rust-lang/rust/pull/70458)
  - FCP finished, disposition to merge and needs a reviewer.

## Issues of Note

- [1 P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+) (1 more than last week)
- [45 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+) (4 less than last week)
  - [26 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee) (1 less than last week)
- [2 P-high and 2 P-medium regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
  - The 2 P-medium are unassigned
- [2 P-high, 2 P-medium and 1 T-rustdoc regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
  - All of them are unassigned


### P-critical

- "`static FOO:Foo=FOO;` doesn't cause cycle error for zero-sized-type with no public constructor." [#71078](https://github.com/rust-lang/rust/pull/71078)
  - This issue is assigned to @oli


## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- [ ] "[WIP] Rename mir::Rvalue to Op." [#70928](https://github.com/rust-lang/rust/issues/70928)
  - In FCP, disposition to close.
- [ ] "Should enum discriminants have generics in scope?" [#70453](https://github.com/rust-lang/rust/issues/70453)
  - In FCP, disposition to merge.
- [ ] "Add support for parsing with rust-analyzer instead of librustc_parse #70761" [#70761](https://github.com/rust-lang/rust/pull/70761)
  - Nominated for discussion, maybe needs an MCP. 


## WG checkins

WG-meta: let's check with @nikomatsakis to see if he wants to mention something but we had a checkin recently.
WG-Mir-Opt: Mir Opt skips this time.