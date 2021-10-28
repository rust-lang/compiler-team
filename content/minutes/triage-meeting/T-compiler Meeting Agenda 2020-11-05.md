---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-11-05

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow, friday 6th at <time:2020-11-06T15:00:00+00:00> we will have rustc regression review day. Due to daylight saving time in US the meeting may be 1 hour later than the usual slot for you.
    - see also [compiler-team#382](https://github.com/rust-lang/compiler-team/issues/382), and the [proposed agenda](https://hackmd.io/Z7IGJx-JT_WGPYS7Kqxfbg)
- New MCPs (take a look, see if you like them!)
  - "Accept RFC 2951 "Linking modifiers for native libraries"" [compiler-team#356](https://github.com/rust-lang/compiler-team/issues/356)
  - "inherit stable annotations in enum variants and field items" [compiler-team#370](https://github.com/rust-lang/compiler-team/issues/370)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
- Old MCPs (not seconded, take a look)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
- Pending FCP requests (check your boxes!)
  - "Drop official support for Windows XP" [compiler-team#378](https://github.com/rust-lang/compiler-team/issues/378)
- Things in FCP (make sure you're good with it)
  - "Move graphviz code out of the compiler into external crate" [compiler-team#380](https://github.com/rust-lang/compiler-team/issues/380)
- Accepted MCPs
  - "TypeVisitor: use ops::ControlFlow instead of bool" [compiler-team#374](https://github.com/rust-lang/compiler-team/issues/374)
- Finalized FCPs (disposition merge)
  - "Accept RFC 2951 "Linking modifiers for native libraries"" [compiler-team#356](https://github.com/rust-lang/compiler-team/issues/356)
  - "inherit stable annotations in enum variants and field items" [compiler-team#370](https://github.com/rust-lang/compiler-team/issues/370)
  - "Allow making `RUSTC_BOOTSTRAP` conditional on the crate name" [rust#77802](https://github.com/rust-lang/rust/pull/77802)
  - [T-lang T-libs] "Tracking Issue for raw_ref_macros" [rust#73394](https://github.com/rust-lang/rust/issues/73394)
  - [T-libs] "Implement TryFrom between NonZero types." [rust#77339](https://github.com/rust-lang/rust/pull/77339)
  - [T-libs] "Define `fs::hard_link` to not follow symlinks." [rust#78026](https://github.com/rust-lang/rust/pull/78026)
  - [T-libs] "Check for exhaustion in RangeInclusive::contains and slicing" [rust#78109](https://github.com/rust-lang/rust/pull/78109)

### WG checkins

@*WG-polymorphization* checkin by @**davidtwco**:
> Not a lot has happened with the polymorphization working group, everyone involved has been focusing on other work recently.

@*WG-polonius* checkin by @**lqd** and @**nikomatsakis** 
> Nothing to report at this time

### Unilateral beta approvals

- "Add delay_span_bug to no longer ICE" [rust#78645](https://github.com/rust-lang/rust/pull/78645)
  - Opened by [JulianKnodt](https://github.com/JulianKnodt)
  - Assigned to and r+ from @**Esteban Küber** 
  - Fixes [#78622](https://github.com/rust-lang/rust/issues/78622)
  - pnkfelix beta-approved shortly before this meeting.

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "revert #75443, update mir validator" [rust#78410](https://github.com/rust-lang/rust/pull/78410)
  - opened by @**lcnr** 
  - assigned to @**nikomatsakis** and r+'ed, left [some comments](https://github.com/rust-lang/rust/pull/78410#pullrequestreview-521756705)
  - @**lcnr** mentions that this PR could result in a breaking change due to PR [rust#75443](https://github.com/rust-lang/rust/pull/75443) allowing to compile code [such as this](https://github.com/rust-lang/rust/pull/78410#issuecomment-717814133)
  - Link to [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/182449-t-compiler.2Fhelp/topic/generator.20upvars/near/214617274)


[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No stable nominations for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [46 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [30 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 21 P-high, 67 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Increasingly slow compilation as more levels of `async` are added in Rust 1.46" [rust#75992](https://github.com/rust-lang/rust/issues/75992)
  - Opened by @**Nicholas Bishop**
  - Unassigned, not easy to reproduce
  - [@kellerkindt](https://github.com/rust-lang/rust/issues/75992#issuecomment-683270098) and [@algesten](https://github.com/rust-lang/rust/issues/75992#issuecomment-683274620) did some bisecting 
  - @**lcnr** suggests instead of reverting important patches a possible way forward could be implementing some caching like in [PR #76928](https://github.com/rust-lang/rust/issues/75992#issuecomment-713100226)
  - smallest [repro so far](https://github.com/rust-lang/rust/issues/75992#issuecomment-715557750) from @**pnkfelix** and [its stacktrace](https://github.com/rust-lang/rust/issues/75992#issuecomment-716740111)
  - @**pnkfelix** confirms a compile-time regression for a test case to be solved by PR [rust#78410](https://github.com/rust-lang/rust/pull/78410)
- "Upgrade to LLVM11 caused a codegen regression on Windows" [rust#78283](https://github.com/rust-lang/rust/issues/78283)
  - opened by @**Jeff Muizelaar** and unassigned
  - Firefox code that used to work on Rust 1.46 started to fail after upgrading to LLVM 11
  - Affects only MSVC
  - @**Nikita Popov** suggests could be related to [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - @**Jeff Muizelaar** suggests to be related to LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943), provides a [minimal repro](https://github.com/rust-lang/rust/issues/78283#issuecomment-720156273)

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- "regression: could not fully normalize type" [rust#78139](https://github.com/rust-lang/rust/issues/78139)
  - Opened and assigned to @**simulacrum** 
  - Regression seems to be in PR [rust#70793](https://github.com/rust-lang/rust/pull/70793) and related to [rust#54114](https://github.com/rust-lang/rust/issues/54114)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "Build hang on Linux with nightly and beta toolchains" [rust#76980](https://github.com/rust-lang/rust/issues/76980)
  - Unassigned
  - Build hangs on beta
  - @**Eric Huss** bisected it to [rust#73526](https://github.com/rust-lang/rust/pull/73526)
  - @**cuviper** [is not aware of any LLVM 11 issue like that ](https://github.com/rust-lang/rust/issues/76980#issuecomment-695805807)
  - A [possible workaround was added](https://github.com/rust-lang/rust/pull/77642) by @**Pietro Albini** but it doesn't seem to be confirmation if works or not.
  - @**cuviper** believes the real issue stems in PR [rustc#74163](https://github.com/rust-lang/rust/pull/74163)
  - There's a long technical analysis in the [last comment](https://github.com/rust-lang/rust/issues/76980#issuecomment-705800997)
  - @**simulacrum** asked `jethrogb` and @**cuviper** if they could open a PR about it

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

Triage done by **@simulacrum**.

A number of improvements on various benchmarks. The most notable news this week in compiler performance is the progress on instruction metric collection on a per-query level; see
[measureme#143](https://github.com/rust-lang/measureme/pull/143) for the latest.

Otherwise, this week was an excellent one for performance (though mostly on stress tests rather than commonly seen code).

Revision range: [824f900a96d752da2d882863c65f9736e5f2b347..5cdf5b882da9e8b7c73b5cadeb7745cb68f6ff63](https://perf.rust-lang.org/?start=824f900a96d752da2d882863c65f9736e5f2b347&end=5cdf5b882da9e8b7c73b5cadeb7745cb68f6ff63&absolute=false&stat=instructions%3Au)

0 Regressions, 5 Improvements, 0 Mixed

### Improvements

[#78323](https://github.com/rust-lang/rust/issues/78323)
- Slight improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=db241bb0c8d257e13c1560f6250e49879477039e&end=2eb4fc800aaf5006f89af3af591e2aa34f469d81&stat=instructions:u) (up to -1.3% on `incr-unchanged` builds of `packed-simd-check`)
- Possibly within noise; unclear.

[#78508](https://github.com/rust-lang/rust/issues/78508)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=a53fb30e3bf2655b0563da6d561c23cda5f3ec11&end=6bdae9edd0cc099daa6038bca469dc09b6fc078a&stat=instructions:u) (up to -2.0% on `incr-unchanged` builds of `packed-simd-check`)

[#78432](https://github.com/rust-lang/rust/issues/78432)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=c792f03379617efa7deb6ab8c20709c45e81670a&end=0d33ab7af4aebe786410b4c10367eb6ddf13af0b&stat=instructions:u) (up to -5.7% on `full` builds of `match-stress-enum-check`)
- An unexpected improvement for a seemingly bugfix PR; would be good to verify
  this is not an unintentional behavior change (nag left).

[#78553](https://github.com/rust-lang/rust/issues/78553)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=e8cbaf2ae7fc5c564cacedbe55664797dc62d920&end=1899c489d4c30b2640d30b77ac04f0a548834d81&stat=instructions:u) (up to -10.1% on `full` builds of `match-stress-enum-check`)

[#78448](https://github.com/rust-lang/rust/issues/78448)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=4c0c5e099a3b1f1c6ad53115189c2710495588b3&end=7b5a9e9cd27f01311b5e19cefa1fb574d086d3da&stat=instructions:u) (up to -95.4% on `full` builds of `externs-debug`)
- Notable case of adding a new benchmark to perf; this is much appreciated and
  illustrates that perf does not yet have full coverage of Rust code (though
  this is not really expected either, though is always a goal).

[#78430](https://github.com/rust-lang/rust/issues/78430)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=31ee872db5aae4750e3da1ca4ed1523c4356947f&end=f9187adaef2005b903f666bf323ac675cadf8407&stat=instructions:u) (up to -23.6% on `incr-patched: println` builds of `unicode_normalization-check`)
- Fairly large refactor to the match checking infrastructure, with a
  correspondigly large performance improvement. There does appear to be a slight
  regression on #58319, but this is in the "Improvements" category since it seem
  categorically a win.

### Nags requiring follow up

Compiler team attention requested:

- <https://github.com/rust-lang/rust/pull/78432#issuecomment-721388323>


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- Confusing type error due to strange inferred type for a closure argument [rustc#41078](https://github.com/rust-lang/rust/issues/41078)
  - Longstsanding issue since 2017, has generated many duplicates since then
  - Seems to impact more from an usability/ergonomics point of view since there are workarounds, example [this comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-298180037) and this [Stack Overflow](https://stackoverflow.com/questions/58773989) answer
  - [First comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-293646723) by @**nikomatsakis** 
  - More [recent comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-358385901) from @**nikomatsakis**
  - [Another explaination](https://github.com/rust-lang/rust/issues/41078#issuecomment-552064766) from @**eddyb** 
  - nightly from June shows a [slightly different error](https://github.com/rust-lang/rust/issues/41078#issuecomment-649465827)
- "SIGSEGV from rustc while building crate `legion`" [rust#77869](https://github.com/rust-lang/rust/issues/77869)
  - Can't compile legion crate since 1.47
  - Nominated so we can try to get eyes on the root cause of the issue.
- "revert #75443 update mir validator" [rust#78410](https://github.com/rust-lang/rust/pull/78410)
  - beta nominated
  - opened by @**lcnr** 
  - assigned to @**nikomatsakis** 
  - @**lcnr** mentions that this PR could result in a breaking change due to PR [rust#75443](https://github.com/rust-lang/rust/pull/75443) allowing to compile code [such as this](https://github.com/rust-lang/rust/pull/78410#issuecomment-717814133)
  - Link to [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/182449-t-compiler.2Fhelp/topic/generator.20upvars/near/214617274)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "RFC: -C export-executable-symbols" [rfcs#2841](https://github.com/rust-lang/rfcs/pull/2841)
  - Submitted by `@MaulingMonkey`
  - RFC proposes adding the ability to export symbols from executables, not just dylibs, via a new compiler flag `-C export-executable-symbols`
  - @**pnkfelix** [has some questions](https://github.com/rust-lang/rfcs/pull/2841#issuecomment-569852146)
  - not yet reached a consensus