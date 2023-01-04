---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-12-22

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMjEyMjZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-26T10:00:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjEyMjZUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-26T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "New tier-2 target for `wasm32-wasi` + threads" [compiler-team#574](https://github.com/rust-lang/compiler-team/issues/574) 
- Old MCPs (not seconded, take a look)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 5 months ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 3 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: 3 months ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: 3 months ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 58 days ago)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) (last review activity: 2 months ago)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: 2 months ago)
  - "Upgrade `*-linux-musl` targets to musl 1.2" [compiler-team#572](https://github.com/rust-lang/compiler-team/issues/572) (last review activity: about 0 days ago)
- Pending FCP requests (check your boxes!)
  - "Add `SEMICOLON_IN_EXPRESSIONS_FROM_MACROS` to future-incompat report" [rust#103418](https://github.com/rust-lang/rust/pull/103418) 
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354) 
- Things in FCP (make sure you're good with it)
  - "Move tests out of src" [compiler-team#573](https://github.com/rust-lang/compiler-team/issues/573) 
  - "Change `bindings_with_variant_name` to deny-by-default" [rust#104154](https://github.com/rust-lang/rust/pull/104154) 
- Accepted MCPs
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) 
  - "New tier-3 targets for OpenHarmony" [compiler-team#568](https://github.com/rust-lang/compiler-team/issues/568) 
- Finalized FCPs (disposition merge)
  - "Tracking issue for the "efiapi" calling convention" [rust#65815](https://github.com/rust-lang/rust/issues/65815) 
  - "Make PROC_MACRO_DERIVE_RESOLUTION_FALLBACK a hard error" [rust#84022](https://github.com/rust-lang/rust/pull/84022) 
  - "Encode spans relative to the enclosing item -- enable by default" [rust#84762](https://github.com/rust-lang/rust/pull/84762) 
  - "Make `Sized` coinductive, again" [rust#100386](https://github.com/rust-lang/rust/pull/100386) 
  - "Elaborate supertrait obligations when deducing closure signatures" [rust#101834](https://github.com/rust-lang/rust/pull/101834) 
  - "Don't normalize in AstConv" [rust#101947](https://github.com/rust-lang/rust/pull/101947) 
  - "make const_err a hard error" [rust#102091](https://github.com/rust-lang/rust/pull/102091) 
  - "Stabilize default_alloc_error_handler" [rust#102318](https://github.com/rust-lang/rust/pull/102318) 
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

None this week

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Switch `#[track_caller]` back to a no-op unless feature gate is enabled" [rust#104741](https://github.com/rust-lang/rust/pull/104741)
  - nominated by @**Michael Goulet (compiler-errors)** ([comment](https://github.com/rust-lang/rust/pull/104741#issuecomment-1362315104)), r'ed and rolled up
  - Fixes [rust#104588](https://github.com/rust-lang/rust/issues/104588), a `P-medium` regression
  - Also fixes a regression introduced in [rust#104219](https://github.com/rust-lang/rust/pull/104219) (same issue, stable-to-beta regression)
- :beta: "Don't copy symbols from dylibs with `-Zdylib-lto`" [rust#105800](https://github.com/rust-lang/rust/pull/105800)
  - backport nominated by @**lqd**
  - patch addresses [rust#105637](https://github.com/rust-lang/rust/issues/105637) a `P-critical` regression impacting bug reports on ICEs
- :beta: "Revert "Replace usage of `ResumeTy` in async lowering with `Context`"" [rust#105915](https://github.com/rust-lang/rust/pull/105915)
  - nominated by @**Michael Goulet (compiler-errors)**
  - Reverts #105250 and fixes #105501 (`P-critical` issue)
- :stable: "Don't copy symbols from dylibs with `-Zdylib-lto`" [rust#105800](https://github.com/rust-lang/rust/pull/105800)
  - (see beta-backport)

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- :beta: "Add `IMPLIED_BOUNDS_ENTAILMENT` lint [rust#105575](https://github.com/rust-lang/rust/pull/105575)
  - nominated by @**lcnr** (more context [here](https://github.com/rust-lang/rust/pull/105575#issuecomment-1354512450) and [here](https://github.com/rust-lang/rust/pull/105575#issuecomment-1357201969))
  - backport of an unsoundness fix for #105483, implements a lint (#105572) 

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- (other hidden issues in progress or waiting on other teams, [details here](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Only specify `--target` by default for `-Zgcc-ld=lld` on wasm" [rust#101792](https://github.com/rust-lang/rust/pull/101792) (last review activity: 2 months ago)
  - cc @**Vadim Petrochenkov** 
- "feat: add `expansion_growth_limit` attr as another expansion limit " [rust#103029](https://github.com/rust-lang/rust/pull/103029) (last review activity: 2 months ago)
  - would probably re-roll a review assignment
- "Add `SEMICOLON_IN_EXPRESSIONS_FROM_MACROS` to future-incompat report" [rust#103418](https://github.com/rust-lang/rust/pull/103418) (last review activity: about 57 days ago)
  - T-compiler proposed [FCP](https://github.com/rust-lang/rust/pull/103418#issuecomment-1347262220)
- "Migrating rustc_infer to session diagnostics (part 3)" [rust#101936](https://github.com/rust-lang/rust/pull/101936) (last review activity: about 49 days ago)
  - cc @**davidtwco** 
- "Parse unnamed struct and union fields" [rust#99754](https://github.com/rust-lang/rust/pull/99754) (last review activity: about 40 days ago)
  - cc @**cjgillot** 

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [47 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [18 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 4 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 28 P-high, 89 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Seg fault in Rust 1.65.0 if I don't create temporary variable" [rust#105295](https://github.com/rust-lang/rust/issues/105295)
  - Fixed by [rust#105483](https://github.com/rust-lang/rust/pull/105483) (beta-nominated, with release notes)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "deref_target_place is not a deref projection" [rust#105881](https://github.com/rust-lang/rust/issues/105881)
  - regressed in #103880
  - @**lqd** authored a patch #105905 (merged) (@__**BN** a follow-up in #105958, being reviewed)

## Performance logs

> [triage logs for 2022-12-20](https://github.com/rust-lang/rustc-perf/blob/d657ad7bb644a2d5ded75bf4919753a860bef395/triage/2022-12-20.md)

Relatively quiet week for performance, with most regressions and improvements being pretty small.

Triage done by **@simulacrum**.
Revision range: [109cccbe4f345c0f0785ce860788580c3e2a29f5..8a746f4ac3a489efb724cde813607f3b96c2df7b](https://perf.rust-lang.org/?start=109cccbe4f345c0f0785ce860788580c3e2a29f5&end=8a746f4ac3a489efb724cde813607f3b96c2df7b&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.2%, 2.8%]   | 28    |
| Regressions (secondary)  | 0.7%  | [0.2%, 1.3%]   | 39    |
| Improvements (primary)   | -1.0% | [-1.1%, -1.0%] | 2     |
| Improvements (secondary) | -1.7% | [-4.3%, -0.2%] | 24    |
| All  (primary)           | 0.8%  | [-1.1%, 2.8%]  | 30    |


3 Regressions, 4 Improvements, 2 Mixed; 3 of them in rollups
53 artifact comparisons made in total

#### Regressions

use ty::Binder in rustdoc instead of `skip_binder` [#105612](https://github.com/rust-lang/rust/pull/105612) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=109cccbe4f345c0f0785ce860788580c3e2a29f5&end=ed620cf9690fdafed65845bf35c455db992fbba1&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.5%] | 5     |
| Regressions (secondary)  | 0.5% | [0.3%, 0.7%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.5%] | 5     |

> The regressions are expected, solely in rustdoc and part of a bugfix.

Use non-ascribed type as field's type in mir [#103880](https://github.com/rust-lang/rust/pull/103880) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=01ef4b21dc5251b58bd9c6fd6face2ae95d56da1&end=03770f0e2b60c02db8fcf52fed5fb36aac70cedc&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 3.1% | [2.5%, 3.7%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

Regression does not appear to be noise, however the PR in question has been reverted (due to non-perf regressions).

Add `IMPLIED_BOUNDS_ENTAILMENT` lint [#105575](https://github.com/rust-lang/rust/pull/105575) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c43bc135628bc0d472e1a1259d56b72b7de0a274&end=7f42e58effa3871dda6a41e250dea60cf88868ca&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.9% | [0.2%, 2.3%] | 20    |
| Regressions (secondary)  | 1.6% | [0.6%, 2.6%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.9% | [0.2%, 2.3%] | 20    |

New lint for a soundness fix. Regressions relatively limited regardless.

#### Improvements

Revert "enable ThinLTO for rustc on x86_64-apple-darwin dist builds" [#105646](https://github.com/rust-lang/rust/pull/105646) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ed620cf9690fdafed65845bf35c455db992fbba1&end=aa5b179599427ef233c4e47db8dac6edae22b4f8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.1%, -0.9%] | 2     |
| Improvements (secondary) | -2.0% | [-2.6%, -0.8%] | 7     |
| All  (primary)           | -1.0% | [-1.1%, -0.9%] | 2     |


Rollup of 5 pull requests [#105892](https://github.com/rust-lang/rust/pull/105892) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=10723378900ba2d25fc5d8baf785e1082f385832&end=4653c93e4442d88bf3278067183c8fdc0be74a1f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.1%, -0.9%] | 2     |
| Improvements (secondary) | -2.2% | [-2.6%, -2.0%] | 6     |
| All  (primary)           | -1.0% | [-1.1%, -0.9%] | 2     |


Revert #103880 "Use non-ascribed type as field's type in mir" [#105905](https://github.com/rust-lang/rust/pull/105905) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=935dc07218b4bf6e20231e44eb9263b612fd649b&end=696563efc5c3c0d87a601dff22966d2c5eb20a5e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.3%, -0.3%] | 5     |
| Improvements (secondary) | -1.7% | [-3.5%, -0.4%] | 14    |
| All  (primary)           | -0.7% | [-1.3%, -0.3%] | 5     |


Rollup of 5 pull requests [#105940](https://github.com/rust-lang/rust/pull/105940) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eb9e5e711d3eef1998ff24ac2bc57386662652e9&end=8a746f4ac3a489efb724cde813607f3b96c2df7b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-1.1%, -1.0%] | 2     |
| Improvements (secondary) | -1.7% | [-2.6%, -0.4%] | 9     |
| All  (primary)           | -1.1% | [-1.1%, -1.0%] | 2     |


#### Mixed

Guard ProjectionTy creation against passing the wrong number of substs [#105657](https://github.com/rust-lang/rust/pull/105657) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=939a3ddf943f962807b84a44e8b31d99c0db0a94&end=a8847df167c5851caf8f465354fc3d73b7e9338c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.0%  | [0.7%, 1.2%]   | 9     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.1%] | 2     |
| Improvements (secondary) | -0.7% | [-0.7%, -0.5%] | 8     |
| All  (primary)           | -0.4% | [-0.6%, -0.1%] | 2     |


Rollup of 7 pull requests [#105918](https://github.com/rust-lang/rust/pull/105918) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=696563efc5c3c0d87a601dff22966d2c5eb20a5e&end=c43bc135628bc0d472e1a1259d56b72b7de0a274&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.1% | [-4.4%, -0.8%] | 12    |
| All  (primary)           | 0.2%  | [0.2%, 0.2%]   | 1     |


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

None (WG-checkins paused for a few weeks)
