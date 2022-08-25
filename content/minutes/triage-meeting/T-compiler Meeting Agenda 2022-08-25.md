---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-08-25

## Announcements

- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMjA4MjZUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-26T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA4MjZUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-26T09:00:00-04:00>
- [wg-rls-2.0 steering meeting](https://www.google.com/calendar/event?eid=N2NxOWxzYWYxb3NicWNzbGsxYzdxcG9ydTJfMjAyMjA4MjlUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-29T11:00:00-04:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjA4MjlUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-29T11:30:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA4MjlUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-29T16:00:00-04:00>
- [[Types team] Hack session: Advanced subtyping](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA4MzFUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-31T09:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) 
  - "Allow informational -Z flags on stable compiler" [compiler-team#542](https://github.com/rust-lang/compiler-team/issues/542) 
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) 
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 3 months ago)
    - any pending concerns?
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) (last review activity: 2 months ago)
    - MCP proponents are working on implementing this in [rust#96971](https://github.com/rust-lang/rust/pull/96971) (with some comments from @**Wesley Wiser**), rustup PR [rustup#3052](https://github.com/rust-lang/rustup/pull/3052) and others. Was the MCP implicitely seconded?
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: about 34 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize raw-dylib for non-x86" [rust#99916](https://github.com/rust-lang/rust/pull/99916#issuecomment-1212863953) 
- Things in FCP (make sure you're good with it)
  - "Rewrite compiletest out of tree" [compiler-team#536](https://github.com/rust-lang/compiler-team/issues/536) 
  - "Make format_args!() its own AST node (ast::ExprKind::FormatArgs)" [compiler-team#541](https://github.com/rust-lang/compiler-team/issues/541) 
  - "Exploit Mitigations Project Group Proposal" [compiler-team#545](https://github.com/rust-lang/compiler-team/issues/545) 
  - "Add `#[rustc_safe_intrinsic]` attribute" [compiler-team#546](https://github.com/rust-lang/compiler-team/issues/546) 
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
  - "Tracking issue for RFC 2046, label-break-value" [rust#48594](https://github.com/rust-lang/rust/issues/48594) 
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

- Types team by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/t7hTeiP-RbiKKzgpuMK2JA#WG-checkins)):
  > It's been a slow last couple weeks, since people have been on vacation. Progress continues on the various initiatives. No big updates worth mentioning.

- @_*WG-mir-opt* MIR Optimizations by @**oli** ([previous checkin](https://hackmd.io/sjgGAPLvSu-Fe5xMgY4SAg)):
  > Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Check projection types before inlining MIR" [rust#100571](https://github.com/rust-lang/rust/pull/100571) 
  - PR authored and nominated by @**cjgillot** 
  - fixes [rust#100550](https://github.com/rust-lang/rust/issues/100550), P-critical that broke building a crate
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- (2 issues hidden since WIP or waiting on other teams)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "[DO NOT MERGE] Only apply `ProceduralMasquerade` hack to older versions of `rental`" [rust#94063](https://github.com/rust-lang/rust/pull/94063) (last review activity: 6 months ago)
  - cc @**Aaron Hill** 
- "Suggest using an appropriate keyword for `struct` and `enum`" [rust#94996](https://github.com/rust-lang/rust/pull/94996) (last review activity: 5 months ago)
  - cc: @**Esteban Küber** who reviewed 
- "Rewrite LLVM's archive writer in Rust" [rust#97485](https://github.com/rust-lang/rust/pull/97485) (last review activity: about 57 days ago)
  - cc @**Wesley Wiser** 
- "Use only ty::Unevaluated<'tcx, ()> in type system" [rust#98588](https://github.com/rust-lang/rust/pull/98588) (last review activity: about 50 days ago)
  - some merge conflicts with upstream but otherwise seems reviewable again? cc: @**lcnr** 
- "Lower the assume intrinsic to a MIR statement" [rust#98332](https://github.com/rust-lang/rust/pull/98332) (last review activity: about 43 days ago)
  - cc @**Wesley Wiser** 
- "distinguish the method and associated function diagnostic information" [rust#99064](https://github.com/rust-lang/rust/pull/99064) (last review activity: about 39 days ago)
  - cc: @**Esteban Küber**

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [57 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 84 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463) 
  - Will be fixed by [rust#97800](https://github.com/rust-lang/rust/pull/97800) (@**Wesley Wiser** approved, now waiting on bors)
- "Regression in consteval: error[E0080]: could not evaluate static initializer (unable to turn pointer into raw bytes)" [rust#99923](https://github.com/rust-lang/rust/issues/99923)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-08-18/near/294103888)
  - @_**RalfJ** [comments](https://github.com/rust-lang/rust/issues/99923#issuecomment-1205789521)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Anon lifetime in `impl Trait` no longer suggests adding a lifetime parameter" [rust#100615](https://github.com/rust-lang/rust/issues/100615)
  - @_**TaKO8Ki** self-assigned

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Borrow checking for static methods became more strict" [rust#100725](https://github.com/rust-lang/rust/issues/100725)
  - Comments from @_**Frank Steffahn** [on the issue](https://github.com/rust-lang/rust/issues/100725#issuecomment-1220017208) and [on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23100725.20Borrow.20checking.20for.20static.20methods.20became.20more.20stri.E2.80.A6)

## Performance logs

> [triage logs for 2022-08-24](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-08-24.md)

Overall some really impressive wins this week. Note in particular
PR [#100209](https://github.com/rust-lang/rust/pull/100209), "Lazily
decode SourceFile from metadata" (which improved 75 primary benchmark
scenarios and 158 secondary scenarios) and
PR [#98655](https://github.com/rust-lang/rust/pull/98655) "Don't derive
`PartialEq::ne`", which improved 65 primary scenarios and 27 secondary
scenarios). There were a few cases that pnkfelix explicitly decided not
to mark as triaged; see report for more details there.
Also pnkfelix wonders if there is a recent slight-upward trend on max-rss
for the past week, see the [summary graph](https://perf.rust-lang.org/?start=&end=&kind=percentfromfirst&stat=max-rss)

Triage done by **@pnkfelix**.
Revision range: [14a459bf..4a24f08b](https://perf.rust-lang.org/?start=14a459bf37bc19476d43e0045d078121c12d3fef&end=4a24f08ba43166cfee86d868b3fe8612aec6faca&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.4%, 0.8%]    | 27    |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.6%]    | 9     |
| Improvements (primary)   | -1.7% | [-20.1%, -0.3%] | 91    |
| Improvements (secondary) | -3.6% | [-18.7%, -0.3%] | 160   |
| All  (primary)           | -1.2% | [-20.1%, 0.8%]  | 118   |


3 Regressions, 4 Improvements, 4 Mixed; 3 of them in rollups
43 artifact comparisons made in total
30 Untriaged Pull Requests

#### Regressions

Rollup of 15 pull requests [#100677](https://github.com/rust-lang/rust/pull/100677) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=86c6ebee8fa0a5ad1e18e375113b06bd2849b634&end=9c20b2a8cc7588decb6de25ac6a7912dcef24d65&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 2     |
| Regressions (secondary)  | 1.3% | [0.5%, 1.9%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.3%] | 2     |

* lqd hypothesized this was caused by PR #100652 "Remove deferred sized checks (make them eager)"
* regressions for #100652 include most of the rollup regressions, all by similar amounts (only ucd was absent from the narrower view).
* left a [comment](https://github.com/rust-lang/rust/pull/100652#issuecomment-1225798572) on PR #100652 and marked it as a regression; marked rollup as triaged.

rustc_metadata: dedupe strings to prevent multiple copies in rmeta/query cache blow file size [#98851](https://github.com/rust-lang/rust/pull/98851) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0b79f758c9aa6646606662a6d623a0752286cd17&end=71ecf5d359bf750cc171e124779a46985633439d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.3%, 1.5%]   | 15    |
| Regressions (secondary)  | 1.1%  | [0.3%, 1.6%]   | 21    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 2     |
| All  (primary)           | 0.6%  | [0.3%, 1.5%]   | 15    |

* the performance of this PR was heavily evaluated as part of its development.
* some regression to instruction counts is compensated for by the improvements file-size and to max-rss.
* the follow-up PR [#100803](https://github.com/rust-lang/rust/issues/100803) is going to more than compensate for the regressions here.
* marked as triaged.


implied bounds: explicitly state which types are assumed to be wf [#100676](https://github.com/rust-lang/rust/pull/100676) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d0ea1d767925d53b2230e2ba81197821514781f0&end=a9bb589cd678e034d194193fa892942315b10e2a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.5%] | 22    |
| Regressions (secondary)  | 0.4% | [0.2%, 0.8%] | 22    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.5%] | 22    |

* This PR was intended to be a refactor, but it turns out it has other problems (see [issue 100910](https://github.com/rust-lang/rust/issues/100910)).
* The regressions alone are not cause to revert the PR, but the soundness bug pushes me over the line.
* Nominated for discussion (of revert) in Thursday's T-compiler meeting. Not tagging as triaged.

#### Improvements

Don't derive `PartialEq::ne`. [#98655](https://github.com/rust-lang/rust/pull/98655) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f241c0c43d71960f078b897e9b8721d4b452ce5e&end=361c599feeefaf6e50efd90658fc9c2222154684&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 1.0%  | [1.0%, 1.0%]    | 1     |
| Improvements (primary)   | -0.7% | [-1.4%, -0.2%]  | 65    |
| Improvements (secondary) | -5.2% | [-10.0%, -0.3%] | 27    |
| All  (primary)           | -0.7% | [-1.4%, -0.2%]  | 65    |

* This had an interesting discussion thread on it; see [nnethercote's summary comment](https://github.com/rust-lang/rust/pull/98655#issuecomment-1176827089) for more info.

Lazily decode SourceFile from metadata [#100209](https://github.com/rust-lang/rust/pull/100209) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6c943bad02626dddc5e5135b23c77429b6e4a063&end=468887ef91e46847dff57b6b234cff0fad17cb71&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]    | 2     |
| Regressions (secondary)  | 0.7%  | [0.4%, 0.9%]    | 3     |
| Improvements (primary)   | -1.6% | [-19.6%, -0.2%] | 75    |
| Improvements (secondary) | -3.0% | [-18.3%, -0.2%] | 158   |
| All  (primary)           | -1.6% | [-19.6%, 0.2%]  | 77    |

* Don't get too excited y'all, that 19.6% improvement was to helloworld.
* having said that, this does represent a huge win across a broad suite of benchmarks, nearly all in incremental.
* (also, lqd notes that helloworld is a useful proxy for near-trivial build.rs scripts.)

Update minifier version to 0.2.2 [#100624](https://github.com/rust-lang/rust/pull/100624) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f2858b5cd32f3689ad83de77cacfa1ea2f533793&end=aa8e761defc245d08d2cf226786def8a8bb56e53&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.6%, -0.3%] | 13    |
| Improvements (secondary) | -1.1% | [-1.5%, -0.3%] | 20    |
| All  (primary)           | -0.6% | [-1.6%, -0.3%] | 13    |

* As noted by nnethercote, the cycles and max-rss results are neutral or under noise threshold, while instruction counts improved.

Kind-less SessionDiagnostic derive [#100765](https://github.com/rust-lang/rust/pull/100765) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=39a9b88f4e50d4c0204bb12c0821b49a302ab3c5&end=4b695f7c4e1a02d160fe7e159abd0f87027c0fcf&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-0.9%, -0.6%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.8% | [-0.9%, -0.6%] | 5     |

* all five improvements are to instances of regex-opt-incr-{patched,full} benchmark

#### Mixed

Rollup of 9 pull requests [#100810](https://github.com/rust-lang/rust/pull/100810) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=48853a361a5ff0e8215301c62f259a26eed7aa72&end=878aef79dcdf59d19bb8482202dc55e58ceb62ff&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 2     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.3%] | 8     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.7% | [-0.9%, -0.3%] | 8     |

* already triaged: "The small number of small improvements slightly outweighs the small number of small regressions. No further action is needed."

update Miri [#100841](https://github.com/rust-lang/rust/pull/100841) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b695f7c4e1a02d160fe7e159abd0f87027c0fcf&end=31302033095dc75608675cd6f9b884d1692054f0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.5%, 1.0%]   | 5     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.8% | [-0.8%, -0.8%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.5%  | [-0.8%, 1.0%]  | 6     |

* regressions were in regex-opt-incr-patched (and ucd-doc-full, but that was just 0.24%)
* while the regression here is unfortunate, there is not much we can expect to do in the short term to address it
* its not even clear whether miri is really at fault; the [detailed query](https://perf.rust-lang.org/detailed-query.html?commit=31302033095dc75608675cd6f9b884d1692054f0&base_commit=4b695f7c4e1a02d160fe7e159abd0f87027c0fcf&benchmark=regex-1.5.5-opt&scenario=incr-patched:%20reverse) info says that the regression is due to `LLVM_lto_optimize`. Could the miri changes have somehow caused the codegen unit partitioning to change? Why would a miri update affect the time for `LLVM_lto_optimize`?
* not marking as triaged. I'm not sure if anyone can justify spending time to look at this, but I don't want to just let it slide through just yet.

Rollup of 11 pull requests [#100847](https://github.com/rust-lang/rust/pull/100847) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=650bff80a623e17675ac72ae4d62ed200a4a3568&end=c0941dfb5a7d07ef2d70cc54d319669d9d6f6c01&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements (secondary) | -0.7% | [-1.1%, -0.3%] | 5     |
| All  (primary)           | -0.5% | [-0.5%, -0.5%] | 1     |

* benefits here heavily outweigh the one minor regression.
* already triaged by nnethercote

Use `AttrVec` more [#100668](https://github.com/rust-lang/rust/pull/100668) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0b71ffca18a9f4a9515773b2c23d13f501d1e08f&end=3ce46b74aa3968b459cff3ce5c0d4f13e220b217&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 1.0%]   | 2     |
| Regressions (secondary)  | 0.6%  | [0.3%, 1.3%]   | 8     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 7     |
| Improvements (secondary) | -0.5% | [-1.2%, -0.2%] | 15    |
| All  (primary)           | -0.1% | [-0.4%, 1.0%]  | 9     |

* already triaged by nnethercote: "a few small wins and losses here, which balance each other out, and the net effect is perf-neutral."

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*wg-polymorphization* by @**davidtwco**
- @_*WG-rls2.0* by @**matklad**
