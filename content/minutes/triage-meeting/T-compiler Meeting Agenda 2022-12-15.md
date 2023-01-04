---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-12-15

## Announcements

- Today release of Rust stable 1.66
- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMjEyMTZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-16T10:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))

- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMjEyMTlUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-19T10:00:00-05:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjEyMTlUMTYzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-19T11:30:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjEyMTlUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-19T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Upgrade `*-linux-musl` targets to musl 1.2" [compiler-team#572](https://github.com/rust-lang/compiler-team/issues/572) 
- Old MCPs (not seconded, take a look)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 4 months ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 3 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: 3 months ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: 3 months ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 51 days ago)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) (last review activity: about 57 days ago)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: about 57 days ago)
- Pending FCP requests (check your boxes!)
  - "Add `SEMICOLON_IN_EXPRESSIONS_FROM_MACROS` to future-incompat report" [rust#103418](https://github.com/rust-lang/rust/pull/103418#issuecomment-1307473562) 
  - "Change `bindings_with_variant_name` to deny-by-default" [rust#104154](https://github.com/rust-lang/rust/pull/104154#issuecomment-1307473562)
- Things in FCP (make sure you're good with it)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) 
  - "New tier-3 targets for OpenHarmony" [compiler-team#568](https://github.com/rust-lang/compiler-team/issues/568) 
  - "Encode spans relative to the enclosing item -- enable by default" [rust#84762](https://github.com/rust-lang/rust/pull/84762) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Make PROC_MACRO_DERIVE_RESOLUTION_FALLBACK a hard error" [rust#84022](https://github.com/rust-lang/rust/pull/84022) 
  - "Make `Sized` coinductive, again" [rust#100386](https://github.com/rust-lang/rust/pull/100386) 
  - "Elaborate supertrait obligations when deducing closure signatures" [rust#101834](https://github.com/rust-lang/rust/pull/101834) 
  - "make const_err a hard error" [rust#102091](https://github.com/rust-lang/rust/pull/102091) 
  - "make `order_dependent_trait_objects` show up in future-breakage reports" [rust#102635](https://github.com/rust-lang/rust/pull/102635) 
  - "Stabilize raw-dylib for non-x86" [rust#102793](https://github.com/rust-lang/rust/issues/102793) 
  - "Use `token::Lit` in `ast::ExprKind::Lit`." [rust#102944](https://github.com/rust-lang/rust/pull/102944) 
  - "Remove drop order twist of && and || and make them associative" [rust#103293](https://github.com/rust-lang/rust/pull/103293) 
  - "Unreserve braced enum variants in value namespace" [rust#103578](https://github.com/rust-lang/rust/pull/103578) 
  - "Remove const eval limit and implement an exponential backoff lint instead" [rust#103877](https://github.com/rust-lang/rust/pull/103877) 
  - "Stabilize native library modifier `verbatim`" [rust#104360](https://github.com/rust-lang/rust/pull/104360) 
  - "Expand a style-guide principle: readability in plain text" [rust#104506](https://github.com/rust-lang/rust/pull/104506) 
  - "Find the right lower bound region in the scenario of partial order relations" [rust#104765](https://github.com/rust-lang/rust/pull/104765)
  
### WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/Q16ULE5gQG6embjLHEFREg#WG-checkins)):
  > * @**Patrick Walton** has done some investigations into memcpy elimination and proposed a new transform in https://reviews.llvm.org/D140089. The big LLVM memcpy eliminator patch is up — 17% reduction in Rust memcpys now, with up to 42% possible in the future with more MIR optimization work.

  > LLVM 16 is expected to branch Jan 24, so we'll be starting the LLVM 16 upgrade around that time. A key blocker on the Rust side is the mingw-w64 upgrade (https://github.com/rust-lang/rust/pull/100178).

  > Note from @_**apiraino**: mingw-w64 upgrade was nominated for a [previous meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-11-10/near/309020772) ("to consider the compatibility aspect, at least"). If `T-compiler` if fine with the upgrade, it might be good to explicit that so nobody feels this is blocked on some decision.

- Types team by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/Q16ULE5gQG6embjLHEFREg#WG-checkins)):
  > We had an in-person meetup Nov. 30th - Dec. 2nd. We discussed a bunch of things like: types-y tracking issues; unsound issues; some "end user" features and how we get there; roadmap for short, medium, long-term; and a planning for the trait solver rewrite/refactor.
  > We're planing to write a blog post "officially" announcing the team, some of things we've accomplished since forming, and our roadmap and goals.
  > We're on pause for meetings for the holidays.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Mangle "main" as "__main_void" on wasm32-wasi" [rust#105468](https://github.com/rust-lang/rust/pull/105468) 
  - nominated for 1.67.0-beta by @**cuviper**
  - backport this change as needed by wasm32-wasi since #105395
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "always check alignment during CTFE" [rust#104616](https://github.com/rust-lang/rust/pull/104616)
  - @**pnkfelix** posted summary of the [T-lang meeting](https://github.com/rust-lang/rust/pull/104616#issuecomment-1349592936)
  - PR now has assigned a T-compiler reviewer
- "Encode spans relative to the enclosing item -- enable by default" [rust#84762](https://github.com/rust-lang/rust/pull/84762) 
  - entered in FCP: will be accepted if no further comments
- (other hidden issues in progress or waiting on other teams, [details here](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "support higher-ranked regions in opaque type inference" [rust#100503](https://github.com/rust-lang/rust/pull/100503) (last review activity: 2 months ago)
  - cc: @**nikomatsakis** [to review](https://github.com/rust-lang/rust/pull/100503#pullrequestreview-1119430454)
- "stop special-casing `'static` in evaluation" [rust#102472](https://github.com/rust-lang/rust/pull/102472) (last review activity: 2 months ago)
  - cc: @**nikomatsakis** - or reassign?
  - `S-blocked` on "changing the `order_dependent_trait_objects` future-compat lint to a hard error": maybe tag `T-lang`? 
- "[`unused_braces`] Lint multiline blocks as long as not in arms" [rust#102432](https://github.com/rust-lang/rust/pull/102432) (last review activity: 2 months ago)
  - cc: @**Caleb Cartwright** (left [some concerns](https://github.com/rust-lang/rust/pull/102432#issuecomment-1265358906))
- "Fix #99684 through autoref in `write!` macro with a two-phased borrows retrocompat workaround" [rust#100202](https://github.com/rust-lang/rust/pull/100202) (last review activity: 2 months ago)
  - pinging past reviewers: @**David Tolnay** @**eddyb** (also for [comment](https://github.com/rust-lang/rust/pull/100202#discussion_r990780307))
- "make a help text for 'cannot find macro' actionable" [rust#102881](https://github.com/rust-lang/rust/pull/102881) (last review activity: 2 months ago)
  - pending [question](https://github.com/rust-lang/rust/pull/102881#discussion_r992200121) for @**Michael Goulet (compiler-errors)**
  - @**TaKO8Ki** autoassigned review - reassign?

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [51 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [20 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 4 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 30 P-high, 87 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Seg fault in Rust 1.65.0 if I don't create temporary variable" [rust#105295](https://github.com/rust-lang/rust/issues/105295)
  - Should be fixed by [rust#105483](https://github.com/rust-lang/rust/pull/105483) by @**Michael Goulet (compiler-errors)**
  - #105483 [is on FCP](https://github.com/rust-lang/rust/pull/105483#issuecomment-1345630257) and waiting feedback

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-12-13](https://github.com/rust-lang/rustc-perf/blob/76be3cb667de49930f1f3eda7ec6c0e17a6d7d45/triage/2022-12-13.md)

Fairly quiet week with the only excitement coming from a nice improvement implemented by @nnethercote which fixed a pesky performance regressions in the linting system. This produced a 0.6% performance improvement across a large amount of the real world crates we test against. 

Triage done by **@rylev**.
Revision range: [9db224fc..109cccbe](https://perf.rust-lang.org/?start=9db224fc908059986c179fc6ec433944e9cfce50&end=109cccbe4f345c0f0785ce860788580c3e2a29f5&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 3     |
| Regressions (secondary)  | 1.7%  | [0.3%, 3.3%]   | 11    |
| Improvements (primary)   | -0.8% | [-2.2%, -0.2%] | 129   |
| Improvements (secondary) | -1.2% | [-4.4%, -0.1%] | 97    |
| All  (primary)           | -0.7% | [-2.2%, 0.2%]  | 132   |


2 Regressions, 2 Improvements, 4 Mixed; 3 of them in rollups
41 artifact comparisons made in total

#### Regressions

Rollup of 9 pull requests [#105378](https://github.com/rust-lang/rust/pull/105378) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e60fbaf4ce768d13a6abc048bd34ee12995d18dc&end=b28d30e1e3c2b90fd08b7dd79d8e63884d1e0339&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.9%  | [0.2%, 4.4%]   | 12    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.8% | [-0.8%, -0.8%] | 1     |
| All  (primary)           | -     | -              | 0     |
- Suspicion is that [#105250](https://github.com/rust-lang/rust/pull/105250) is the cause. Running a regression test to confirm.
- This is small enough that it's not worth stressing about.


Fast-path some binder relations [#105350](https://github.com/rust-lang/rust/pull/105350) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=71ec1457ee9868a838e4521a3510cdd416c0c295&end=109cccbe4f345c0f0785ce860788580c3e2a29f5&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.1% | [1.0%, 1.2%] | 2     |
| Regressions (secondary)  | 2.3% | [2.0%, 2.7%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.1% | [1.0%, 1.2%] | 2     |
- This is noise. The regression cancel out the improvements in the exact same test cases from the previous commit which is a very strong indicator that this is noise.


#### Improvements

Fix lint perf regressions [#105485](https://github.com/rust-lang/rust/pull/105485) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ee6533d7408f1447c028025c883a34c904d25ba4&end=b397bc0727ad27340466166455c6edd327a589c4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.5%, -0.2%] | 138   |
| Improvements (secondary) | -0.8% | [-2.5%, -0.2%] | 93    |
| All  (primary)           | -0.6% | [-1.5%, -0.2%] | 138   |


Inline and remove `place_contents_drop_state_cannot_differ`. [#105436](https://github.com/rust-lang/rust/pull/105436) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b96d9e0e20adb7716aa32a56fe96fde15c75d517&end=71ec1457ee9868a838e4521a3510cdd416c0c295&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.2%, -0.4%] | 3     |
| Improvements (secondary) | -2.2% | [-2.6%, -2.0%] | 6     |
| All  (primary)           | -0.8% | [-1.2%, -0.4%] | 3     |
- These are noise and went away in the next commit


#### Mixed

Rollup of 10 pull requests [#105486](https://github.com/rust-lang/rust/pull/105486) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=badd6a5a03e87920259e1510e710526b51faadbe&end=14ca83a04b00433a8caf3b805d5ea08cb2691e1b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -3.9% | [-4.0%, -3.8%] | 2     |
| All  (primary)           | 0.4%  | [0.4%, 0.4%]   | 1     |
- A single tiny regression on a doc profiler, not worth worrying about. ([commented here](https://github.com/rust-lang/rust/pull/105486#issuecomment-1344956405))


Rollup of 9 pull requests [#105512](https://github.com/rust-lang/rust/pull/105512) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0d5573e6daf99a5b98ace3dfcc4be2eb64867169&end=a000811405e6a3ca9b0b129c1177e78564e09666&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.1%  | [1.1%, 1.1%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 6     |
| All  (primary)           | -0.2% | [-0.2%, -0.2%] | 1     |
- The regressions is small in absolute terms, only in instructions count, it's a short stress test that doesn't seem to be the only one to exercize some codepath changed in this PR. Nothing jumps out in the rolled up PRs nor seems to apply to the other benchmarks. There are also small wins elsewhere, so this seems fine. ([commented here](https://github.com/rust-lang/rust/pull/105512#issuecomment-1345337596))


Group some fields in a common struct so we only pass one reference instead of three [#105357](https://github.com/rust-lang/rust/pull/105357) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a000811405e6a3ca9b0b129c1177e78564e09666&end=cbc70ff277dda8b7f227208eff789f1f68b6de5a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.7%]   | 23    |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.7%]   | 22    |
| Improvements (primary)   | -0.5% | [-0.8%, -0.2%] | 33    |
| Improvements (secondary) | -0.9% | [-1.4%, -0.2%] | 18    |
| All  (primary)           | -0.1% | [-0.8%, 0.7%]  | 56    |
- Wins appear to roughly equal or slightly outweigh the losses here. ([commented here](https://github.com/rust-lang/rust/pull/105357#issuecomment-1345499340))


Remove `token::Lit` from `ast::MetaItemLit`. [#105160](https://github.com/rust-lang/rust/pull/105160) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b397bc0727ad27340466166455c6edd327a589c4&end=2cd2070af7643ad88d280a4933bc4fb60451e521&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.0%  | [1.0%, 1.0%]   | 1     |
| Improvements (primary)   | -0.9% | [-1.0%, -0.8%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.9% | [-1.0%, -0.8%] | 5     |
- There is a single trivial regression, which may or may not be real. ([commented here](https://github.com/rust-lang/rust/pull/105160#issuecomment-1346170852))

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Android NDK r25b changes will break developers using r22b or older" [rust#103673](https://github.com/rust-lang/rust/issues/103673) 
  - Nominated by @**tmandry** ([comment](https://github.com/rust-lang/rust/issues/103673#issuecomment-1343706914)), basically needs someone driving the FCP mentioned in [previous meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-11-10/near/309021929)
  - [draft blog post](https://github.com/rust-lang/blog.rust-lang.org/pull/1055) announcing the NDK min. version update
- "Temporarily disable building rustc with ThinLTO on `x86_64-unknown-linux-gnu` and `x86_64-pc-windows-msvc`" [rust#105662](https://github.com/rust-lang/rust/pull/105662)
  - ThinLTO on by default seems to "regress the message we print during ICEs sometimes, including the query stack and explanation on how to open a GH issue"
  - T-compiler to review: should we proceed and disable ThinLTO on CI temporarily also for linux+windows targets? 

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

None (WG-checkins paused for a few weeks)