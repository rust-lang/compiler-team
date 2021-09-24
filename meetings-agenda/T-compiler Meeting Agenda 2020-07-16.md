---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-07-16

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Rust 1.45 is being released today! :tada::tada::tada:
- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Move Rust provided objects, libraries and binaries meant for self-contained linkage to separate directory" [compiler-team#310](https://github.com/rust-lang/compiler-team/issues/310)
  - "Add future-incompat entries to json diagnostic output" [compiler-team#315](https://github.com/rust-lang/compiler-team/issues/315)
  - "MCP: Reorganize the rust-lang/rust repo directory structure" [compiler-team#316](https://github.com/rust-lang/compiler-team/issues/316)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Change `ty::Const` to an integer tree representation" [compiler-team#323](https://github.com/rust-lang/compiler-team/issues/323)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
  - "Improve defaults in x.py" [compiler-team#326](https://github.com/rust-lang/compiler-team/issues/326)
  - "Rework rustc_serialize" [compiler-team#329](https://github.com/rust-lang/compiler-team/issues/329)
  - "Use `tracing` instead of `log`" [compiler-team#331](https://github.com/rust-lang/compiler-team/issues/331)
  - "Stabilize control-flow-guard codegen option" [rust#73893](https://github.com/rust-lang/rust/pull/73893)
- Accepted MCPs
  - "--extern-location to specify where an --extern dependency is defined" [compiler-team#303](https://github.com/rust-lang/compiler-team/issues/303)
- Finalized FCPs
  - "Stabilize const_type_id feature" [rust#72488](https://github.com/rust-lang/rust/pull/72488)
- Should we close #compiler channel on Discord?
  - This was briefly discussed on [Zulip](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/discord.20channel)

### WG checkins

@*WG-rustc-dev-guide* checkin by @**mark-i-m** and @**Santiago Pastorino**:
> [68 merged PRs!](https://github.com/rust-lang/rustc-dev-guide/pulls?page=1&q=closed%3A%3E%3D2020-05-28) In fact, there was so much stuff, that we ran out of time to curate it... here is a prefix of the list of PRs (heavily biased towards earlier PRs); there are so many people that deserve credit:
>- Aaron Hill
>- Andy Russell
>- Bastian Kauschke
>- Drew Youngwerth
>- Eric Huss
>- Florian Gilcher
>- Ivan Veselov
>- Joshua Nelson
>- mark-i-m
>- Matt Kraai
>- Nadrieril
>- Niko Matsakis
>- pierwill
>- Ralf Jung
>- Santiago Pastorino
>- Takayuki Nakata
>- ThePuzzlemaker
>- Tomasz Miąsko
>- Tom Eccles
>- Yuki Okushi
>
>Accomplished:
>
>- Tons of new content:
>   - [Getting Started Guide](https://github.com/rust-lang/rustc-dev-guide/pull/731) + many improvements
>   - Type-system rustc-dev-guide#697
>   - Diagnostics rustc-dev-guide#716
>   - Building and testing `rustc` rustc-dev-guide#723, rustc-dev-guide#727, rustc-dev-guide#728, rustc-dev-guide#729, and many more
>   - Writing tests rustc-dev-guide#724, rustc-dev-guide#725, rustc-dev-guide#749 
>- Updates to various current content:
>   - [Lints](https://github.com/rust-lang/rustc-dev-guide/pull/713)
>   - [`TyKind::Error`](https://github.com/rust-lang/rustc-dev-guide/pull/715)
>   - [Coding Conventions](https://github.com/rust-lang/rustc-dev-guide/pull/735)
>   - Notification Groups rustc-dev-guide#739, rustc-dev-guide#740, and more 
>- Some reorganization:
>   - rustc-dev-guide#753, rustc-dev-guide#752, rustc-dev-guide#763, rustc-dev-guide#764, rustc-dev-guide#767, rustc-dev-guide#768, rustc-dev-guide#773

@*WG-llvm* checkin by @**nagisa**:
> * As mentioned above, there’s LLVM11 upgrade on the horizon. The usual caveats etc apply. Potential regressions, improvements in compiler code output etc.
>* In similar spirit been seeing an increased flow of issue reports about sub-optimal code generation, thuogh that's a very subjective evaluation;
>* There's an ongoing effort by a community member to enable building targeting apple silicon with "fat" libraries. There are some complication in enabling this:
    * Upstream LLVM support for this is _dubious_ both now and possibly LLVM 11.
    * What kind of tier are we hoping to have for this target at launch time? I’d say just let it go through the usual process, but I can see logic in idea of having T2/T1 support at launch time.

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)

 * lint: use `transparent_newtype_field` to avoid ICE [rust#74340](https://github.com/rust-lang/rust/pull/74340)
   * fix for Nightly ICEs trying to normalize during a cast [rust#73747](https://github.com/rust-lang/rust/issues/73747)
   * authored by @davidtwco and r+'ed by @pnkfelix
   * (just barely missed the promotion from master to beta)
   * pnkfelix would be fine with letting this simmer until next week.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No stable nominations this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on T-compiler this time.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on libs-impl this time.

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [49 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [27 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 3 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 6 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 14 P-high, 46 P-medium, 4 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No P-critical issues for T-compiler this time.

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No P-critical issues for libs-impl this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No P-critical issues for T-rustdoc this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- No unassigned P-high beta regressions this time.

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- No unassigned P-high nightly regressions this time.

## Performance logs

[Triage done by njn](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs).
Revision range: [0c03aee8b81185d65b5821518661c30ecdb42de5..9d09331e00b02f81c714b0c41ce3a38380dd36a2](https://perf.rust-lang.org/?start=0c03aee8b81185d65b5821518661c30ecdb42de5&end=9d09331e00b02f81c714b0c41ce3a38380dd36a2&absolute=false&stat=instructions%3Au).

12 revisions checked. Zero regressions, one improvement.

Regressions
- None!

Improvements
- [Shrink ParamEnv to 16 bytes #73978](https://github.com/rust-lang/rust/pull/73978#issuecomment-657877594)
  ([instructions](https://perf.rust-lang.org/compare.html?start=0c03aee8b81185d65b5821518661c30ecdb42de5&end=8981dbbc36f1575b0a417b6849767bde29e7c6b4&stat=instructions:u)):
  Up to 1.8% wins on a few benchmarks.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Polymorphization" [rust#69749](https://github.com/rust-lang/rust/pull/69749)
  - This was nominated for discussion about what the next steps are.
  - [See @wesleywiser's comment](https://github.com/rust-lang/rust/pull/69749#issuecomment-658871287) for a summary of the current state and questions.
- "mv std libs to std/" [rust#73265](https://github.com/rust-lang/rust/pull/73265)
  - This was nominated again for discussion about what the next steps are.
  - "I propose to wait one week and nominate the issue one (hopefully) last time"
  - [See @mark-i-m's comment](https://github.com/rust-lang/rust/pull/73265#issuecomment-657075856) for a summary of the current proposal.
- "[WIP] Upgrade to LLVM 11" [rust#73526](https://github.com/rust-lang/rust/pull/73526)
  - [Nominated](https://github.com/rust-lang/rust/pull/73526#issuecomment-658943064) to double check whether we're okay with landing this prior to the final LLVM 11 release.
  - [See @nikic's comment](https://github.com/rust-lang/rust/pull/73526#issuecomment-658943064) ...
  - "The last perf run had large compile-time improvements for opt builds and some minor regressions for debug builds."
  - [Perf shows some nice improvements](https://perf.rust-lang.org/compare.html?start=7e11379f3b4c376fbb9a6c4d44f3286ccc28d149&end=adff1be71c9e1b3abb95b761d9caa41e4e1b9096)
- "Compiler doesn't terminate with --release" [rust#74384](https://github.com/rust-lang/rust/issues/74384)
  - Compiler doesn't "terminate" when nesting 3 arrays.
  - "It seems like this is an LLVM bug."

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for libs-impl this time.