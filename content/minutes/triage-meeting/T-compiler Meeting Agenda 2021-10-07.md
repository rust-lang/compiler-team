---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-10-07

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements / MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last review activity: GH none, Zulip +3 months ago)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: GH none, Zulip about 1 month ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: GH none, Zulip about 1 week ago)
  - "Tier 3 target proposal: x86_64-unknown-none (freestanding/bare-metal x86-64)" [compiler-team#462](https://github.com/rust-lang/compiler-team/issues/462) (last review activity: GH none, Zulip 1 week ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: GH none, Zulip about 2 weeks ago)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
- Things in FCP (make sure you're good with it)
  - "lint internal hashmap iteration" [compiler-team#465](https://github.com/rust-lang/compiler-team/issues/465)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Perform type inference in range pattern" [rust#88090](https://github.com/rust-lang/rust/pull/88090)
  - "Stabilize RFC 2345: Allow panicking in constants" [rust#89006](https://github.com/rust-lang/rust/issues/89006)

### WG checkins

- @_WG-async-foundations_ by @**nikomatsakis** @**tmandry** ([previous checkin](https://hackmd.io/9aTxrdTQSaS_Fx55dEW1hA))
  Checkin text by pnkfelix, taken from https://rust-lang.github.io/async-fundamentals-initiative/updates/2021-oct.html

> Our overall charter: Make it possible to write async fn in traits, as well as enabling key language features that bring async more into parity with sync:
> * Async functions in traits
>   *in both static and dyn contexts
> * Async drop
> Async closures

> We have identified an MVP, which aims to support async fn in traits in static contexts by desugaring to an (anonymous) associated GAT plus (on the impl side) a TAIT. We are preparing an RFC describing this MVP and talking to various folks about doing the implementation work.

- @_WG-traits_ by @**nikomatsakis** @**Jack Huey** ([previous checkin](https://hackmd.io/9aTxrdTQSaS_Fx55dEW1hA))
  > In general, work continues on GATs, TAITs, dyn upcasting, and followup for normalization under binders and incremental projection cache PRs.
  >   * For GATs, a few blockers remain for stabilization, [found here](https://rust-lang.github.io/generic-associated-types-initiative/updates/2021-oct.html). Feedback/thoughts request on the [placement of where clauses](https://github.com/rust-lang/rust/issues/89122).
  >   * Oli-obk continues to work on refactoring the inference for TAITs. Some diagnostic PRs have been opened that need review.
  >   * Dyn upcasting recently had a [question](https://rust-lang.zulipchat.com/#narrow/stream/144729-wg-traits/topic/Dyn.20upcasting.20vs.20deref.20coercion) come up regarding Deref impls on dyn types; specfically, these impls mimic upcasting. The current plan is to emit a future compat lint and just accept the breakage - which really just ends up without the deref impl being called.
  >   * There has been a bit a followup to do after [#85499](https://github.com/rust-lang/rust/pull/85499) landed. In particular, more eagerly normalizing opaque types resulted in a severe perf regression; this has been reverted with the only current fallout being related to TAITs. Some other issues popped up that show that there is still code that won't compile even though it should - but compiliation does get further (not emitting an ICE). Most of the remaining issues are probably blocked on lazy norm.
  >   * Finally, some of the changes Aaron Hill made to the way projection caching works to fix incremental bugs seems to have a [perf regression](https://github.com/rust-lang/rust/issues/89195). Not clear what a correct fix would look like yet.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "2229: Consume IfLet expr" [rust#89282](https://github.com/rust-lang/rust/pull/89282)
  - Another one for RFC 2229 that affects Rust 2021
- :beta: "Fix unsound optimization with explicit variant discriminants" [rust#89489](https://github.com/rust-lang/rust/pull/89489)
  - Fixes P-critical unsoundness [rust#89485](https://github.com/rust-lang/rust/issues/89485)
  - maybe stable backport not necessary, as we are closing to the next stable ([@**wesley wiser** comment](https://github.com/rust-lang/rust/pull/89489#issuecomment-933506404))
- :beta: "Fix stabilization version for `bindings_after_at`" [rust#89605](https://github.com/rust-lang/rust/pull/89605)
  - PR opened by @**Noah Lev**, not yet merged, suggests beta-backport
  - `bindings_after_at` was stabilized in 1.56
- :beta: "Turn vtable_allocation() into a query" [rust#89619](https://github.com/rust-lang/rust/pull/89619)
  - opened by @**mw**
  - Fixes P-critical unsoundness [rust#89598](https://github.com/rust-lang/rust/issues/89598)
- :stable: "Turn vtable_allocation() into a query" [rust#89619](https://github.com/rust-lang/rust/pull/89619)
  - same as above

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "On macOS, make strip="symbols" not pass any options to strip" [rust#88137](https://github.com/rust-lang/rust/pull/88137)
  - mentioned last week, was waiting on Alex Crichton
  - Alex Crichton replied [he doesn't have much insights on macOS](https://github.com/rust-lang/rust/pull/88137#issuecomment-933531347)
  - @**Josh Triplett** comments [about stabilizing `strip` in rustc before in cargo](https://github.com/rust-lang/rust/pull/88137#issuecomment-936463641)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)

- "Replace dominators algorithm with simple Lengauer-Tarjan" [rust#85013](https://github.com/rust-lang/rust/pull/85013) (last review activity: 4 months ago)
- "Account for incorrect `impl Foo<const N: ty> {}` syntax" [rust#85346](https://github.com/rust-lang/rust/pull/85346) (last review activity: 3 months ago)
- "When recovering from a `:` in a pattern, use adequate AST pattern" [rust#87160](https://github.com/rust-lang/rust/pull/87160) (last review activity: 2 months ago)
- "Mir-Opt for copying enums with large discrepancies" [rust#85158](https://github.com/rust-lang/rust/pull/85158) (last review activity: 2 months ago)
- "Abort in panic_abort eh_personality" [rust#86801](https://github.com/rust-lang/rust/pull/86801) (last review activity: 2 months ago)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [79 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [52 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 47 P-high, 83 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)

- "VTable-related miscompilation with incremental compilation" [rust#89598](https://github.com/rust-lang/rust/issues/89598)
  - reported by @**mw**, currently unassigned
  - @**simulacrum** comments this should probably be fixed by the next stable
  - @**mw** tested a fix in PR [rust#89602](https://github.com/rust-lang/rust/pull/89602) and checked the perf impact
- "Internal compiler error: "entered unreachable code: we captured two identical projections"" [rust#89606](https://github.com/rust-lang/rust/issues/89606)
  - stable-to-beta regression
  - introduced by #89208 ([see comment](https://github.com/rust-lang/rust/issues/89606#issuecomment-937083496))
  - assigned to @**Wesley Wiser**

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)

- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "no errors encountered even though `delay_span_bug` issued" [rust#87757](https://github.com/rust-lang/rust/issues/87757)
  - Should be fixed by beta-backport of [rust#88996](https://github.com/rust-lang/rust/pull/88996) (beta-accepted)
- "regression: cycle in MIR opts" [rust#88972](https://github.com/rust-lang/rust/issues/88972)
  - Should be fixed by [rust#88979](https://github.com/rust-lang/rust/pull/88979) (beta-accepted)
- "Trait upcasting shadows (trait object) deref coercion" [rust#89190](https://github.com/rust-lang/rust/issues/89190)
  - [Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/144729-wg-traits/topic/Dyn.20upcasting.20vs.20deref.20coercion), involves also `T-lang`
  - @**Charles Lew** provides PR [rust#89461](https://github.com/rust-lang/rust/pull/89461), reviewed and approved by Niko

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-10-05](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-10-05.md)

A fairly busy week, with a relatively high percentage of PRs landing with regressions and improvements. The overall trajectory is fairly neutral for this week though.

Triage done by **@simulacrum**. Revision range: [83f147b3baf21acfc367a6da1045d212cd3957e4..25ec8273855fde2d72ae877b397e054de5300e10](https://perf.rust-lang.org/?start=83f147b3baf21acfc367a6da1045d212cd3957e4&end=25ec8273855fde2d72ae877b397e054de5300e10&absolute=false&stat=instructions%3Au)

5 Regressions, 5 Improvements, 5 Mixed; 1 of them in rollups, 43 comparisons made in total

#### Regressions

Don't anonymize bound region names during typeck [#89250](https://github.com/rust-lang/rust/issues/89250)

- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=30acf6def32a340b4bfce6e1e2638f1b05ac2cd9&end=69c1c6a173dcae20c245348f6c7d19074b6109b7&stat=instructions:u) (up to 0.6% on `full` builds of `coercions`)
- Regression seems to be real, though no regressions in cycle counts are
  reported, so this is likely an acceptable hit.

Constify ?-operator for Result and Option [#86853](https://github.com/rust-lang/rust/issues/86853)

- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=69c1c6a173dcae20c245348f6c7d19074b6109b7&end=c6007fdc7059c677a6c089e8d2915b264c0d1326&stat=instructions:u) (up to 0.5% on `incr-full` builds of `stm32f4`)
- This is a small regression on the stm32f4 crate, due to a number of extra
  obligations that are created, presumably due to the checks for whether ?
  operators in this crate can be const. It is likely an acceptable change for
  the time being, particularly as the const-impls functionality is still in
  nascent stages and optimizations may come down the line.
- The PR ended up temporarily reverted by
  [#89450](https://github.com/rust-lang/rust/issues/89450), though not due to
  performance reasons.

Fix read_to_end to not grow an exact size buffer [#89165](https://github.com/rust-lang/rust/issues/89165)

- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e737694a4d66b01308b73d4559a35b43e414faf9&end=d25de31a0eeb14ab0c8c4613496fe2d3d9a085dd&stat=instructions:u) (up to 0.7% on `full` builds of `piston-image`)
- This regression is unclear in cause, and investigation on the PR did not lead
  to a conclusion. However, the regression is fairly small and the change is
  expected to have impacts on more I/O heavy benchmarks than rustc is.
  Syscall counts were shown to improve on the PR, including for rustc, so the
  optimization seems to work in general.

Fix unsound optimization with explicit variant discriminants [#89489](https://github.com/rust-lang/rust/issues/89489)

- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=44593aeb1387b1be355aeaf0040d5927bd80f060&end=a4797664ba9c7d71e586122853858eeb6c153bb9&stat=instructions:u) (up to 2.3% on `full` builds of `style-servo`)
- This is an expected regression, but is clearly justified by the fix for an
  unsound optimization. We expect to reland it with appropriate changes in the
  future.

Fix clippy lints [#89405](https://github.com/rust-lang/rust/issues/89405)

- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a8387aef8c378a771686878062e544af4d5e2245&end=b27661eb33c74cb514dba059b47d86b6582ac1c2&stat=instructions:u) (up to 0.4% on `incr-unchanged` builds of `helloworld`)
- Likely to be painful to investigate -- changes are widely scattered across the
  codebase and in theory "no-ops".

#### Improvements

Note: improvements reports are trimmed down for brevity, but this week `rustc-perf` reports large improvements, therefore: :tada:

- Restructure std::rt [#89011](https://github.com/rust-lang/rust/issues/89011)
- Remove visible path calculation from allowed deprecation lint [#89395](https://github.com/rust-lang/rust/issues/89395)
- Avoid nondeterminism in trimmed_def_paths [#89408](https://github.com/rust-lang/rust/issues/89408)
- Rollup of 14 pull requests [#89512](https://github.com/rust-lang/rust/issues/89512)
- Deriving: Include bound generic params in type parameters for where clause [#89341](https://github.com/rust-lang/rust/issues/89341)

#### Mixed

Add more tracing instrumentation [#89048](https://github.com/rust-lang/rust/issues/89048)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=1d71ba862309d59df710078a845c8772ffb22aba&end=8f8092cc32ec171becef8ceacec7dbb06c5d7d7e&stat=instructions:u) (up to -1.6% on `full` builds of `keccak`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1d71ba862309d59df710078a845c8772ffb22aba&end=8f8092cc32ec171becef8ceacec7dbb06c5d7d7e&stat=instructions:u) (up to 12.0% on `full` builds of `ctfe-stress-4`)
- Regression is mitigated by
  [#89363](https://github.com/rust-lang/rust/pull/89363), which just barely
  missed being included in this report.

Add an intermediate representation to exhaustiveness checking [#88950](https://github.com/rust-lang/rust/issues/88950)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=8f8092cc32ec171becef8ceacec7dbb06c5d7d7e&end=6df1d82869d06b88ff413e63a1e8efbb311e3b5c&stat=instructions:u) (up to -2.6% on `full` builds of `unicode_normalization`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=8f8092cc32ec171becef8ceacec7dbb06c5d7d7e&end=6df1d82869d06b88ff413e63a1e8efbb311e3b5c&stat=instructions:u) (up to 2.9% on `full` builds of `match-stress-enum`)
- Code quality improvements mitigate the regressions, which are largely limited
  to a stress test.

Rollup of 6 pull requests [#89435](https://github.com/rust-lang/rust/issues/89435)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=ed937594d3912ced11f6f35a90bb8bf591909d2a&end=b6057bf7b7ee7c58e6a39ead02eaa13b75f908c2&stat=instructions:u) (up to -0.3% on `incr-unchanged` builds of `helloworld`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ed937594d3912ced11f6f35a90bb8bf591909d2a&end=b6057bf7b7ee7c58e6a39ead02eaa13b75f908c2&stat=instructions:u) (up to 0.8% on `incr-unchanged` builds of `externs`)
- Unclear cause for the regression. Hasn't been investigated yet.

Rework HIR API to make invocations of the hir_crate query harder. [#88880](https://github.com/rust-lang/rust/issues/88880)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b6057bf7b7ee7c58e6a39ead02eaa13b75f908c2&end=c02371c442f811878ab3a0f5a813402b6dfd45d2&stat=instructions:u) (up to -0.4% on `incr-unchanged` builds of `helloworld`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=b6057bf7b7ee7c58e6a39ead02eaa13b75f908c2&end=c02371c442f811878ab3a0f5a813402b6dfd45d2&stat=instructions:u) (up to 0.2% on `full` builds of `many-assoc-items`)
- Regressions are smaller than improvements. Original perf run didn't return
  regressions at all. Tagged for investigation.

resolve: Cache module loading for all foreign modules [#89239](https://github.com/rust-lang/rust/issues/89239)

- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=edebf77e0090195bf80c0d8cda821e1bf9d03053&end=d14731cb3ced8318d7fc83cbe838f0e7f2fb3b40&stat=instructions:u) (up to 0.8% on `incr-unchanged` builds of `tokio-webpush-simple`)
- From the PR: This corrects behaviour for macros 2.0 and avoids an ICE, so a
  0.8% regression seems acceptable.

#### Untriaged Pull Requests

Investigation work continues, and we're down to 22 from 28 untriaged PRs week
over week.

- [#89435 Rollup of 6 pull requests](https://github.com/rust-lang/rust/pull/89435)
- [#89363 Fix performance regression with #[instrument]](https://github.com/rust-lang/rust/pull/89363)
- [#89263 Suggest both of immutable and mutable trait implementations](https://github.com/rust-lang/rust/pull/89263)
- [#89165 Fix read_to_end to not grow an exact size buffer](https://github.com/rust-lang/rust/pull/89165)
- [#89125 Don't use projection cache or candidate cache in intercrate mode](https://github.com/rust-lang/rust/pull/89125)
- [#89103 Migrate in-tree crates to 2021](https://github.com/rust-lang/rust/pull/89103)
- [#89047 Rollup of 10 pull requests](https://github.com/rust-lang/rust/pull/89047)
- [#89030 Introduce `Rvalue::ShallowInitBox`](https://github.com/rust-lang/rust/pull/89030)
- [#88945 Remove concept of 'completion' from the projection cache](https://github.com/rust-lang/rust/pull/88945)
- [#88824 Rollup of 15 pull requests](https://github.com/rust-lang/rust/pull/88824)
- [#88804 Revise never type fallback algorithm](https://github.com/rust-lang/rust/pull/88804)
- [#88719 Point at argument instead of call for their obligations](https://github.com/rust-lang/rust/pull/88719)
- [#88703 Gather module items after lowering.](https://github.com/rust-lang/rust/pull/88703)
- [#88627 Do not preallocate HirIds](https://github.com/rust-lang/rust/pull/88627)
- [#88575 Querify `FnAbi::of_{fn_ptr,instance}` as `fn_abi_of_{fn_ptr,instance}`.](https://github.com/rust-lang/rust/pull/88575)
- [#88308 Morph `layout_raw` query into `layout_of`.](https://github.com/rust-lang/rust/pull/88308)
- [#87781 Remove box syntax from compiler and tools](https://github.com/rust-lang/rust/pull/87781)
- [#87688 Introduce `let...else`](https://github.com/rust-lang/rust/pull/87688)
- [#87064 Support `#[track_caller]` on closures and generators](https://github.com/rust-lang/rust/pull/87064)
- [#83698 Use undef for uninitialized bytes in constants](https://github.com/rust-lang/rust/pull/83698)
- [#83302 Get piece unchecked in `write`](https://github.com/rust-lang/rust/pull/83302)
- [#80522 Split rustc_mir](https://github.com/rust-lang/rust/pull/80522)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "On macOS, make strip="symbols" not pass any options to strip" [rust#88137](https://github.com/rust-lang/rust/pull/88137)
  - mentioned in PR waiting-on-team
- "Rust can't infer appropriate generics for function when it should" [rust#89242](https://github.com/rust-lang/rust/issues/89242)
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-09-30.20.2354818/near/255587805)
  - the general mood was to let this slip and no nothing as the sample seems to be about uncallable code, just tested on the playground
  - @**Jack Huey** mentioned he would discuss this with Niko on Monday
  - anything new to add?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.

## Misc

- Handling RLS 1.0 issue during T-compiler meeting ([Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Handling.20RLS.20issues.20during.20the.20meeting.3F))
  - @**nagisa** [comment on github](https://github.com/rust-lang/rust/issues/58858#issuecomment-927108585)
  - Can that issue be closed and perhaps remove RLS from [rust#54818](https://github.com/rust-lang/rust/issues/54818)?
