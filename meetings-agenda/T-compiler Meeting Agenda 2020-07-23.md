---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-07-23

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- New MCPs (take a look, see if you like them!)
  - No new MCPs at this time.
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "MCP: Reorganize the rust-lang/rust repo directory structure" [compiler-team#316](https://github.com/rust-lang/compiler-team/issues/316)
- Pending FCP requests (check your boxes!)
  - "Stabilizable subset of const generics" [compiler-team#332](https://github.com/rust-lang/compiler-team/issues/332)
- Things in FCP (make sure you're good with it)
  - "Move Rust provided objects, libraries and binaries meant for self-contained linkage to separate directory" [compiler-team#310](https://github.com/rust-lang/compiler-team/issues/310)
  - "Add future-incompat entries to json diagnostic output" [compiler-team#315](https://github.com/rust-lang/compiler-team/issues/315)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
- Accepted MCPs
  - "Change `ty::Const` to a "value tree" representation" [compiler-team#323](https://github.com/rust-lang/compiler-team/issues/323)
  - "Improve defaults in x.py" [compiler-team#326](https://github.com/rust-lang/compiler-team/issues/326)
  - "Rework rustc_serialize" [compiler-team#329](https://github.com/rust-lang/compiler-team/issues/329)
  - "Use `tracing` instead of `log`" [compiler-team#331](https://github.com/rust-lang/compiler-team/issues/331)
- Finalized FCPs
  - No finalized FCPs this time.

### WG checkins

@*T-compiler/WG-meta* checkin by @**nikomatsakis**:
> Checkin text

@*WG-mir-opt* checkin by @**oli**:
> * `-Zmir-opt-level`'s meaning gets refactored to stop including buggy opts (https://github.com/rust-lang/compiler-team/issues/319)
> * harden const propagator against regressions and bugs (https://github.com/rust-lang/rust/pull/73693, https://github.com/rust-lang/rust/pull/73613)
> * MIR overflow messages now contain the binop arguments that caused the overflow (https://github.com/rust-lang/rust/pull/73513)
>   * only used in the const evaluator and const propagator, but we can make runtime asserts also do this (similar to how index out of bounds displays length and index)
> * MIR printing can now print variant-less enums (https://github.com/rust-lang/rust/pull/73442)
> * MIR is now checked to make sure its invariants are upheld (https://github.com/rust-lang/rust/pull/72796, https://github.com/rust-lang/rust/pull/72093)
>
> Not sure if we already had this last time, but even if, this is worth repeating: [we have a totally awesome NRVO pass!](https://github.com/rust-lang/rust/pull/72205)

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Don't panic if the lhs of a div by zero is not statically known" [rust#74221](https://github.com/rust-lang/rust/pull/74221)
    - PR by @**oli**, approved by @**Wesley Wiser**
    - Fixes [a P-high nightly regression](https://github.com/rust-lang/rust/issues/73993)
- "improper_ctypes_definitions: allow `Box`" [rust#74448](https://github.com/rust-lang/rust/pull/74448)
    - PR by @**davidtwco**, approved by @**Alex Crichton** 
    - stops [linting against Box in extern "C" functions for the improper_ctypes_definitions lint](https://github.com/rust-lang/rust/pull/72700#issuecomment-659449386) - boxes are documented to be FFI-safe.
- "Use `ReEmpty(U0)` as the implicit region bound in typeck" [rust#74509](https://github.com/rust-lang/rust/pull/74509)
  - PR by @_**Matthew Jasper**, not merged yet
  - Fixes [a `P-critical` stable regression](https://github.com/rust-lang/rust/issues/74429) that rejects previously accepted code
  - Very small patch, one line changed
  - This one is also stable nominated
- "Fix an ICE on an invalid `binding @ ...` in a tuple struct pattern" [rust#74557](https://github.com/rust-lang/rust/pull/74557)
  - PR by @**jakubadamw**, approved by @**nagisa**
  - Fixes: [a stable to stable regression (ICE)](https://github.com/rust-lang/rust/issues/74539). Where a better displayed error was previously produced.
  - This one is also stable nominated
- "Correctly parse `{} && false` in tail expression" [rust#74650](https://github.com/rust-lang/rust/pull/74650)
  - PR by @**Esteban Küber**, not merged yet
  - Fixes [#74233](https://github.com/rust-lang/rust/issues/74233) a `P-high` regression and [#54186](https://github.com/rust-lang/rust/issues/54186)
  - This one is also stable nominated

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Use `ReEmpty(U0)` as the implicit region bound in typeck" [rust#74509](https://github.com/rust-lang/rust/pull/74509)
  - This was also beta nominated
- "Fix an ICE on an invalid `binding @ ...` in a tuple struct pattern" [rust#74557](https://github.com/rust-lang/rust/pull/74557)
  - This was also beta nominated
- "Correctly parse `{} && false` in tail expression" [rust#74650](https://github.com/rust-lang/rust/pull/74650)
  - This was also beta nominated

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on T-compiler this time.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on libs-impl this time

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [50 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [27 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 6 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 15 P-high, 47 P-medium, 4 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Borrowck deduces empty lifetime" [rust#74429](https://github.com/rust-lang/rust/issues/74429)
  - Unassigned
  - There is [a single crate repro](https://github.com/rust-lang/rust/issues/74429#issuecomment-660400487) but an MCVE is still lacking
  - Regressed in [#72362](https://github.com/rust-lang/rust/pull/72362) by @**Matthew Jasper**
  - [It has an opened PR](https://github.com/rust-lang/rust/pull/74509), already approved but tests are failing
- "LTO triggers apparent miscompilation on Windows 10 x64" [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - Unassigned
  - [LLVM issue reproduced on LLVM master](https://github.com/rust-lang/rust/issues/74498#issuecomment-661950983)
  - Regression from stable to stable, started failing when we updated to LLVM 9.0

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No P-critical issues for libs-impl this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No P-critical issues for T-rustdoc this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- No unassigned P-high beta regressions this time.

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- "Type mismatch in function arguments E0631, E0271 are falsely recognized as E0308 mismatched types" [rust#74400](https://github.com/rust-lang/rust/issues/74400)
  - Unassigned
  - Nightly to stable regression
  - Regressed on [#73643](https://github.com/rust-lang/rust/pull/73643) which is a rollup, likely to be [#72493](https://github.com/rust-lang/rust/pull/72493) or maybe [these others](https://github.com/rust-lang/rust/issues/74400#issuecomment-661450558)

## Performance logs

[Triage done by njn](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

This week was a disaster, perf-wise. 28 revisions checked. 7 regressions, several of them ranging from large to huge, many in rollups. Some additional regressions may have occurred in rollups that were masked by other regressions/improvements. 3 improvements, one of which was a reversion of a regression. Thanks for Mark-Simulacrum and eddyb for follow-up measurements and adding new tooling to help investigate regressions in rollups. A follow-up thread on Zulip is [here](https://rust-lang.zulipchat.com/#narrow/stream/247081-t-compiler.2Fperformance/topic/Follow-up.20to.20the.20bad.20perf.20triage.20of.202020-07-21).

In better news, rustdoc performance is now being benchmarked, thanks to the
efforts of [Joshua Nelson](https://github.com/rust-lang/rustc-perf/pull/675).

Triage done by njn. Revision range: [9d09331e00b02f81c714b0c41ce3a38380dd36a2..71384101ea3b030b80f7def80a37f67e148518b0](https://perf.rust-lang.org/?start=9d09331e00b02f81c714b0c41ce3a38380dd36a2&end=71384101ea3b030b80f7def80a37f67e148518b0&absolute=false&stat=instructions%3Au).

Regressions
- [Rollup of 18 pull requests #74461](https://github.com/rust-lang/rust/pull/74461#issuecomment-660492867)
  ([instructions](https://perf.rust-lang.org/compare.html?start=39d5a61f2e4e237123837f5162cc275c2fd7e625&end=d3df8512d2c2afc6d2e7d8b5b951dd7f2ad77b02-v1&stat=instructions:u)):
  Up to 73.0% losses on many benchmarks.
  [#74416](https://github.com/rust-lang/rust/pull/74416#issuecomment-660545238)
  is at fault; it was reverted in
  [#74478](https://github.com/rust-lang/rust/pull/74478), see below.
- [std: Switch from libbacktrace to gimli #73441](https://github.com/rust-lang/rust/pull/73441#issuecomment-660881380)
  ([instructions](https://perf.rust-lang.org/compare.html?start=7d31ffc1ac9e9ea356e896e63307168a64501b9d&end=1fa54ad9680cc82e7301f8ed4e9b7402dfd6ce0e&stat=instructions:u),
   [max-rss](https://perf.rust-lang.org/compare.html?start=7d31ffc1ac9e9ea356e896e63307168a64501b9d&end=1fa54ad9680cc82e7301f8ed4e9b7402dfd6ce0e&stat=max-rss)):
  Up to 44.8% instruction increases on many benchmarks, and 5-10% max-rss increases on many benchmarks. Being reverted in [#74613](https://github.com/rust-lang/rust/pull/74613).
- [Support const args in type dependent paths (Take 2) #74113](https://github.com/rust-lang/rust/pull/74113#issuecomment-661470398)
  ([instructions](https://perf.rust-lang.org/compare.html?start=d9e8d6290745a65025a3e082aea72fbe372292c6&end=7e11379f3b4c376fbb9a6c4d44f3286ccc28d149&stat=instructions:u)):
  Up to 1.5% losses on numerous benchmarks, which was expected.
- [Reduce the amount of interning and `layout_of` calls in const eval. #74202](https://github.com/rust-lang/rust/pull/74202#issuecomment-661475728)
  ([instructions](https://perf.rust-lang.org/compare.html?start=4cd0ee9343da86d9770bf0a514a682d240e0dce8&end=125c58caebc67c32ec45ac6c0581b596fd532082&stat=instructions:u)):
  Up to 2% losses on one benchmark.
- [Rollup of 9 pull requests #74543](https://github.com/rust-lang/rust/pull/74543#issuecomment-661507295)
  ([instructions](https://perf.rust-lang.org/compare.html?start=2c21a6f3a8b1c75c444b87fde5116853383b3fbd&end=891e6fee572009ff2be4d4057fb33483610c36a7&stat=instructions:u)):
  Up to 12% losses on rustdoc for many benchmarks.
- [Rollup of 4 pull requests #74518](https://github.com/rust-lang/rust/pull/74518#issuecomment-661498214)
  ([instructions](https://perf.rust-lang.org/compare.html?start=48036804d2bc461b243c5d291b850e44bcca68ef&end=d7f94516345a36ddfcd68cbdf1df835d356795c3&stat=instructions:u)):
  Up to 6.4% losses on rustdoc for two benchmarks.

Improvements
- [Rollup of 7 pull requests #74493](https://github.com/rust-lang/rust/pull/74493#issuecomment-661521298)
  ([instructions](https://perf.rust-lang.org/compare.html?start=1fa54ad9680cc82e7301f8ed4e9b7402dfd6ce0e&end=0701419e96d94e5493c7ebfcecb66511ab0aa778&stat=instructions:u)):
  Up to 33.5% improvements, at least partly due to the backout of
  [#74416](https://github.com/rust-lang/rust/pull/74416) in
  [#74478](https://github.com/rust-lang/rust/pull/74478), but it's also
  possible that another PR in that rollup [caused a regression that was masked
  by the improvement from the backout](https://github.com/rust-lang/rust/pull/74493#issuecomment-661521298).
- [Change `SymbolName::name` to a `&str`. #74214](https://github.com/rust-lang/rust/pull/74214#issuecomment-661459141)
  ([instructions](https://perf.rust-lang.org/compare.html?start=c714eae0e3b4ba263c193d54f6e46bb9a1feb2cc&end=d9e8d6290745a65025a3e082aea72fbe372292c6&stat=instructions:u)):
  Up to 2.5% wins on numerous benchmarks.
- [Don't run `everybody_loops` for rustdoc; instead ignore resolution errors #73566](https://github.com/rust-lang/rust/pull/73566#issuecomment-661484787)
  ([instructions](https://perf.rust-lang.org/compare.html?start=6ee1b62c811a6eb68d6db6dfb91f66a49956749b&end=5c9e5df3a097e094641f16dab501ab1c4da10e9f&stat=instructions:u)):
  Wins of up to 62.6% and losses of up to 8.5%, all on rustdoc builds. Overall,
  the improvements greatly outweigh the losses. (Landed in rollup
  [#74408](https://github.com/rust-lang/rust/pull/74408).)

### Notes

[Rollup of 11 pull requests #74468](https://github.com/rust-lang/rust/pull/74468#issuecomment-661371815)
 * ([instructions](https://perf.rust-lang.org/compare.html?start=d3df8512d2c2afc6d2e7d8b5b951dd7f2ad77b02-v1&end=7d31ffc1ac9e9ea356e896e63307168a64501b9d&stat=instructions:u))

This rollup was originally judged as responsible for a 10% regression in
instrutions:u. However, since then, it has been determined that the likely cause of this regression is actually perf's [move](https://github.com/rust-lang/rustc-perf/commit/048360c77a74244ba6e70d9b3f2bcd7779b8129f) to using `x.py dist`-shipped std's rather than building one locally. Investigation into *why* this move caused a regression is as yet not done, but is being tracked in [rustc-perf#724](https://github.com/rust-lang/rustc-perf/issues/724).

Initially [#74069](https://github.com/rust-lang/rust/pull/74069) and/or [#72414](https://github.com/rust-lang/rust/pull/72414) were suspected as the cause of the regression, but further testing showed that to not be the case.

 * The original rollup, #74468, landed with a [5-10% performance regression](https://perf.rust-lang.org/compare.html?start=d3df8512d2c2afc6d2e7d8b5b951dd7f2ad77b02-v1&end=7d31ffc1ac9e9ea356e896e63307168a64501b9d&stat=instructions:u)
 * In #74611, we tested as-if a rollup of #74069 and #72414 landed. ([This](https://gist.github.com/Mark-Simulacrum/6893dff239d116947bca647f4f8128c7) is the diff between d3df85 and cfade73) That yielded [identical results to the rollup](https://perf.rust-lang.org/compare.html?start=d3df8512d2c2afc6d2e7d8b5b951dd7f2ad77b02-v1&end=cfade73820883adf654fe34fd6b0b03a99458a51).
 * We reverted #74069 in #74611, this yielded [neutral performance results](https://perf.rust-lang.org/compare.html?start=e8b55a4ad230ebec762fdfc4f241ba98a98560af&end=fcac11993ca055bbdc7683a2f6ed7b88a838fb0f&stat=instructions:u).
 * #74716 then tried a revert of #72414 but this also yielded [neutral performance results](https://perf.rust-lang.org/compare.html?start=900869371e13cead086f4f9809419daa6a63cfaf&end=193b2f77c9463ed7378c20bad843a9031489e215)

We have since opened a PR to re-land #74069, as well: #74802.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Compiler doesn't terminate with --release" [rust#74384](https://github.com/rust-lang/rust/issues/74384)
  - Compiler doesn't "terminate" when nesting 3 arrays.
  - "It seems like this is an LLVM bug."
  - Nominated to assign it
  - On our last meeting we briefly mention it but wasn't picked up yet
- "error: could not compile `gkrust` since Rust 1.43 on SPARC Solaris" [rust#74551](https://github.com/rust-lang/rust/issues/74551)
  - Unassigned `I-unsound` stable to stable regression
  - Nominated by @**ecstatic-morse**, [they think this is concerning and may affect tier 1 platforms](https://github.com/rust-lang/rust/issues/74551#issuecomment-662273391)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for libs-impl this time.
