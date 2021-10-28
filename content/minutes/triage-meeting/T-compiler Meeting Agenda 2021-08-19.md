---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-08-19

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Steering meeting on <time:2021-08-20T10:00:00-04:00> to discuss how to increase the number of reviewers available to handle the review queue load. ([Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Review.20assignments.20steering.20meeting))

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "prefer-dynamic=subset" [compiler-team#455](https://github.com/rust-lang/compiler-team/issues/455) 
- Old MCPs (not seconded, take a look)
  -  "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396) (last comments: GH 7m ago, Zulip 12d ago)
  -  "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last comments: GH 6m ago, Zulip 50d ago)
  -  "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437) (last comments: GH 2m ago, Zulip 49d ago)
  -  "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last comments: GH 49d ago, Zulip none)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last comments: GH 48d ago, Zulip 59d ago)
  -  "Non exhaustive reachable patterns lint" [compiler-team#445](https://github.com/rust-lang/compiler-team/issues/445) (last comments: GH 28d ago, Zulip 20d ago)
  -  "Make `resolve_instance` fallible" [compiler-team#449](https://github.com/rust-lang/compiler-team/issues/449) (last comments: GH 18d ago, Zulip none)
  -  "Add `TyKind::Const` and remove `GenericArgKind::Const`" [compiler-team#453](https://github.com/rust-lang/compiler-team/issues/453) (last comment: GH none, Zulip yesterday)
- Pending FCP requests (check your boxes!)
  -  "Reproducible command line + determinism" [compiler-team#450](https://github.com/rust-lang/compiler-team/issues/450)
  -  "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431) 
  -  "Extend `-Cdebuginfo` with new options and named aliases" [rust#83947](https://github.com/rust-lang/rust/pull/83947) 
- Things in FCP (make sure you're good with it)
  -  "Make AST->HIR lowering incremental" [compiler-team#452](https://github.com/rust-lang/compiler-team/issues/452) 
- Accepted MCPs
  -  "Rename various internal things" [compiler-team#451](https://github.com/rust-lang/compiler-team/issues/451) 
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

@*WG-self-profile* by @**mw** @**Wesley Wiser** ([previous checkin](https://hackmd.io/tuLB5d6ETKCZGS3cpzzRiA#WG-checkins))
> @rylev and @**mw** are slowly working towards being able to record non-timestamp data like the sizes of files that the compiler emits -- e.g. object files and incr. comp. on-disk data. @**Wesley Wiser** is doing the reviewing. We should have something to show by the next checkin :)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Always preserve sub-obligations in the projection cache" [rust#85868](https://github.com/rust-lang/rust/pull/85868) 
  - @**pnkfelix** self-assigned to find another reviewer
  - feedback from @Jack Huey on it to @Aaron Hill. But Jack also said they would not be comfortable reviewing without at least some support from e.g. @nikomatsakis (perhaps during one of Niko's office times)
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Extend `-Cdebuginfo` with new options and named aliases" [rust#83947](https://github.com/rust-lang/rust/pull/83947)
  - opened by @**Julia Tatz**
  - assigned and reviewed by @**nagisa** and @**Vadim Petrochenkov**
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-08-12.20.2354818/near/249241832)
  - [decided to pass this through an FCP](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-08-12.20.2354818/near/249242280) but author didn't respond
- "Encode spans relative to the enclosing item" [rust#84373](https://github.com/rust-lang/rust/pull/84373) 
  - opened by @**cjgillot** 
  - assigned to @**Vadim Petrochenkov**
  - pending wg-incr-comp discussion
- "Remove all json handling from rustc_serialize" [rust#85993](https://github.com/rust-lang/rust/pull/85993) 
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-08-12.20.2354818/near/249240458), we'd like to have @**Vadim Petrochenkov** and @**cjgillot** in the loop

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler
+label%3AP-critical+no%3Aassignee)
- [83 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [56 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 49 P-high, 81 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "LLVM crash: Basic Block does not have terminator!" [rust#88043](https://github.com/rust-lang/rust/issues/88043)
  - opened by @**David Tolnay** 
  - seems caused by [rust#83417](https://github.com/rust-lang/rust/pull/83417) cc: @**oli**, suggests a quick revert and then look at this again without pressure
  - @**david tolnay** also [points out](https://github.com/rust-lang/rust/issues/88043#issuecomment-900517377) relation with [rust#88043](https://github.com/rust-lang/rust/issues/88043#issuecomment-900517377)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "ICE: unexpected concrete region in borrowck: ReStatic" [rust#87455](https://github.com/rust-lang/rust/issues/87455) 
  - regression in crate run for 1.55, manifested in a [couple of issues](https://github.com/rust-lang/rust/issues/87455#issuecomment-897891685)
  - @**pnkfelix** self-assigned to backport [rust#87843](https://github.com/rust-lang/rust/pull/87483)
- "ICE: unexpected concrete region in borrowck: ReEarlyBound(0, 'a)" [rust#83190](https://github.com/rust-lang/rust/issues/83190) 
  - assigned same `P-high` as sibling [rust#87455](https://github.com/rust-lang/rust/issues/87455) :point_up_2: 

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-08-17](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-08-17.md)

A fairly busy week which was to expected given that we've [adjusted our algorithm](https://github.com/rust-lang/rustc-perf/pull/956) for whether we label a change as a regression or not. Most regressions were relatively small, and only one has not yet been addressed in some way.

Triage done by **@rylev**.
Revision range: [6b20506d17f4e5e5bf5bcad7e94add4d754b0ae3..aa8f27bf4d980023a8b245ceb25a490a18041eb2](https://perf.rust-lang.org/?start=6b20506d17f4e5e5bf5bcad7e94add4d754b0ae3&end=aa8f27bf4d980023a8b245ceb25a490a18041eb2&absolute=false&stat=instructions%3Au)
59 comparisons made in total

3 Regressions, 2 Improvements, 2 Mixed; 0 of them in rollups

#### Regressions

encode `generics_of` for fields and ty params [#87815](https://github.com/rust-lang/rust/issues/87815)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2d10c2a3302d53e10a4ad3ac581103faaae9eeb6&end=c4c2986c499ee9440b7ae23bf5a62c6168e1ce17&stat=instructions:u) (up to 1.2% on `incr-unchanged` builds of `diesel`)
- While the regressions are fairly small, the largest ones seem to be happening in real-world crates like diesel, serde, and futures. 
- The largest regressions seem to be in the `explicit_predicates_of` query which would seem to be directly impacted by this change.
- Left a [comment](https://github.com/rust-lang/rust/pull/87815#issuecomment-900465263) to see how we should address this issue. 


Various refactorings of the TAIT infrastructure [#87587](https://github.com/rust-lang/rust/issues/87587)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=47b41b7788a6f85c749049062f1e4eed497cd894&end=d488de82f30fd1dcb0220d57498638596622394e&stat=instructions:u) (up to 1.5% on `full` builds of `inflate`)
- The issue is [expected](https://github.com/rust-lang/rust/pull/87587#issuecomment-896754235) and is being monitored with a possible solution in the works.


Name the captured upvars for closures/generators in debuginfo [#85020](https://github.com/rust-lang/rust/issues/85020)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c6094fc7b9981d755abeb8c0e866a0f6315b3ec3&end=99efc51dae1dbe9d741707a7ddef84c29e654df5&stat=instructions:u) (up to 4.9% on `incr-patched: println` builds of `webrender-wrench`)
- This is a large regression in one benchmark, but it seems to be in codegen which this change would impact. 
- [There is a comment](https://github.com/rust-lang/rust/pull/85020#issuecomment-898823772) justifying this as concerning but worth it given it only impacts one benchmark. I still believe this might be one worth keeping an eye on.

#### Improvements

- Avoid using the `copy_nonoverlapping` wrapper through `mem::replace`. [#87827](https://github.com/rust-lang/rust/issues/87827)
- Run RemoveZsts pass at mir-opt-level=1 [#83417](https://github.com/rust-lang/rust/issues/83417)

#### Mixed

Introduce `hir::ExprKind::Let` - Take 2 [#80357](https://github.com/rust-lang/rust/issues/80357)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=2bd17c1d43bba43412cc2f051323a279d6751e43&end=2a6fb9a4c0e5ca7a81999065943b211c226fe9d8&stat=instructions:u) (up to -2.1% on `incr-patched: println` builds of `webrender`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2bd17c1d43bba43412cc2f051323a279d6751e43&end=2a6fb9a4c0e5ca7a81999065943b211c226fe9d8&stat=instructions:u) (up to 0.7% on `full` builds of `cranelift-codegen`)


BTree: merge the complication introduced by #81486 and #86031 [#87696](https://github.com/rust-lang/rust/issues/87696)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=2a6fb9a4c0e5ca7a81999065943b211c226fe9d8&end=23461b210f1b0a121592a18fc4fb666106006668&stat=instructions:u) (up to -0.6% on `full` builds of `issue-46449`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2a6fb9a4c0e5ca7a81999065943b211c226fe9d8&end=23461b210f1b0a121592a18fc4fb666106006668&stat=instructions:u) (up to 1.7% on `full` builds of `ripgrep`)
- This is mostly a wash in terms of performance (with performance shifting somewhat equally across all the benchmarks), with the largest changes happening in stress tests.


#### Untriaged Pull Requests

- [#87640 Rollup of 9 pull requests](https://github.com/rust-lang/rust/pull/87640)
- [#87587 Various refactorings of the TAIT infrastructure](https://github.com/rust-lang/rust/pull/87587)
- [#87244 Better diagnostics with mismatched types due to implicit static lifetime](https://github.com/rust-lang/rust/pull/87244)
- [#86777 Include terminators in instance size estimate](https://github.com/rust-lang/rust/pull/86777)
- [#86698 Move OnDiskCache to rustc_query_impl.](https://github.com/rust-lang/rust/pull/86698)
- [#86588 Rollup of 8 pull requests](https://github.com/rust-lang/rust/pull/86588)
- [#86034 Change entry point to shield against exploding payloads](https://github.com/rust-lang/rust/pull/86034)
- [#84560 Inline Iterator as IntoIterator.](https://github.com/rust-lang/rust/pull/84560)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Remove all json handling from rustc_serialize" [rust#85993](https://github.com/rust-lang/rust/pull/85993)
  - discussed in `S-waiting-on-team`
- "Binary size is significant increased from `1.46.0` to `1.51.0`" [rust#86610](https://github.com/rust-lang/rust/issues/86610)
  - Has action item on [HackMD](https://hackmd.io/5BtjuenFTn6M74IDwLOjgw) to add binary size tracking to perf.rlo, needs an owner

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "[RFC2603] Extend `<const>` to include `str` and structural constants." [rfcs#3161](https://github.com/rust-lang/rfcs/pull/3161)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-08-12.20.2354818/near/249243501)
  - @**mw** [suggested](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-08-12.20.2354818/near/249247119) to merge the current implementation, not the RFC, and gather real-world data
  - still needs discussion or `I-nominated` can be removed?

