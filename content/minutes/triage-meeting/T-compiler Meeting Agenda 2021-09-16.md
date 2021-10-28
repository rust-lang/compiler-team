---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-09-16

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last review activity: GH none, Zulip: none)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: GH none, Zulip: about 2w ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: GH none, Zulip: about 2m ago)
  - "Non exhaustive reachable patterns lint" [compiler-team#445](https://github.com/rust-lang/compiler-team/issues/445) (last review activity: GH none, Zulip about 40d ago)
  - "Add `TyKind::Const` and remove `GenericArgKind::Const`" [compiler-team#453](https://github.com/rust-lang/compiler-team/issues/453) (last review activity: GH None, Zulip about 1m ago)
  - "prefer-dynamic=subset" [compiler-team#455](https://github.com/rust-lang/compiler-team/issues/455) (last review activity: GH none, Zulip 9d ago)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431) 
- Things in FCP (make sure you're good with it)
  - "Add `pie` relocation-model" [compiler-team#461](https://github.com/rust-lang/compiler-team/issues/461) 
- Accepted MCPs
  - "Add `Rvalue::ShallowInitBox` to MIR" [compiler-team#460](https://github.com/rust-lang/compiler-team/issues/460) 
- Finalized FCPs (disposition merge)
  - "Stabilize "force warn" option " [rust#86516](https://github.com/rust-lang/rust/issues/86516) 
  - "Support `#[track_caller]` on closures and generators" [rust#87064](https://github.com/rust-lang/rust/pull/87064) 
  - "stabilize disjoint capture in closures (RFC 2229)" [rust#88126](https://github.com/rust-lang/rust/issues/88126) 
  - "Stabilize reserved prefixes" [rust#88140](https://github.com/rust-lang/rust/issues/88140) 
  - "2229: Don't move out of drop type" [rust#88477](https://github.com/rust-lang/rust/pull/88477)
  
### WG checkins

@*WG-mir-optimization* by @**oli** ([previous checkin](https://hackmd.io/vQr9mk6zSdib5vg9OlHuOQ)):
> nothing to report at this time

@*WG-polymorphization* checkin by @**davidtwco** ([previous checkin](https://hackmd.io/vQr9mk6zSdib5vg9OlHuOQ)):
> No update from the working group, expect that some progress will be made in the next few weeks. 

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Change scope of temporaries in match guards" [rust#88678](https://github.com/rust-lang/rust/pull/88678)
  - opened by @**Matthew Jasper**
  - assigned @**oli**, comments that [this fix is small and contained](https://rust-lang.zulipchat.com/#narrow/stream/269128-miri/topic/Cron.20Job.20Failure.202021-09-05/near/252170503)
- :beta: "Add a regression test for #88649" [rust#88691](https://github.com/rust-lang/rust/pull/88691)
  - opened by @**hyd-dev**
  - PR closed [rust#88649](https://github.com/rust-lang/rust/issues/88649)
  - @**simulacrum** beta-nominated along [rust#88678](https://github.com/rust-lang/rust/pull/88678) 
- :beta: "Revert anon union parsing" [rust#88775](https://github.com/rust-lang/rust/pull/88775)
  - opened by @**pnkfelix**, beta-nominated to have this fix for [rust#88583](https://github.com/rust-lang/rust/issues/88583) in edition 2021
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Perform type inference in range pattern" [rust#88090](https://github.com/rust-lang/rust/pull/88090)
  - I-nominated, waiting for `T-lang` feedback

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Replace dominators algorithm with simple Lengauer-Tarjan" [rust#85013](https://github.com/rust-lang/rust/pull/85013) (last review activity: 3 months ago)
  - last week @**pnkfelix** self-assigned 
- "Add basic checks for well-formedness of `fn`/`fn_mut` lang items" [rust#86246](https://github.com/rust-lang/rust/pull/86246) (last review activity: 3 months ago)
  - last week @**pnkfelix** self-assigned 
- "check where-clause for explicit `Sized` before suggesting `?Sized`" [rust#86455](https://github.com/rust-lang/rust/pull/86455) (last review activity: 2 months ago)
- "Use DefPathHash instead of HirId to break inlining cycles." [rust#85321](https://github.com/rust-lang/rust/pull/85321) (last review activity: 2 months ago)
- "Account for incorrect `impl Foo<const N: ty> {}` syntax" [rust#85346](https://github.com/rust-lang/rust/pull/85346) (last review activity: 2 months ago)

## Issues of Note

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [76 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [51 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 45 P-high, 83 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Type called union wreaks havoc since 1.54" [rust#88583](https://github.com/rust-lang/rust/issues/88583) 
  - fixed by Felix's PR [rust#88775](https://github.com/rust-lang/rust/pull/88775)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-09-14](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-09-14.md)

Fairly busy week, with some large improvements on several benchmarks. Several larger rollups landed, in part due to recovery from a temporary CI outage, which has complicated some of the performance monitoring work. These should, however, now be resolved.

Triage done by **@simulacrum**. 2 Regressions, 2 Improvements, 5 Mixed; 2 of them in rollups
31 comparisons made in total

#### Regressions

Encode spans relative to the enclosing item [#84373](https://github.com/rust-lang/rust/issues/84373)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=8c2b6ea37d7719a0370bd404030eef9702c1752c&end=547d9374d26f203ab963b3ffe1ed36bd70f16633&stat=instructions:u) (up to 2.1% on `incr-unchanged` builds of `tuple-stress`)
- Regressions are much smaller on "full" benchmarks (<0.5%). This support has
  also landed gated behind a -Z flag, so the incremental cost is being paid
  without the possible wins.

Rollup of 7 pull requests [#88881](https://github.com/rust-lang/rust/issues/88881)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=9ef27bf7dc50a8b51435579b4f2e86f7ee3f7a94&end=c7dbe7a830100c70d59994fd940bf75bb6e39b39&stat=instructions:u) (up to 2.1% on `full` builds of `inflate`)
- No clear cause. Investigation is partially ongoing, but may warrant an
  assignee -- there's several possible candidates.

#### Improvements

- Rollup of 10 pull requests [#88857](https://github.com/rust-lang/rust/issues/88857)
- Use FxHashSet instead of Vec for well formed tys [#88771](https://github.com/rust-lang/rust/issues/88771)

#### Mixed

Split rustc_mir [#80522](https://github.com/rust-lang/rust/issues/80522)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=47ae8deb8a35030bdc4e502b03400800864cc264&end=97032a6dfacdd3548e4bff98c90a6b3875a14077&stat=instructions:u) (up to -2.0% on `full` builds of `deeply-nested-async`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=47ae8deb8a35030bdc4e502b03400800864cc264&end=97032a6dfacdd3548e4bff98c90a6b3875a14077&stat=instructions:u) (up to 0.8% on `full` builds of `await-call-tree`)
- Mixed results. Noted in a comment that this also was a slight regression in
  bootstrap time as measured by perf.rust-lang.org, which seems unfortunate and
  may merit some investigation.

Rollup of 15 pull requests [#88824](https://github.com/rust-lang/rust/issues/88824)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b69fe57261086e70aea9d5b58819a1794bf7c121&end=22719efcc570b043f2e519d6025e5f36eab38fe2&stat=instructions:u) (up to -0.7% on `incr-patched: println` builds of `html5ever`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=b69fe57261086e70aea9d5b58819a1794bf7c121&end=22719efcc570b043f2e519d6025e5f36eab38fe2&stat=instructions:u) (up to 1.0% on `incr-unchanged` builds of `derive`)
- Report seems a little bit close to noise, and is definitely mixed. No clear
  cause, but also a fairly large rollup.

Refactor query forcing [#78780](https://github.com/rust-lang/rust/issues/78780)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=43769af69e43d0fb9770f0a392671f000595df78&end=8c2b6ea37d7719a0370bd404030eef9702c1752c&stat=instructions:u) (up to -0.9% on `incr-full` builds of `unused-warnings`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=43769af69e43d0fb9770f0a392671f000595df78&end=8c2b6ea37d7719a0370bd404030eef9702c1752c&stat=instructions:u) (up to 1.3% on `incr-patched: println` builds of `coercions`)
- Solid improvement in rustc_query_impl compile times (8%). Overall looks like
  results are overall more of an improvement than a regression.

Update LLVM submodule [#88765](https://github.com/rust-lang/rust/issues/88765)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=0273e3bce7a0ce49e96a9662163e2380cb87e0be&end=0212c70b1df2aa542aef48d5fcde0af3734970c6&stat=instructions:u) (up to -0.7% on `full` builds of `ctfe-stress-4`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=0273e3bce7a0ce49e96a9662163e2380cb87e0be&end=0212c70b1df2aa542aef48d5fcde0af3734970c6&stat=instructions:u) (up to 0.7% on `incr-unchanged` builds of `ripgrep`)
- Fairly mixed results, no clear picture either way.

#### Untriaged Pull Requests

- [#88881 Rollup of 7 pull requests](https://github.com/rust-lang/rust/pull/88881)
- [#88824 Rollup of 15 pull requests](https://github.com/rust-lang/rust/pull/88824)
- [#88765 Update LLVM submodule](https://github.com/rust-lang/rust/pull/88765)
- [#88710 Use index newtyping for TyVid](https://github.com/rust-lang/rust/pull/88710)
- [#88597 Move global analyses from lowering to resolution](https://github.com/rust-lang/rust/pull/88597)
- [#88552 Stop allocating vtable entries for non-object-safe methods](https://github.com/rust-lang/rust/pull/88552)
- [#88533 Concrete regions can show up in mir borrowck if the originated from there](https://github.com/rust-lang/rust/pull/88533)
- [#88530 Shrink Session a bit](https://github.com/rust-lang/rust/pull/88530)
- [#88435 Avoid invoking the hir_crate query to traverse the HIR](https://github.com/rust-lang/rust/pull/88435)
- [#87815 encode `generics_of` for fields and ty params](https://github.com/rust-lang/rust/pull/87815)
- [#87781 Remove box syntax from compiler and tools](https://github.com/rust-lang/rust/pull/87781)
- [#87688 Introduce `let...else`](https://github.com/rust-lang/rust/pull/87688)
- [#87640 Rollup of 9 pull requests](https://github.com/rust-lang/rust/pull/87640)
- [#87587 Various refactorings of the TAIT infrastructure](https://github.com/rust-lang/rust/pull/87587)
- [#87244 Better diagnostics with mismatched types due to implicit static lifetime](https://github.com/rust-lang/rust/pull/87244)
- [#86898 Add fast path for Path::cmp that skips over long shared prefixes](https://github.com/rust-lang/rust/pull/86898)
- [#86777 Include terminators in instance size estimate](https://github.com/rust-lang/rust/pull/86777)
- [#86698 Move OnDiskCache to rustc_query_impl.](https://github.com/rust-lang/rust/pull/86698)
- [#86588 Rollup of 8 pull requests](https://github.com/rust-lang/rust/pull/86588)
- [#86034 Change entry point to 🛡️ against 💥 💥-payloads](https://github.com/rust-lang/rust/pull/86034)
- [#85556 Warn about unreachable code following an expression with an uninhabited type](https://github.com/rust-lang/rust/pull/85556)
- [#84560 Inline Iterator as IntoIterator.](https://github.com/rust-lang/rust/pull/84560)
- [#84373 Encode spans relative to the enclosing item](https://github.com/rust-lang/rust/pull/84373)
- [#83302 Get piece unchecked in `write`](https://github.com/rust-lang/rust/pull/83302)
- [#80522 Split rustc_mir](https://github.com/rust-lang/rust/pull/80522)


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Perform type inference in range pattern" [rust#88090](https://github.com/rust-lang/rust/pull/88090) 
  - nomination is for `T-lang`

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Oh, one more thing

- @**apiraino** proposal to host T-compiler agenda meetings [on a git repo](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Hosting.20meetings.20agenda.20on.20a.20git.20repo)
