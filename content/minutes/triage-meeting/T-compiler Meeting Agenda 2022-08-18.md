---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-08-18

## Announcements
- [T-compiler backlog bonanza steering meeting](https://www.google.com/calendar/event?eid=MmFwdGNsZ3NrOXFrZWR2NGJ2YTNiMDUxbmcgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-08-19T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA4MTlUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-19T09:00:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA4MjJUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-22T16:00:00-04:00>
- [[Types team] Hack session: Advanced subtyping](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA4MjRUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-24T09:00:00-04:00>

## MCPs/FCPs
- New MCPs (take a look, see if you like them!)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) 
  - "Rewrite compiletest out of tree" [compiler-team#536](https://github.com/rust-lang/compiler-team/issues/536) 
  - "Make format_args!() its own AST node (ast::ExprKind::FormatArgs)" [compiler-team#541](https://github.com/rust-lang/compiler-team/issues/541) 
  - "Allow informational -Z flags on stable compiler" [compiler-team#542](https://github.com/rust-lang/compiler-team/issues/542) 
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) 
  - "Exploit Mitigations Project Group Proposal" [compiler-team#545](https://github.com/rust-lang/compiler-team/issues/545) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 3 months ago)
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) (last review activity: 2 months ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: about 27 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize raw-dylib for non-x86" [rust#99916](https://github.com/rust-lang/rust/pull/99916) 
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386) 
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) 
  - "Add import_name_type parameter to #[link]" [compiler-team#525](https://github.com/rust-lang/compiler-team/issues/525) 
  - "Introduce `-Z` flag to control how proc-macros are run" [compiler-team#528](https://github.com/rust-lang/compiler-team/issues/528) 
  - "move hir typeck into separate crate" [compiler-team#529](https://github.com/rust-lang/compiler-team/issues/529) 
  - "Create `#[rustc_on_type_error]` mimicking `#[rustc_on_unimplemented]` for E0308 customization" [compiler-team#530](https://github.com/rust-lang/compiler-team/issues/530) 
  - "Split `Predicate` into `Goal` and `Clause`" [compiler-team#531](https://github.com/rust-lang/compiler-team/issues/531) 
  - "Deref is not a projection" [compiler-team#532](https://github.com/rust-lang/compiler-team/issues/532) 
  - "Remove HashStable impl for collection types with unstable iteration order" [compiler-team#533](https://github.com/rust-lang/compiler-team/issues/533) 
  - "Re-add most early unstable syntax gates as future-compat lints" [compiler-team#535](https://github.com/rust-lang/compiler-team/issues/535) 
  - "Introduce `core::marker::Tuple` to properly type-check `extern "rust-call"` calls" [compiler-team#537](https://github.com/rust-lang/compiler-team/issues/537) 
- Finalized FCPs (disposition merge)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510) 
  - "Tracking Issue for "unsafe blocks in unsafe fn" (RFC #2585)" [rust#71668](https://github.com/rust-lang/rust/issues/71668) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026) 
  - "Remove migrate borrowck mode" [rust#95565](https://github.com/rust-lang/rust/pull/95565) 
  - "Modify MIR building to drop repeat expressions with length zero" [rust#95953](https://github.com/rust-lang/rust/pull/95953) 
  - "Lang: Stabilize usage of rustc_nonnull_optimization_guaranteed on -1" [rust#97122](https://github.com/rust-lang/rust/issues/97122) 
  - "Remove a back-compat hack on lazy TAIT" [rust#97346](https://github.com/rust-lang/rust/pull/97346) 
  - "Make outlives::{components,verify} agree" [rust#97406](https://github.com/rust-lang/rust/pull/97406) 
  - "[RFC] Support `.comment` section like GCC/Clang (`!llvm.ident`)" [rust#97550](https://github.com/rust-lang/rust/pull/97550) 
  - "make cenum_impl_drop_cast deny-by-default" [rust#97652](https://github.com/rust-lang/rust/pull/97652) 
  - "make const_err show up in future breakage reports" [rust#97743](https://github.com/rust-lang/rust/pull/97743) 
  - "lub: don't bail out due to empty binders" [rust#97867](https://github.com/rust-lang/rust/pull/97867) 
  - "allow unions with mutable references and tuples of allowed types" [rust#97995](https://github.com/rust-lang/rust/pull/97995) 
  - "do not mark interior mutable shared refs as dereferenceable" [rust#98017](https://github.com/rust-lang/rust/pull/98017) 
  - "session: stabilize split debuginfo on linux" [rust#98051](https://github.com/rust-lang/rust/pull/98051) 
  - "relate `closure_substs.parent_substs()` to parent fn in NLL" [rust#98835](https://github.com/rust-lang/rust/pull/98835)

### WG checkins

- @_*WG-traits* Impl Trait initiative by @**oli** ([previous checkin](https://hackmd.io/wIKuLLJlRN6_nYThJ3A37w#WG-checkins)):
  > Checkin text

- @_*WG-llvm* LLVM by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/t7hTeiP-RbiKKzgpuMK2JA#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Revert "Rollup merge of #97346 - JohnTitor:remove-back-compat-hacks, …" [rust#99860](https://github.com/rust-lang/rust/pull/99860)
  - opened by @**oli**, fixes [rust#99536](https://github.com/rust-lang/rust/issues/99536), P-high a stable regression 
  - r'ed by @**lcnr** 
  - needs a Felix sign-off?
- :beta: "Fix #96847" [rust#100307](https://github.com/rust-lang/rust/pull/100307)
  - opened and beta nominated by @**nnethercote** [comment](https://github.com/rust-lang/rust/pull/100307#issuecomment-1212688643)
  - fixes [rust#96847](https://github.com/rust-lang/rust/issues/96847) (an ICE found by a fuzzer)
- :beta: "Revert let_chains stabilization" [rust#100538](https://github.com/rust-lang/rust/pull/100538) 
  - opened by @**Nilstrieb** ([Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/fixing.20let_chains))
  - @**Wesley Wiser**  approved and suggests T-compiler takes a look ([comment](https://github.com/rust-lang/rust/pull/100538#pullrequestreview-1073067404))
  - Note: T-rustdoc was just autotagged by rustbot
- :beta: "[BETA] Use `node_type_opt` to skip over generics that were not expected" [rust#100548](https://github.com/rust-lang/rust/pull/100548)
  - PR authored by @**Michael Goulet (compiler-errors)**, closes a crater run regression [rust#100541](https://github.com/rust-lang/rust/issues/100541)
- :beta: "[BETA] Delay formatting trimmed path until lint/error is emitted" [rust#100549](https://github.com/rust-lang/rust/pull/100549)
  - PR authored by @**Michael Goulet (compiler-errors)**, closes a crater run regression [rust#100542](https://github.com/rust-lang/rust/issues/100542)
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - discussed in previous meeting (Felix [left comment](https://github.com/rust-lang/rust/issues/65991#issuecomment-1205340327) on github)
- "Revert "Revert "Allow dynamic linking for iOS/tvOS targets.""" [rust#100636](https://github.com/rust-lang/rust/pull/100636)
  - Issue is T-compiler nominated
- (2 issues hidden since they're WIP or waiting on other teams)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Refactor metadata emission to avoid visiting HIR" [rust#98867](https://github.com/rust-lang/rust/pull/98867) (last review activity: about 45 days ago)
  - @**cjgillot** author and self-assigned reviewer: ping?
- "Remove EntryKind from metadata." [rust#98960](https://github.com/rust-lang/rust/pull/98960) (last review activity: about 43 days ago)
  - cc @**Esteban Küber** autoassigned for review
- "Replace `Body::basic_blocks*()` with field access" [rust#99027](https://github.com/rust-lang/rust/pull/99027) (last review activity: about 41 days ago)
  - cc @**oli**
- "Rework definition of MIR phases to more closely reflect semantic concerns" [rust#99102](https://github.com/rust-lang/rust/pull/99102) (last review activity: about 39 days ago)
  - cc @**oli**

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 2 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 39 P-high, 85 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463) 
  - Will be fixed by [rust#97800](https://github.com/rust-lang/rust/pull/97800) (pr has some tests failing)
- "Regression in consteval: error[E0080]: could not evaluate static initializer (unable to turn pointer into raw bytes)" [rust#99923](https://github.com/rust-lang/rust/issues/99923)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-08-04/near/292012933) in the context of PR [rust#100229](https://github.com/rust-lang/rust/pull/100229) 
  - decided to leave #99923 both open and `P-critical`
- "ICE when compiling nalgebra 0.25.4 in Release mode" [rust#100550](https://github.com/rust-lang/rust/issues/100550) 
  - that release from 2021 doesn't compile anymore in beta. newer version up to current `master` do (see Wg-prio [comments](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23100550.20ICE.20when.20compiling.20nalgebra.200.2E25.2E4.20in.20Release.20mode))
  - @**cjgillot** commented (see [comment](https://github.com/rust-lang/rust/issues/100550#issuecomment-1214942773)), self assigned and provided a patch [rust#100571](https://github.com/rust-lang/rust/pull/100571) to at least remove the ICE (review is in progress)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "nightly 2022-06-29 rejects previously compiling code with missing trait implementations" [rust#99536](https://github.com/rust-lang/rust/issues/99536)
  - handled by a revert PR [rust#99860](https://github.com/rust-lang/rust/pull/99860) authored by @_**oli** 
- "Anon lifetime in `impl Trait` no longer suggests adding a lifetime parameter" [rust#100615](https://github.com/rust-lang/rust/issues/100615)
  - flagged as `P-high` because of the confusing diag. regression, open to reassess priority
  - @_**TaKO8Ki** self-assigned

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-08-16](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-08-16.md)

A fairly quiet week for performance, with the exception of the LLVM 15 upgrade
which resulted in many changes, mostly to the positive.

Triage done by **@simulacrum**.
Revision range: [cc4dd6fc9f1a5c798df269933c7e442b79661a86..14a459bf37bc19476d43e0045d078121c12d3fef](https://perf.rust-lang.org/?start=cc4dd6fc9f1a5c798df269933c7e442b79661a86&end=14a459bf37bc19476d43e0045d078121c12d3fef&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | max    | count |
|:------------------------:|:-----:|:------:|:-----:|
| Regressions (primary)    | 0.7%  | 7.7%   | 62    |
| Regressions (secondary)  | 1.3%  | 5.0%   | 51    |
| Improvements (primary)   | -1.8% | -6.9%  | 93    |
| Improvements (secondary) | -2.4% | -22.0% | 128   |
| All  (primary)           | -0.8% | 7.7%   | 155   |


2 Regressions, 4 Improvements, 2 Mixed; 1 of them in rollups
38 artifact comparisons made in total

#### Regressions

consider unnormalized types for implied bounds [#99217](https://github.com/rust-lang/rust/pull/99217) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6d3f1beae1720055e5a30f4dbe7a9e7fb810c65e&end=63e4312e6bd50ec9859c363402209809fb8155d5&stat=instructions:u)

| (instructions:u)         | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.7% | 1.9% | 37    |
| Regressions (secondary)  | 2.0% | 2.4% | 11    |
| Improvements (primary)   | -    | -    | 0     |
| Improvements (secondary) | -    | -    | 0     |
| All  (primary)           | 0.7% | 1.9% | 37    |

This regression is caused by a soundness fix.
[#99725](https://github.com/rust-lang/rust/pull/99725) recovered a small amount
of the lost performance here.

rustdoc: Merge source code pages HTML elements together [#100429](https://github.com/rust-lang/rust/pull/100429) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4c5665583815a0f0f3e22516441efb43ea6dede2&end=801821d1560f84e4716fcbd9244ec959320a13d5&stat=instructions:u)

| (instructions:u)         | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.6% | 1.4% | 12    |
| Regressions (secondary)  | 1.8% | 3.1% | 8     |
| Improvements (primary)   | -    | -    | 0     |
| Improvements (secondary) | -    | -    | 0     |
| All  (primary)           | 0.6% | 1.4% | 12    |

The regressions are limited to doc benchmarks and the underlying change reduces
the number of DOM elements generated by ~30% across a few samples (see PR
description for details). Those sizes aren't measured by perf.rust-lang.org
today, so there's no reflection of that here, but the size improvement is a
welcome one.

#### Improvements

Reoptimize layout array [#99174](https://github.com/rust-lang/rust/pull/99174) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=29e4a9ee0253cd39e552a77f51f11f9a5f1c41e6&end=908fc5b26d15fc96d630ab921e70b2db77a532c4&stat=instructions:u)

| (instructions:u)         | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | -     | -     | 0     |
| Regressions (secondary)  | -     | -     | 0     |
| Improvements (primary)   | -0.4% | -0.8% | 10    |
| Improvements (secondary) | -0.8% | -1.2% | 5     |
| All  (primary)           | -0.4% | -0.8% | 10    |


Remove manual implementations of HashStable for hir::Expr and hir::Ty. [#100237](https://github.com/rust-lang/rust/pull/100237) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3694b7d307b7516757651952b30bb97b6ba5c049&end=ef9810a3e2a9a16e79176cb0d3466ea82d239942&stat=instructions:u)

| (instructions:u)         | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | -     | -     | 0     |
| Regressions (secondary)  | -     | -     | 0     |
| Improvements (primary)   | -0.2% | -0.2% | 3     |
| Improvements (secondary) | -     | -     | 0     |
| All  (primary)           | -0.2% | -0.2% | 3     |

Possibly spurious, but leaving in the report -- bitmaps-3.1.0 check typically does not [see] this much impact on a run to run basis so it's probably at least partially real.

[see]: https://perf.rust-lang.org/index.html?start=2022-07-01&end=ef9810a3e2a9a16e79176cb0d3466ea82d239942&benchmark=bitmaps-3.1.0&profile=check&scenario=incr-unchanged&stat=instructions:u&kind=percentfromfirst


Shrink `ast::Attribute`. [#100441](https://github.com/rust-lang/rust/pull/100441) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8556e6620e4866526b3cea767ad8c20ae877a569&end=14a459bf37bc19476d43e0045d078121c12d3fef&stat=instructions:u)

| (instructions:u)         | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.6%  | 0.6%  | 1     |
| Regressions (secondary)  | 0.2%  | 0.2%  | 1     |
| Improvements (primary)   | -0.6% | -1.4% | 22    |
| Improvements (secondary) | -1.0% | -1.5% | 23    |
| All  (primary)           | -0.5% | -1.4% | 23    |

Mostly an improvement in doc benchmarks, though a few check benchmarks improved
as well. An excellent win for memory usage, with up to 5.8% wins on helloworld.

passes: load `defined_lib_features` query less [#100328](https://github.com/rust-lang/rust/pull/100328) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=569788e47ee3595c9c6f0e332844d982b3e991c2&end=0068b8bf4b150b506ef0871be4e8652fd4308f84&stat=instructions:u)

| (instructions:u)         | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | -     | -     | 0     |
| Regressions (secondary)  | 0.8%  | 1.5%  | 3     |
| Improvements (primary)   | -0.4% | -0.4% | 1     |
| Improvements (secondary) | -1.2% | -1.8% | 8     |
| All  (primary)           | -0.4% | -0.4% | 1     |

The regressions here appear to be spurious, with performance recovering on the
next commit. Otherwise, this is a good improvement.

#### Mixed

Rollup of 13 pull requests [#100426](https://github.com/rust-lang/rust/pull/100426) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=20ffea6938b5839c390252e07940b99e3b6a889a&end=2ed0f29168f5bc116e747152be600519b5d78bfd&stat=instructions:u)

| (instructions:u)         | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.3%  | 0.4%  | 4     |
| Regressions (secondary)  | 0.5%  | 0.7%  | 5     |
| Improvements (primary)   | -0.9% | -0.9% | 1     |
| Improvements (secondary) | -1.8% | -1.8% | 1     |
| All  (primary)           | 0.0%  | -0.9% | 5     |

Small-ish regression narrowed down to
[#99337](https://github.com/rust-lang/rust/pull/99337), some active work in
this area of rustdoc is likely to help here soon.

Update to LLVM 15 [#99464](https://github.com/rust-lang/rust/pull/99464) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b998821e4c51c44a9ebee395c91323c374236bbb&end=e2b52ff73edc8b0b7c74bc28760d618187731fe8&stat=instructions:u)

| (instructions:u)         | mean  | max    | count |
|:------------------------:|:-----:|:------:|:-----:|
| Regressions (primary)    | 0.8%  | 7.5%   | 40    |
| Regressions (secondary)  | 1.2%  | 4.4%   | 29    |
| Improvements (primary)   | -1.5% | -6.0%  | 100   |
| Improvements (secondary) | -2.6% | -21.6% | 94    |
| All  (primary)           | -0.9% | 7.5%   | 140   |

Overall the benefits here outweigh the negatives, with a number of good
improvements. LLVM upgrades are something we're going to keep rolling forward
on regardless. For wall time metrics the improvement here looks particularly
nice, with bootstrap times improved by ~4%, shaving 30 seconds of the total
time measured by perf.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Revert "Revert "Allow dynamic linking for iOS/tvOS targets.""" [rust#100636](https://github.com/rust-lang/rust/pull/100636)
  - nominated by @**davidtwco** ([comment](https://github.com/rust-lang/rust/pull/100636#issuecomment-1217670117))
  - ref: original PR [rust#77716](https://github.com/rust-lang/rust/pull/77716) reverting dynamic linking
  - bit of backstory with this dynamic linking on Apple platforms, see [old meetings notes](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-04-14/near/278976220)
  - even back to 2020 (see [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-10-22.20.2354818/near/214193506))
  - T-compiler suggested to establish an MCP process to try avoiding this back and forth (see Wesley's [comment](https://github.com/rust-lang/rust/pull/95847#issuecomment-1099458356)) which - to my knowledge - didn't yet materialize for this PR
  - As pointed out by @**davidtwco**, this time the upcoming Cargo flag `--crate-type` could make things easier
- "Add TyAlias into rustc_type_ir TyKind enum" [rust#97974](https://github.com/rust-lang/rust/pull/97974)
  - It adds `TyKind::TyAlias` so that this type information can be used in rustdoc and for compiler errors. @**GuillaumeGomez** is currently blocked on finishing it because of a missing normalization and asked for help.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-traits* Types team by @**nikomatsakis** and @**Jack Huey**
- @_*WG-mir-opt* MIR Optimizations by @**oli**
