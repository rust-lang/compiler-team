---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-09-23

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow <time:2021-09-24T10:00:00-04:00>, [Compiler Team Planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)
- Tomorrow <time:2021-09-24T10:00:00-04:00>, Polonius Hackaton (is there a link for this topic?)

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Tier 3 target proposal: x86_64-unknown-none (freestanding/bare-metal x86-64)" [compiler-team#462](https://github.com/rust-lang/compiler-team/issues/462)
- Old MCPs (not seconded, take a look)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last review activity: GH none, Zulip: +2months ago)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: GH none, Zulip: about 1 month ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: GH none, Zulip: about 3 months ago)
  - "Non exhaustive reachable patterns lint" [compiler-team#445](https://github.com/rust-lang/compiler-team/issues/445) (last review activity: GH none, Zulip: about 2 months ago)
  - "Add `TyKind::Const` and remove `GenericArgKind::Const`" [compiler-team#453](https://github.com/rust-lang/compiler-team/issues/453) (last review activity: GH none, Zulip: about 1 month ago)
  - "prefer-dynamic=subset" [compiler-team#455](https://github.com/rust-lang/compiler-team/issues/455) (last review activity: GH none, Zulip: about 15 days ago)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - "Add `pie` relocation-model" [compiler-team#461](https://github.com/rust-lang/compiler-team/issues/461)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @_WG-rls2.0_ by @**Lukas Wirth** ([previous checkin](https://hackmd.io/f45z2GqQTNW9QH0wO4lTEg?view)):

> Steering issue covered by this checkin:
>
> - https://github.com/rust-analyzer/rust-analyzer/issues/9925
>   This sprint has seen a lot of improvements and fixes for experimental attribute support bringing the feature closer to being enabled by default.
>   We fixed a memory leak in our [syntax tree library](https://github.com/rust-analyzer/rowan/pull/112) as well as improving [compile times a bunch](https://github.com/rust-analyzer/rust-analyzer/pull/10069).
>   Our parser has seen some cleanups and we started implementing IDE support for macros reusing spans for multiple output tokens.

- @_WG-rfc-2229_ by @**nikomatsakis** and @**Matthew Jasper** ([previous checkin](https://hackmd.io/f45z2GqQTNW9QH0wO4lTEg?view)):
  > This is shipping with Rust 2021, but there are some backports for a few bugs
  > I have to prepare a patch today for one of those:
  > https://github.com/rust-lang/rust/pull/89144
  > So one thing is this code that helps the migration by skipping "insignificant destructors"
  > and the other is an edge case in destructor ordering
  > (if you capture all the fields of a struct, then we will drop them in the order of use, but we used to drop them in the order in which they appeared in the struct)
  > (this is because the closure now has a separate variable for each field)
  > (I'll probably add some sorting to preserve the old order "just because", but there is an interesting question of what guarantees (if any) we give around this sort of thing -- I am thinking "none")
  > I guess that's a lang question but perhaps people here have an opinion :)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "Disable RemoveZsts in generators to avoid query cycles" [rust#88979](https://github.com/rust-lang/rust/pull/88979)
  - fixes regression [rust#88972](https://github.com/rust-lang/rust/issues/88972) on stable-to-beta for 1.56
- :beta: "Fix linting when trailing macro expands to a trailing semi" [rust#88996](https://github.com/rust-lang/rust/pull/88996)
  - fixes regression [rust#87757](https://github.com/rust-lang/rust/issues/87757) on stable-to-beta for 1.56
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "On macOS, make strip="symbols" not pass any options to strip" [rust#88137](https://github.com/rust-lang/rust/pull/88137)
  - opened by @**Josh Triplett**
  - Also `I-nominated`

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)

- "Distribute cg_clif as rustup component on the nightly channel" [rust#81746](https://github.com/rust-lang/rust/pull/81746) (last review activity: 7 months ago)
- "Replace dominators algorithm with simple Lengauer-Tarjan" [rust#85013](https://github.com/rust-lang/rust/pull/85013) (last review activity: 3 months ago)
- "Add basic checks for well-formedness of `fn`/`fn_mut` lang items" [rust#86246](https://github.com/rust-lang/rust/pull/86246) (last review activity: 3 months ago)
- "Account for incorrect `impl Foo<const N: ty> {}` syntax" [rust#85346](https://github.com/rust-lang/rust/pull/85346) (last review activity: 2 months ago)
- "Diagnostic tweaks" [rust#85102](https://github.com/rust-lang/rust/pull/85102) (last review activity: 2 months ago)
- "Mir-Opt for copying enums with large discrepancies" [rust#85158](https://github.com/rust-lang/rust/pull/85158)
- "Diverging tyvars" [rust#85558](https://github.com/rust-lang/rust/pull/85558)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [80 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [54 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 5 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 46 P-high, 83 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)

- No `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)

- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "regression: int_roundings conflicts with existing APIs" [rust#88971](https://github.com/rust-lang/rust/issues/88971)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "`zvariant` fails to compile on latest nightly: size cannot be statically determined" [rust#89119](https://github.com/rust-lang/rust/issues/89119)
  - @**Aaron Hill** opened PR [rust#89125](https://github.com/rust-lang/rust/pull/89125) (already merged in master)

## Performance logs

> [triage logs for 2021-09-21](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-09-21.md)

A nice week: more improvements than regressions.

Triage done by **@pnkfelix**.
Revision range: [9f85cd6f2ab2769c16e89dcdddb3e11d9736b351..7743c9fadd64886d537966ba224b9c20e6014a59](https://perf.rust-lang.org/?start=9f85cd6f2ab2769c16e89dcdddb3e11d9736b351&end=7743c9fadd64886d537966ba224b9c20e6014a59&absolute=false&stat=instructions%3Au)

2 Regressions, 4 Improvements, 8 Mixed; ??? of them in rollups
44 comparisons made in total

#### Regressions

Point at argument instead of call for their obligations [#88719](https://github.com/rust-lang/rust/issues/88719)

- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e4828d5b7f745a9e867a9b0cc7f080f287bcf55d&end=e36621057d9f497c822eb800934b5933c10510cf&stat=instructions:u) (up to 1.9% on `full` builds of `diesel`)

Rollup of 10 pull requests [#89047](https://github.com/rust-lang/rust/issues/89047)

- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e0c38af27cb5f6f961809601b717d6afc3b190ee&end=207d9558d00dd5cc438a6418ba96912d396e2155&stat=instructions:u) (up to 1.9% on `incr-unchanged` builds of `webrender-wrench`)

#### Improvements

- Avoid unnecessary formatting when trace log level is disabled [#88934](https://github.com/rust-lang/rust/issues/88934)
- Fast reject for NeedsNonConstDrop [#88965](https://github.com/rust-lang/rust/issues/88965)
- Avoid codegen for Result::into_ok in lang_start [#88988](https://github.com/rust-lang/rust/issues/88988)
- Don't inline OnceCell initialization closures [#89031](https://github.com/rust-lang/rust/issues/89031)

#### Mixed

Const drop [#88558](https://github.com/rust-lang/rust/issues/88558)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=c3c0f80d6081092faff801542dd82f0e2420152b&end=cdeba02ff71416e014f7130f75166890688be986&stat=instructions:u) (up to -1.7% on `full` builds of `externs`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c3c0f80d6081092faff801542dd82f0e2420152b&end=cdeba02ff71416e014f7130f75166890688be986&stat=instructions:u) (up to 2.7% on `full` builds of `html5ever`)
- Regression addressed by followup PRs [#88965](https://github.com/rust-lang/rust/issues/88965) (which has landed) and [#88963](https://github.com/rust-lang/rust/issues/88963) (which has not yet landed).

Introduce a fast path that avoids the `debug_tuple` abstraction when deriving Debug for unit-like enum variants. [#88832](https://github.com/rust-lang/rust/issues/88832)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=e36621057d9f497c822eb800934b5933c10510cf&end=78a46efff06558674b51c10d8d81758285746ab5&stat=instructions:u) (up to -4.5% on `full` builds of `stm32f4`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e36621057d9f497c822eb800934b5933c10510cf&end=78a46efff06558674b51c10d8d81758285746ab5&stat=instructions:u) (up to 1.3% on `incr-unchanged` builds of `ctfe-stress-4`)
- Already [triaged by simulacrum](https://github.com/rust-lang/rust/pull/88832#issuecomment-919967148), noting that the instruction count regressions are justified because the same benchmarks do not regress in cycles.

Remove concept of 'completion' from the projection cache [#88945](https://github.com/rust-lang/rust/issues/88945)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=1c03f0d0ba4fee54b7aa458f4d3ad989d8bf7b34&end=e0c38af27cb5f6f961809601b717d6afc3b190ee&stat=instructions:u) (up to -0.3% on `incr-unchanged` builds of `helloworld`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1c03f0d0ba4fee54b7aa458f4d3ad989d8bf7b34&end=e0c38af27cb5f6f961809601b717d6afc3b190ee&stat=instructions:u) (up to 0.8% on `full` builds of `wg-grammar`)
- Wrote [comment](https://github.com/rust-lang/rust/pull/88945#issuecomment-924384164) noting that scope of regression was limited but might still be worth investigating, at least briefly.

Simplify lazy DefPathHash decoding by using an on-disk hash table. [#82183](https://github.com/rust-lang/rust/issues/82183)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=23afad6e7f0ff17320411a274f3a3beb92452235&end=d6cd2c6c877110748296760aefddc21a0ea1d316&stat=instructions:u) (up to -7.7% on `incr-unchanged` builds of `deeply-nested`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=23afad6e7f0ff17320411a274f3a3beb92452235&end=d6cd2c6c877110748296760aefddc21a0ea1d316&stat=instructions:u) (up to 1.9% on `incr-full` builds of `coercions`)
- [Triaged](https://github.com/rust-lang/rust/pull/82183#issuecomment-924367405): the wins here massively outweigh the few slight losses.

Gather module items after lowering. [#88703](https://github.com/rust-lang/rust/issues/88703)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=697118d23eaa5d59940befabedcafbaceaf61a1c&end=7b5f95270f1ef7118ef4d3b47428054d23113ad5&stat=instructions:u) (up to -1.3% on `incr-unchanged` builds of `ctfe-stress-4`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=697118d23eaa5d59940befabedcafbaceaf61a1c&end=7b5f95270f1ef7118ef4d3b47428054d23113ad5&stat=instructions:u) (up to 0.8% on `incr-unchanged` builds of `tuple-stress`)
  https://github.com/rust-lang/rust/issues/88703
- Wrote [wishy-washy comment](https://github.com/rust-lang/rust/pull/88703#issuecomment-924388131) noting that this is indeed a mixed result and it may not be worth investigating, but didn't pull trigger on adding triaged label.

Querify `FnAbi::of_{fn_ptr,instance}` as `fn_abi_of_{fn_ptr,instance}`. [#88575](https://github.com/rust-lang/rust/issues/88575)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5ecc8ad8462574354a55162a0c16b10eb95e3e70&end=91198820d7e697def79177c022b5e98b3d482ddc&stat=instructions:u) (up to -1.0% on `full` builds of `regression-31157`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5ecc8ad8462574354a55162a0c16b10eb95e3e70&end=91198820d7e697def79177c022b5e98b3d482ddc&stat=instructions:u) (up to 1.4% on `incr-unchanged` builds of `regression-31157`)
- Left [comment](https://github.com/rust-lang/rust/pull/88575#issuecomment-924402503) that didn't even bother to take time to be wishy-washy.

Use <[T; N]>::map in Sharded instead of SmallVec and unsafe code [#89069](https://github.com/rust-lang/rust/issues/89069)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=db1fb85cff63ad5fffe435e17128f99f9e1d970c&end=3bb9eecf07630be796c587a4bba70c49ae6a1bae&stat=instructions:u) (up to -0.3% on `incr-unchanged` builds of `ucd`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=db1fb85cff63ad5fffe435e17128f99f9e1d970c&end=3bb9eecf07630be796c587a4bba70c49ae6a1bae&stat=instructions:u) (up to 2.8% on `incr-full` builds of `ctfe-stress-4`)
- Left [comment](https://github.com/rust-lang/rust/pull/89069#issuecomment-924405935); the estimated effect looks pretty different from when the PR was filed vs when it landed, but either way it is probably noise.

Lower only one HIR owner at a time [#87234](https://github.com/rust-lang/rust/issues/87234)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=e7958d35ca2c898a223efe402481e0ecb854310a&end=49c0861ed0fa1d95186d88df0cd4310103e70957&stat=instructions:u) (up to -1.3% on `full` builds of `unused-warnings`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e7958d35ca2c898a223efe402481e0ecb854310a&end=49c0861ed0fa1d95186d88df0cd4310103e70957&stat=instructions:u) (up to 0.4% on `incr-unchanged` builds of `helloworld`)
- [Triaged](https://github.com/rust-lang/rust/pull/87234#issuecomment-924407705)

#### Untriaged Pull Requests

- [#89125 Don't use projection cache or candidate cache in intercrate mode](https://github.com/rust-lang/rust/pull/89125)
- [#89031 Don't inline OnceCell initialization closures](https://github.com/rust-lang/rust/pull/89031)
- [#88945 Remove concept of 'completion' from the projection cache](https://github.com/rust-lang/rust/pull/88945)
- [#88881 Rollup of 7 pull requests](https://github.com/rust-lang/rust/pull/88881)
- [#88824 Rollup of 15 pull requests](https://github.com/rust-lang/rust/pull/88824)
- [#88710 Use index newtyping for TyVid](https://github.com/rust-lang/rust/pull/88710)
- [#88703 Gather module items after lowering.](https://github.com/rust-lang/rust/pull/88703)
- [#88627 Do not preallocate HirIds](https://github.com/rust-lang/rust/pull/88627)
- [#88597 Move global analyses from lowering to resolution](https://github.com/rust-lang/rust/pull/88597)
- [#88575 Querify `FnAbi::of_{fn_ptr,instance}` as `fn_abi_of_{fn_ptr,instance}`.](https://github.com/rust-lang/rust/pull/88575)
- [#88552 Stop allocating vtable entries for non-object-safe methods](https://github.com/rust-lang/rust/pull/88552)
- [#88533 Concrete regions can show up in mir borrowck if the originated from there](https://github.com/rust-lang/rust/pull/88533)
- [#88530 Shrink Session a bit](https://github.com/rust-lang/rust/pull/88530)
- [#88435 Avoid invoking the hir_crate query to traverse the HIR](https://github.com/rust-lang/rust/pull/88435)
- [#88308 Morph `layout_raw` query into `layout_of`.](https://github.com/rust-lang/rust/pull/88308)
- [#87815 encode `generics_of` for fields and ty params](https://github.com/rust-lang/rust/pull/87815)
- [#87781 Remove box syntax from compiler and tools](https://github.com/rust-lang/rust/pull/87781)
- [#87688 Introduce `let...else`](https://github.com/rust-lang/rust/pull/87688)
- [#87234 Lower only one HIR owner at a time](https://github.com/rust-lang/rust/pull/87234)
- [#84373 Encode spans relative to the enclosing item](https://github.com/rust-lang/rust/pull/84373)
- [#83698 Use undef for uninitialized bytes in constants](https://github.com/rust-lang/rust/pull/83698)
- [#83302 Get piece unchecked in `write`](https://github.com/rust-lang/rust/pull/83302)
- [#82183 Simplify lazy DefPathHash decoding by using an on-disk hash table.](https://github.com/rust-lang/rust/pull/82183)
- [#80522 Split rustc_mir](https://github.com/rust-lang/rust/pull/80522)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "On macOS, make strip="symbols" not pass any options to strip" [rust#88137](https://github.com/rust-lang/rust/pull/88137)
  - opened by @**Josh Triplett**
  - nominated for T-compiler by @**estebank**

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.
