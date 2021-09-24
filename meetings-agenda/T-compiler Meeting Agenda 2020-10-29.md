---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-10-29

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
- Pending FCP requests (check your boxes!)
  - "Drop official support for Windows XP" [compiler-team#378](https://github.com/rust-lang/compiler-team/issues/378)
- Things in FCP (make sure you're good with it)
  - "Accept RFC 2951 "Linking modifiers for native libraries"" [compiler-team#356](https://github.com/rust-lang/compiler-team/issues/356)
  - "inherit stable annotations in enum variants and field items" [compiler-team#370](https://github.com/rust-lang/compiler-team/issues/370)
  - "TypeVisitor: use ops::ControlFlow instead of bool" [compiler-team#374](https://github.com/rust-lang/compiler-team/issues/374)
  - "Move graphviz code out of the compiler into external crate" [compiler-team#380](https://github.com/rust-lang/compiler-team/issues/380)
  - "Allow making `RUSTC_BOOTSTRAP` conditional on the crate name" [rust#77802](https://github.com/rust-lang/rust/pull/77802)
- Accepted MCPs
  - "Change type folding to take self by value" [compiler-team#371](https://github.com/rust-lang/compiler-team/issues/371)
- Finalized FCPs (disposition merge)
  - [T-lang] "Stabilize `Poll::is_ready` and `is_pending` as const" [rust#76227](https://github.com/rust-lang/rust/pull/76227)
  - [T-lang] "passes: `check_attr` on more targets" [rust#77015](https://github.com/rust-lang/rust/pull/77015)
  - [T-lang] "stop promoting union field accesses in 'const'" [rust#77526](https://github.com/rust-lang/rust/pull/77526)
- Heads up: pnkfelix plans to check off all the remaining T-compiler checkboxes on [this fcp close for RFC 2048](https://github.com/rust-lang/rfcs/pull/2048#issuecomment-718123002)

### WG checkins

@*T-compiler/WG-meta* checkin by @**nikomatsakis**:
> Checkin text

@*WG-mir-opt* checkin by @**oli**:
* MIR Inlining tracks source scopes [rust#68965](https://github.com/rust-lang/rust/pull/68965)
* Add dest prop pass [rust#72632](https://github.com/rust-lang/rust/pull/72632)
* Remove the copy prop pass for good [rust#77373](https://github.com/rust-lang/rust/pull/77373)
* `-Zunsound-mir-opts` to enable experimental and broken passes [rust#77322](https://github.com/rust-lang/rust/pull/77322), [rust#76899](https://github.com/rust-lang/rust/pull/76899)
* Optimize away drop calls on `!needs_drop` types [rust#76673](https://github.com/rust-lang/rust/pull/76673)
* Optimize away `x == bool_const` and `x != bool_const` [rust#76067](https://github.com/rust-lang/rust/pull/76067)
* Lots of improvements to dataflow [rust#71006](https://github.com/rust-lang/rust/pull/71006)
* `mir::Body` now knows its source/owner [rust#77430](https://github.com/rust-lang/rust/pull/77430)
* Make mir dumps less noisy [rust#75566](https://github.com/rust-lang/rust/pull/75566), [rust#75670](https://github.com/rust-lang/rust/pull/75670)
* Reminder: MIR is now validated for correctness (example: [rust#75562](https://github.com/rust-lang/rust/pull/75562))
    * Please put all testable invariants into the MIR validator

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Do not try to report on closures to avoid ICE" [rust#78268](https://github.com/rust-lang/rust/pull/78268)
    - opened by @**Yuki Okushi**  and assigned to @**Esteban Küber**
    - fixes [rust#78262](https://github.com/rust-lang/rust/issues/78262) (a P-medium panic when computing function signature of closure with trait object)
- "Do not ICE on invalid input" [rust#78422](https://github.com/rust-lang/rust/pull/78422)
    - opened by @**Esteban Küber** and assigned to @**eddyb**
    - PR not yet reviewed
    - Fixes [rust#78372](https://github.com/rust-lang/rust/issues/78372) (ICE on computing layout for a type)

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
- "Tracking issue for renaming crates inside compiler directory" [rust#76425](https://github.com/rust-lang/rust/issues/76425)
  - "Discussed" last week but we didn't find an agreement, @**pnkfelix** suggested maybe a design meeting?
  - References this [MCP](https://github.com/rust-lang/compiler-team/issues/336)
  - The goal is to have all crates under `./compiler` have a consistent name
  - @**nikomatsakis**  summarized the discussion in this [HackMD file](https://hackmd.io/1FgS1fZGSOyWrwhDMq98pw)
  - cc @**DPC** @**Joshua Nelson** @**Eric Huss** @**mark-i-m** @**Vadim Petrochenkov**

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [46 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [29 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 18 P-high, 65 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Increasingly slow compilation as more levels of `async` are added in Rust 1.46" [rust#75992](https://github.com/rust-lang/rust/issues/75992)
  - Opened by @**Nicholas Bishop**
  - Unassigned, not easy to reproduce
  - [@kellerkindt](https://github.com/rust-lang/rust/issues/75992#issuecomment-683270098) and [@algesten](https://github.com/rust-lang/rust/issues/75992#issuecomment-683274620) did some bisecting 
  - @**lcnr** suggests instead of reverting important patches a possible way forward could be implementing some caching like in [PR #76928](https://github.com/rust-lang/rust/issues/75992#issuecomment-713100226)
  - smallest [repro so far](https://github.com/rust-lang/rust/issues/75992#issuecomment-715557750) from @**pnkfelix** and [its stacktrace](https://github.com/rust-lang/rust/issues/75992#issuecomment-716740111)
- "Upgrade to LLVM11 caused a codegen regression on Windows" [rust#78283](https://github.com/rust-lang/rust/issues/78283)
    - opened by @**Jeff Muizelaar** and unassigned
    - Firefox code that used to work on Rust 1.46 started to fail after upgrading to LLVM 11
    - Affects only MSVC
    - @**Nikita Popov** suggests could be related to [rust#74498](https://github.com/rust-lang/rust/issues/74498)
- "Regression parsing closing angle brackets near function ptr return type" [rust#78507](https://github.com/rust-lang/rust/issues/78507)
    - reported by @**David Tolnay** 
    - regression seems to be in [rust#78379](https://github.com/rust-lang/rust/pull/78379)
    - assigned to @**Esteban Küber**, will work on a patch

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
- "ICE:  tuple_fields called on non-tuple:  async fn with unknown macro" [rust#77993](https://github.com/rust-lang/rust/issues/77993)
  - opened by @**NeoRaider** 
  - reviewed by @**Vadim Petrochenkov** and @**LeSeulArtichaut** 
  - This should fix an issue emerged in [#69274](https://github.com/rust-lang/rust/pull/69274) and [#70307](https://github.com/rust-lang/rust/issues/70307)
  - Fixed by PR [rust#78432](https://github.com/rust-lang/rust/pull/78432) already r+ed

## Performance logs

Triage done by **@simulacrum**.

Relatively quiet week for performance.

Revision range: [22e6b9c68941996daa45786b4145e6196e51f0f4..824f900a96d752da2d882863c65f9736e5f2b347](https://perf.rust-lang.org/?start=22e6b9c68941996daa45786b4145e6196e51f0f4&end=824f900a96d752da2d882863c65f9736e5f2b347&absolute=false&stat=instructions%3Au)

0 Regressions, 2 Improvements, 3 Mixed
1 in rollups.

### Regressions

Some mixed results, but no PRs with solely regressions this week.

### Improvements

[#78077](https://github.com/rust-lang/rust/issues/78077)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=1d2726726f8f3128e98191e4c6cb94bd76d0ddd4&end=1eaadebb3dee31669c7649b32747381d11614fae&stat=instructions:u) (up to -9.9% on `incr-full` builds of `deeply-nested-async-check`)

[#77476](https://github.com/rust-lang/rust/issues/77476)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3e0dd24a6c0812eedbb02182a75c352f8a7e184a&end=5171cc76c264fd46f32e140c2e460c77ca87d5e5&stat=instructions:u) (up to -6.2% on `incr-full` builds of `clap-rs-check`)
- Interesting case where instruction counts show major improvement across the
  board, but wall times are either a slight regression or largely unchanged
  (within noise bound).

### Mixed

[#78334](https://github.com/rust-lang/rust/issues/78334)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=ffa2e7ae8fbf9badc035740db949b9dae271c29f&end=f58ffc93815f76576eb56df4bdeec2fe8f12b766&stat=instructions:u) (up to -1.5% on `full` builds of `match-stress-enum-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ffa2e7ae8fbf9badc035740db949b9dae271c29f&end=f58ffc93815f76576eb56df4bdeec2fe8f12b766&stat=instructions:u) (up to 1.2% on `full` builds of `unicode_normalization-check`)
- Unclear as to causes, left nag; will folow-up in a future week.

[#77187](https://github.com/rust-lang/rust/issues/77187)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=0da6d42f297642a60f2640ec313b879b376b9ad8&end=fd542592f08ca0d1f7255600115c2eafdf6b5da7&stat=instructions:u) (up to 2.9% on `full` builds of `regression-31157-debug`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=0da6d42f297642a60f2640ec313b879b376b9ad8&end=fd542592f08ca0d1f7255600115c2eafdf6b5da7&stat=instructions:u) (up to -1.1% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo-debug`)
- Roughly neutral (or an improvement) on wall times; and a long-desired change.
  Not proposing a revert at this time.

[#77876](https://github.com/rust-lang/rust/issues/77876)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=fd542592f08ca0d1f7255600115c2eafdf6b5da7&end=a4d30a7b490065f0aa56f58e508a11546445aea9&stat=instructions:u) (up to -8.1% on `full` builds of `ctfe-stress-4-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=fd542592f08ca0d1f7255600115c2eafdf6b5da7&end=a4d30a7b490065f0aa56f58e508a11546445aea9&stat=instructions:u) (up to 4.4% on `full` builds of `cranelift-codegen-opt`)
- Regression has unclear cause; left a nag for next week.

### Nags requiring follow up

* [#78334](https://github.com/rust-lang/rust/pull/78334)
* [#77876](https://github.com/rust-lang/rust/pull/77876#issuecomment-717326989)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- Confusing type error due to strange inferred type for a closure argument [rustc#41078](https://github.com/rust-lang/rust/issues/41078)
    - Longstsanding issue since 2017, has generated many duplicates since then
    - Seems to impact more from an usability/ergonomics point of view since there are workarounds, example [this comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-298180037) and this [Stack Overflow](https://stackoverflow.com/questions/58773989) answer
    - [First comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-293646723) by @**nikomatsakis** 
    - More [recent comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-358385901) from @**nikomatsakis**
    - [Another explaination](https://github.com/rust-lang/rust/issues/41078#issuecomment-552064766) from @**eddyb** 
    - nightly from June shows a [slightly different error](https://github.com/rust-lang/rust/issues/41078#issuecomment-649465827)
- "Operators in patterns have incorrect priorities" [rust#48501](https://github.com/rust-lang/rust/issues/48501)
    - Old 2018 tracking issue opened by @**Vadim Petrochenkov** for feature gate `half_open_range_patterns`
    - Nominated because `@workingjubilee` (@_**workingj**  on Zulip?) [declared interest](https://github.com/rust-lang/rust/issues/48501#issuecomment-718170922) in drafting an RFC, asks if this issue needs more action
- "SIGSEGV from rustc while building crate `legion`" [rust#77869](https://github.com/rust-lang/rust/issues/77869)
    - Can't compile legion crate since 1.47
    - Nominated so we can try to get eyes on the root cause of the issue.
- "revert #75443 update mir validator" [rust#78410](https://github.com/rust-lang/rust/pull/78410)
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