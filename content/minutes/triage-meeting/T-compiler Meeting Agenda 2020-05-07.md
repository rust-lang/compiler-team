---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-05-07

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Today we are making a point release, 1.43.1 :tada:
- Remember to fill State of the Compiler Team form by end of today (Thursday). Niko and Felix need time to review before Friday's steering meeting. (You should have links to separate non-anonymous and anonymized feedback forms in your email.)
- On friday we have our [Compiler Team Planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html).
- There is 1 major change proposal
  - "intern predicates, introduce forall/implies" [#285](https://github.com/rust-lang/compiler-team/issues/285)

## Beta-acceptances from past week

- "fix error code in E0751.md" [#71426](https://github.com/rust-lang/rust/pull/71426) was unlaterally beta-accepted by @pnkfelix
- "resolve: Relax fresh binding disambiguation slightly to fix regression" [#71846](https://github.com/rust-lang/rust/pull/71846) was unilaterally beta-accepted by @pnkfelix 
- "Do not try to find binop method on RHS `TyErr`" [#71810](https://github.com/rust-lang/rust/pull/71810) was unilaterally beta-accepted by @pnkfelix 

## Beta-nominations

[T-compiler beta noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler)

- "Update the `cc` crate" [#71882](https://github.com/rust-lang/rust/pull/71882) :back: / :hand:


## Stable-nominations

[T-compiler stable noms](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler+)

No stable nominations this time.

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+)

No PR's waiting on team this time.

## Issues of Note

### Short Summary

- [1 P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [40 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+)
  - [20 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-high, 4 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
  - The only assigned is the P-high one.
- [1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
  - The only assigned is the P-high one.
- [69 regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)
  - [24 of those are not prioritized](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-stable+-label%3AP-critical+-label%3AP-high+-label%3AP-medium+-label%3AP-low).

There are 1 less `P-critical` issues and 2 less `P-high` issues in comparison with last week.

### P-critical

- "Unsoundness due to variance of trait objects WRT associated types" [#71550](https://github.com/rust-lang/rust/issues/71550)
  - This issue is assigned to @spastorino and has a PR open.

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "Unsoundness due to variance of trait objects WRT associated types" [#71550](https://github.com/rust-lang/rust/issues/71550)
- "Rustc overflow its stack when using impl Trait and the struct containing the function itself" [#69096](https://github.com/rust-lang/rust/issues/69096)
- "rust-lld since 1.38 overlaps .text with .rodata for embedded arm target" [#65391](https://github.com/rust-lang/rust/issues/65391)
- "Compile-time stack overflow when trait impl contains extern crate" [#55779](https://github.com/rust-lang/rust/issues/55779)
- ~~"repr(packed) allows invalid unaligned loads" [#27060](https://github.com/rust-lang/rust/issues/27060)~~ (pnkfelix added by accident)



## WG checkins

@**WG-rls2.0** checkin by @**matklad**:

> Checkin text

@**WG-self-profile** checkin by @**Wesley Wiser**:

Things have settled down quite a lot since the last check-in.
We achieved our MVP goal and since then, lots of people have been using the tools either directly or via the perf.rlo integration.

I think the only major news is that we have documentation everwhere that has been requested:
  * GitHub readme files for each individual tool.
  * `rustc -Zhelp` has some short help text describing the options.
  * The Unstable Book has [more complete](https://doc.rust-lang.org/unstable-book/compiler-flags/self-profile.html) documentation about the `-Z` flags.
  * Rustc Dev Guide has a [mention](https://rustc-dev-guide.rust-lang.org/profiling.html).
  
I also wrote a rather extensive post on the [Inside-Rust blog](https://blog.rust-lang.org/inside-rust/2020/02/25/intro-rustc-self-profile.html) about the tooling including a complete step-by-step tutorial.

While there additional polish that could be done, there are no remaining "must-have" features that I'm aware of.
