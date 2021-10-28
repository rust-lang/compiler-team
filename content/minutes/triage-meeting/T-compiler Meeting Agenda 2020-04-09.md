---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-04-09

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow we have our [planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)
- WG-prioritization has created two labels
  - `I-prioritize` so we can ask for prioritization using that label and leave `I-nominated` to nominate issues for discussion. [Read the thread for more info](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/I-nominated.20vs.20I-prioritize)
  - `P-critical`, this will be critical priority issues. We are in the process of documenting our scheme properly but use your judgement and more or less the idea of a critical bug is one that potentially blocks a release.

## Beta-nominations

[T-compiler beta noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler)

- "macro_rules: `NtLifetime` cannot start with an identifier" [#70768](https://github.com/rust-lang/rust/issues/70768) :back: / :hand:

## Stable-nominations

[T-compiler stable noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler+)

No stable nominations this time.

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+)

- Fix staticlib name for *-pc-windows-gnu targets [#70937](https://github.com/rust-lang/rust/pull/70937)
    - Needs a decision that we want to go ahead with this fix.
- A big options clean-up [#70729](https://github.com/rust-lang/rust/pull/70729) (also in `Nominated Issues` list)
    - Waiting on @estebank, @matthewjasper, @nagisa and @pnkfelix to check their boxes or provide concerns.
- Move LLVM bitcode destination [#70458](https://github.com/rust-lang/rust/pull/70458)
    - Waiting on final comment period to elapse.
- Remove -Z no-landing-pads flag [#70175](https://github.com/rust-lang/rust/pull/70175)
    - Waiting on final comment period to elapse.
- Add Option to Force Unwind Tables [#69984](https://github.com/rust-lang/rust/pull/69984)
    - Waiting on @Zoxc, @cramertj and @pnkfelix to check their boses or provide concerns.
- Add error codes duplicates check [#68639](https://github.com/rust-lang/rust/pull/68639)
    - Waiting on something from `wg-diagnostics`?
- Ensure all iterations in Rayon iterators run in the presence of panics [#68171](https://github.com/rust-lang/rust/pull/68171)
    - Needs a decision that we want to go ahead with this change (possibly from `wg-parallel-rustc`).

## Issues of Note

- [0 P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+) and [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [49 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+) (2 less than last week)
- [27 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee) (1 less than last week)
- [1 P-high and 3 P-medium regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [3 P-high, 3 P-medium, 3 from T-rustdoc regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- [ ] "Compile regression "cannot infer an appropriate lifetime for lifetime parameter"" [#70917](https://github.com/rust-lang/rust/issues/70917)
- [ ] "PhantomData<T> no longer dropck?" [#70841](https://github.com/rust-lang/rust/issues/70841)
- [ ] "A big options clean-up" [#70729](https://github.com/rust-lang/rust/pull/70729) (also in `PR's S-waiting-on-team` list)
- [ ] "ICEs should always print the top of the query stack." [#70953](https://github.com/rust-lang/rust/issues/70953)
- [ ] "[WIP] Rename mir::Rvalue to Op." [#70928](https://github.com/rust-lang/rust/pull/70928)
- [ ] "WIP toward LLVM Code Coverage for Rust" [#70680](https://github.com/rust-lang/rust/pull/70680)
- [ ] "Use the niche optimization if other variant are small enough" [#70477](https://github.com/rust-lang/rust/pull/70477)

## WG checkins

WG-Rustc-Dev-Guide and WG-LLVM.