---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-11-19

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Rust 1.48 is going to be released today!!! :tada:
- Tomorrow we have our [planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html) at <time:2020-11-20T15:00:00-00:00>
- New MCPs (take a look, see if you like them!)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Rename `rustc_ty`" [compiler-team#387](https://github.com/rust-lang/compiler-team/issues/387)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
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
  - No FCP requests this time.
- Accepted MCPs
  - "TypeVisitor: do not hard-code a `ControlFlow<()>` result" [compiler-team#383](https://github.com/rust-lang/compiler-team/issues/383)
- Finalized FCPs (disposition merge)
  - [T-lang] "Add checking for no_mangle to unsafe_code lint" [rust#72209](https://github.com/rust-lang/rust/pull/72209)
  - [T-libs] "Implement Error for &(impl Error)" [rust#75180](https://github.com/rust-lang/rust/pull/75180)
  - [T-libs] "Stabilize clamp" [rust#77872](https://github.com/rust-lang/rust/pull/77872)

### WG checkins

@*WG-self-profile* checkin by @**Wesley Wiser**:
> Things have settled down a bit since the last checkin but we still have a few items to highlight:
> 
> - @**eddyb** has opened their PR for hardware performance counter support in `measureme` [measureme#143](https://github.com/rust-lang/measureme/pull/143). They've also written an extensive and fascinating post about this project [here](https://hackmd.io/sH315lO2RuicY-SEt7ynGA?view)).
> - @**mw** contributed a fix that allows us to profile extremely large crates like `rustc_middle`. Previously, this would trip an internal assertion and ICE the compiler [measureme#137](https://github.com/rust-lang/measureme/pull/137).
> - @**wesleywiser** added a function that allows recording multiple arguments per event, not just a single one [measureme#138](https://github.com/rust-lang/measureme/pull/138). This is used downstream in rustc to record both CGU names as well as the estimated size during codegen [rustc#78702](https://github.com/rust-lang/rust/pull/78702).
> - @**Mark-Simulacrum** contributed a fix to allow perf.rlo to continue processing the new storage format in-memory in the web server [measureme#142](https://github.com/rust-lang/measureme/pull/142).
> - Finally, we shipped measureme 9.0 with all of the above improvements and fixes :tada:

@*WG-traits* checkin by @**nikomatsakis** and @**Jack Huey**:
> Most of the work has been focused around aligning chalk-ir and rustc, with the eventual goal of extracting out a shared type library.
>
> On Chalk side:
> - Add support for `Variance` ([chalk#609](https://github.com/rust-lang/chalk/pull/609))
> - Rename `TyData` to `TyKind` ([chalk#628](https://github.com/rust-lang/chalk/pull/628))
> - Remove `TypeName` and merge into `TyKind` ([chalk#629](https://github.com/rust-lang/chalk/pull/629))
> - Remove `TargetInterner` ([chalk#648](https://github.com/rust-lang/chalk/pull/648))
> - Use `ControlFlow` and `BreakTy` for `Visitor` ([chalk#645](https://github.com/rust-lang/chalk/pull/645) and [chalk#651](https://github.com/rust-lang/chalk/pull/651))
> - Add Empty and Erased regions ([chalk#650](https://github.com/rust-lang/chalk/pull/650))
> - Many bug fixes
>
> On rustc side:
> - Continued work on tracking late-bound vars
> - Chalk updates
> - Initial work on removing `ty::Param`

[chalk#609]: https://github.com/rust-lang/chalk/pull/609
[chalk#628]: https://github.com/rust-lang/chalk/pull/628
[chalk#629]: https://github.com/rust-lang/chalk/pull/629
[chalk#648]: https://github.com/rust-lang/chalk/pull/648
[chalk#645]: https://github.com/rust-lang/chalk/pull/645
[chalk#650]: https://github.com/rust-lang/chalk/pull/650
[chalk#651]: https://github.com/rust-lang/chalk/pull/651

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.

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
- "Don't leak return value after panic in drop" [rust#78373](https://github.com/rust-lang/rust/pull/78373)
  - Opened by @**Matthew Jasper** 
  - Assigned to @**pnkfelix**
  - Reviewwed by @**davidtwco**
  - Closes [rust#47949](https://github.com/rust-lang/rust/issues/47949), a `P-medium` unsoundness by which panics in destructors could cause the return value to be leaked
  - @**pnkfelix** has [some comments](https://github.com/rust-lang/rust/pull/78373#issuecomment-726470113) w.r.t. the perf regression (~5% acceptable being an unsoundness bug) but perhaps not rush a merge in this release cycle.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [46 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [30 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-critical, 0 P-high, 7 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 22 P-high, 67 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Upgrade to LLVM11 caused a codegen regression on Windows" [rust#78283](https://github.com/rust-lang/rust/issues/78283)
  - [Discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-11-12.20.2354818/near/216482008)
  - opened by @**Jeff Muizelaar**
  - assigned to  @**pnkfelix** 
  - Firefox code that used to work on Rust 1.46 started to fail after upgrading to LLVM 11
  - Affects only MSVC
  - @**Nikita Popov** suggests could be related to [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - @**Jeff Muizelaar** suggests to be related to LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943), provides a [minimal repro](https://github.com/rust-lang/rust/issues/78283#issuecomment-720156273)
  - @**pnkfelix** has patch in progress for LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943)
- "No error reported when a generic parameter doesn't meet the requirement of an associated type" [rust#78893](https://github.com/rust-lang/rust/issues/78893)
  - [Discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-11-12.20.2354818/near/216482210), and [a topic was created to discuss it on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/213817-t-lang/topic/.2378893.20no.20err.20when.20genrc.20param.20doesnt.20meet.20req.20of.20assoc.20type)
  - Nightly regression
  - Regressed on [rust#73905](https://github.com/rust-lang/rust/pull/73905) cc @**Matthew Jasper**
- "alacritty/vte fails to build on rustc master   (mutable references are not allowed in constant functions)" [rust#79152](https://github.com/rust-lang/rust/issues/79152)
  - Reported by @**matthiaskrgr**
  - Affects Alacritty/vte
  - Nightly regression
  - [There's a very simple MCVE](https://github.com/rust-lang/rust/issues/79152#issuecomment-729318274)
  - It seems that the culprit is [rust#74989](https://github.com/rust-lang/rust/pull/74989)

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "New "warning incompatible with previous forbid in same scope" error" [rust#77713](https://github.com/rust-lang/rust/issues/77713)
  - Opened by @**Nemo157** 
  - Assigned to @**simulacrum**
  - @**simulacrum** has a PR [#78864](https://github.com/rust-lang/rust/pull/78864) which is in proposed FCP with intention to merge state.
- "1.48 beta broken on mips due to copy_file_range EOVERFLOW" [rust#78979](https://github.com/rust-lang/rust/issues/78979)
  - Reviewed by @**simulacrum**
  - Beta regression
  - This is already fixed on stable and nightly and a beta backport is approved and waiting to be done.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

This was a relatively mixed week, with some very large performance wins balanced out by a relatively large range of benchmarks seeing small performance regressions. 

The winner this week for largest performance improvement was [#78826](https://github.com/rust-lang/rust/issues/78826) which saw huge gains in the relatively new derive stress benchmark.

[Triage done by **@rylevick**](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs).
Revision range: [cf9cf7c923eb01146971429044f216a3ca905e06..c919f490bbcd2b29b74016101f7ec71aaa24bdbb](https://perf.rust-lang.org/?start=cf9cf7c923eb01146971429044f216a3ca905e06&end=c919f490bbcd2b29b74016101f7ec71aaa24bdbb&absolute=false&stat=instructions%3Au)

5 Regressions, 5 Improvements, 2 Mixed

6 rollups had perfomance impacts (3 negative, 1 positive, 2 mixed)

### Regressions

[#76256](https://github.com/rust-lang/rust/issues/76256)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=7f5a42b073dc2bee2aa625052eb066ee07072048&end=9722952f0bed5815cb22cb4878be09fb39f92804&stat=instructions:u) (up to 1.4% on `incr-unchanged` builds of `externs-check`)
- Changes to the serialization of span end line/column.
- This regresses performance slightly but is a necessary correctness fix that was affecting incremental builds (see the linked PR for many related issues). The performance lost here is balanced out by a related change to the [hashing algorithm](https://github.com/rust-lang/rust/pull/77476) introduced previously.

[#78998](https://github.com/rust-lang/rust/issues/78998)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=9722952f0bed5815cb22cb4878be09fb39f92804&end=e80ee05bfc135d7d800f3fcc89bc005d6858cd9b&stat=instructions:u) (up to 1.2% on `incr-unchanged` builds of `deep-vector-check`)
- Rollup
- Most likely introduced by [#78836](https://github.com/rust-lang/rust/pull/78836) (Implement destructuring assignment for structs and slices)

[#79065](https://github.com/rust-lang/rust/issues/79065)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=361c4ea22486557ec50c4fc6a93d60e7476ecbea&end=75042566d1c90d912f22e4db43b6d3af98447986&stat=instructions:u) (up to 2.9% on `full` builds of `deeply-nested-async-check`)
- Rollup

[#78801](https://github.com/rust-lang/rust/issues/78801)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=9b2b02a840f358bcadef5c3ae861d2852da20b3d&end=b5c37e86ff1782923e3abfbf5491dd383fcf827d&stat=instructions:u) (up to 2.3% on `full` builds of `inflate-check`)
- Initial implementation of precise capture analysis in closures

[#79128](https://github.com/rust-lang/rust/issues/79128)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=54508a26eb0595eb8417a4643f2ee572d6ca33d3&end=efcb3b39203a0d54269ca274601b8f73207fe10d&stat=instructions:u) (up to 2.5% on `full` builds of `ctfe-stress-4-check`)
- Rollup
- The affected benchmark is prone to noise, so it's not sure that this is an actual regression.

### Improvements

[#78826](https://github.com/rust-lang/rust/issues/78826)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=f036a8f3bee55ea7566ac7a631ad3193696204b4&end=a38f8fb674e6a0a6fc358655c6ce6069235f621a&stat=instructions:u) (up to -49.0% on `incr-unchanged` builds of `derive-check`)
- Change how macro_rules scopes are tracked during expansion so that they do not grow to big.
- This was particularly helpful in the new derive stress test benchmark, but yielded improvements in several other benchmarks.

[#78825](https://github.com/rust-lang/rust/issues/78825)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=38030ffb4e735b26260848b744c0910a5641e1db&end=d4ea0b3e46a0303d5802b632e88ba1ba84d9d16f&stat=instructions:u) (up to -1.5% on `incr-patched: println` builds of `coercions-debug`)
- Changes several usages of `unwrap_or` to `unwrap_or_else` so that the else case is lazily evaluated.

[#78956](https://github.com/rust-lang/rust/issues/78956)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5404efc28a0cddee103ef6396c48ea71ff9631c8&end=77180db6f81ffdacd14545f1df0a5db55dac1706&stat=instructions:u) (up to -1.1% on `incr-patched: println` builds of `coercions-debug`)
- Rollup

[#78313](https://github.com/rust-lang/rust/issues/78313)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=c6a6105bccd5599daf0ecef40c4b5ffa175fc1c1&end=9b2b02a840f358bcadef5c3ae861d2852da20b3d&stat=instructions:u) (up to -2.1% on `full` builds of `inflate-check`)
- Internal refactor ([proposed here](https://github.com/rust-lang/compiler-team/issues/371)) where `TypeFoldable` takes self by value instead of reference.

[#78779](https://github.com/rust-lang/rust/issues/78779)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=efcb3b39203a0d54269ca274601b8f73207fe10d&end=e0ef0fc392963438af5f0343bf7caa46fb9c3ec3&stat=instructions:u) (up to -2.0% on `full` builds of `inflate-check`)
- Internal refactoring which introduces `BreakTy` in `TypeVisitor`.

### Mixed

[#78920](https://github.com/rust-lang/rust/issues/78920)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=cf9cf7c923eb01146971429044f216a3ca905e06&end=38030ffb4e735b26260848b744c0910a5641e1db&stat=instructions:u) (up to -2.5% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo-opt`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=cf9cf7c923eb01146971429044f216a3ca905e06&end=38030ffb4e735b26260848b744c0910a5641e1db&stat=instructions:u) (up to 1.5% on `incr-patched: println` builds of `coercions-debug`)
- Rollup

[#79104](https://github.com/rust-lang/rust/issues/79104)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f5230fbf76bafd86ee4376a0e26e551df8d17fec&end=c6a6105bccd5599daf0ecef40c4b5ffa175fc1c1&stat=instructions:u) (up to 6.5% on `full` builds of `keccak-opt`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=f5230fbf76bafd86ee4376a0e26e551df8d17fec&end=c6a6105bccd5599daf0ecef40c4b5ffa175fc1c1&stat=instructions:u) (up to -2.1% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo-debug`)
- Rollup

### Nags requiring follow up

No nags this week.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Don't leak return value after panic in drop" [rust#78373](https://github.com/rust-lang/rust/pull/78373)
  - waiting on team, see :point_up_2: 

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.