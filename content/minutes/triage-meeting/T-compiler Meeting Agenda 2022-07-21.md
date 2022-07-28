---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-07-21

## Announcements
- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA3MjJUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-22T09:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- next weeks' meetings [from google calendar](https://calendar.google.com/calendar/htmlembed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com)

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add import_name_type parameter to #[link]" [compiler-team#525](https://github.com/rust-lang/compiler-team/issues/525) 
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) 
  - "move hir typeck into separate crate" [compiler-team#529](https://github.com/rust-lang/compiler-team/issues/529) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 2 months ago)
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) (last review activity: about 33 days ago)
- Pending FCP requests (check your boxes!)
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026) 
- Things in FCP (make sure you're good with it)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) 
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510) 
  - "Introduce `-Z` flag to control how proc-macros are run" [compiler-team#528](https://github.com/rust-lang/compiler-team/issues/528) 
  - "Create `#[rustc_on_type_error]` mimicking `#[rustc_on_unimplemented]` for E0308 customization" [compiler-team#530](https://github.com/rust-lang/compiler-team/issues/530) 
  - "Split `Predicate` into `Goal` and `Clause`" [compiler-team#531](https://github.com/rust-lang/compiler-team/issues/531) 
  - "Deref is not a projection" [compiler-team#532](https://github.com/rust-lang/compiler-team/issues/532) 
  - "session: stabilize split debuginfo on linux" [rust#98051](https://github.com/rust-lang/rust/pull/98051)
- Accepted MCPs
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) 
  - "Track licensing metadata with REUSE" [compiler-team#519](https://github.com/rust-lang/compiler-team/issues/519) 
  - "Revise how MIR variants are distinguished" [compiler-team#522](https://github.com/rust-lang/compiler-team/issues/522) 
- Finalized FCPs (disposition merge)
  - "Remove migrate borrowck mode" [rust#95565](https://github.com/rust-lang/rust/pull/95565) 
  - "Modify MIR building to drop repeat expressions with length zero" [rust#95953](https://github.com/rust-lang/rust/pull/95953) 
  - "Lang: Stabilize usage of rustc_nonnull_optimization_guaranteed on -1" [rust#97122](https://github.com/rust-lang/rust/issues/97122) 
  - "Remove a back-compat hack on lazy TAIT" [rust#97346](https://github.com/rust-lang/rust/pull/97346) 
  - "Make outlives::{components,verify} agree" [rust#97406](https://github.com/rust-lang/rust/pull/97406) 
  - "make cenum_impl_drop_cast deny-by-default" [rust#97652](https://github.com/rust-lang/rust/pull/97652) 
  - "make const_err show up in future breakage reports" [rust#97743](https://github.com/rust-lang/rust/pull/97743) 
  - "lub: don't bail out due to empty binders" [rust#97867](https://github.com/rust-lang/rust/pull/97867) 
  - "allow unions with mutable references and tuples of allowed types" [rust#97995](https://github.com/rust-lang/rust/pull/97995) 

### WG checkins

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/OpHTC_XERyaxTWH2JLfSzw#WG-checkins))
    * we now run the MIR inliner by default in release mode
    * const prop lints now run before optimizations so that they are no longer influenced by other mir opts (like inlining)
    * optimization MIR and codegen MIR no longer have `Deref` projections in the middle of a place projection, only at the start, which simplified a few backend things and optimizations.

- @_*wg-polymorphization* by @**davidtwco** ([previous checkin](https://hackmd.io/Fv3TSalbT_CYVUEonihWzg#WG-checkins))
  > Nothing from wg-polymorphization this cycle.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "[beta] Do not call `check_expr` twice in `check_compatible`" [rust#99397](https://github.com/rust-lang/rust/pull/99397)
  - fixes [#98894](https://github.com/rust-lang/rust/issues/98894) and [#98897](https://github.com/rust-lang/rust/issues/98897)
  - approved by @**Jack Huey**, needs merge
- :beta: "Revert "Stabilize $$ in Rust 1.63.0"" [rust#99435](https://github.com/rust-lang/rust/pull/99435)
  - reverts commit [9edaa7](https://github.com/rust-lang/rust/commit/9edaa76adce4de737db54194eb13d6c298827b37)
- :beta: "Do not resolve associated const when there is no provided value" [rust#99449](https://github.com/rust-lang/rust/pull/99449)
  - fixes [rust#98629](https://github.com/rust-lang/rust/issues/98629), P-high regression
  - pending comments from @**lqd** and merge
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No new PRs waiting on team

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Support #[global_allocator] without the allocator shim" [rust#86844](https://github.com/rust-lang/rust/pull/86844) (last review activity: 3 months ago)
  - cc Felix
- "Add `[f32]::sort_floats` and `[f64]::sort_floats`" [rust#93397](https://github.com/rust-lang/rust/pull/93397) (last review activity: 3 months ago)
  - assigned to @**kennytm** , reroll assignment?
- "Add `special_module_name` lint" [rust#94467](https://github.com/rust-lang/rust/pull/94467) (last review activity: 3 months ago)
  - cc Felix
- "Simplify some code that depend on Deref" [rust#97077](https://github.com/rust-lang/rust/pull/97077) (last review activity: about 46 days ago)
  - cc @**oli** (maybe not `S-blocked` anymore)
- "[RFC] Support `.comment` section like GCC/Clang (`!llvm.ident`)" [rust#97550](https://github.com/rust-lang/rust/pull/97550) (last review activity: about 35 days ago)
  - needs an FCP but @**bjorn3** or @**Miguel Ojeda** have no permission to start one: can someone assist them?

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [55 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [35 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 37 P-high, 86 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Recent nightly started ICEing with "No counters provided the source_hash for used function"" [rust#98833](https://github.com/rust-lang/rust/issues/98833)
  - PR to resolve [rust#98868](https://github.com/rust-lang/rust/pull/98868) authored by @**tm|352985** 
  - needs reviewer

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "evaluation error hides "impl item missing" error" [rust#98629](https://github.com/rust-lang/rust/issues/98629)
  - @**Michael Goulet (compiler-errors)** authored PR [rust#99449](https://github.com/rust-lang/rust/pull/99449), nominated for beta backport

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-07-19](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-07-19.md)

A rather rough week for compiler performance with regressions outweighing improvements by a considerable margin, in particular in real world crates. To add insult to injury, the biggest regressions came in rollups which make it difficult to trace the cause.

Triage done by **@rylev**.
Revision range: [b3f4c3119957aa0a250cab08ab586b7a9a680ef1..8bd12e8cca3f28f302b9cc0f1f47bb64bd1f98fd](https://perf.rust-lang.org/?start=b3f4c3119957aa0a250cab08ab586b7a9a680ef1&end=8bd12e8cca3f28f302b9cc0f1f47bb64bd1f98fd&absolute=false&stat=instructions%3Au)

**Summary**:

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 1.5%  | 4.0%  | 176   |
| Regressions (secondary)  | 1.8%  | 6.4%  | 147   |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -1.6% | -4.1% | 9     |
| All  (primary)           | 1.5%  | 4.0%  | 176   |


7 Regressions, 5 Improvements, 3 Mixed; 4 of them in rollups
48 artifact comparisons made in total

#### Regressions

Rollup of 6 pull requests [#99177](https://github.com/rust-lang/rust/pull/99177) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b3f4c3119957aa0a250cab08ab586b7a9a680ef1&end=1c7b36d4db582cb47513a6c7176baaec1c3346ab&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | N/A  | N/A  | 0     |
| Regressions (secondary)  | 0.5% | 0.6% | 9     |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | N/A  | N/A  | 0     |
- Relatively small regression in secondary benchmarks. Nothing stands out as an obvious culprit, so we can mark as triaged.


Pull Derefer before ElaborateDrops [#98145](https://github.com/rust-lang/rust/pull/98145) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ca4e39400ef33198e2715973d1c67a1d3cee15e7&end=42bd138126b0a9d38d65bc9973e72de3c5b6c37f&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.5% | 0.8% | 13    |
| Regressions (secondary)  | 0.7% | 1.1% | 20    |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.5% | 0.8% | 13    |
- Slowdowns are happening in MIR borrow checking which this PR directly changes, so regressions are not surprising. 
- An issue should be opened to look into whether this can be improved. 
- [A comment](https://github.com/rust-lang/rust/pull/98145#issuecomment-1189186166) was left asking for a follow up.


Rollup of 5 pull requests [#99210](https://github.com/rust-lang/rust/pull/99210) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=42bd138126b0a9d38d65bc9973e72de3c5b6c37f&end=c80dde43f992f3eb419899a34551b84c6301f8e8&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 2.6% | 4.5% | 7     |
| Regressions (secondary)  | 1.6% | 4.1% | 55    |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 2.6% | 4.5% | 7     |
- Seems the issue comes from calling an LLVM API more often due to needing to have unstable feature information kept around longer for use with the `asm!` macro. 
- Ran a cachegrind diff and found that the likely culprit is [#99155](https://github.com/rust-lang/rust/pull/99155) calling `LLVMRustHasFeature` more often.
- [Left a comment](https://github.com/rust-lang/rust/pull/99210#issuecomment-1189222172) asking for a follow up.


Rollup of 5 pull requests [#99231](https://github.com/rust-lang/rust/pull/99231) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0ed9c64c3e63acac9bd77abce62501696c390450&end=f1a8854f9be2e5cad764d630a53d26c7b72f8162&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 1.2%  | 3.2%  | 117   |
| Regressions (secondary)  | 1.7%  | 6.4%  | 35    |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -0.3% | -0.3% | 1     |
| All  (primary)           | 1.2%  | 3.2%  | 117   |
- It's very hard to tell which PR might be responsible. Luckily, there are only 5 PRs in total so it should be possible to track the issue down. 
- [Left a comment](https://github.com/rust-lang/rust/pull/99231#issuecomment-1189372635) suggesting as much.


Support unstable moves via stable in unstable items [#95956](https://github.com/rust-lang/rust/pull/95956) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f1a8854f9be2e5cad764d630a53d26c7b72f8162&end=24699bcbadff59693a89a5184afed87f6416cdea&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.5% | 0.9% | 13    |
| Regressions (secondary)  | 0.6% | 1.2% | 10    |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.5% | 0.9% | 13    |
- The change seems to be localized to incremental compilation scenarios. 
- It seems queries like `incr_comp_encode_dep_graph` are being hit more often. I'm unsure whether this is simply because of the additional pass that's happening or something else.
- [Left a comment](https://github.com/rust-lang/rust/pull/95956#issuecomment-1189256819) asking for more insight.


Rollup of 10 pull requests [#99346](https://github.com/rust-lang/rust/pull/99346) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7210e46dc69a4b197a313d093fe145722c248b7d&end=d5e7f4782e4b699728d0a08200ecd1a54d56a85d&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.6% | 2.6% | 136   |
| Regressions (secondary)  | 1.0% | 5.8% | 100   |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.6% | 2.6% | 136   |
- Regression was found [in #98582](https://github.com/rust-lang/rust/pull/98582) and will be reverted [in #99368](https://github.com/rust-lang/rust/pull/99368) or a follow up.


Use ICF (identical code folding) for building rustc [#99062](https://github.com/rust-lang/rust/pull/99062) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=263edd43c5255084292329423c61a9d69715ebfa&end=246f66a905c2815f2c9b9c3d6b1e0649f3360ef8&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.3% | 0.4% | 2     |
| Regressions (secondary)  | 2.6% | 2.6% | 3     |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.3% | 0.4% | 2     |
- Small performance changes and some wins for binary size.
- Asked in the PR whether [this can be marked as triaged](https://github.com/rust-lang/rust/pull/99062#issuecomment-1189293635).


#### Improvements

gather body owners [#98203](https://github.com/rust-lang/rust/pull/98203) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1ba1fec234d07f43765c3c65ac341a4e64fb911a&end=30243dd87e7dbd17d68e1a1d16ba066a7d2cebe5&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.6%  | 0.6%  | 1     |
| Improvements (primary)   | -0.4% | -0.7% | 30    |
| Improvements (secondary) | -0.5% | -0.8% | 18    |
| All  (primary)           | -0.4% | -0.7% | 30    |


interpret: get rid of MemPlaceMeta::Poison [#99013](https://github.com/rust-lang/rust/pull/99013) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=522abf6d88a45f9f49a1b2217426eef1c3a09b52&end=6077b7cda466afa2b75a62b232ab46dbeb148bcb&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.5%  | 0.5%  | 1     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -1.6% | -2.5% | 12    |
| All  (primary)           | N/A   | N/A   | 0     |


stop using `FnCtxt` outside of hir typeck [#99015](https://github.com/rust-lang/rust/pull/99015) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0fe5390a885eb47f506bf481cd9ea2b449705d79&end=23e21bdd25026e2839ebe946c2a937c1904887d2&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.6% | -0.9% | 11    |
| Improvements (secondary) | -0.4% | -0.6% | 11    |
| All  (primary)           | -0.6% | -0.9% | 11    |


Use constant eval to do strict mem::uninit/zeroed validity checks [#99033](https://github.com/rust-lang/rust/pull/99033) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c2ecd3af87477147695aa3f6e1237e3185044e62&end=263edd43c5255084292329423c61a9d69715ebfa&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -2.2% | -2.9% | 6     |
| All  (primary)           | N/A   | N/A   | 0     |


`replace_bound_vars` fast path: check predicates, don't check consts [#99232](https://github.com/rust-lang/rust/pull/99232) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9ed0bf9f2bd63933785fb8a380c177d2d70e88ec&end=144227dae949fb98896a2ba077d8fe7f36c3238e&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.6% | -0.7% | 6     |
| Improvements (secondary) | N/A   | N/A   | 0     |
| All  (primary)           | -0.6% | -0.7% | 6     |


#### Mixed

Stop keeping metadata in memory before writing it to disk [#96544](https://github.com/rust-lang/rust/pull/96544) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c2f428d2f3340a0e7d995f4726223db91b93704c&end=1ba1fec234d07f43765c3c65ac341a4e64fb911a&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.3%  | 0.4%  | 3     |
| Improvements (primary)   | -0.3% | -0.3% | 1     |
| Improvements (secondary) | -4.1% | -4.1% | 2     |
| All  (primary)           | -0.3% | -0.3% | 1     |
- The perf here is a wash.


Final derive output improvements [#99046](https://github.com/rust-lang/rust/pull/99046) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=116819f54f062a2f425deac4ec29245038c26613&end=0fe5390a885eb47f506bf481cd9ea2b449705d79&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 0.6%  | 8     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.6% | -0.9% | 19    |
| Improvements (secondary) | -2.8% | -3.7% | 6     |
| All  (primary)           | -0.2% | -0.9% | 27    |
- Improvements much outweigh the regressions as [noted here](https://github.com/rust-lang/rust/pull/99046#issuecomment-1186032948).

proc_macro/bridge: stop using a remote object handle for proc_macro Ident and Literal [#98189](https://github.com/rust-lang/rust/pull/98189) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=96c2df810b0b681fee63cae11ca63844792b6190&end=c3f35504d15e80b4727872c17c8c2f4bbaee58cf&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 1.0%  | 2.2%  | 4     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.7% | -1.7% | 19    |
| Improvements (secondary) | -3.0% | -3.1% | 3     |
| All  (primary)           | -0.4% | 2.2%  | 23    |
- Still more improvements than regressions, and this is an active area of performance work as [noted here](https://github.com/rust-lang/rust/pull/98189#issuecomment-1189240748).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Revert #94158, "Apply noundef metadata to loads of types that do not permit raw init"" [rust#98966](https://github.com/rust-lang/rust/pull/98966)
  - nominated by @**Ben Kimock (Saethlin)** 
    > In #66151 we have decided against turning *technically UB* code into a panic on account of the amount of code that would be affected, so it doesn't seem right to turn *technically* into *directly visible to LLVM*. If the breakage from adding a panic for this case is too high, the danger from turning this case into visible UB should be as well.
  - cc @**Thom Chiovoloni**
  - Seems to be replaced by [rust#99182](https://github.com/rust-lang/rust/pull/99182)? (see [comment](https://github.com/rust-lang/rust/pull/98966#issuecomment-1181778698))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-rls2.0* by @**matklad**
- @_*WG-self-profile* by @**mw** and @**Wesley Wiser**
