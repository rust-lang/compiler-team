---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-07-07

## Announcements

- [Types Team: WF and implied bounds in a-mir-formality #48 ](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA3MDhUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-08T09:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- [NLL stabilization and bugs timeline](https://hackmd.io/lu7WIb3RQtCIXyjBhbwuPA)
  - cc @**Jack Huey**

### Other WG meetings
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA3MTFUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-11T16:00:00-04:00>
- [[Types team] Hack session: Advanced subtyping](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA3MTNUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-13T09:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 5 months ago)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: 3 months ago)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: about 60 days ago)
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) (last review activity: about 19 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510#issuecomment-1119675764)
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006)
  - "session: stabilize split debuginfo on linux" [rust#98051](https://github.com/rust-lang/rust/pull/98051#issuecomment-1153776703)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) 
  - "Track licensing metadata with REUSE" [compiler-team#519](https://github.com/rust-lang/compiler-team/issues/519) 
  - "Revise how MIR variants are distinguished" [compiler-team#522](https://github.com/rust-lang/compiler-team/issues/522)
- Finalized FCPs (disposition merge)
  - "Remove migrate borrowck mode" [rust#95565](https://github.com/rust-lang/rust/pull/95565) 
  - "Modify MIR building to drop repeat expressions with length zero" [rust#95953](https://github.com/rust-lang/rust/pull/95953) 
  - "Lang: Stabilize usage of rustc_nonnull_optimization_guaranteed on -1" [rust#97122](https://github.com/rust-lang/rust/issues/97122) 
  - "Remove a back-compat hack on lazy TAIT" [rust#97346](https://github.com/rust-lang/rust/pull/97346) 
  - "make cenum_impl_drop_cast deny-by-default" [rust#97652](https://github.com/rust-lang/rust/pull/97652) 
  - "make const_err show up in future breakage reports" [rust#97743](https://github.com/rust-lang/rust/pull/97743) 
  - "lub: don't bail out due to empty binders" [rust#97867](https://github.com/rust-lang/rust/pull/97867) 
  - "allow unions with mutable references and tuples of allowed types" [rust#97995](https://github.com/rust-lang/rust/pull/97995)

### WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
> #### Most notable changes
>
> - diagnostics: structs with new slug syntax [#1377](https://github.com/rust-lang/rustc-dev-guide/pull/1377)
> - diagnostics: more translation and diagnostic derive documentation [#1363](https://github.com/rust-lang/rustc-dev-guide/pull/1363)
> - add section on user types [#1359](https://github.com/rust-lang/rustc-dev-guide/pull/1359)
>
> #### Most notable WIPs
>
> - Describe Type Alias Impl Trait (TAIT) Inference Algorithm [#1297](https://github.com/rust-lang/rustc-dev-guide/pull/1297)

- @_*WG-traits* (Impl Trait initiative) by @**oli** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
> Checkin text


## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "don't succeed `evaluate_obligation` query if new opaque types were registered" [rust#98614](https://github.com/rust-lang/rust/pull/98614) 
  - authored by @**oli**, not yet merged
  - assigned reviewer @**Wesley Wiser**
  - Fixes [rust#98608](https://github.com/rust-lang/rust/issues/98608) and [rust#98604](https://github.com/rust-lang/rust/issues/98604), unsoundness issues
  - also nominated for stable backport (@_oli [suggests](https://github.com/rust-lang/rust/pull/98614#issuecomment-1172618098) this to be included in a point release, should that happen)
- :beta: "Create fresh lifetime parameters for bare fn trait too" [rust#98637](https://github.com/rust-lang/rust/pull/98637)
  - authored by @**cjgillot**, not yet merged
  - assigned reviewer @**Vadim Petrochenkov** 
  - fixes [rust#98616](https://github.com/rust-lang/rust/issues/98616) and [rust#98726](https://github.com/rust-lang/rust/issues/98726), `P-high` and `P-critical` regressions now in beta
- :beta: "Do not call `check_expr` in `check_compatible`, since it has side-effects" [rust#98785](https://github.com/rust-lang/rust/pull/98785)
  - PR authored and nominated for backport by @**Michael Goulet (compiler-errors)**, not yet merged
  - assigned reviewer @**Jack Huey** 
  - fixes various diagnostics [rust#98784](https://github.com/rust-lang/rust/pull/98784), [rust#98894](https://github.com/rust-lang/rust/issues/98894) and [rust#98897](https://github.com/rust-lang/rust/issues/98897)
- :beta: "Update llvm-project" [rust#98567](https://github.com/rust-lang/rust/pull/98567) 
  - authored by @**Patryk Wychowaniec** , approved by @**cuviper** 
  - fixes a number of issues (at least one `P-critical` ([comment](https://github.com/rust-lang/rust/pull/98567#issuecomment-1176459563))
- :beta: "Return a FxIndexSet in is_late_bound query." [rust#98959](https://github.com/rust-lang/rust/pull/98959)
  - authored by @**cjgillot**
  - fixes `P-critical` regression [rust#98890](https://github.com/rust-lang/rust/issues/98890) and affects #96655
- :stable: "don't succeed `evaluate_obligation` query if new opaque types were registered" [rust#98614](https://github.com/rust-lang/rust/pull/98614)
  - (nominated for beta)

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- :beta: "rustdoc: filter '_ lifetimes from ty::PolyTraitRef" [rust#98727](https://github.com/rust-lang/rust/pull/98727)
  - `T-rustdoc` agrees on backport
  - Q: do small `T-rustdoc` PRs like these need a T-compiler backport signoff or can they be straight approved?
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Increase the minimum linux-gnu versions (to kernel 3.2 / glibc 2.17)" [rust#95026](https://github.com/rust-lang/rust/pull/95026)
  - me (@_apiraino) tried to summarize and see if we are at point to have an actionable or more teams should chime in (`T-compiler` or `T-lang`?)
   - Write a rust-lang blog post ([comment](https://github.com/rust-lang/rust/pull/95026#issuecomment-1084650961))?
   - Done in blog post for 1.61 ([comment](https://github.com/rust-lang/rust/pull/95026#issuecomment-1118616095))
   - concerns raised for very old systems and IoTs ([comment](https://github.com/rust-lang/rust/pull/95026#issuecomment-1131972811))
   - at some point we need to keep up with LLVM evolution ([comment](https://github.com/rust-lang/rust/pull/95026#issuecomment-1132213595))
   - Set a `Minimum Supported Linux Kernel`, so vendors can pin that version ([comment](https://github.com/rust-lang/rust/pull/95026#issuecomment-1140452497))?
   - T-libs decided to move forward ([comment](https://github.com/rust-lang/rust/pull/95026#issuecomment-1144222893))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Warn about dead tuple struct fields" [rust#95977](https://github.com/rust-lang/rust/pull/95977) (last review activity: about 35 days ago)
  - unsure if ready for review (some people commented by it's still assigned to `T-lang`)
  - does it need a reviewer from `T-compiler`?
- "Simplify some code that depend on Deref" [rust#97077](https://github.com/rust-lang/rust/pull/97077) (last review activity: about 33 days ago)
  - marked as blocked on #95576 (which is now merged)
  - ready for another review? cc @**oli**
- "Convert a hard-warning about named static lifetimes into a lint" [rust#98079](https://github.com/rust-lang/rust/pull/98079) (last review activity: about 21 days ago)
  - (note from @_**apiraino**) @**Esteban Küber** any pending comments? Author replied but unsure it they're waiting (in case I'll flip the review switch)
- "Use object instead of LLVM for reading bitcode from rlibs" [rust#98100](https://github.com/rust-lang/rust/pull/98100) (last review activity: about 21 days ago)
  - bot assigned review to @**Wesley Wiser**
- "Improve the function pointer docs" [rust#98180](https://github.com/rust-lang/rust/pull/98180) (last review activity: about 19 days ago)
  - Assigned to @**Josh Triplett** (with their `T-libs` hat?)
  - needs also a `T-compiler` review?

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [43 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 0 P-high, 5 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 39 P-high, 82 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463) 
  - latest updates from Felix in PR #97800 [comment](https://github.com/rust-lang/rust/pull/97800#issuecomment-1176968020)
- "Wrong optimization" [rust#98568](https://github.com/rust-lang/rust/issues/98568)
  - will be fixed upstream by [llvm-project@e4d1d0c](https://github.com/rust-lang/rust/issues/98568#issuecomment-1175065026), authored by @**Nikita Popov**
- "Function type with opaque return type can be coerced to `dyn Fn` with arbitrary return type" [rust#98608](https://github.com/rust-lang/rust/issues/98608)
  - fixed by [rust#98614](https://github.com/rust-lang/rust/pull/98614), nominated for backports
- "Missing dyn keyword in bare_trait_objects with Rust 2015 edition produces faulty error instead of warnings" [rust#98726](https://github.com/rust-lang/rust/issues/98726)
  - fixed by [rust#98637](https://github.com/rust-lang/rust/pull/98637), nominated for backports
- "`py ./x.py` no longer works on Windows" [rust#98650](https://github.com/rust-lang/rust/issues/98650)
  - reported upstream ([issue](https://github.com/python/cpython/issues/94399))
  - Q: Any actionable for us? Is this a "wontfix" i.e. leave #98650 open and remove `I-prioritize` and regression label?
- "`for<'a> &'a T: 'a` and closures regressed" [rust#98437](https://github.com/rust-lang/rust/issues/98437)
  - discussed last week ([notes](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bplanning.20meeting.5D.202022-07-01/near/288178369))

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-07-05](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-07-05.md)

Overall the week is a small improvement on average, with some benchmarks
(particularly in the primary category) showing significant improvements due to
the enablement of MIR inlining in
[#91743](https://github.com/rust-lang/rust/pull/91743). Inlining promises to
improve the quality of our generated LLVM IR and make other optimizations more
worthwhile, so it's great to see these early results already being quite
impactful.

Triage done by **@simulacrum**.
Revision range: [baf382e63c023259fa1f9042f8f479f183ca6ed3..880646ca9c6dc21e04efe2f1940369a45b71ff2d](https://perf.rust-lang.org/?start=baf382e63c023259fa1f9042f8f479f183ca6ed3&end=880646ca9c6dc21e04efe2f1940369a45b71ff2d&absolute=false&stat=instructions%3Au)

**Summary**:

|                           | mean  | max    | count |
|:-------------------------:|:-----:|:------:|:-----:|
| Regressions  (primary)    | 1.9%  | 11.9%  | 111   |
| Regressions  (secondary)  | 3.4%  | 11.9%  | 106   |
| Improvements  (primary)   | -2.8% | -9.7%  | 105   |
| Improvements  (secondary) | -4.4% | -16.8% | 97    |
| All  (primary)            | -0.4% | 11.9%  | 216   |


3 Regressions, 6 Improvements, 6 Mixed; 4 of them in rollups
46 artifact comparisons made in total

#### Regressions

Fix FFI-unwind unsoundness with mixed panic mode [#97235](https://github.com/rust-lang/rust/pull/97235)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0075bb4fad68e64b6d1be06bf2db366c30bc75e1&end=6a1092056441652fe5fe5c5b422644951e6b99ce&stat=instructions:u)

|                           | mean | max  | count |
|:-------------------------:|:----:|:----:|:-----:|
| Regressions  (primary)    | 0.5% | 1.2% | 86    |
| Regressions  (secondary)  | 0.9% | 2.5% | 36    |
| Improvements  (primary)   | N/A  | N/A  | 0     |
| Improvements  (secondary) | N/A  | N/A  | 0     |
| All  (primary)            | 0.5% | 1.2% | 86    |

PR author notes this added a new query for each MIR body, so this is an
expected regression, and given the soundness fix is not too large to need
further investigation.

Rollup of 5 pull requests [#98874](https://github.com/rust-lang/rust/pull/98874)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a5c6a48aee84215a9200dfa1c4c6ad88f5721f56&end=9c9ae85a4773be3c1e33717e4fa9759b4ce020ef&stat=instructions:u)

|                           | mean | max  | count |
|:-------------------------:|:----:|:----:|:-----:|
| Regressions  (primary)    | 0.6% | 0.9% | 13    |
| Regressions  (secondary)  | 1.4% | 2.4% | 12    |
| Improvements  (primary)   | N/A  | N/A  | 0     |
| Improvements  (secondary) | N/A  | N/A  | 0     |
| All  (primary)            | 0.6% | 0.9% | 13    |

Some possibly real, though small, regressions. Unclear cause; rollup doesn't
obviously contain any sensitive PRs.

Rollup of 8 pull requests [#98904](https://github.com/rust-lang/rust/pull/98904)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=27eb6d7018e397cf98d51c205e3576951d766323&end=e1d1848cc60a407d06f90fd16877a19bed6edd9b&stat=instructions:u)

|                           | mean | max  | count |
|:-------------------------:|:----:|:----:|:-----:|
| Regressions  (primary)    | 0.7% | 0.9% | 8     |
| Regressions  (secondary)  | 1.1% | 2.3% | 16    |
| Improvements  (primary)   | N/A  | N/A  | 0     |
| Improvements  (secondary) | N/A  | N/A  | 0     |
| All  (primary)            | 0.7% | 0.9% | 8     |

Interestingly, regressions here are remarkably similar to those in #98874
(previous rollup in this list). Not seeing an obvious connection between the PRs
in the two rollups, though.

#### Improvements

proc_macro/bridge: stop using a remote object handle for proc_macro Punct and Group [#98188](https://github.com/rust-lang/rust/pull/98188)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=00ebeb87ac87a492bd59ace6bd43d6ad1629ca4e&end=94e93749ab00539a11e90426ea87382c433530a8&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | -0.5% | -1.4% | 15    |
| Improvements  (secondary) | -1.6% | -5.0% | 16    |
| All  (primary)            | -0.5% | -1.4% | 15    |


Update `smallvec` to 1.8.1. [#98558](https://github.com/rust-lang/rust/pull/98558)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=493c960a3e6cdd2e2fbe8b6ea130fadea05f1ab0&end=66c83ffca1512ed76f9445ec7f7280f768ef71c4&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | N/A   | N/A   | 0     |
| Improvements  (secondary) | -1.7% | -2.4% | 9     |
| All  (primary)            | N/A   | N/A   | 0     |


CTFE interning: don't walk allocations that don't need it [#97585](https://github.com/rust-lang/rust/pull/97585)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6a1092056441652fe5fe5c5b422644951e6b99ce&end=750d6f85459356db4838dc06db8b19406e1ed31a&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | -1.0% | -1.0% | 2     |
| Improvements  (secondary) | -2.5% | -9.3% | 32    |
| All  (primary)            | -1.0% | -1.0% | 2     |


Optimize `Vec::insert` for the case where `index == len`. [#98755](https://github.com/rust-lang/rust/pull/98755)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ada8c80bedb713b320af00aacab97d01d9cb5933&end=f99f9e48ed77a99747c6d07b42fdfe500f1a7de0&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | -0.4% | -1.0% | 8     |
| Improvements  (secondary) | -1.2% | -2.4% | 13    |
| All  (primary)            | -0.4% | -1.0% | 8     |


fully move dropck to mir [#98641](https://github.com/rust-lang/rust/pull/98641)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9c9ae85a4773be3c1e33717e4fa9759b4ce020ef&end=a3beeaa84da241f35888338ded6659938206ff13&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 0.5%  | 0.7%  | 2     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | -0.7% | -2.4% | 34    |
| Improvements  (secondary) | -0.8% | -2.1% | 22    |
| All  (primary)            | -0.7% | -2.4% | 36    |


interpret: track place alignment together with the type, not the value [#98846](https://github.com/rust-lang/rust/pull/98846)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e1d1848cc60a407d06f90fd16877a19bed6edd9b&end=4008dd8c6d92a0b81528fd138c6130d784e5958e&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | -0.7% | -0.9% | 8     |
| Improvements  (secondary) | -1.2% | -2.3% | 13    |
| All  (primary)            | -0.7% | -0.9% | 8     |


#### Mixed

Rollup of 9 pull requests [#98612](https://github.com/rust-lang/rust/pull/98612)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=baf382e63c023259fa1f9042f8f479f183ca6ed3&end=00ebeb87ac87a492bd59ace6bd43d6ad1629ca4e&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 0.7%  | 1.0%  | 5     |
| Regressions  (secondary)  | 5.2%  | 9.9%  | 6     |
| Improvements  (primary)   | -1.0% | -1.1% | 2     |
| Improvements  (secondary) | -0.8% | -2.4% | 22    |
| All  (primary)            | 0.2%  | -1.1% | 7     |


Rollup of 7 pull requests [#98656](https://github.com/rust-lang/rust/pull/98656)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=116edb6800ea1d6615578e7f65366ae65364b3d8&end=493c960a3e6cdd2e2fbe8b6ea130fadea05f1ab0&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 1.4%  | 11.3% | 131   |
| Regressions  (secondary)  | 3.5%  | 11.2% | 73    |
| Improvements  (primary)   | N/A   | N/A   | 0     |
| Improvements  (secondary) | -2.2% | -3.1% | 8     |
| All  (primary)            | 1.4%  | 11.3% | 131   |

Asked for further investigation on the PR, noting
[#98277](https://github.com/rust-lang/rust/pull/98277) as a possible cause.

move MIR syntax into a dedicated file and ping some people whenever it changes [#98649](https://github.com/rust-lang/rust/pull/98649)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5d3c6d6c83edc4ef245e77397c8e32d3ee453b67&end=a9eb9c52f3e8d8b6402e6acc69b9bcfc4f371d58&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 0.5%  | 0.5%  | 1     |
| Regressions  (secondary)  | 1.6%  | 4.3%  | 20    |
| Improvements  (primary)   | -0.3% | -0.4% | 5     |
| Improvements  (secondary) | -0.3% | -0.3% | 3     |
| All  (primary)            | -0.2% | 0.5%  | 6     |

This is *probably* noise, but it's not very clear. Regressions are minor enough
that further investigation does not seem warranted.

Enable MIR inlining [#91743](https://github.com/rust-lang/rust/pull/91743)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aedf78e56b2279cc869962feac5153b6ba7001ed&end=0075bb4fad68e64b6d1be06bf2db366c30bc75e1&stat=instructions:u)

|                           | mean  | max    | count |
|:-------------------------:|:-----:|:------:|:-----:|
| Regressions  (primary)    | 1.3%  | 7.2%   | 54    |
| Regressions  (secondary)  | 1.7%  | 6.1%   | 68    |
| Improvements  (primary)   | -2.6% | -10.0% | 118   |
| Improvements  (secondary) | -3.4% | -17.3% | 76    |
| All  (primary)            | -1.4% | -10.0% | 172   |

A fairly large improvement for some benchmarks, and particularly large for
bootstrap times (nearly 9% win). There are some fairly large regressions to a
few select benchmarks which stress the inlining more than helping LLVM (e.g.,
stm32f4), but overall this is a great improvement in many cases.

Avoid unnecessary work in `finalize_resolutions_in`. [#98569](https://github.com/rust-lang/rust/pull/98569)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f2d93935ffba3ab9d7ccb5300771a2d29b4c8bf3&end=5f98537eb7b5f42c246a52c550813c3cff336069&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 0.3%  | 0.5%  | 7     |
| Regressions  (secondary)  | 0.5%  | 0.7%  | 7     |
| Improvements  (primary)   | -1.0% | -1.0% | 2     |
| Improvements  (secondary) | -2.1% | -2.4% | 6     |
| All  (primary)            | 0.0%  | -1.0% | 9     |

Wins/losses balance out; already labeled as triaged.

Don't use match-destructuring for derived ops on structs. [#98446](https://github.com/rust-lang/rust/pull/98446)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2557603f320593be9d1c29a453c648e61e74d343&end=d46c728bcda687b1cf5f3bedca3d501e797b2a0f&stat=instructions:u)

|                           | mean  | max    | count |
|:-------------------------:|:-----:|:------:|:-----:|
| Regressions  (primary)    | N/A   | N/A    | 0     |
| Regressions  (secondary)  | 1.3%  | 1.9%   | 19    |
| Improvements  (primary)   | -0.6% | -1.5%  | 66    |
| Improvements  (secondary) | -5.4% | -12.3% | 33    |
| All  (primary)            | -0.6% | -1.5%  | 66    |

Overall an excellent, though somewhat small, improvement. Regressions are small
and limited to a couple very artificial stress tests rather than real-world


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Revert #94158, "Apply noundef metadata to loads of types that do not permit raw init"" [rust#98966](https://github.com/rust-lang/rust/pull/98966)
  - nominated by @**Ben Kimock (Saethlin)** 
  - Summary for the nomination:
  > In #66151 we have decided against turning *technically UB* code into a panic on account of the amount of code that would be affected, so it doesn't seem right to turn *technically* into *directly visible to LLVM*. If the breakage from adding a panic for this case is too high, the danger from turning this case into visible UB should be as well.
  - cc @**Thom Chiovoloni**

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**
- @_*WG-traits* (Types team) by @**nikomatsakis** and @**Jack Huey**
