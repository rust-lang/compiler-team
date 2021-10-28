---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-11-12

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow friday 13th is rustc RFC backlog day
- Next Thursday 19th we are releasing Rust 1.48
- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
  - "Accept RFC 2951 "Linking modifiers for native libraries"" [compiler-team#356](https://github.com/rust-lang/compiler-team/issues/356)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
- Pending FCP requests (check your boxes!)
  - "Drop official support for Windows XP" [compiler-team#378](https://github.com/rust-lang/compiler-team/issues/378)
- Things in FCP (make sure you're good with it)
  - "TypeVisitor: do not hard-code a `ControlFlow<()>` result" [compiler-team#383](https://github.com/rust-lang/compiler-team/issues/383)
- Accepted MCPs
  - "Move graphviz code out of the compiler into external crate" [compiler-team#380](https://github.com/rust-lang/compiler-team/issues/380)
- Finalized FCPs (disposition merge)
  - [T-libs] "Rename/Deprecate LayoutErr in favor of LayoutError" [rust#77691](https://github.com/rust-lang/rust/pull/77691)
  - [T-lang] "repr(transparent) on generic type skips "exactly one non-zero-sized field" check" [rust#77841](https://github.com/rust-lang/rust/issues/77841)
  - [T-lang] "consider assignments of union field of ManuallyDrop type safe" [rust#78068](https://github.com/rust-lang/rust/pull/78068)

### WG checkins

@*WG-rfc-2229* checkin by @**nikomatsakis** and @**Matthew Jasper**:
- PR (#78801) in review for implementing precise capture analysis, and adding feature gate for 2229 `capture_disjoint_fields`
- Known issue: Statements like `let _ = x` will make the compiler ICE when used within a closure with the feature enabled. More generally speaking the issue is caused by let statements that create no bindings and are init'ed using a Place expression.
- Immediate next work: start updating MIR lowering

@*WG-rls2.0* checkin by @**matklad**:

Nothing super big happened, the last couple of months were rather quite.

- a lot of quality-of-life improvements, assits & buf fixes
- rust-analyzer pre-warms caches on startup, whihc should reduce latency in some cases.
- improved syntax tree editing infra, which powers new configurable auto-import
- better support for conditional compilation (un-cfged code is grayed out)
- hack to support `cfg-if` in standard libray. 
  This is a bit of an open question: how rust-analyzer should deal with crates.io deps of std? They are not vendored into rust-src component. Might be changing soon!
  
Note to @matklad: The last changelog as of this checkin is https://rust-analyzer.github.io/thisweek/2020/11/09/changelog-50.html

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Revert "Revert "resolve: Avoid "self-confirming" import resolutions in one more case""" [rust#78784](https://github.com/rust-lang/rust/pull/78784)
  - opened by @**simulacrum** 
  - r+'ed by @**Vadim Petrochenkov** 
  - scheduled for 1.49
  - reverts [rust#77421](https://github.com/rust-lang/rust/pull/77421) to fix [rust#77586](https://github.com/rust-lang/rust/issues/77586) (error on import resolution)

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
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [45 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [29 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 5 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 21 P-high, 67 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Upgrade to LLVM11 caused a codegen regression on Windows" [rust#78283](https://github.com/rust-lang/rust/issues/78283)
  - opened by @**Jeff Muizelaar**
  - assigned to  @**pnkfelix** 
  - Firefox code that used to work on Rust 1.46 started to fail after upgrading to LLVM 11
  - Affects only MSVC
  - @**Nikita Popov** suggests could be related to [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - @**Jeff Muizelaar** suggests to be related to LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943), provides a [minimal repro](https://github.com/rust-lang/rust/issues/78283#issuecomment-720156273)
  - @**pnkfelix** has patch in progress for LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943)
- "No error reported when a generic parameter doesn't meet the requirement of an associated type" [rust#78893](https://github.com/rust-lang/rust/issues/78893)
  - Nightly regression
  - Regressed on [rust#73905](https://github.com/rust-lang/rust/pull/73905) cc @**Matthew Jasper**

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

A mixed week with improvements still outweighing regressions. Perhaps the biggest highlight was the move to compiling rustc crates [with the initial-exec TLS model](https://github.com/rust-lang/rust/pull/78201) which results in fewer calls to `_tls_get_addr` and thus faster compile times.

Triage done by **@rylevick**.
Revision range: [5cdf5b882da9e8b7c73b5cadeb7745cb68f6ff63..cf9cf7c923eb01146971429044f216a3ca905e06](https://perf.rust-lang.org/?start=5cdf5b882da9e8b7c73b5cadeb7745cb68f6ff63&end=cf9cf7c923eb01146971429044f216a3ca905e06&absolute=false&stat=instructions%3Au)

1 Regressions, 2 Improvements, 2 Mixed

### Regressions

[#78267](https://github.com/rust-lang/rust/issues/78267)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f92b931045dabb00b892519d3451cb41d41f2d31&end=8532e742fc6ec210fab69b8192190bc40c685912&stat=instructions:u) (up to 1.2% on `full` builds of `deeply-nested-async-check`)
- This might be noise as this only affects one benchmark negatively, and that benchmark tends to be on the noisier side. 

### Improvements

[#78280](https://github.com/rust-lang/rust/issues/78280)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=75f1db1102076e416e1154b241b4fc95c01c0d7b&end=89631663b7ad2d46d3e4f52bcfa7bee2be9eb82b&stat=instructions:u) (up to -1.3% on `incr-patched: new row` builds of `tuple-stress-opt`)

[#78201](https://github.com/rust-lang/rust/issues/78201)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=fe8f02690804d5ee696bd3bca9515f5f71857e3b&end=25f6938da459a57b43bdf16ed6bdad3225b2a3ce&stat=instructions:u) (up to -7.2% on `incr-full` builds of `webrender-wrench-check`)
- This change may produce similar performance gains in related tooling such as rustdoc and clippy.

### Mixed

[#77227](https://github.com/rust-lang/rust/issues/77227)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=601c13c6fda6a7db423c974797e36c79a9a0c0ac&end=75f1db1102076e416e1154b241b4fc95c01c0d7b&stat=instructions:u) (up to -5.0% on `incr-unchanged` builds of `deeply-nested-async-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=601c13c6fda6a7db423c974797e36c79a9a0c0ac&end=75f1db1102076e416e1154b241b4fc95c01c0d7b&stat=instructions:u) (up to 1.3% on `full` builds of `ctfe-stress-4-check`)

[#78410](https://github.com/rust-lang/rust/issues/78410)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=f2ea2f648e117013b0217f001088ae89e0f163ca&end=87a0997ef9c0bfad0ba362741afa601d8fb285b8&stat=instructions:u) (up to -26.0% on `incr-unchanged` builds of `deeply-nested-async-opt`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f2ea2f648e117013b0217f001088ae89e0f163ca&end=87a0997ef9c0bfad0ba362741afa601d8fb285b8&stat=instructions:u) (up to 3.8% on `full` builds of `ctfe-stress-4-check`)
- This change is a revert of [a previous change](https://github.com/rust-lang/rust/pull/75443), and at least one user was reporting [massive performance gains](https://github.com/rust-lang/rust/pull/78410#issuecomment-716829861).

### Nags requiring follow up

The compiler team is once again requested to look into:

- <https://github.com/rust-lang/rust/pull/78432#issuecomment-721388323>

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "SIGSEGV from rustc while building crate `legion`" [rust#77869](https://github.com/rust-lang/rust/issues/77869)
  - Can't compile legion crate since 1.47
  - Nominated so we can try to get eyes on the root cause of the issue.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.