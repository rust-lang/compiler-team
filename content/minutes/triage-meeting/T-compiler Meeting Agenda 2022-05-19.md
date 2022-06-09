---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-05-19

## Announcements

- Today release of Rust stable 1.61 ([blog post](https://github.com/rust-lang/blog.rust-lang.org/blob/b153d15e9f97e03a2c0699dd514bab69bc7ce50e/posts/2022-05-19-Rust-1.61.0.md)) :tada:
- Tomorrow <time:2022-05-20T15:00:00+02:00> Types Team: Finalize TAITs recommendations [calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA1MjBUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00 ) and [issue](https://github.com/rust-lang/wg-traits/issues/40)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 10 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 7 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 5 months ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 5 months ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: 4 months ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 3 months ago)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: 2 months ago)
  - "Change compiletest declarations parsing" [compiler-team#512](https://github.com/rust-lang/compiler-team/issues/512) (last review activity: about 12 days ago)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: about 12 days ago)
  - "Replace generic parameter list with separate lists per param kind" [compiler-team#515](https://github.com/rust-lang/compiler-team/issues/515) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510#issuecomment-1119675764) 
  - "Tracking issue for Consistent no-prelude attribute (RFC 501)" [rust#20561](https://github.com/rust-lang/rust/issues/20561#issuecomment-1059258740) 
  - "Tracking Issue for `-Z terminal-width`" [rust#84673](https://github.com/rust-lang/rust/issues/84673#issuecomment-1087141663) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006) 
  - "Stabilize the `bundle` native library modifier" [rust#95818](https://github.com/rust-lang/rust/pull/95818#issuecomment-1120471247) 
  - "Remove label/lifetime shadowing warnings" [rust#96296](https://github.com/rust-lang/rust/pull/96296#issuecomment-1114024288) 
- Things in FCP (make sure you're good with it)
  - "Add attribute to run specific tests in an isolated process" [compiler-team#508](https://github.com/rust-lang/compiler-team/issues/508) 
  - "Add an `EarlyBinder` type" [compiler-team#514](https://github.com/rust-lang/compiler-team/issues/514) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking issue for `explicit_generic_args_with_impl_trait`" [rust#83701](https://github.com/rust-lang/rust/issues/83701)

### WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry** ([previous checkin](#))
> no check-in text provided, but go check out the info at https://hackmd.io/gPgXC4fsTZOgOnd-Bwhoag


- @_*WG-traits* (generic associated types) by @**Jack Huey** ([previous checkin](#))
> * "Shiny future with GATs" blog post: https://jackh726.github.io/rust/2022/05/04/a-shiny-future-with-gats.html
> * Stabilization PR: https://github.com/rust-lang/rust/pull/96709
>   * Serious concerns have been raised
>   * First step was to summarize listed concerns (https://github.com/rust-lang/rust/pull/96709#issuecomment-1129311660)
>   * Next step is to directly address them

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Allow the unused_macro_rules lint for now" [rust#97032](https://github.com/rust-lang/rust/pull/97032) 
  - nominated for beta 1.62 backport
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "rustc_apfloat: Double::mul_add_r panic with specific values" [rust#93225](https://github.com/rust-lang/rust/pull/93225) (last review activity: 2 months ago)
  - cc: @**pnkfelix** and @**Wesley Wiser** (which are working on it)
  - depends also on [rust#96784](https://github.com/rust-lang/rust/pull/96784)
- "Move various checks to typeck so them failing causes the typeck result to get tainted" [rust#96046](https://github.com/rust-lang/rust/pull/96046) (last review activity: about 33 days ago)
  - cc: assignee reviewer @**Michael Goulet (compiler-errors)** 
- "some mir typeck cleanup" [rust#95763](https://github.com/rust-lang/rust/pull/95763) (last review activity: about 28 days ago)
  - cc: @**lcnr** is the PR ready to review?
- "reject more impossible trivial bounds (HRTBs and trivial after normalization)" [rust#95611](https://github.com/rust-lang/rust/pull/95611) (last review activity: about 28 days ago)
  - cc: @**Michael Goulet (compiler-errors)** current status `s-waiting-for-review` is correct?
  - cc: @**nikomatsakis**  does this PR need a T-lang approval ([comment](https://github.com/rust-lang/rust/pull/95611#issuecomment-1094390138))?
- "Add EntryExistInstrumenterPass for -Z instrument-mcount to the pipeline manually for LLVM >= 13." [rust#96238](https://github.com/rust-lang/rust/pull/96238) (last review activity: about 28 days ago)
  - @**tm|352985** reviewed
  - This [comment](https://github.com/rust-lang/rust/pull/96238#issuecomment-1103605416) (and following) raise the question if a fix should be applied to LLVM directly

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [47 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 39 P-high, 80 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs 2022-05-17](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-05-17.md)

It was a somewhat quiet week with real-world benchmarks showing a slight improvement on average and only one real-world crate, `bitmaps`, experiencing regressions. Unfortunately, the cause of the regressions don't look straightforward though. The biggest performance win came from a change to not encode attributes in metadata that are only used within the local crate. This improved doc builds of 16 of the 18 real world crates we run in our performance suite!

Triage done by **@rylev**.
Revision range: [c51871..7355d](https://perf.rust-lang.org/?start=c51871c469f7ed3b35ae25d7e6e77bc73fbdd0e3&end=7355d971a954ed63293e4191f6677f60c1bc07d9&absolute=false&stat=instructions%3Au)

**Summary**:

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All  (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:--------------:|
| count | 7                      | 9                        | 40                      | 43                        | 47             |
| mean  | 1.6%                   | 2.6%                     | -0.6%                   | -1.3%                     | -0.3%          |
| max   | 1.9%                   | 3.5%                     | -2.6%                   | -2.6%                     | -2.6%          |


2 Regressions, 4 Improvements, 0 Mixed; 0 of them in rollups
51 artifact comparisons made in total

#### Regressions

Add EarlyBinder [#96883](https://github.com/rust-lang/rust/pull/96883) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=70b3681bf621bc0de91ffab711b2350068b4c466&end=2a8a0fc4237da544aca0d6631ee467891caad9ad&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 7                      | 0                        | 0                       | 0                         | 7               |
| mean  | 1.7%                   | N/A                      | N/A                     | N/A                       | 1.7%            |
| max   | 2.0%                   | N/A                      | N/A                     | N/A                       | 2.0%            |
- Regressions are exclusively in bitmaps-3.1.0 in both full and incr-full scenarios. This benchmark stresses trait related code in the compiler.
- Looks like `specialization_graph_of` is taking more time which is trait related so it makes sense.
- Left a [comment](https://github.com/rust-lang/rust/pull/96883#issuecomment-1128895889) asking if anyone has any more clues.


 Retire `ItemLikeVisitor` trait [#96825](https://github.com/rust-lang/rust/pull/96825) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1e8cd63d60d55361ae0a62ce87280171d40b6d32&end=7355d971a954ed63293e4191f6677f60c1bc07d9&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All  (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:--------------:|
| count | 0                      | 6                        | 0                       | 5                         | 0              |
| mean  | N/A                    | 4.2%                     | N/A                     | -0.3%                     | N/A            |
| max   | N/A                    | 4.8%                     | N/A                     | -0.4%                     | N/A            |
- This regression seems to be taking place exclusively in the `externs` stress test. 
- The `native_library_kind` query is being hit more often. Since that query is going to be used a lot in the `externs` crate, it makes sense it would be the one to show regressions. 
- The cachegrind diff for `externs debug full` shows a big regression in calls to `rustc_metadata::rmeta::decoder::cstore_impl::provide` which calls into [`native_library_kind`](https://github.com/rust-lang/rust/blob/735efc0c703812343a5e5d19b600dac73b8a89f0/compiler/rustc_metadata/src/rmeta/decoder/cstore_impl.rs#L261). 
- [Left a comment](https://github.com/rust-lang/rust/pull/96825#issuecomment-1128886179) asking why that might be the case.

#### Improvements

don't encode only locally used attrs [#95562](https://github.com/rust-lang/rust/pull/95562) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=18bd2dd5cda08b09ace6e37c1a0312e9b2bb4beb&end=481db40311cdd241ae4d33f34f2f75732e44d8e8&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All  (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:--------------:|
| count | 0                      | 0                        | 22                      | 23                        | 22             |
| mean  | N/A                    | N/A                      | -0.8%                   | -1.8%                     | -0.8%          |
| max   | N/A                    | N/A                      | -2.7%                   | -2.8%                     | -2.7%          |


rustc: Stricter checking for #[link] attributes [#96885](https://github.com/rust-lang/rust/pull/96885) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e1ec3260d79497080ca86540562d410ba67d2a95&end=10b3a0d209746e70fdc72f65e4649d492f6ed5a2&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All  (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:--------------:|
| count | 0                      | 0                        | 0                       | 9                         | 0              |
| mean  | N/A                    | N/A                      | N/A                     | -0.8%                     | N/A            |
| max   | N/A                    | N/A                      | N/A                     | -1.2%                     | N/A            |


optimize `insert_range` method of `IntervalSet` [#96895](https://github.com/rust-lang/rust/pull/96895) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a170f2b3d2aa95e51040163e801123b17d38c24f&end=0f202d22c5e759062de276cbf0c27ed69794cb65&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All  (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:--------------:|
| count | 0                      | 0                        | 0                       | 6                         | 0              |
| mean  | N/A                    | N/A                      | N/A                     | -1.3%                     | N/A            |
| max   | N/A                    | N/A                      | N/A                     | -2.4%                     | N/A            |


Clean up derived obligation creation [#96892](https://github.com/rust-lang/rust/pull/96892) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c1cfdd1fb225d64e78b8d8cbab83564ac2dd5ec2&end=c1d65eaa456d3986e38868e68e6ce25d802f06b4&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All  (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:--------------:|
| count | 0                      | 0                        | 3                       | 1                         | 3              |
| mean  | N/A                    | N/A                      | -0.4%                   | -0.4%                     | -0.4%          |
| max   | N/A                    | N/A                      | -0.6%                   | -0.4%                     | -0.6%          |


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
