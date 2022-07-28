---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-07-28

## Announcements

- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA3MjlUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-29T09:00:00-04:00>
- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMjA3MjlUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-29T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [wg-debugging status & design meeting](https://www.google.com/calendar/event?eid=MTd1dWFsNTdiZTU2YWYxcDlhMTBpYjJkaHIgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-08-01T10:00:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMjA4MDFUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-01T11:00:00-04:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjA4MDFUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-01T11:30:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) 
  - "Rewrite compiletest out of tree" [compiler-team#536](https://github.com/rust-lang/compiler-team/issues/536)
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 2 months ago)
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) (last review activity: about 41 days ago)
  - "Add import_name_type parameter to #[link]" [compiler-team#525](https://github.com/rust-lang/compiler-team/issues/525) (last review activity: about 6 days ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006) 
  - "[RFC] Support `.comment` section like GCC/Clang (`!llvm.ident`)" [rust#97550](https://github.com/rust-lang/rust/pull/97550#issuecomment-1191578213) 
  - "Update cc-rs to 1.0.73 for compiler + bootstrap" [rust#99477](https://github.com/rust-lang/rust/pull/99477#issuecomment-1196934940) 
- Things in FCP (make sure you're good with it)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510) 
  - "move hir typeck into separate crate" [compiler-team#529](https://github.com/rust-lang/compiler-team/issues/529) 
  - "Create `#[rustc_on_type_error]` mimicking `#[rustc_on_unimplemented]` for E0308 customization" [compiler-team#530](https://github.com/rust-lang/compiler-team/issues/530) 
  - "Split `Predicate` into `Goal` and `Clause`" [compiler-team#531](https://github.com/rust-lang/compiler-team/issues/531) 
  - "Deref is not a projection" [compiler-team#532](https://github.com/rust-lang/compiler-team/issues/532) 
  - "Remove HashStable impl for collection types with unstable iteration order" [compiler-team#533](https://github.com/rust-lang/compiler-team/issues/533) 
  - "session: stabilize split debuginfo on linux" [rust#98051](https://github.com/rust-lang/rust/pull/98051) 
- Accepted MCPs
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) 
  - "Introduce `-Z` flag to control how proc-macros are run" [compiler-team#528](https://github.com/rust-lang/compiler-team/issues/528) 
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
  - "do not mark interior mutable shared refs as dereferenceable" [rust#98017](https://github.com/rust-lang/rust/pull/98017)

### WG checkins

- @_*WG-rls2.0* by @**Lukas Wirth** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > This sprint saw bigger focus on completion refactorings, we also fixed the long standing issue with `go to implementation` not going to the associated items of trait implementation but of the traits itself, https://github.com/rust-lang/rust-analyzer/issues/12549. Most importantly though, there has been a lot of talks regarding rust-analyzer's proc-macro server story: See https://github.com/rust-lang/rust-analyzer/issues/12579 and https://github.com/rust-lang/rust-analyzer/issues/12803.
  Big discussion, but the main points are that r-a is now a subtree instead of a submodule in the rust-lang/rust repository and that we are soon shipping a rustup component that allows r-a to execute a proc-macro server that always has a matching proc-macro ABI with the current toolchain, preventing frequent breakage for r-a whenever the proc-macro ABI changes.

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > * measureme 10.1.0 has been released. The crate can now compile on stable, even when using hardware performance counters for instrumentation. 
  > * We've updated rustc to use this version as well which should allow the `-Z self-profile-counter` to work correctly. 

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Upgrade indexmap and thorin-dwp to use hashbrown 0.12" [rust#99251](https://github.com/rust-lang/rust/pull/99251) 
  - nominated by @**simulacrum**, perf. results are positive and it fixes a soundness in the current hashbrown crate
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Remove implicit names and values from `--cfg` in `--check-cfg`" [rust#99519](https://github.com/rust-lang/rust/pull/99519)
  - Nominated for discussion

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Memory-map the dep-graph instead of reading it up front" [rust#95543](https://github.com/rust-lang/rust/pull/95543) (last review activity: 3 months ago)
  - cc **mw**
- "Add pointer masking convenience functions" [rust#96946](https://github.com/rust-lang/rust/pull/96946) (last review activity: about 37 days ago)
  - This is `T-libs-api`, cc: @_**Josh Triplett**  
- "Implement `#[rustc_default_body_unstable]`" [rust#96478](https://github.com/rust-lang/rust/pull/96478) (last review activity: about 36 days ago)
  - cc @**Aaron Hill** 
- "Add option to pass environment variables" [rust#94387](https://github.com/rust-lang/rust/pull/94387) (last review activity: about 34 days ago)
  - ping @**bjorn3**
- "Implement unstable `-Clinker-flavor=gcc:lld` for MCP 510" [rust#96827](https://github.com/rust-lang/rust/pull/96827) (last review activity: about 30 days ago)
  - reroll assignment @**Vadim Petrochenkov**? (see [comment](https://github.com/rust-lang/rust/pull/96827#issuecomment-1167074726))
  
## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 37 P-high, 85 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Compiling ndarray: alignment mismatch between ABI and layout" [rust#99836](https://github.com/rust-lang/rust/issues/99836)
  - Seems to be enabled by [rust#98968](https://github.com/rust-lang/rust/pull/98968)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Source of lifetime coercion is not reported starting in 1.63" [rust#99256](https://github.com/rust-lang/rust/issues/99256)
  - bisected to [rust#95565](https://github.com/rust-lang/rust/pull/95565), cc'ed @_**Jack Huey** 

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "nightly 2022-06-29 rejects previously compiling code with missing trait implementations" [rust#99536](https://github.com/rust-lang/rust/issues/99536)
  - @**oli** suggests to revert [rust#97346](https://github.com/rust-lang/rust/pull/97346) (iiuc)
- "Misaligned reference from drop field in packed struct" [rust#99838](https://github.com/rust-lang/rust/issues/99838)
  - old unsoundness regression dating back to 1.54

## Performance logs

> [triage logs for 2022-07-27](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-07-27.md)

Overall it was a mostly good week, with some very significant wins among the
secondary benchmarks. Rollups continue to complicate triage process.

Triage done by **@pnkfelix**.
Revision range: [8bd12e8c..50166d5e](https://perf.rust-lang.org/?start=8bd12e8cca3f28f302b9cc0f1f47bb64bd1f98fd&end=50166d5e5e82ca795306824decbe4ffabcc23d3d&absolute=false&stat=instructions%3Au)

**Summary**:

|                          | mean  | max    | count |
|:------------------------:|:-----:|:------:|:-----:|
| Regressions (primary)    | N/A   | N/A    | 0     |
| Regressions (secondary)  | 2.2%  | 3.2%   | 6     |
| Improvements (primary)   | -1.8% | -21.2% | 199   |
| Improvements (secondary) | -2.6% | -9.0%  | 124   |
| All  (primary)           | -1.8% | -21.2% | 199   |


5 Regressions, 4 Improvements, 4 Mixed; 4 of them in rollups
30 Untriaged Pull Requests
61 artifact comparisons made in total

#### Regressions

Rollup of 9 pull requests [#99520](https://github.com/rust-lang/rust/pull/99520) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a7468c60f8dbf5feb23ad840b174d7e57113a846&end=d68e7ebc38cb42b8b237392b28045edeec761503&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 2.0% | 2.7% | 4     |
| Regressions (secondary)  | 1.3% | 2.5% | 29    |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 2.0% | 2.7% | 4     |

* The 4 primary regressions, 3 are helloworld check, regressing by 2.5% to 2.7% on various incr scenarios. The last is ripgrep check but that only regressed by 0.36%.
* From looking at the graph of helloworld-check over time, the regression to helloworld-check that was injected here was legitimate, as it plateaued up there for 4 or 5 days until it jumped back down due to PR [#99677](https://github.com/rust-lang/rust/pull/99677)
* PR #99677 was put in to address regressions injected by PR #97786, which was rolled up in PR #98656. Looking at the data from that rollup, it appears that helloworld-check there also regressed by 2.6%; so it seems to me like the regression injected by #99520 is probably still persisting; its presence is just masked by the effect of PR #98656...
* Perhaps the regression is coming from the following queries/functions: stability_implications, metadata_decode_entry_stability_implications, defined_lib_features, metadata_decode_entry_defined_lib_features, all of which are present in the new commit but not the base commit. Were all of those added as part of PRs in this rollup?
* If the above queries are indeed to blame for the regression here, then I think that would be tied to [PR #99212](https://github.com/rust-lang/rust/pull/99212), "introduce implied_by in #[unstable] attribute".
* Not marking as triaged. I'm leaving the perf-regression marker in place until we at least confirm which PR was the cause; then we can better evaluate whether the regression is an acceptable price to pay.

move `considering_regions` to the infcx [#99501](https://github.com/rust-lang/rust/pull/99501) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=af7ab3447079fddc51c6c7749b160d24769f7c16&end=62b272d25c5bb8b6bb8ac73797d82b8b9a1eabda&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.4% | 0.4% | 2     |
| Regressions (secondary)  | 0.4% | 0.5% | 5     |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.4% | 0.4% | 2     |

* The secondary regressions were [already anticipated](https://github.com/rust-lang/rust/pull/99501#issuecomment-1191647607) by the PR reviewer. The primary regressions are both diesel and they look like blips in the data to me from the graph.
* Marking as triaged.

Sync in portable-simd subtree [#99491](https://github.com/rust-lang/rust/pull/99491) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e7a9c1141698bc4557b9da3d3fce2bf75339427f&end=41419e70366962c9a878bfe673ef4df38db6f7f1&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 1.0%  | 11    |
| Regressions (secondary)  | 0.8%  | 1.3%  | 20    |
| Improvements (primary)   | -0.2% | -0.2% | 1     |
| Improvements (secondary) | N/A   | N/A   | 0     |
| All  (primary)           | 0.4%  | 1.0%  | 12    |

* All of the regressions here are on doc profiles. I don't think its worth us spending time trying to figure out 1% regressions to rustdoc performance.
* Marking as triaged.

Fix hack that remaps env constness. [#99521](https://github.com/rust-lang/rust/pull/99521) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=41419e70366962c9a878bfe673ef4df38db6f7f1&end=22d25f21dc008785f52e7c2833de4f4236b1066b&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.5% | 0.8% | 7     |
| Regressions (secondary)  | 0.6% | 0.6% | 1     |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.5% | 0.8% | 7     |

* This regression was anticipated by the PR author and [analyzed](https://github.com/rust-lang/rust/pull/99521#issuecomment-1191511904) by the reviewer.
* marking as triaged.


Rollup of 8 pull requests [#99792](https://github.com/rust-lang/rust/pull/99792) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b573e10d21b69ebfadf41aa9c2f0a27919fe4480&end=e33cc71a61c91e1d510bf283e9d345067e64eed2&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.5% | 0.8% | 9     |
| Regressions (secondary)  | 1.8% | 2.9% | 6     |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.5% | 0.8% | 9     |

* Primary regressions were to clap (check full, check incr-full, and doc full), libc (doc full), hyper (check full, check incr-full, and doc full), image (doc full), and webrender (doc full).
* The significance factor points mostly to the clap cases (with 4.13x, 3.25x, and 7.15x respectively to each of the scenarios I listed above for clap).
* The [detailed query data](https://perf.rust-lang.org/detailed-query.html?sort_idx=-11&commit=e33cc71a61c91e1d510bf283e9d345067e64eed2&base_commit=b573e10d21b69ebfadf41aa9c2f0a27919fe4480&benchmark=clap-3.1.6-check&scenario=full) for clap check full indicates that the problem is mostly in `metadata_decode_entry_item_attrs` and `visible_parent_map`; those are the ones that had a significant time delta that end up explaining the overall time delta (0.003 + 0.003 > 0.005).
* `visible_parent_map` slowdown may be due to [PR #99698](https://github.com/rust-lang/rust/issues/99698).
* The slowdown to `metadata_decode_entry_Item_attrs` may be due to [PR #99712](https://github.com/rust-lang/rust/issues/99712) ? Hard to say.
* The secondary regressions are all to the projection-caching benchmark, which regressed by 1.2% to 2.9% in various scenarios. That regression seems to be to due [a combination](https://perf.rust-lang.org/detailed-query.html?sort_idx=-11&commit=e33cc71a61c91e1d510bf283e9d345067e64eed2&base_commit=b573e10d21b69ebfadf41aa9c2f0a27919fe4480&benchmark=projection-caching-check&scenario=full) of both the `metadata_decode_entry_item_attrs` and `visible_parent_map` regressions, as well as a little bit more time spent in `type_op_prove_predicate`, `evaluate_obligation`, and `normalize_projection_ty`. Not sure why though, I don't think those got touched by this rollup. Maybe just different execution paths from the stdlib changes that *did* come in with this rollup?
* Leaving comments on both the rollup PR and the two suspect PRs from the rollup. Not marking as triaged.

#### Improvements

Revert "Rollup merge of #98582 - oli-obk:unconstrained_opaque_type, r… [#99495](https://github.com/rust-lang/rust/pull/99495) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=748cb1f01d623f2afd0d8b84fda7e2c8f7a11c7b&end=d60d88fe5cd55496b9ccb1511a9af4994b7c43d0&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.6% | -2.6% | 136   |
| Improvements (secondary) | -1.0% | -5.5% | 93    |
| All  (primary)           | -0.6% | -2.6% | 136   |


Rollup of 7 pull requests [#99506](https://github.com/rust-lang/rust/pull/99506) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d60d88fe5cd55496b9ccb1511a9af4994b7c43d0&end=14dbfebfa25a0e626ad827526934381b2545cbb4&stat=instructions:u)

|                          | mean  | max    | count |
|:------------------------:|:-----:|:------:|:-----:|
| Regressions (primary)    | N/A   | N/A    | 0     |
| Regressions (secondary)  | N/A   | N/A    | 0     |
| Improvements (primary)   | -1.4% | -20.7% | 35    |
| Improvements (secondary) | -1.1% | -2.8%  | 19    |
| All  (primary)           | -1.4% | -20.7% | 35    |

* The -20.7% improvement was to webrender-2022 (check profile, incr-patched:println scenario).
* Not quite sure which PR in the rollup yielded that kind of improvement. Maybe [PR #99486](https://github.com/rust-lang/rust/pull/99486) sidestepped some pathological string construction(s) and comparison(s) in webrender?
* The primary benchmarks other than webrender all observed <1% improvement.

Tweak `SubstFolder` implementation [#99600](https://github.com/rust-lang/rust/pull/99600) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7f93d4aa0dc4ac071c617e0e07d2758e3bb388f9&end=2f320a224e827b400be25966755a621779f797cc&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 1.6%  | 1.6%  | 1     |
| Improvements (primary)   | -0.4% | -0.6% | 22    |
| Improvements (secondary) | -1.6% | -3.6% | 14    |
| All  (primary)           | -0.4% | -0.6% | 22    |


Remove new allocations from `imported_source_files` [#99677](https://github.com/rust-lang/rust/pull/99677) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b629c85bd74dfb730a3e9308312b007c0bf027cb&end=96b9bb4620f4d48aa25c381c7ea77e0cab48ac5b&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -1.5% | -9.9% | 132   |
| Improvements (secondary) | -3.2% | -9.8% | 77    |
| All  (primary)           | -1.5% | -9.9% | 132   |


#### Mixed

Improve the function pointer docs [#98180](https://github.com/rust-lang/rust/pull/98180) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=29c5a028b0c92aa5da6a8eb6d6585a389fcf1035&end=9a7b7d5e50ab0b59c6d349bbf005680a7c880e98&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.2%  | 0.3%  | 3     |
| Regressions (secondary)  | 0.4%  | 0.4%  | 8     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -1.2% | -1.2% | 1     |
| All  (primary)           | 0.2%  | 0.3%  | 3     |

* The regressions above are all in doc generation, and they are all minor.
* Marked as triaged.


Rollup of 11 pull requests [#99567](https://github.com/rust-lang/rust/pull/99567) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1673f1450eeaf4a5452e086db0fe2ae274a0144f&end=af7ab3447079fddc51c6c7749b160d24769f7c16&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.5%  | 0.5%  | 1     |
| Improvements (primary)   | -0.3% | -0.3% | 4     |
| Improvements (secondary) | -0.7% | -1.0% | 5     |
| All  (primary)           | -0.3% | -0.3% | 4     |

* Sole (small) regression was to secondary benchmark wg-grammar (doc full scenario), of 0.54%.
* Not worth trying to tease that out of a rollup.


rustc_expand: Switch FxHashMap to FxIndexMap where iteration is used [#99320](https://github.com/rust-lang/rust/pull/99320) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7d0a55bcdc262d12447942e028c480b2387076ea&end=47ba93596586783efd41df7b8ea84f4f1e37f923&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.4%  | 0.4%  | 1     |
| Improvements (primary)   | -1.1% | -1.8% | 11    |
| Improvements (secondary) | N/A   | N/A   | 0     |
| All  (primary)           | -1.1% | -1.8% | 11    |

* Sole (small) regression was to secondary benchmark tt-muncher (check incr-unchanged scenario), of 0.41%
* Seems like a justifiable cost given that 11 primary benchmarks were improved by a mean -1.1%.


Upgrade indexmap and thorin-dwp to use hashbrown 0.12 [#99251](https://github.com/rust-lang/rust/pull/99251) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=db8086eb6056f022d3bb719f777307e9daa3f8d8&end=4dbc89de3f160f4fd91a1e20b72fc6b3157b2e04&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.2%  | 0.2%  | 3     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.4% | -0.5% | 7     |
| Improvements (secondary) | -1.4% | -1.4% | 2     |
| All  (primary)           | -0.2% | -0.5% | 10    |


* 7 primary improvements, eight on diesel in check+opt full+incr-full profiles, in the range -0.31% to -0.47%; 3 primary regressions, two on diesel in debug+opt incr-unchanged, all roughly 0.23%.
* The change here was in part motivated by a soundness fix. So the relatively small regression here is easily outweighed by the soundness fix (and the fact that there were more significant improvements to boot is icing on the cake).
* marking as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Remove implicit names and values from `--cfg` in `--check-cfg`" [rust#99519](https://github.com/rust-lang/rust/pull/99519)
  - @**Vadim Petrochenkov** nominated: discussion about how to introduce this without breaking existing code

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry**
- @_*WG-traits* (Generic associated types initiative) by @**Jack Huey**

