---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-08-11

## Announcements

- Today release of Rust stable 1.63
- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA4MTJUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-12T09:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [wg-debugging triage meeting](https://www.google.com/calendar/event?eid=NjAwbDEwNzNmMzVsNDZucnFsdDdwbGJrdDRfMjAyMjA4MTVUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-15T10:00:00-04:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjA4MTVUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-15T11:30:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) 
  - "Rewrite compiletest out of tree" [compiler-team#536](https://github.com/rust-lang/compiler-team/issues/536) 
  - "Make format_args!() its own AST node (ast::ExprKind::FormatArgs)" [compiler-team#541](https://github.com/rust-lang/compiler-team/issues/541) 
  - "Allow informational -Z flags on stable compiler" [compiler-team#542](https://github.com/rust-lang/compiler-team/issues/542) 
  - "Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543)
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 3 months ago)
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) (last review activity: about 54 days ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: about 19 days ago)
- Pending FCP requests (check your boxes!)
  - "Update cc-rs to 1.0.73 for compiler + bootstrap" [rust#99477](https://github.com/rust-lang/rust/pull/99477#issuecomment-1196934940) 
- Things in FCP (make sure you're good with it)
  - "Add import_name_type parameter to #[link]" [compiler-team#525](https://github.com/rust-lang/compiler-team/issues/525) 
  - "[RFC] Support `.comment` section like GCC/Clang (`!llvm.ident`)" [rust#97550](https://github.com/rust-lang/rust/pull/97550) 
- Accepted MCPs
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386) 
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) 
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
  - "session: stabilize split debuginfo on linux" [rust#98051](https://github.com/rust-lang/rust/pull/98051) 
  - "relate `closure_substs.parent_substs()` to parent fn in NLL" [rust#98835](https://github.com/rust-lang/rust/pull/98835)

### WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/wIKuLLJlRN6_nYThJ3A37w#WG-checkins)):
  > Checkin text

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/OWb8m4-nQgeUPYyEOS7wqQ#WG-checkins)):
  > #### Most notable changes
  > 
  > - Add bootstrapping diagram [#1421](https://github.com/rust-lang/rustc-dev-guide/pull/1421)
  > - Add gdb tips for symbol-mangling-version [#1417](https://github.com/rust-lang/rustc-dev-guide/pull/1417)
  > - Add instructions to fix build errors in std after adding a new target [#1412](https://github.com/rust-lang/rustc-dev-guide/pull/1412)
  > - Add documentation about Microsoft provided debuggers and CodeView/PDB… [#1406](https://github.com/rust-lang/rustc-dev-guide/pull/1406)
  > - Document how to build a cross-compiler [#1405](https://github.com/rust-lang/rustc-dev-guide/pull/1405)
  > - sync with hackmd: Inference of opaque types (impl Trait) [#1399](https://github.com/rust-lang/rustc-dev-guide/pull/1399)
  > - Update the build instructions for the standard library [#1389](https://github.com/rust-lang/rustc-dev-guide/pull/1389)
  > 
  > #### Most notable WIPs
  > 
  > - date-check: updating-llvm [#1424](https://github.com/rust-lang/rustc-dev-guide/pull/1424)
  > - Added detail to codegen section [#1216](https://github.com/rust-lang/rustc-dev-guide/pull/1216)
  > - Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)
  > - Explain the new valtree system for type level constants. [#1097](https://github.com/rust-lang/rustc-dev-guide/pull/1097)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Iterate generics_def_id_map in reverse order to fix P-critical issue" [rust#100340](https://github.com/rust-lang/rust/pull/100340)
  - Authored by @**spastorino**
  - Fixes [rust#100340](https://github.com/rust-lang/rust/pull/100340), `P-critical` regression (was initially flagged as `P-medium`)
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler`

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Allow `impl Fn() -> impl Trait` in return position" [rust#93582](https://github.com/rust-lang/rust/pull/93582) (last review activity: 3 months ago
  - ping assigned reviewer @**nikomatsakis**
- "Add TyAlias into rustc_type_ir TyKind enum" [rust#97974](https://github.com/rust-lang/rust/pull/97974) (last review activity: about 34 days ago)
  - waiting on T-libs/T-compiler
- "Determine match_has_guard from candidates instead of looking up thir table again" [rust#99110](https://github.com/rust-lang/rust/pull/99110) (last review activity: about 30 days ago)
  - @**Wesley Wiser** was autoassigned the review. Re-roll?
- "Use niche-filling optimization even when multiple variants have data." [rust#94075](https://github.com/rust-lang/rust/pull/94075) (last review activity: about 30 days ago)
  - ping @**eddyb** (I think?) 
  - or is it waiting on [rust#98393](https://github.com/rust-lang/rust/pull/98393) merge? ([comment](https://github.com/rust-lang/rust/pull/94075#issuecomment-1172134961)) cc @**mw**
- "Extend and expose API for {:x?} and {:X?} formatting" [rust#99138](https://github.com/rust-lang/rust/pull/99138) (last review activity: about 30 days ago)
  - unsure about the status: seems more like the author needs some input? @_**Joshua Nelson** left some comments 
  - @_**kennytm** was autoassigned the review, reroll? 

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [56 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 84 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463) 
  - Will be fixed by [rust#97800](https://github.com/rust-lang/rust/pull/97800) (pr has some tests failing)
- "Regression in consteval: error[E0080]: could not evaluate static initializer (unable to turn pointer into raw bytes)" [rust#99923](https://github.com/rust-lang/rust/issues/99923)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-08-04/near/292012933) in the context of PR [rust#100229](https://github.com/rust-lang/rust/pull/100229) 
  - decided to leave #99923 both open and `P-critical`

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Source of lifetime coercion is not reported starting in 1.63" [rust#99256](https://github.com/rust-lang/rust/issues/99256) 
  - @**Esteban Küber** pinged @_*WG-diagnostics*
  - issue without assignee yet 

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "`for<'a> &'a T: 'a` and closures regressed" [rust#98437](https://github.com/rust-lang/rust/issues/98437) 
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-08-04/near/292017768) and re-assigned to `T-types`
  - slips into beta? change regression label?

## Performance logs

> [triage logs for 2022-08-09](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-08-09.md)

A pretty quiet week for performance. Unfortunately, by far the biggest change was a regression introduced by increasing the minimum libc version for linux-gnu targets. The exact reason for why this happened in this case is unclear, and it's not easy to investigate. Luckily, the average regression introduced by this change was 0.4% which is fairly small, and many of the larger regressions were limited to doc builds.

Triage done by **@rylev**.
Revision range: [792bc5a0..cc4dd6fc](https://perf.rust-lang.org/?start=792bc5a0102d0973d42183a2b267850bb905236f&end=cc4dd6fc9f1a5c798df269933c7e442b79661a86&absolute=false&stat=instructions%3Au)

**Summary**:

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 1.4%  | 146   |
| Regressions (secondary)  | 0.8%  | 1.6%  | 78    |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -2.0% | -4.0% | 9     |
| All  (primary)           | 0.5%  | 1.4%  | 146   |


1 Regressions, 2 Improvements, 2 Mixed; 1 of them in rollups
42 artifact comparisons made in total

#### Regressions

Increase the minimum linux-gnu versions [#95026](https://github.com/rust-lang/rust/pull/95026) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f6f9d5e73d5524b6281c10a5c89b7db35c330634&end=2da8820470817bfd3053be969fb38be9645e1a3d&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.4%  | 1.6%  | 137   |
| Regressions (secondary)  | 0.7%  | 1.6%  | 65    |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -0.6% | -0.6% | 2     |
| All  (primary)           | 0.4%  | 1.6%  | 137   |
- This is difficult to debug as there was no change to code in the project, just in how things are built.
- Most of the larger regressions are in doc builds where we have slightly higher tolerance for performance issues. 
- This means the regressions are something we can probably live with.


#### Improvements

remove `commit_unconditionally` [#99509](https://github.com/rust-lang/rust/pull/99509) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e4417cf020fbcd6182c11637bc6b8694434bd81a&end=b759b2efad2d9c713eeab19bf90736a12ff0d74c&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.5% | -1.0% | 8     |
| Improvements (secondary) | -0.8% | -0.8% | 1     |
| All  (primary)           | -0.5% | -1.0% | 8     |


Rollup of 6 pull requests [#100304](https://github.com/rust-lang/rust/pull/100304) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8d1fa7105b2ad3154f63d8f0641fd7da87e20e8f&end=5af97e8b0b9649ed14b0b4528a610ff841b6365e&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 1.5%  | 1.5%  | 1     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -1.9% | -4.0% | 13    |
| All  (primary)           | N/A   | N/A   | 0     |


#### Mixed

Warn about dead tuple struct fields [#95977](https://github.com/rust-lang/rust/pull/95977) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cdfd675a63090182fd1c5f2ff58d8eaa115da156&end=9bbbf60b0442f1d56fc39f30274be77acc79164c&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 1.2%  | 1.5%  | 3     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -1.4% | -1.6% | 6     |
| All  (primary)           | N/A   | N/A   | 0     |
- The regressions are only in secondary tests and are more or less a wash (tipping slightly towards more improvements)


Add option to `mir::MutVisitor` to not invalidate CFG. [#100089](https://github.com/rust-lang/rust/pull/100089) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5af97e8b0b9649ed14b0b4528a610ff841b6365e&end=cc4dd6fc9f1a5c798df269933c7e442b79661a86&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.3%  | 0.4%  | 3     |
| Regressions (secondary)  | 1.3%  | 1.5%  | 6     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -1.5% | -1.5% | 1     |
| All  (primary)           | 0.3%  | 0.4%  | 3     |
- This is a small enough regression that I don't think we need to investigate it deeply.
- It seems there's more calls in type unification, but I don't see how this change would impact that. 
- Left [a comment on the PR](https://github.com/rust-lang/rust/pull/100089#issuecomment-1209611594)


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "compiletest: use target cfg instead of hard-coded tables" [rust#100260](https://github.com/rust-lang/rust/pull/100260)
  - nominated by @**simulacrum** for awareness of the team

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-traits* Impl Trait initiative by @**oli**
- @_*WG-llvm* LLVM by @**nagisa** and @**Nikita Popov**
