---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-04-28

## Announcements

- Tomorrow <time:2022-04-29T13:00:00+02:00> Types Team: Chalkify roadmap [calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA0MjlUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00)
  - Topic of the meeting: [wg-traits#32](https://github.com/rust-lang/wg-traits/issues/32)
- Tomorrow <time:2022-04-29T15:00:00+02:00> Compiler Team: Incremental Compilation's Future [calendar link](https://calendar.google.com/calendar/event?eid=MzQxaDlyZ2duazM2MGU4bG85MzQ2ZGFvbHEgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw&ctz=GMT+02:00)
  - Topic of the meeting: [compiler-team#491](https://github.com/rust-lang/compiler-team/issues/491)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 10 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 6 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 4 months ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 4 months ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: 4 months ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 3 months ago)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: about 41 days ago)
  - "Add attribute to run specific tests in an isolated process" [compiler-team#508](https://github.com/rust-lang/compiler-team/issues/508) (last review activity: about 1 days ago)
  - "Stabilize `-Zgcc-ld=lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510) (last review activity: about 1 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking issue for Consistent no-prelude attribute (RFC 501)" [rust#20561](https://github.com/rust-lang/rust/issues/20561#issuecomment-1059258740) 
  - "Tracking Issue for `-Z terminal-width`" [rust#84673](https://github.com/rust-lang/rust/issues/84673#issuecomment-1087141663) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006) 
- Things in FCP (make sure you're good with it)
  - "Remove mutable_borrow_reservation_conflict lint and allow the code pattern" [rust#96268](https://github.com/rust-lang/rust/pull/96268) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Stabilize `let_chains` in Rust 1.62.0" [rust#94927](https://github.com/rust-lang/rust/pull/94927)
  
### WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/43XK8_4NROi5sowR1Qb35Q#WG-checkins))
> - We no longer support the legacy pass manager with LLVM 15 (though I don't think we have any open issues for the NewPM anymore)
> - Clang has enabled opaque pointers by default, so we'll do that as well when we update to LLVM 15.
> - Upstream patches to support Rust's allocator are slowly moving forward, but haven't fully landed yet.
> - LLVM 15 raises the toolchain baseline, though we currently can still work around this using LLVM_TEMPORARILY_ALLOW_OLD_TOOLCHAIN=ON. We need https://github.com/rust-lang/rust/pull/95026 to support building new LLVM versions.

- @_*WG-traits* (generic work of the WG) by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/RZWtfiBBQo2dG525CgZ2mQ#WG-checkins))
> Types team RFC is posted: https://github.com/rust-lang/rfcs/pull/3254
> We have had deep-dive meetings on Fridays
>   - So far, we've covered the subtyping and variance nomicon chapter PR, "Chalkification", and new subtyping in a-mir-formality
>   - Tomorrow, we have a deep dive into the new TAIT algorithm
> Also went through adding `Copy` to a-mir-formality: https://www.youtube.com/watch?v=7ZQ-9yZztKA&t=589s

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- [Revert diagnostic duplication and accidental stabilization](https://github.com/rust-lang/rust/pull/96516)
  - @oli says low-risk, because it's what we had before #94081 (the relevant diff being [this](https://github.com/rust-lang/rust/pull/94081/files#diff-1d1a5e417e4d67a3158bf9cbbd88332862840de772f1c345385d2ac34dede737))

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- No unreviewed PRs on `T-compiler` at this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No new PRs waiting on T-compiler

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "AddNicheCases MirPass" [rust#95652](https://github.com/rust-lang/rust/pull/95652) (last review activity: about 23 days ago)
  - Bot assigned @**Wesley Wiser** as reviewer, reroll?
- "Support tool lints with the `#[expect]` attribute (RFC 2383)" [rust#95542](https://github.com/rust-lang/rust/pull/95542) (last review activity: about 22 days ago)
  - PR author assigned review to @**Wesley Wiser**, reroll?
- "Add `sub_ptr` on pointers (the `usize` version of `offset_from`)" [rust#95837](https://github.com/rust-lang/rust/pull/95837) (last review activity: about 17 days ago)
  - previous review from @**RalfJ** (maybe unassign from @**kennytm**? They were bot-assigned)
- "Remove `#[rustc_deprecated]`" [rust#95960](https://github.com/rust-lang/rust/pull/95960) (last review activity: about 16 days ago)
  - assigned review to @**Josh Triplett** 
  - needs additional reviewer for the compiler part?

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [45 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 39 P-high, 83 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2022-04-26](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-04-26.md)

This was, in general, a positive week for compiler performance. There were many concentrated efforts on improving rustdoc performance with a lot of real world crates showing ~4-7% improvements in full build times. Additionally, there was further improvement to `macro_rules!` performance with many real world crates improving performance by as much as 18% in full builds! On the other hand, the regressions were mostly minor and largely relegated to secondary benchmarks.

Triage done by **@rylev**.
Revision range: [4ca19e09d302a4cbde14f9cb1bc109179dc824cd..1c988cfa0b7f4d3bc5b1cb40dc5002f5adbfb9ad](https://perf.rust-lang.org/?start=4ca19e09d302a4cbde14f9cb1bc109179dc824cd&end=1c988cfa0b7f4d3bc5b1cb40dc5002f5adbfb9ad&absolute=false&stat=instructions%3Au)

4 Regressions, 6 Improvements, 3 Mixed; 1 of them in rollups
45 artifact comparisons made in total

#### Regressions

Rollup of 5 pull requests [#96263](https://github.com/rust-lang/rust/pull/96263) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=09ccb6c59d026b94edae50ba949b22dfc5d65ed1&end=7be1da0319eb5f381bc0aa8559367bb33dfe90a5&stat=instructions:u)

| | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 2 | 6 | 0 | 0 | 2 |
| mean | 2.0% | 6.3% | N/A | N/A | 2.0% |
| max | 3.2% | 6.9% | N/A | N/A | 3.2% |
- The regression in primary benchmarks is dominated by a noisy `syn-1.0.89` (see [rustc-perf#1301](https://github.com/rust-lang/rustc-perf/issues/1301)). However, the regressions in the secondary benchmarks seem real and point towards [#96236](https://github.com/rust-lang/rust/pull/96236) as the possible cause.
- I ran cachegrind diff on `wg-grammar check full` and got [these results](https://gist.github.com/rylev/8dad0b2dc24733908de28ce34a906692) which shows `<rustc_borrowck::region_infer::Trace as alloc::vec::spec_from_elem::SpecFromElem>::from_elem` being called a lot more often after this change.
- The regressions are not *huge* but they are certainly significant and real. If something obvious stands out to those more familiar with this code, it might be worth poking around.


rustdoc: Unindent doc fragments on `Attributes` construction [#96282](https://github.com/rust-lang/rust/pull/96282) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0b3404b01b251401e6b45cb1c4df8f883dfab2d7&end=8b2393086f4c41007b5fb02ef0579ffa7046bff2&stat=instructions:u)

| | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 1 | 10 | 0 | 0 | 1 |
| mean | 0.4% | 0.4% | N/A | N/A | 0.4% |
| max | 0.4% | 0.5% | N/A | N/A | 0.4% |
- An [issue](https://github.com/rust-lang/rust/issues/96309) was opened to investigate whether more work is being done that strictly necessary.
- Since the regressions are relatively minor and only constrained to somewhat "artificial" crates (i.e., `hello-world` is the only primary crate impacted), we can [mark this as triaged](https://github.com/rust-lang/rust/pull/96282#issuecomment-1109535756).


Generate synthetic object file to ensure all exported and used symbols participate in the linking [#95604](https://github.com/rust-lang/rust/pull/95604) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7417110cefda899a685a77557ac2bd7d7ee07e54&end=18b53cefdf7456bf68937b08e377b7e622a115c2&stat=instructions:u)

| | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 3 | 13 | 0 | 0 | 3 |
| mean | 0.4% | 0.4% | N/A | N/A | 0.4% |
| max | 0.5% | 0.5% | N/A | N/A | 0.5% |
- This seems to be regressing a bunch of full doc builds. Given this doesn't touch rustdoc, but does touch metadata encoding/decoding, I would assume that's where the perf hit is coming from. 
- I ran cachegrind diff on `helloworld doc full` and [got these results](https://gist.github.com/rylev/772e7dd5e7f133e48bf318a583e44845). It indeed looks like we're calling decoding functions on certain items (attributes and idents) more than previously (albeit with less decoding of spans).
- [Left a comment to the author/reviewer](https://github.com/rust-lang/rust/pull/95604#issuecomment-1109652483) to get more clarification.


Display function path in unsafety violations - E0133  [#96294](https://github.com/rust-lang/rust/pull/96294) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=055bf4ccd521c2c2185166c86951be7be145727c&end=ec8619dca239f57201a3ceb59e93149659c07b58&stat=instructions:u)

| | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 44 | 0 | 0 | 0 | 44 |
| mean | 1.3% | N/A | N/A | N/A | 1.3% |
| max | 2.9% | N/A | N/A | N/A | 2.9% |
- Performance runs [were done](https://github.com/rust-lang/rust/pull/96294#issuecomment-1106397651) on this change before merging and they did not show perf regressions
- Added a [comment](https://github.com/rust-lang/rust/pull/96294#issuecomment-1109540254) to ensure the issue doesn't get lost. It seems it might be caused by inclusion of `DefId`s when they aren't needed.


#### Improvements

- Inline `ty::Const::ty()` and `ty::Const::val()` getters [#96022](https://github.com/rust-lang/rust/pull/96022) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=27af5175497936ea3413bef5816e7c0172514b9c&end=0034bbca260bfa00798d70150970924221688ede&stat=instructions:u)
- Speed up `TokenCursor` [#96210](https://github.com/rust-lang/rust/pull/96210) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1dec35a1b0df406da5d7cae55a7fa8d186a2b028&end=b04c5329e1e145fb2fb46c5a7e775638712b03aa&stat=instructions:u)
- rustdoc: Optimize IdMap [#96260](https://github.com/rust-lang/rust/pull/96260) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b04c5329e1e145fb2fb46c5a7e775638712b03aa&end=de1bc0008be096cf7ed67b93402250d3b3e480d0&stat=instructions:u)
- rustdoc: Resolve some more doc links early [#96261](https://github.com/rust-lang/rust/pull/96261) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=10baaa6ed243c3e026491b1068c44356eaf24069&end=0b3404b01b251401e6b45cb1c4df8f883dfab2d7&stat=instructions:u)
- rustdoc: make primitive synthetic impls for correct doc module [#96301](https://github.com/rust-lang/rust/pull/96301) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=41ef7678061dde625bf273ab6b036aebd7153a43&end=5ffebc2cb3a089c27a4c7da13d09fd2365c288aa&stat=instructions:u)
- incr. comp.: Don't export impl_stable_hash_via_hash!() and warn about using it. [#96082](https://github.com/rust-lang/rust/pull/96082) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a2df8baea6fb7199822d39cfcfddb197604aa8a2&end=27af5175497936ea3413bef5816e7c0172514b9c&stat=instructions:u)

#### Mixed

rustdoc: Optimize and refactor doc link resolution [#96135](https://github.com/rust-lang/rust/pull/96135) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0034bbca260bfa00798d70150970924221688ede&end=d39864d64e6e0762d418f6beeedb4510942fc828&stat=instructions:u)

| | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 6 | 0 | 14 | 20 | 20 |
| mean | 0.3% | N/A | -1.3% | -0.7% | -0.9% |
| max | 0.3% | N/A | -2.7% | -1.0% | -2.7% |
- The regression in [stm32f4 is expected](https://github.com/rust-lang/rust/pull/96135#issuecomment-1101397244) and given this is otherwise a big perf win, we'll take the slight perf hit in one benchmark.


Remove visibility information from HIR [#93970](https://github.com/rust-lang/rust/pull/93970) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=de1026a67b0a3f5d6b61a1f77093af97d4799376&end=143eaa8d441641251ab41ed73deaba0d8d0cf4a5&stat=instructions:u)

| | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 0 | 16 | 2 | 2 | 2 |
| mean | N/A | 1.3% | -0.2% | -0.3% | -0.2% |
| max | N/A | 2.2% | -0.2% | -0.3% | -0.2% |
- The regression happens in a stress test that is expected to stress the code being changed. 
- After this change visibility is now being correctly hashed which is strictly more work but is the "correct" thing to do. Given this [the regressions are worth it](https://github.com/rust-lang/rust/pull/93970#issuecomment-1107778525).


Make derefer work everwhere [#96116](https://github.com/rust-lang/rust/pull/96116) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=18b53cefdf7456bf68937b08e377b7e622a115c2&end=055bf4ccd521c2c2185166c86951be7be145727c&stat=instructions:u)

| | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 8 | 16 | 1 | 0 | 9 |
| mean | 0.5% | 1.2% | -1.7% | N/A | 0.2% |
| max | 0.5% | 2.5% | -1.7% | N/A | -1.7% |
- Unfortunate regressions but they are fairly isolated, small, and expected. 
- Majority of the regressions come from the introduction of more local variables which LLVM has to work through. This looks like an area we'll want to work through, but we [shouldn't block this PR on addressing this](https://github.com/rust-lang/rust/pull/96116#issuecomment-1109521059).


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No new `I-compiler-nominated` issues

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
