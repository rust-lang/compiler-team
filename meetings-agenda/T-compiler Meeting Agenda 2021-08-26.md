---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-08-26

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow at <time:2021-08-27T10:00:00-04:00> **Compiler Team Planning meeting** ([link](https://forge.rust-lang.org/compiler/steering-meeting.html))
- Tomorrow from <time:2021-08-27T10:00:00-04:00> until <time:2021-08-27T14:00:00-04:00> **Polonius Hackathon** on #**t-compiler/wg-polonius**, [google meet link](meet.google.com/szw-fqkz-qwu)
- `T-compiler` agenda now has a new section: the 5 most recently updated PRs waiting for review (thanks @**Santiago Pastorino** for contributing the patch and @**inquisitivecrystal** for assigning the team label to most of them. [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bsteering.20meeting.5D.202021-08-20.20compiler-team.23446/near/250124654).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396) (last comment: GH 7m ago, Zulip 17d ago)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last comment: GH 6m ago, Zulip 2m ago)
  - "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437) (last comment: GH 2m ago, Zulip 2m ago)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last comment: GH 2m days ago, Zulip None)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last comment: GH about 2m ago, Zulip 2m ago)
  - "Non exhaustive reachable patterns lint" [compiler-team#445](https://github.com/rust-lang/compiler-team/issues/445) (last comment: GH about 40 days ago, Zulip 20d ago)
  - "Add `TyKind::Const` and remove `GenericArgKind::Const`" [compiler-team#453](https://github.com/rust-lang/compiler-team/issues/453) (last comment: GH about 6d ago, Zulip 10d ago)
  - "prefer-dynamic=subset" [compiler-team#455](https://github.com/rust-lang/compiler-team/issues/455) (last comment: GH about 6d ago, Zulip 8d ago)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431) 
- Things in FCP (make sure you're good with it)
  - "Make `resolve_instance` fallible" [compiler-team#449](https://github.com/rust-lang/compiler-team/issues/449) 
  - "Reproducible command line + determinism" [compiler-team#450](https://github.com/rust-lang/compiler-team/issues/450) 
  - "Make AST->HIR lowering incremental" [compiler-team#452](https://github.com/rust-lang/compiler-team/issues/452) 
  - "Transfer `rustc-demangle` to the @rust-lang GitHub org." [compiler-team#456](https://github.com/rust-lang/compiler-team/issues/456) 
  - "Extend `-Cdebuginfo` with new options and named aliases" [rust#83947](https://github.com/rust-lang/rust/pull/83947) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @*WG-async-foundations* by @**nikomatsakis** @**tmandry** ([previous checkin](https://hackmd.io/wCIbJPBKSxKeScnuh3dr2Q))
> Checkin text

- @*WG-traits* by @**nikomatsakis** @**Jack Huey** ([previous checkin](https://hackmd.io/PgfxdZIrTEOQ5Mw_ZEEesA))
> * [#85499](https://github.com/rust-lang/rust/pull/85499) was merged, which fixes the common `OutputTypeParameterMismatch` ICE (ends up closing over a dozen issues)
> * Continuing work on GATs
>   * [blog post](https://blog.rust-lang.org/2021/08/03/GATs-stabilization-push.html) announcing push for GATs stabilization
>   * [retconned lang initiatve repo](https://github.com/nikomatsakis/generic-associated-types-initiative) - check out open design discussions, feedback welcome!
>   * Multiple PRs opened/merged fixing bugs and diagnostics, will continue moving forward
> * Continuing work on type alias impl trait
>   * Many tests added
>   * Refactorings being done to change TAIT to act like an unbound ty var, simplifying the implementation and make it "trivial" to support more use cases than was originally planned for initial stabilization
> * Continuing work on trait upcasting
>   * [retconned lang initiative repo](https://github.com/nikomatsakis/dyn-upcasting-coercion-initiative/) - check out open design discussions, feedback welcome!
>   * A few PRs have been merged implement actual trait selection, type checking, and coercion
>   * PR open for unsafety checking

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Always preserve sub-obligations in the projection cache" [rust#85868](https://github.com/rust-lang/rust/pull/85868) 
  - @**nikomatsakis** will try to review
  - @**Jack Huey** approved but mentions a substancial perf loss, thus [the need to add some tests](https://github.com/rust-lang/rust/pull/85868#pullrequestreview-738824341) 
- :beta: "Split critical edge targeting the start block" [rust#88124](https://github.com/rust-lang/rust/pull/88124) 
  - Opened by @**tm**
  - Assigned to @**oli**
  - Nominated by @**Wesley Wiser**
  - Fixes [#88043](https://github.com/rust-lang/rust/issues/88043) a `P-critical` due to exposing an LLVM bug
- :stable: "Split critical edge targeting the start block" [rust#88124](https://github.com/rust-lang/rust/pull/88124) 
  - see above

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Extend `-Cdebuginfo` with new options and named aliases" [rust#83947](https://github.com/rust-lang/rust/pull/83947) 
  - [need more user-facing documentation](https://github.com/rust-lang/rust/pull/83947#issuecomment-901955302) ...
  - ... and we decided to [make it a blocker](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-08-19.20.2354818/near/249992881)
  - Who should provide documentation? The PR author? Maybe a direct ping?

### Most recent PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "move obligation dedup from `impl_or_trait_obligations` to project caching" [rust#84944](https://github.com/rust-lang/rust/pull/84944) (last comment: about 16 days ago)
  - seems fine, [needs sign-off from Niko](https://github.com/rust-lang/rust/pull/84944#issuecomment-877254683)
- "Support #[global_allocator] without the allocator shim" [rust#86844](https://github.com/rust-lang/rust/pull/86844) (last comment: about 16 days ago)
- "check where-clause for explicit `Sized` before suggesting `?Sized`" [rust#86455](https://github.com/rust-lang/rust/pull/86455) (last comment: about 10 days ago)
  - fixes [rustc#85945](https://github.com/rust-lang/rust/issues/85945)
- "Abort in panic_abort eh_personality" [rust#86801](https://github.com/rust-lang/rust/pull/86801) (last comment: about 10 days ago)
- "Refactor unsized suggestions" [rust#86454](https://github.com/rust-lang/rust/pull/86454) (last comment: about 10 days ago)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [83 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [56 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 3 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 48 P-high, 81 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "LLVM crash: Basic Block does not have terminator!" [rust#88043](https://github.com/rust-lang/rust/issues/88043)
  - reopened to track the stable-to-stable regression
  - (see beta and stable nominations)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "ICE: unexpected concrete region in borrowck: ReStatic" [rust#87455](https://github.com/rust-lang/rust/issues/87455) 
  - @**pnkfelix** self-assigned backport of [rust#87843](https://github.com/rust-lang/rust/pull/87483), provided PR [rust#88190](https://github.com/rust-lang/rust/pull/88190) (approved by @**simulacrum**)
- "ICE: unexpected concrete region in borrowck: ReEarlyBound(0, 'a)" [rust#83190](https://github.com/rust-lang/rust/issues/83190)
  - regression in crate run for 1.55, manifested in a couple of issues
  - should be resolved by [rust#88190](https://github.com/rust-lang/rust/pull/88190), authored by Felix

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-08-25](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-08-24.md)

A few regressions but largely an improvement this week, mostly due to the upgrade to LLVM 13.

Triage done by **@simulacrum**. 2 Regressions, 1 Improvements, 2 Mixed; 0 of them in rollups

#### Regressions

Update the backtrace crate in libstd [#88151](https://github.com/rust-lang/rust/issues/88151)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2451f42c1deb9379d5e8e5fa86b0bf857ae048ec&end=7960030d6915a771f5ab72c3897a7ed50c3ed4bd&stat=instructions:u) (up to 2.6% on `incr-patched: u8 3072` builds of `issue-46449`)
- Standard regression from an increase in std/core size due to added items.

Add fast path for Path::cmp that skips over long shared prefixes [#86898](https://github.com/rust-lang/rust/issues/86898)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=7611fe438dae91084d17022e705bf64374d5ba4b&end=bcfd3f7e88084850f87b8e34b4dcb9fceb872d00&stat=instructions:u) (up to -0.3% on `incr-unchanged` builds of `helloworld`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=7611fe438dae91084d17022e705bf64374d5ba4b&end=bcfd3f7e88084850f87b8e34b4dcb9fceb872d00&stat=instructions:u) (up to 1.2% on `incr-patched: println` builds of `ripgrep`)
- Largely in -doc builds, seems to be a small but real regression.

#### Improvements

- Reenable RemoveZsts [#88176](https://github.com/rust-lang/rust/issues/88176)

#### Mixed

Revert "Auto merge of #83417 - erikdesjardins:enableremovezsts, r=oli-obk" [#88056](https://github.com/rust-lang/rust/issues/88056)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=aa8f27bf4d980023a8b245ceb25a490a18041eb2&end=806b3995b8f622d5de10afcc11c10a028a7b876a&stat=instructions:u) (up to -0.5% on `incr-patched: println` builds of `cargo`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=aa8f27bf4d980023a8b245ceb25a490a18041eb2&end=806b3995b8f622d5de10afcc11c10a028a7b876a&stat=instructions:u) (up to 4.5% on `incr-unchanged` builds of `deeply-nested-async`)
- Regression is canceled out by the later #88176 (see improvements above).
Upgrade to LLVM 13 [#87570](https://github.com/rust-lang/rust/issues/87570)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=e7f7fe462a54b1caeb804a974cd43ba9fd7bee5c&end=db002a06ae9154a35d410550bc5132df883d7baa&stat=instructions:u) (up to -10.4% on `incr-unchanged` builds of `helloworld`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e7f7fe462a54b1caeb804a974cd43ba9fd7bee5c&end=db002a06ae9154a35d410550bc5132df883d7baa&stat=instructions:u) (up to 9.6% on `full` builds of `match-stress-enum`)
- Overall an improvement, regressions are significantly more limited to just a
  few cases compared to the improvements seen across the board.

#### Untriaged Pull Requests

- [#87815 encode `generics_of` for fields and ty params](https://github.com/rust-lang/rust/pull/87815)
- [#87781 Remove box syntax from compiler and tools](https://github.com/rust-lang/rust/pull/87781)
- [#87640 Rollup of 9 pull requests](https://github.com/rust-lang/rust/pull/87640)
- [#87587 Various refactorings of the TAIT infrastructure](https://github.com/rust-lang/rust/pull/87587)
- [#87570 Upgrade to LLVM 13](https://github.com/rust-lang/rust/pull/87570)
- [#87244 Better diagnostics with mismatched types due to implicit static lifetime](https://github.com/rust-lang/rust/pull/87244)
- [#86777 Include terminators in instance size estimate](https://github.com/rust-lang/rust/pull/86777)
- [#86698 Move OnDiskCache to rustc_query_impl.](https://github.com/rust-lang/rust/pull/86698)
- [#86588 Rollup of 8 pull requests](https://github.com/rust-lang/rust/pull/86588)
- [#86034 Change entry point to shield against exploding payloads](https://github.com/rust-lang/rust/pull/86034)
- [#84560 Inline Iterator as IntoIterator.](https://github.com/rust-lang/rust/pull/84560)
- [#80357 Introduce `hir::ExprKind::Let` - Take 2](https://github.com/rust-lang/rust/pull/80357)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "ACCESS_VIOLATION when dereferencing once_cell::Lazy in closure with LTO" [rust#81408](https://github.com/rust-lang/rust/issues/81408) 
  - Windows-only, happens when using LLD linker and building with Thin LTO, [a bit more details and a repro](https://github.com/rust-lang/rust/issues/81408#issuecomment-847122562) from @**memoryruins** 
  - As it seems an LLVM issue, has this been reported upstream? ([see comment](https://github.com/rust-lang/rust/issues/81408#issuecomment-883092504))
  - Wg-prio assigned `P-high`, issue is still present with LLVM13 so `I-nominated` to get more eyeballs on it, where to go from here?
 
[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
