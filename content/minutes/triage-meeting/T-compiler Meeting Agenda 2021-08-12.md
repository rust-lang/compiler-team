---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-08-12

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- New MCPs (take a look, see if you like them!)
  - "Add `TyKind::Const` and remove `GenericArgKind::Const`" [compiler-team#453](https://github.com/rust-lang/compiler-team/issues/453) 
- Old MCPs (not seconded, take a look)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396) (last comments: GH 7m ago, Zulip 4d ago)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last comments: GH 6m ago, Zulip 43d ago)
  - "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437) (last comments: GH 2m ago, Zulip 49d ago)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last comments: GH 49d ago, Zulip none)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last comments: GH 34d ago, Zulip 52d ago)
  - "Non exhaustive reachable patterns lint" [compiler-team#445](https://github.com/rust-lang/compiler-team/issues/445) (last comments: GH 28d ago, Zulip 20d ago)
  - "Make `resolve_instance` fallible" [compiler-team#449](https://github.com/rust-lang/compiler-team/issues/449) (last comments: GH 10d ago, Zulip none)
  - "Reproducible command line + determinism" [compiler-team#450](https://github.com/rust-lang/compiler-team/issues/450) (last comments: GH 9d ago, Zulip 11d ago)
  - "Make AST->HIR lowering incremental" [compiler-team#452](https://github.com/rust-lang/compiler-team/issues/452) (last comment: GH 10 days ago, Zulip None)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431) 
  - "Preserve, clarify, and extend debug information" [rust#83947](https://github.com/rust-lang/rust/pull/83947) 
- Things in FCP (make sure you're good with it)
  - "Rename various internal things" [compiler-team#451](https://github.com/rust-lang/compiler-team/issues/451) 
- Accepted MCPs
  - "Don't abort compilation after giving a lint error" [compiler-team#447](https://github.com/rust-lang/compiler-team/issues/447) 
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

@*WG-rfc-2229* by @**Aman Arora** 
> We have mostly been working mostly just been on bug fixes as more people try 2021 edition

@*WG-rls2.0* by @**matklad** ([latest report](https://hackmd.io/zhv96UdPQI-HI9BlW0XuTw))

Steering issue covered by this checkin:

* https://github.com/rust-analyzer/rust-analyzer/issues/9580

This has been mostly reactive sprint. I don't think we did anything super "big" this time, but we shipped a lot new features, fixed a bunch of bad bugs, and did some observability improvements (eg, we now know that roughly 2/3 of code is source code, and 1/3 is macro-generated code).

One interesting big thing is that we realized that we've used a wrong model for macro expansion this whole time: https://github.com/rust-analyzer/rust-analyzer/issues/9403

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Always preserve sub-obligations in the projection cache" [rust#85868](https://github.com/rust-lang/rust/pull/85868) 
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-29.20.2354818/near/247588561)
  - @**Wesley Wiser** [comments](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-29.20.2354818/near/247588679) this should reviewed & merged on nightly before we talk about beta backports
  - @**pnkfelix** [comments](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-29.20.2354818/near/247588695): also premature to discuss beta
- :beta: "Do not ICE on HIR based WF check when involving lifetimes"
[rust#87811](https://github.com/rust-lang/rust/pull/87811) 
  - Fixes [#87549](https://github.com/rust-lang/rust/issues/87549) (a regression causing a ICE on incoreect code compiled with `incremental=true`)
  - PR provided by @**Esteban Küber** and nominated for backport
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Encode spans relative to the enclosing item" [rust#84373](https://github.com/rust-lang/rust/pull/84373)
  - opened by @**cjgillot** 
  - assigned to @**Aaron Hill** @**mw** @**Vadim Petrochenkov**
  - @**cjgillot** opened [MCP #443](https://github.com/rust-lang/compiler-team/issues/443) (currently in closing FCP phase)
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-22.20.2354818/near/246853451), @*wg-incr-comp* could have a discussion about this after the 1.54 release and the next beta cut
- "Remove all json handling from rustc_serialize" [rust#85993](https://github.com/rust-lang/rust/pull/85993) 
  - PR nominated for discussion (see nominations)
- "Preserve, clarify, and extend debug information" [rust#83947](https://github.com/rust-lang/rust/pull/83947)
  - @**Vadim Petrochenkov** added more comments labeled with `S-waiting-on-team`

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [85 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [57 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 4 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 49 P-high, 81 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "ICE: unexpected concrete region in borrowck: ReStatic" [rust#87455](https://github.com/rust-lang/rust/issues/87455) 
  - opened by @**Eric Huss**
  - needs [rust#87483](https://github.com/rust-lang/rust/pull/87483) to be backported (was beta-accepted [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-08-05.20.2354818/near/248489051))

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-08-11](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-08-11.md)

A quiet week for performance. Changes, both positive and negative, tended to be isolated to few benchmarks.

Triage done by **@pnkfelix**.
Revision range: [3354a44d2fa8d5ba6b8d6b40d2596de2c8292ec1..6b20506d17f4e5e5bf5bcad7e94add4d754b0ae3](https://perf.rust-lang.org/?start=3354a44d2fa8d5ba6b8d6b40d2596de2c8292ec1&end=6b20506d17f4e5e5bf5bcad7e94add4d754b0ae3&absolute=false&stat=instructions%3Au)

2 Regressions, 1 Improvements, 0 Mixed; 0 of them in rollups

#### Regressions

Use zeroed allocations in the mir interpreter instead eagerly touching the memory [#87777](https://github.com/rust-lang/rust/issues/87777)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1f94abcda6884893d4723304102089198caa0839&end=4c29cc8fd09889880880cb6081174c79744ab1b6&stat=instructions:u) (up to 1.7% on `incr-unchanged` builds of `ctfe-stress-4-check`)
- The motivation for this PR was to reduce the number of page faults, for the same family of ctfe-stress-4 benchmarks.
- So, perf runs were done on the PR itself, to illustrate the motivated change.
- The number of page faults [did decrease (by up to 25%)](https://perf.rust-lang.org/compare.html?start=1f94abcda6884893d4723304102089198caa0839&end=4c29cc8fd09889880880cb6081174c79744ab1b6&stat=faults).
- The regression with respect to instruction counts appears isolated to just the ctfe-stress-4 family; the page fault reduction outweighs instruction count hit.
- (Unfortunately the page fault decrease did not yield a corresponding improvement to reported wall-clock or task-clock times.)

Hide allocator details from TryReserveError [#87408](https://github.com/rust-lang/rust/issues/87408)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=db3cb435c1197ef3e3919c03b7f81ca8bffbd007&end=996ff2e0a0f911f52bb1de6bdd0cfd5704de1fc9&stat=instructions:u) (up to 4.2% on `full` builds of `html5ever-opt`)
- The regression with respect to instruction counts appears isolated to just the html5ever-opt benchmark; all other reported changes pale in significance.
- Potentially significant: the max-rss for html5ever-opt also regressed here, by 8%.
- (Skimming over the PR itself, I do not see any obvious reason for this significant of a regression to max-rss.)
- Some other benchmarks also regressed with respect to max-rss, but none so significantly.
- Left a [comment on the PR](https://github.com/rust-lang/rust/pull/87408#issuecomment-896924754) as a heads up.

#### Improvements

- #[inline] slice::Iter::advance_by [#87736](https://github.com/rust-lang/rust/issues/87736)

#### Mixed

None

#### Untriaged Pull Requests

- [#87640 Rollup of 9 pull requests](https://github.com/rust-lang/rust/pull/87640)
- [#87587 Various refactorings of the TAIT infrastructure](https://github.com/rust-lang/rust/pull/87587)
- [#87244 Better diagnostics with mismatched types due to implicit static lifetime](https://github.com/rust-lang/rust/pull/87244)
- [#86777 Include terminators in instance size estimate](https://github.com/rust-lang/rust/pull/86777)
- [#86698 Move OnDiskCache to rustc_query_impl.](https://github.com/rust-lang/rust/pull/86698)
- [#86588 Rollup of 8 pull requests](https://github.com/rust-lang/rust/pull/86588)
- [#86034 Change entry point to 🛡️ against 💥 💥-payloads](https://github.com/rust-lang/rust/pull/86034)
- [#84560 Inline Iterator as IntoIterator.](https://github.com/rust-lang/rust/pull/84560)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Remove all json handling from rustc_serialize" [rust#85993](https://github.com/rust-lang/rust/pull/85993)
  - Nominated by @**Aaron Hill**  to point out that [a broader discussion is needed](https://github.com/rust-lang/rust/pull/85993#issuecomment-894686998)
  - @**oli** [suggests an MCP](https://github.com/rust-lang/rust/pull/85993#issuecomment-895309985)
- "Binary size is significant increased from `1.46.0` to `1.51.0`" [rust#86610](https://github.com/rust-lang/rust/issues/86610) 
  - Added an action item on [HackMD](https://hackmd.io/5BtjuenFTn6M74IDwLOjgw), needs an owner

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "[RFC2603] Extend `<const>` to include `str` and structural constants." [rfcs#3161](https://github.com/rust-lang/rfcs/pull/3161)
  - nominated by @**eddyb** 
  - [review and concerns](https://github.com/rust-lang/rfcs/pull/3161#issuecomment-896587191)