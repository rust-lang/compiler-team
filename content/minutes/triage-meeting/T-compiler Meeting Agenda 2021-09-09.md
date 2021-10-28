---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-09-09

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :tada: Today 9/9th, release Rust stable 1.55 :tada:

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last comment: GH none, Zulip: none)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last comment: GH  20d ago, Zulip: 1w ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last comment: 2 months ago)
  - "Non exhaustive reachable patterns lint" [compiler-team#445](https://github.com/rust-lang/compiler-team/issues/445) (last comment: GH none, Zulip about a month ago)
  - "Add `TyKind::Const` and remove `GenericArgKind::Const`" [compiler-team#453](https://github.com/rust-lang/compiler-team/issues/453) (last comment: GH None, Zulip about 2 weeks ago)
  - "prefer-dynamic=subset" [compiler-team#455](https://github.com/rust-lang/compiler-team/issues/455) (last comment: GH none, Zulip 2 days ago)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431) 
- Things in FCP (make sure you're good with it)
  - "Add `TerminatorKind::Box` to MIR" [compiler-team#460](https://github.com/rust-lang/compiler-team/issues/460) 
- Accepted MCPs
  - "Transfer `rustc-demangle` to the @rust-lang GitHub org." [compiler-team#456](https://github.com/rust-lang/compiler-team/issues/456) 
  - "Add the `-Z randomize-layout` flag" [compiler-team#457](https://github.com/rust-lang/compiler-team/issues/457) 
  - "Add `m68k-unknown-linux-gnu` as new Tier 3 backend" [compiler-team#458](https://github.com/rust-lang/compiler-team/issues/458)
- Finalized FCPs (disposition merge)
  - "Stabilize "force warn" option " [rust#86516](https://github.com/rust-lang/rust/issues/86516) 
  - "Support `#[track_caller]` on closures and generators" [rust#87064](https://github.com/rust-lang/rust/pull/87064) 
  - "stabilize disjoint capture in closures (RFC 2229)" [rust#88126](https://github.com/rust-lang/rust/issues/88126) 
  - "Stabilize reserved prefixes" [rust#88140](https://github.com/rust-lang/rust/issues/88140) 

### WG checkins

@*wg-incr-comp* by @**pnkfelix** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/QCs_hIbpTbKgcSy-0V0Liw)):
> On 20 Aug, wesleywiser mw and pnkfelix met with cjgillot to discuss PR #84373
> It was productive in getting things unblocked, and we hope to have more meetings and progress in the future.
 
@*WG-llvm* by @**nagisa** ([previous checkin](https://hackmd.io/QCs_hIbpTbKgcSy-0V0Liw)):
> There was recently a bump to [LLVM 13](https://github.com/rust-lang/rust/pull/87570), with all of the associated fallout and fixes. There's also an effort to enable the [new pass manager by default](https://github.com/rust-lang/rust/pull/88243). This pass manager takes a different tradeoff between space and time, and as a result rustc would use more memory but also optimize code faster.
> In some other news:
>* we're considering using the `object` crate in more places to replace some artifact writing functionality we currently use from LLVM.
>* The work towards type-less pointer support has largely happened to the extent it is enabled by LLVM 13.
>* Support for LLVM 10 will likely be dropped in the near future, making LLVM 11 the oldest supported version.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Preserve most sub-obligations in the projection cache" [rust#85868](https://github.com/rust-lang/rust/pull/85868)
  - Team is inclined to r+ this, perf regressions are already triaged (necessary for correctness)
  - @**Jack Huey** [commented last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-09-02.20.2354818/near/251720629) that the code needs a comment
- :beta: "2229: Don't move out of drop type" [rust#88477](https://github.com/rust-lang/rust/pull/88477) 
  - Fixes [rust#88476](https://github.com/rust-lang/rust/issues/88476) (Rust 2021 related)
  - reviewed by @**Gary Guo**
  - [approved by all team members](https://github.com/rust-lang/rust/pull/88477#issuecomment-912577175)
- :beta: "Fix 2021 `dyn` suggestion that used code as label" [rust#88657](https://github.com/rust-lang/rust/pull/88657)
  - opened by @**Noah Lev** 
  - assigned for review to @**Mara** 
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Perform type inference in range pattern" [rust#88090](https://github.com/rust-lang/rust/pull/88090) 
  - opened by @**Gary Guo**
  - fixes [rust#88074](https://github.com/rust-lang/rust/issues/88074)
  - @**Esteban Küber** left some comments
  - @**Jack Huey** [I-nominated](https://github.com/rust-lang/rust/pull/88090#issuecomment-914580827) for `T-lang`

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Replace dominators algorithm with simple Lengauer-Tarjan" [rust#85013](https://github.com/rust-lang/rust/pull/85013) (last comment: 3 months ago)
  - Question from @**apiraino**: why people from wg-triage have been removing and adding `S-waiting-for-review` for the last 2 months? Is it meant to emit a "ping" reminder?
- "Refactor query forcing" [rust#78780](https://github.com/rust-lang/rust/pull/78780) (last comment: 3 months ago)
  - assigned to @**Wesley Wiser**
  - [Perf run results](https://github.com/rust-lang/rust/pull/78780#issuecomment-905701857): no runtime modification, and -8% on `rustc_query_impl` compile time 
- "Update the x86_64-unknown-l4re-uclibc tier 3 target" [rust#85967](https://github.com/rust-lang/rust/pull/85967) (last comment: 3 months ago)
  - [There is a review](https://github.com/rust-lang/rust/pull/85967#pullrequestreview-680959056) from June from @**Vadim Petrochenkov** which might need some discussion 
- "Add basic checks for well-formedness of `fn`/`fn_mut` lang items" [rust#86246](https://github.com/rust-lang/rust/pull/86246) (last comment: 2 months ago)
- "Emit clearer diagnostics for parens around `for` loop heads" [rust#86422](https://github.com/rust-lang/rust/pull/86422) (last comment: 2 months ago)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [77 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 46 P-high, 81 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Type called union wreaks havoc since 1.54" [rust#88583](https://github.com/rust-lang/rust/issues/88583) 
  - opened by @**David Tolnay** 
  - [@**Josh Triplett** and  @**pnkfelix** discussed](https://github.com/rust-lang/rust/issues/88583#issuecomment-914482165)
  - they agree that a revert of [rust#84571](https://github.com/rust-lang/rust/pull/84571) is needed
  - nominated to get attention on this revert

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-09-7](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-09-07.md)

A busy week, with lots of mixed changes, though in the end only a few were deemed significant enough to report here.

Triage done by **@pnkfelix**. 3 Regressions, 1 Improvements, 3 Mixed; 0 of them in rollups
57 comparisons made in total

#### Regressions

Shrink Session a bit [#88530](https://github.com/rust-lang/rust/issues/88530)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=64929313f53181636e4dd37e25836973205477e4&end=fcce644119cf4e8e36001368e514bb5ed67cb855&stat=instructions:u) (up to 2.6% on `full` builds of `deeply-nested-async`)

Concrete regions can show up in mir borrowck if the originated from there [#88533](https://github.com/rust-lang/rust/issues/88533)
- Very small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=29ef6cf1637aa8317f8911f93f14e18d404c1b0e&end=a3956106d12cebec91be0637759e29ab6908b4cd&stat=instructions:u) (up to 1.0% on `incr-patched: add static arr item` builds of `coercions`)
- This is a small regression to `coercions` and that may be noise. However, there are many others that are over 0.4% regression to instruction counts. The combination of those two factors led pnkfelix to think that we may want to take a second look at the effects of this PR.

Introduce `let...else` [#87688](https://github.com/rust-lang/rust/issues/87688)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=a3956106d12cebec91be0637759e29ab6908b4cd&end=c2a408840ad18f74280805535f0b7193528ff3df&stat=instructions:u) (up to -0.3% on `incr-unchanged` builds of `deeply-nested-closures`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a3956106d12cebec91be0637759e29ab6908b4cd&end=c2a408840ad18f74280805535f0b7193528ff3df&stat=instructions:u) (up to 0.4% on `full` builds of `issue-46449`)
- Small regression (approximately 1%) in instruction counts on several of the `*-doc` tests, found via human eye.

#### Improvements

- Move global analyses from lowering to resolution [#88597](https://github.com/rust-lang/rust/issues/88597)

#### Mixed

Preserve most sub-obligations in the projection cache [#85868](https://github.com/rust-lang/rust/issues/85868)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b834c4c1bad7521af47f38f44a4048be0a1fe2ee&end=371f3cd3fe523d0b398ed1db1620667c53ba7d02&stat=instructions:u) (up to -6.9% on `incr-unchanged` builds of `deeply-nested`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=b834c4c1bad7521af47f38f44a4048be0a1fe2ee&end=371f3cd3fe523d0b398ed1db1620667c53ba7d02&stat=instructions:u) (up to 9.4% on `full` builds of `deeply-nested`)


BTreeMap/BTreeSet::from_iter: use bulk building to improve the performance [#88448](https://github.com/rust-lang/rust/issues/88448)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=11bbb5231349a0a144d86d5c0c21061a06d1969d&end=ffaf857045f4f4d8bb563e0a5077f9b065f42916&stat=instructions:u) (up to -3.0% on `full` builds of `inflate`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=11bbb5231349a0a144d86d5c0c21061a06d1969d&end=ffaf857045f4f4d8bb563e0a5077f9b065f42916&stat=instructions:u) (up to 4.5% on `incr-patched: println` builds of `clap-rs`)

Avoid invoking the hir_crate query to traverse the HIR [#88435](https://github.com/rust-lang/rust/issues/88435)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=e30b68353fe22b00f40d021e7914eeb78473b3c1&end=7849e3e9dda60e8ec826ee245c6b180e73911b37&stat=instructions:u) (up to -1.2% on `incr-patched: add static arr item` builds of `coercions`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e30b68353fe22b00f40d021e7914eeb78473b3c1&end=7849e3e9dda60e8ec826ee245c6b180e73911b37&stat=instructions:u) (up to 0.5% on `incr-unchanged` builds of `helloworld`)
- pnkfelix included this one as notable largely because the expected perf changes from [the actual PR](https://github.com/rust-lang/rust/pull/88435#issuecomment-907700333) largely showed slight improvements across the board, while after it landed on nightly, it is best categorized as "Mixed"

#### Untriaged Pull Requests

- [#88597 Move global analyses from lowering to resolution](https://github.com/rust-lang/rust/pull/88597)
- [#88552 Stop allocating vtable entries for non-object-safe methods](https://github.com/rust-lang/rust/pull/88552)
- [#88312 Treat types in unnormalized function signatures as well-formed](https://github.com/rust-lang/rust/pull/88312)
- [#87815 encode `generics_of` for fields and ty params](https://github.com/rust-lang/rust/pull/87815)
- [#87781 Remove box syntax from compiler and tools](https://github.com/rust-lang/rust/pull/87781)
- [#87640 Rollup of 9 pull requests](https://github.com/rust-lang/rust/pull/87640)
- [#87587 Various refactorings of the TAIT infrastructure](https://github.com/rust-lang/rust/pull/87587)
- [#87570 Upgrade to LLVM 13](https://github.com/rust-lang/rust/pull/87570)
- [#87244 Better diagnostics with mismatched types due to implicit static lifetime](https://github.com/rust-lang/rust/pull/87244)
- [#86898 Add fast path for Path::cmp that skips over long shared prefixes](https://github.com/rust-lang/rust/pull/86898)
- [#86777 Include terminators in instance size estimate](https://github.com/rust-lang/rust/pull/86777)
- [#86698 Move OnDiskCache to rustc_query_impl.](https://github.com/rust-lang/rust/pull/86698)
- [#86588 Rollup of 8 pull requests](https://github.com/rust-lang/rust/pull/86588)
- [#86034 Change entry point to 🛡️ against 💥 💥-payloads](https://github.com/rust-lang/rust/pull/86034)
- [#85556 Warn about unreachable code following an expression with an uninhabited type](https://github.com/rust-lang/rust/pull/85556)
- [#84560 Inline Iterator as IntoIterator.](https://github.com/rust-lang/rust/pull/84560)
- [#83302 Get piece unchecked in `write`](https://github.com/rust-lang/rust/pull/83302)


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Perform type inference in range pattern" [rust#88090](https://github.com/rust-lang/rust/pull/88090)
  - (see `S-waiting-on-team`)
- "Type called union wreaks havoc since 1.54" [rust#88583](https://github.com/rust-lang/rust/issues/88583) 
  - (see `P-critical` list)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
