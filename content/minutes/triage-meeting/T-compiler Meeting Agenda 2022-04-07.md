---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-04-07

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow <time:2022-04-08T13:00:00+02:00> Types Team: Planning/Deep-Dive meeting [calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA0MDFUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00)
- Tomorrow <time:2022-04-08T14:00:00+02:00> Compiler Team Planning meeting [calendar link](https://calendar.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMjA0MDhUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00)
- :tada: Today new Rust Release: 1.60 ([blog post](https://github.com/rust-lang/blog.rust-lang.org/blob/5f778be1d744787933faa9bf44d9d97d06b78c04/posts/2022-04-07-Rust-1.60.0.md))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "Add -Zlazily-normalize-type-aliases to keep type alias information" [compiler-team#504](https://github.com/rust-lang/compiler-team/issues/504) 
  -  "try to not rely on attributes from extern crates" [compiler-team#505](https://github.com/rust-lang/compiler-team/issues/505) 
- Old MCPs (not seconded, take a look)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 9 months ago)
  -  "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 6 months ago)
  -  "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 3 months ago)
  -  "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 3 months ago)
  -  "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: 3 months ago)
  -  "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 2 months ago)
  -  "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: about 19 days ago)
  -  "Add `yeet` experimentally" [compiler-team#501](https://github.com/rust-lang/compiler-team/issues/501) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  -  "Tracking issue for Consistent no-prelude attribute (RFC 501)" [rust#20561](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006) 
  -  "Tracking Issue for `-Z terminal-width`" [rust#84673](https://github.com/rust-lang/rust/issues/84673#issuecomment-1087141663) 
  -  "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006) 
- Things in FCP (make sure you're good with it)
  -  "Add support for MIR opt unit tests via a new `-Z` flag" [compiler-team#502](https://github.com/rust-lang/compiler-team/issues/502) 
  -  "Remove -Zast-json" [compiler-team#503](https://github.com/rust-lang/compiler-team/issues/503) 
- Accepted MCPs
  -  "Promote `x86_64-unknown-none` to Tier 2" [compiler-team#499](https://github.com/rust-lang/compiler-team/issues/499) 
- Finalized FCPs (disposition merge)
  -  "Fix constants not getting dropped if part of a diverging expression" [rust#94775](https://github.com/rust-lang/rust/pull/94775) 

### WG checkins

- @_*wg-polymorphization* by @**davidtwco** ([previous checkin](https://hackmd.io/PPMtXP7hSqmyqD30CUw_cQ#WG-checkins)):
> No major updates from polymorphization this cycle - team members are prioritizing other projects. Fixing the primary bug related to `TypeId` is still the current priority, lcnr has a fix but we're working out some complications with that fix.

- @_*WG-rls2.0* by @**veykril** ([previous checkin](https://hackmd.io/N_WW5tZqTLWouaed6cCjxg#WG-checkins)):
> We have switched from our decorator hacks to VSCode's native inlay hints in the client. Aside from that we started talking to the relevant teams to move the rust-analyzer repo into the rust-lang org and figure out what to do about the VSCode extensions.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Check that all hidden types are the same and then deduplicate them." [rust#95731](https://github.com/rust-lang/rust/pull/95731) 
  - Fixes [rust#95538](https://github.com/rust-lang/rust/issues/95538), a regression in a recent nightly (labeled `P-medium`)
  - patch authored and beta-backport nominated by @**oli** 
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "rustc_apfloat: Double::mul_add_r panic with specific values" [rust#93225](https://github.com/rust-lang/rust/pull/93225) (last review activity: about 33 days ago)
  - did @**pnkfelix** @**Wesley Wiser** had a chance to discuss about this issue? [zulip comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-03-10.20.2354818/near/274855441) from past meeting. 
- "Suggest dereferencing non-lval mutable reference on assignment" [rust#94639](https://github.com/rust-lang/rust/pull/94639) (last review activity: about 32 days ago)
  - PR author recently pinged for a review
  - then rustbot assigned to @**Wesley Wiser**
- "Imrpove E0617" [rust#94637](https://github.com/rust-lang/rust/pull/94637) (last review activity: about 32 days ago)
  - rustbot assigned to @**Matthew Jasper**, reroll dice?
- "Parse inner attributes on inline const block" [rust#94985](https://github.com/rust-lang/rust/pull/94985) (last review activity: about 21 days ago)
  - @**mw** suggested @**pnkfelix** as reviewer
- "Reject `#[thread_local]` attribute on non-static items" [rust#95006](https://github.com/rust-lang/rust/pull/95006) (last review activity: about 21 days ago)
  - rustbot assigned to @**Wesley Wiser**, reroll dice?
- "Fix codegen bug in "ptx-kernel" abi related to arg passing" [rust#94703](https://github.com/rust-lang/rust/pull/94703) (last review activity: about 19 days ago)
  - @**davidtwco** approved the changes ([comment](https://github.com/rust-lang/rust/pull/94703#pullrequestreview-914020422)) 
  - previous review also by @**bjorn3**
  - PR needs another reviewer
- "Make AST->HIR lowering incremental" [rust#88186](https://github.com/rust-lang/rust/pull/88186) (last review activity: about 16 days ago)
  - This depends now on [rust#95573](https://github.com/rust-lang/rust/pull/95573)
  - Author of #95573, asked @**mw** for a review
- "Add known-bug for #95034" [rust#95102](https://github.com/rust-lang/rust/pull/95102) (last review activity: about 13 days ago)
  - This just adds some tests for regression [rust#95034](https://github.com/rust-lang/rust/issues/95034)
  - @**Jack Huey** already contributed some thoughts
  - maybe worth an expedit review?

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [45 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 0 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 38 P-high, 82 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No new `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-04-05](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-04-05.md)

A somewhat quiet week with only a few improvements and regressions, but with improvements ever so slightly edging out regressions. The biggest regression was in a rollup which makes investigation difficult though it looks like its in trait resolution which impacts crates that do a lot of that such as diesel. The biggest improvement comes from work done by the performance team (more specifically @nnethercote) to improve `macro_rules` parsing which can lead to sizeable performance gains for crates using the ["token munching"](https://danielkeep.github.io/tlborm/book/pat-incremental-tt-munchers.html) pattern in `macro_rules`.

Triage done by **@rylev**.
Revision range: [3e7514670db841a7f0d7656f3b13b1c8b2c11599..949b98cab8a186b98bf87e64374b8d0848c55271](https://perf.rust-lang.org/?start=3e7514670db841a7f0d7656f3b13b1c8b2c11599&end=949b98cab8a186b98bf87e64374b8d0848c55271&absolute=false&stat=instructions%3Au)

2 Regressions, 2 Improvements, 1 Mixed; 2 of them in rollups
37 comparisons made in total

#### Regressions

Make lowering pull-based [#90204](https://github.com/rust-lang/rust/pull/90204) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=03314912f1361af6b39383958b5aa1b4aed61c26&end=bd1a8692f6260fd59dba1e0fa187092a1c354b2e&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 2 | 33 | 0 | 0 | 2 |
| mean | 0.3% | 0.7% | N/A | N/A | 0.3% |
| max | 0.4% | 1.7% | N/A | N/A | 0.4% |
- This is necessary for unlocking incremental lowering. [It was justified as acceptable](https://github.com/rust-lang/rust/pull/90204#pullrequestreview-878629128) since the performance will hopefully be won back (in the incremental case) when lowering is made incremental and the impact on real world crates is pretty small (only 2 regressions at an average of 0.3%).


Rollup of 7 pull requests [#95662](https://github.com/rust-lang/rust/pull/95662) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=60e50fc1cfe0bb693a5f4f93eb83ef70854531e3&end=a22cf2af0510b3ec4cbb19c3de11d3d8291349d9&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 20 | 13 | 0 | 6 | 20 |
| mean | 0.8% | 0.4% | N/A | -0.4% | 0.8% |
| max | 2.0% | 0.7% | N/A | -0.5% | 2.0% |
- It's not clear what the underlying cause could be as it seems that the issues are coming in trait selection and there are several PRs that touch trait selection (albeit for diagnostics purposes). I've left [a comment](https://github.com/rust-lang/rust/pull/95662#issuecomment-1088686029) to see if we can investigate further.

#### Improvements

Yet more `parse_tt` improvements [#95425](https://github.com/rust-lang/rust/pull/95425) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bb5c437a2ce9ccf2204c974300c5ea9eb32d3635&end=c5cf08d37b85f953b132951e868df5b924250fdc&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 1 | 0 | 30 | 23 | 31 |
| mean | 0.3% | N/A | -0.9% | -2.0% | -0.9% |
| max | 0.3% | N/A | -2.3% | -6.2% | -2.3% |


Add debug assertions to some unsafe functions [#92686](https://github.com/rust-lang/rust/pull/92686) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=15a242a432c9c40a60def102209a5d40900b7b9d&end=168a0209002fef203e83989ff641c1b3e1a51859&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 1 | 0 | 17 | 19 | 18 |
| mean | 0.6% | N/A | -0.5% | -0.4% | -0.4% |
| max | 0.6% | N/A | -1.4% | -0.8% | -1.4% |


#### Mixed

A new matcher representation for use in `parse_tt` [#95555](https://github.com/rust-lang/rust/pull/95555) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d5139f44690e7765df801ca33a7f627d128ac9e2&end=6a9080b25e73d26aae94c3f6a13b31de58e66b5a&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 3 | 10 | 18 | 11 | 21 |
| mean | 0.4% | 1.0% | -1.0% | -2.4% | -0.8% |
| max | 0.4% | 2.8% | -2.0% | -4.6% | -2.0% |
- This was already [justified](https://github.com/rust-lang/rust/pull/95555#issuecomment-1088070142) as being acceptable since the real world crates that suffer from regressions are exercising some of the worst case scenario execution paths. There is an attempt to address this in a follow up ([#95669](https://github.com/rust-lang/rust/pull/95669)). In any case, the improvements outweigh the regressions in both magnitude and number.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Cache more queries on disk" [rust#95418](https://github.com/rust-lang/rust/pull/95418)
  - PR authored by @**cjgillot** 
  - Nominated by @**davidtwco** ([comment](https://github.com/rust-lang/rust/pull/95418#issuecomment-1085700129))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
