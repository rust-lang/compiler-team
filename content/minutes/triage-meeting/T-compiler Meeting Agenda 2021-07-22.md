---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-07-22

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :loudspeaker: Next week, July, 29th release Rust stable 1.54 :loudspeaker: 

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  -  "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396) (last comment: 6 months ago)
  -  "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last comment: 5 months ago)
  -  "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437) (last comment: about 41 days ago)
  -  "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last comment: about 20 days ago)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last comment: about 20 days ago)
  -  "Non exhaustive reachable patterns lint" [compiler-team#445](https://github.com/rust-lang/compiler-team/issues/445) (last comment: about 6 days ago)
- Pending FCP requests (check your boxes!)
  -  "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431) 
  -  "Preserve, clarify, and extend debug information" [rust#83947](https://github.com/rust-lang/rust/pull/83947) 
- Things in FCP (make sure you're good with it)
  -  "Encode spans relative to the enclosing item" [compiler-team#443](https://github.com/rust-lang/compiler-team/issues/443) 
  -  "Don't abort compilation after giving a lint error" [compiler-team#447](https://github.com/rust-lang/compiler-team/issues/447) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  -  "Tracking Issue for IntoInnerError::into_parts etc. (io_into_inner_error_parts)" [rust#79704](https://github.com/rust-lang/rust/issues/79704) 
  -  "Remove P: Unpin bound on impl Future for Pin" [rust#81363](https://github.com/rust-lang/rust/pull/81363) 
  -  "Allow leading pipe in `matches!()` patterns." [rust#85272](https://github.com/rust-lang/rust/pull/85272) 
  -  "Stabilize `const_fn_transmute`, `const_fn_union`" [rust#85769](https://github.com/rust-lang/rust/pull/85769) 
  -  "Partially stabilize `const_slice_first_last`" [rust#86593](https://github.com/rust-lang/rust/pull/86593) 
  -  "Document iteration order of `retain` functions" [rust#86790](https://github.com/rust-lang/rust/pull/86790)

### WG checkins

@*WG-diagnostics* from @**Esteban Küber** and @**oli** 
> 
> Since our last checking a lot of PRs with improvements have been merged. We've made many subtle changes to wording, amount and accuracy of information and presence structured suggestions in a variety of diagnostics. All of them fall into one of the following categories:
> - More accurate spans for predicate obligations (associated types and trait bounds, ongoing area of concern)
> - We now account better for implicit `'static` lifetimes introduced by type params and assoc types
> - We now include `for<'lt>` in pretty printing output
> - We had some efforts to close the distance between nll and old regionck output
> - Improvements to MIR, TAIT and const diagnostics, as part of ongoing efforts
> - Tweaks to lint triggering and output
> - We now include first macro level, this particularly makes errors involving `derive` macros easier to understand
> - Various parser and error recovery improvements
> - Various ICE fixes by improving support or use of `delay_span_bug`
> - Proc macros can now have spans pointing _to their own crate_
> - `#[track_caller]` now works on trait object method calls
> - Point at `impl Trait` return types in more cases
> - Multiple regression tests added
>
> I want to call out @FabianWolff, @Aaron1011 and @Smittyvb for delivering on a number of these categories.
>
> ---
>
> Not directly related to WG-diagnostics, but I want to call it out:
> 
> > [Eisel-Lemire algorithm Float-Parsing Algorithm #86761](https://github.com/rust-lang/rust/pull/86761) landed on nightly, removing a now unnecessary error.

@*WG-rustc-dev-guide* from @**Santiago Pastorino** and @**Yuki Okushi|217081**
> - @**Yuki Okushi|217081** joined the team as a new co-lead, thanks @**Joshua Nelson** for everything you've done!
> - Not a lot has happened lately but here's a small set of changes and WIPs ...
> 
> #### Most notable changes
> 
> - Create issues for many TODOs [#1163](https://github.com/rust-lang/rustc-dev-guide/pull/1163)
> - Update information on lints [#1154](https://github.com/rust-lang/rustc-dev-guide/pull/1154)
> - Document how to mark features as incomplete [#1151](https://github.com/rust-lang/rustc-dev-guide/pull/1151)
> - Document how to run unit tests [#1141](https://github.com/rust-lang/rustc-dev-guide/pull/1141)
> 
> #### Most notable WIPs
> 
> - Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)
> - Explain the new valtree system for type level constants. [#1097](https://github.com/rust-lang/rustc-dev-guide/pull/1097)

## Backport unilateral approvals

- :beta: "Revert PR 81473 to resolve (on mainline) issues 81626 and 81658." [rust#86212](https://github.com/rust-lang/rust/pull/86212) 
  - opened by @**pnkfelix**
  - nominated by @**Pietro Albini** for 1.54 and have it land in 1.55
  - should address [rust#81658](https://github.com/rust-lang/rust/issues/81658) (an invalid "field never read lint" diagnostic) until we can land again PR [rust#83171](https://github.com/rust-lang/rust/issues/83171) with an enhancement like PR [rust#83004](https://github.com/rust-lang/rust/issues/83004)
  - unilaterally beta-backport approved by @**pnkfelix**
  - beta backport PR: [rust#87369](https://github.com/rust-lang/rust/pull/87369)


## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Don't use gc-sections with profile-generate." [rust#87004](https://github.com/rust-lang/rust/pull/87004)
  - opened by @**Jamie Cunliffe** 
  - nomination proposed by @**simulacrum** as this should fix [rust#78226](https://github.com/rust-lang/rust/issues/78226), preferably to be shipped in 1.54 a `P-critical` regression on AArch64 target
  - Some PGO tests were failing last week, is bors now happy?
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-15.20.2354818/near/246099199) - is [rust#78226](https://github.com/rust-lang/rust/issues/78226) really a release blocker?
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Encode spans relative to the enclosing item" [rust#84373](https://github.com/rust-lang/rust/pull/84373)
  - discussed last week, @_*wg-incr-comp* seem the best owners of this
- "Wrap libraries in linker groups, allowing backwards/circular references" [rust#85805](https://github.com/rust-lang/rust/pull/85805)
  - discussed last week
  - @**nagisa** commented it could be potentially troublesome
  - @**petrochenkov** mentioned to postpone for a few months
  - @**pnkfelix** suggested an MCP to give visibility

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [79 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 44 P-high, 81 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "run-make-fulldeps/pgo-branch-weights fails on AArch64 Linux" [rust#78226](https://github.com/rust-lang/rust/issues/78226) 
  - discussed last week, linked to PR [rust#87004](https://github.com/rust-lang/rust/issues/87004), now merged and scheduled for 1.55.0 milestone
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970) 
  - discussed last week
  - @**Wesley Wiser** [asked](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-15.20.2354818/near/246102804) if a fix for [rust#84963](https://github.com/rust-lang/rust/issues/84963) is somewhere being worked on?
  - other updates on stoppers / pending related PRs?

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-07-20](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-07-20.md)

A mixed week, with some moderate regressions and moderate improvements. (I am personally wondering whether style-servo-debug needs to have a larger individual threshold for signalling a regression.) There were some notable PR's that were specifically oriented around performance enhancements.

Triage done by **@pnkfelix**.
Revision range: [5aff6dd07a562a2cba3c57fc3460a72acb6bef46..5c0ca08c662399c1c864310d1a20867d3ab68027](https://perf.rust-lang.org/?start=5aff6dd07a562a2cba3c57fc3460a72acb6bef46&end=5c0ca08c662399c1c864310d1a20867d3ab68027&absolute=false&stat=instructions%3Au)

3 Regressions, 3 Improvements, 3 Mixed; 1 of them in rollups

#### Regressions

Replace associated item bound vars with placeholders when projecting [#86993](https://github.com/rust-lang/rust/issues/86993)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=b1f8e27b74c541d3d555149c8efa4bfe9385cd56&end=27e42058811e448b1a7dd8630d86ab247fbfcb9b&stat=instructions:u) (up to 1.5% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo-debug`)
- A perf run was [done on the PR originally](https://perf.rust-lang.org/compare.html?start=fdfe819580062a441024d713b49340cd3f7d7efc&end=7baa78ec683fd14db4d4c1869dbef5cbbc5b774d). The regression flagged here seems to be on a different set of benchmarks: `style-servo-debug` and `wf-projection-stress-65510-*`, neither of which was flagged as a regression in the original runs.
- Results overall seem pretty mixed and hard to interpret. Left a [comment](https://github.com/rust-lang/rust/pull/86993#issuecomment-883624762) on the PR.

Remove special case for `ExprKind::Paren` in `MutVisitor` [#87284](https://github.com/rust-lang/rust/issues/87284)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=014026d1a7ca991f82f12efa95ef4dffb29dc8af&end=6535449a002264ee08dec8e741f1aadd97428fae&stat=instructions:u) (up to 1.0% on `full` builds of `coercions-debug`)
- This is on the borderline for "significant regression", and was the *only* regression associated with this PR.
- Also, `coercions-debug` seems like it has a noisy history (that's pnkfelix's opinion from eyeballing it; it has also a single "?" on its comparison line.)

Better diagnostics with mismatched types due to implicit static lifetime [#87244](https://github.com/rust-lang/rust/issues/87244)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=718d53b0cb7dde93499cb92950d60b412f5a3d05&end=da7d405357600a76f2b93b8aa41fe5ee5da7885d&stat=instructions:u) (up to 1.2% on `full` builds of `stm32f4-check`)
- Widespread regressions that exceed the 0.2% threshold for non-noisy benchmarks.
- Left a [comment](https://github.com/rust-lang/rust/pull/87244#issuecomment-883635813) asking if this was expected. But I suspect the situation does not warrant additional investment of effort, assuming there's no trivial fix identifiable from the PR author.

#### Improvements

- Rollup of 6 pull requests [#87118](https://github.com/rust-lang/rust/issues/87118)
- Make expansions stable for incr. comp. [#86676](https://github.com/rust-lang/rust/issues/86676)
- Some perf optimizations and logging [#87203](https://github.com/rust-lang/rust/issues/87203)

#### Mixed

Cache expansion hash globally [#87044](https://github.com/rust-lang/rust/issues/87044)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3e1c75c6e25a4db968066bd2ef2dabc7c504d7ca&end=c7d6bcc788ef6b2293d2d5166a9b0339d5d03b0a&stat=instructions:u) (up to 1.9% on `full` builds of `deeply-nested-async-check`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3e1c75c6e25a4db968066bd2ef2dabc7c504d7ca&end=c7d6bcc788ef6b2293d2d5166a9b0339d5d03b0a&stat=instructions:u) (up to -1.4% on `incr-unchanged` builds of `inflate-check`)
- This was an improvement for a lot of incremental cases, and a regression for a few full-compilation cases: `deeply-nested-async-{check,debug,opt}`, and `coercions-debug`.
- It seems like these results were [expected](https://github.com/rust-lang/rust/pull/87044#issuecomment-879407381), and they make sense given the nature of the PR.

Update Rust Float-Parsing Algorithms to use the Eisel-Lemire algorithm. [#86761](https://github.com/rust-lang/rust/issues/86761)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=64d171b8a419eb6cb872ab579398eff8a741bbc6&end=f502bd3abd12111bbfae0974db018c165a977c0e&stat=instructions:u) (up to 3.2% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo-debug`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=64d171b8a419eb6cb872ab579398eff8a741bbc6&end=f502bd3abd12111bbfae0974db018c165a977c0e&stat=instructions:u) (up to -1.4% on `full` builds of `piston-image-opt`)
- A perf run was done on the orignal PR, but the run there did not predict the regression that was now observed to `style-servo-debug` when this PR landed on nightly.
- Left a [comment](https://github.com/rust-lang/rust/pull/86761#issuecomment-883645181), but I am guessing that `style-servo-debug` may need a bigger noise threshold (or rather, sensitivity to perturbations) than what we currently use.

Move OnDiskCache to rustc_query_impl. [#86698](https://github.com/rust-lang/rust/issues/86698)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5a8a44196b3cf099f8c9b0156bd902eaec0b4e5f&end=18073052d8c3544ccb73effd289ed3acda0d66c0&stat=instructions:u) (up to -1.4% on `incr-unchanged` builds of `ctfe-stress-4-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5a8a44196b3cf099f8c9b0156bd902eaec0b4e5f&end=18073052d8c3544ccb73effd289ed3acda0d66c0&stat=instructions:u) (up to 1.1% on `incr-unchanged` builds of `deeply-nested-async-opt`)
- A perf run was done on the original PR that predicted a much better outcome here.
- Left a [comment](https://github.com/rust-lang/rust/pull/86698#issuecomment-883647259) asking PR author if they have any idea about the discrepancy.

#### Untriaged Pull Requests

- [#87153 \[debuginfo\] Emit associated type bindings in trait object type names.](https://github.com/rust-lang/rust/pull/87153)
- [#86993 Replace associated item bound vars with placeholders when projecting](https://github.com/rust-lang/rust/pull/86993)
- [#86777 Include terminators in instance size estimate](https://github.com/rust-lang/rust/pull/86777)
- [#86588 Rollup of 8 pull requests](https://github.com/rust-lang/rust/pull/86588)
- [#86034 Change entry point to 🛡️ against 💥 💥-payloads](https://github.com/rust-lang/rust/pull/86034)
- [#84560 Inline Iterator as IntoIterator.](https://github.com/rust-lang/rust/pull/84560)

#### Nags requiring follow up

None

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Binary search performance regressed in 1.25" [rust#53823](https://github.com/rust-lang/rust/issues/53823)
  - Needs a fix [upstream on LLVM](https://bugs.llvm.org/show_bug.cgi?id=40027), see [comment](https://github.com/rust-lang/rust/issues/53823#issuecomment-882660032)``
  - discussed on [Zulip](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/tracking.20an.20old.20regression)
  - T-compiler tagged FIY
- "Binary size is significant increased from `1.46.0` to `1.51.0`" [rust#86610](https://github.com/rust-lang/rust/issues/86610)
  - perhaps related to one or more issues about the same theme (see mentioned issues, ex. [rust#86431](https://github.com/rust-lang/rust/issues/86431) was mentioned)
  - issue nominated as FIY for T-compiler. Can this be tracked in perf?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
