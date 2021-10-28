---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-04-02

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Do we agree on adding an `I-prioritize` like label?
  - So we can have I-nominated for let's discuss this and I-prioritize as a request for prioritization.
  - Should it be `I-prioritize`, `P-prioritize` or maybe `WG-prioritization`?.
- Tomorrow: Design meeting: cranelift backend for rustc

## Beta-nominations

[T-compiler beta noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler)

- "Fix "since" field for `Once::is_complete`'s `#[stable]` attribute" [#70018](https://github.com/rust-lang/rust/pull/70018) :back: / :hand:
- "parse_and_disallow_postfix_after_cast: account for `ExprKind::Err`." [#70556](https://github.com/rust-lang/rust/pull/70556) :back: / :hand:

## Stable-nominations

[T-compiler stable noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler+)

No stable nominations this time.

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+)

- "Remove -Z no-landing-pads flag" [#70175](https://github.com/rust-lang/rust/pull/70175)
  - FCPed 2 days ago with 8 :+1: out of 13
  - In disposition-merge state

## Issues of Note

- [51 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+) (1 more than last week)
- [28 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee) (2 less than last week)
- [2 P-high and 2 P-medium regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-high and 4 P-medium regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)

### Unassigned stable to beta regressions

- "no_mangle causes compilation errors with async-await on armv7-linux-androideabi and aarch64-linux-android targets" [#70098](https://github.com/rust-lang/rust/issues/70098) 

### Unassigned stable to nightly regressions

- "internal compiler error: cannot relate region: LUB(ReErased, ReErased)" [#70608](https://github.com/rust-lang/rust/issues/70608)
  - This one is nominated anyway.
- "Some macro errors now include file names into the standard library (JSON)." [#70396](https://github.com/rust-lang/rust/issues/70396)
- "file not found for module" [#70314](https://github.com/rust-lang/rust/issues/70314)
- "Regression in error message quality for macro_rules involving $:ident" [#69604](https://github.com/rust-lang/rust/issues/69604)
- "Compiler error while compiling Winrt" [#66402](https://github.com/rust-lang/rust/issues/66402)

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- [ ] "Box<dyn FnOnce> doesn't respect self alignment" [#68304](https://github.com/rust-lang/rust/issues/68304)
- [ ] "internal compiler error: cannot relate region: LUB(ReErased, ReErased)" [#70608](https://github.com/rust-lang/rust/issues/70608)
- [ ] "regression: assertion failed: data.is_empty()" [#70445](https://github.com/rust-lang/rust/issues/70445)
- [ ] "internal compiler error: no type for local variable" [#70594](https://github.com/rust-lang/rust/issues/70594)
- [ ] "Should enum discriminants have generics in scope?" [#70453](https://github.com/rust-lang/rust/issues/70453)

## WG checkins

WG-Meta: 
WG-MIR-Opt: