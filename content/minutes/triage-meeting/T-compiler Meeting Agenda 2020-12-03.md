---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-12-03

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Members of the compiler team and the compiler contributors team received a mail and a github ping this morning about the foundation, please check it out!
- Rustc Steering Mtg Friday Dec 4: Performance Goals for 2021
- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
- Pending FCP requests (check your boxes!)
  - "Drop official support for Windows XP" [compiler-team#378](https://github.com/rust-lang/compiler-team/issues/378)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - [T-libs] "Tracking issue for methods converting `bool` to `Option<T>`" [rust#64260](https://github.com/rust-lang/rust/issues/64260)
  - [T-libs] "Stabilize the backtrace feature." [rust#72981](https://github.com/rust-lang/rust/pull/72981)
  - [T-libs] "Stabilize `IpAddr::is_ipv4` and `is_ipv6` as const" [rust#76226](https://github.com/rust-lang/rust/pull/76226)
  - [T-libs] "stabilize const_int_pow" [rust#76829](https://github.com/rust-lang/rust/pull/76829)
  - [T-libs] "Impl Default for PhantomPinned" [rust#77893](https://github.com/rust-lang/rust/pull/77893)
  - [T-libs] "Stabilize alloc::Layout const functions" [rust#78305](https://github.com/rust-lang/rust/pull/78305)
  - [T-libs] "Stabilize refcell_take" [rust#78608](https://github.com/rust-lang/rust/pull/78608)
  - [T-libs] "Implement PartialEq for proc_macro::Ident == strings" [rust#78634](https://github.com/rust-lang/rust/pull/78634)
  - [T-libs] "Add PartialEq<char> for proc_macro::Punct" [rust#78636](https://github.com/rust-lang/rust/pull/78636)

### WG checkins

@*WG-async-foundations* checkin by @**tmandry** @**nikomatsakis**:

> The [Stream RFC](https://github.com/rust-lang/rfcs/pull/2996) has been making progress (nearly ready for FCP imo) and the [must_not_await_lint RFC](https://github.com/rust-lang/rfcs/pull/3014) has just entered FCP. Compiler-wise, we still need more help with fixing bugs and improving diagnostics. I'm happy to mentor anyone and everyone who wants to contribute. The ongoing and upcoming work can be seen on our [project board](https://github.com/orgs/rust-lang/projects/2).

@*WG-diagnostics* checkin by @**Esteban Küber**:

> lots of great progress on bringing const generics to the level of quality we want, some improvements in parser and macro diagnostics, new suggestions, quite a bit of clean up throughout despite these last two months being "quieter" than normal.
For the next cycle I will have more time to dedicate to increased tracking and focus of the work, so hopefully next update will be more substantive.
> 
> - List of [user visible changes](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-12-03.20.2354818/near/218665719)
> - List of [Infra changes](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-12-03.20.2354818/near/218665746)
> 
> Full detailed checkin [at this Zulip link](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-12-03.20.2354818/near/218665719)

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Check projection predicates satisfy bounds" [rust#79543](https://github.com/rust-lang/rust/pull/79543)
  - Opened by @**Matthew Jasper**
  - Not merged yet, Waiting for review
  - Fixes a `P-critical` issue [rust#78893](https://github.com/rust-lang/rust/issues/78893)
  - Restores the behaviour antecedent of [rust#73905](https://github.com/rust-lang/rust/pull/73905) and fixes [rust#78893](https://github.com/rust-lang/rust/issues/78893)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Revert "Allow dynamic linking for iOS/tvOS targets."" [rust#77716](https://github.com/rust-lang/rust/pull/77716)
  - Reverts a [previous patch](https://github.com/rust-lang/rust/pull/73516) that allowed dynamic libs linking on iOS/tvOS builds. This patch **blocks** again dynamic libs linking and restores building again code that is running in production

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

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [48 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [32 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 3 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-critical, 0 P-high, 8 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 25 P-high, 67 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Switching to opt-level=z on i686-windows-msvc triggers STATUS_ACCESS_VIOLATION" [rust#67497](https://github.com/rust-lang/rust/issues/67497)
  - Opened by @**dignifiedquire** 
  - Not yet assigned
  - [Rust 1.36.0 through 1.48.0](https://github.com/rust-lang/rust/issues/67497#issuecomment-733699197) all have broken builds on Windows i686-windows-msvc 
- "Upgrade to LLVM11 caused a codegen regression on Windows" [rust#78283](https://github.com/rust-lang/rust/issues/78283)
  - [Previously discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-11-12.20.2354818/near/216482008)
  - opened by @**Jeff Muizelaar**
  - assigned to  @**pnkfelix** 
  - Firefox code that used to work on Rust 1.46 started to fail after upgrading to LLVM 11
  - Affects only MSVC
  - @**Nikita Popov** suggests could be related to [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - @**Jeff Muizelaar** suggests to be related to LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943), provides a [minimal repro](https://github.com/rust-lang/rust/issues/78283#issuecomment-720156273)
  - @**pnkfelix** has patch in progress for LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943)
- "No error reported when a generic parameter doesn't meet the requirement of an associated type" [rust#78893](https://github.com/rust-lang/rust/issues/78893)
  - [Previously discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-11-12.20.2354818/near/216482210), and [a topic was created to discuss it on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/213817-t-lang/topic/.2378893.20no.20err.20when.20genrc.20param.20doesnt.20meet.20req.20of.20assoc.20type)
  - Nightly regression
  - Regressed on [rust#73905](https://github.com/rust-lang/rust/pull/73905)
  - @**Matthew Jasper** provides a fix in PR [rust#79543](https://github.com/rust-lang/rust/pull/79543)
- "Internal Compiler Error while compiling diesel" [rust#79560](https://github.com/rust-lang/rust/issues/79560)
  - ICE when compiling Diesel (master branch)
  - Caused by [rust#79209](https://github.com/rust-lang/rust/pull/79209)
  - @**Santiago Pastorino** reverted [rust#79209](https://github.com/rust-lang/rust/pull/79209) in [rust#79637](https://github.com/rust-lang/rust/pull/79637) (which is already r+ed) to buy time to work on a proper solution
  - @**Santiago Pastorino** is working on a proper solution

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

> [triage logs](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

### 2020-11-24 Triage Log

This week saw landing of #79237 which by itself provides no wins but opens the
door to support for split debuginfo on macOS. This'll eventually show huge wins
as we can likely avoid re-collecting debuginfo while retaining support for
lldb and Rust backtraces. #79361 tracks the stabilization of the rustc flag, but
the precise rollout to stable users is not yet 100% clear.

Triage done by **@jyn514** and **@simulacrum**.
Revision range: [c919f490bbcd2b29b74016101f7ec71aaa24bdbb..25a691003cf6676259ee7d4bed05b43cb6283cea](https://perf.rust-lang.org/?start=c919f490bbcd2b29b74016101f7ec71aaa24bdbb&end=25a691003cf6676259ee7d4bed05b43cb6283cea&absolute=false&stat=instructions%3Au)

4 regressions, 4 improvements, 2 mixed results.
5 of them in rollups.

#### Regressions

[#79167](https://github.com/rust-lang/rust/issues/79167): linux: try to use libc getrandom to allow interposition #78785
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=7d747db0d5dd8f08f2efb073e2e77a34553465a7&end=8d2d0014922e9f541694bfe87642749239990e0e&stat=instructions:u) (up to 7.7% on `incr-unchanged` builds of `deeply-nested-async-opt`)
- The PR allows intercepting `getrandom` at runtime with `LD_PRELOAD`, so it's possible a regression was expected. However, 40% increased bootstrap times for `libcore` seems excessive.
- Landed in a rollup, so it's possible another PR may be to blame. Opened [#79389](https://github.com/rust-lang/rust/pull/79389) measuring the impact.

[#78646](https://github.com/rust-lang/rust/issues/78646): Use `PackedFingerprint` in `DepNode` to reduce memory consumption
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=172acf8f61018df3719e42e633ffd62ebecaa1e7&end=ae6aa22cf26fede2177abe4ff974030058885b7a&stat=instructions:u) (up to 3.2% on `full` builds of `keccak-check`)
- Major improvement in [memory usage](https://perf.rust-lang.org/compare.html?start=172acf8f61018df3719e42e633ffd62ebecaa1e7&end=ae6aa22cf26fede2177abe4ff974030058885b7a&stat=max-rss) (up to 21.6 on `full` builds of `keccak-opt`)
- The regression in cycle count is worse than the last perf run on the PR, but overall seems to be expected. Not leaving a comment.

[#79237](https://github.com/rust-lang/rust/issues/79237): std: Update the backtrace crate submodule
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d806d656578c2d6b34cf96809862e8cffb293a68&end=3adedb8f4c5bb71e9e8a21a047cf8ed121ce0e75&stat=instructions:u) (up to 1.4% on `incr-unchanged` builds of `unify-linearly-debug`), mostly on `debug` and `opt` builds.
- **@ehuss** reports a 600% decrease in incremental builds when using `-Z run-dsymutil=no` on MacOS (!!). [#79361](https://github.com/rust-lang/rust/issues/79361) tracks enabling `-Z run-dsymutil=no` by default.
- **@alexcrichton** theorizes the regression is because there's more code in libstd overall (since it now handles archives of debug symbol).
- Not leaving a nag, since the regression is small and the improvement more than makes up for it.

[#79273](https://github.com/rust-lang/rust/issues/79273): Rollup of 8 pull requests
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3adedb8f4c5bb71e9e8a21a047cf8ed121ce0e75&end=da384694807172f0ca40eca2e49a11688aba6e93&stat=instructions:u) (up to 1.8% on `full` builds of `coercions-debug`). **@Mark-Simulacrum** thinks this is a false positive, since there are no similar regressions in `-opt` or `-check` builds.
- Minor improvements in [instruction counts](https://perf.rust-lang.org/compare.html?start=3adedb8f4c5bb71e9e8a21a047cf8ed121ce0e75&end=da384694807172f0ca40eca2e49a11688aba6e93&stat=instructions:u) on `doc` builds (up to .4% on `unused-warnings-doc`). Likely due to [#79264](https://github.com/rust-lang/rust/pull/79264): Get rid of some doctree items.
- Most regressions are in LLVM/codegen, so likely due to [#79067](https://github.com/rust-lang/rust/pull/79067/): Refactor the abi handling code a bit.

#### Improvements

[#79200](https://github.com/rust-lang/rust/issues/79200): Rollup of 14 pull requests
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3d3c8c5e0d534cdd794f1b3359089eba031d492c&end=fe982319aa0aa5bbfc2795791a753832292bd2ba&stat=instructions:u) (up to -1.9% on `full` builds of `ctfe-stress-4-opt`, up to -5.5 on `doc` builds)
- Improvement is almost completely due to a -8.5% improvement on `eval_to_allocation_raw`
- Unclear which PR caused the improvement; both [#79149](https://github.com/rust-lang/rust/pull/79149) and [#79101](https://github.com/rust-lang/rust/pull/79101) are likely candidates. [Left a nag](https://github.com/rust-lang/rust/pull/79200#issuecomment-733237927) asking the authors to use `rollup=never` in the future.

[#79220](https://github.com/rust-lang/rust/issues/79220)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=09c9c9f7da72b774cc445c0f56fc0b9792a49647&end=4ec27e4b79891b0ebc2ad71a3c4ac94f67d93f93&stat=instructions:u) (up to -3.3% on `full` builds of `deeply-nested-async-check`)
- Improvement is almost completely due to a -25.6% improvement in `normalize_generic_arg_after_erasing_regions` and -24.7% improvement in `erase_regions_ty`.
- Likely due to [#79193](https://github.com/rust-lang/rust/pull/79193), which reverts an earlier PR. We should keep an eye on this, since it will likely regress again when the validation is re-enabled.

[#78088](https://github.com/rust-lang/rust/issues/78088): Add lint for `panic!("{}")`
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=4ec27e4b79891b0ebc2ad71a3c4ac94f67d93f93&end=74285eb3a83eac639f9c54ba8c4ccf9879b3b00a&stat=instructions:u) (up to -3.3% on `incr-full` builds of `futures-opt`)
- The improvement is likely because the desugaring of `panic!` changed.

[#78343](https://github.com/rust-lang/rust/issues/78343)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=d9a105fdd46c926ae606777a46dd90e5b838f92f&end=f32a0cce2fd5aaf5f361192af59cf1f2afa5f0ac&stat=instructions:u) (up to -3.0% on `incr-full` builds of `wg-grammar-opt`)
- The improvement is likely because the way `panic!` is expanded changed.

[#79319](https://github.com/rust-lang/rust/issues/79319)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=a0d664bae6ca79c54cc054aa2403198e105190a2&end=32da90b431919eedb3e281a91caea063ba4edb77&stat=instructions:u) (up to -26.4% on `incr-patched: println` builds of `cargo-opt`)
- Predominantly incremental perf getting better, likely due to
  #77697 Split each iterator adapter and source into individual modules
  which presumably shuffled CGU ordering in core/std, avoiding multiple LLVM
  module invalidations.

#### Mixed

[#78461](https://github.com/rust-lang/rust/issues/78461)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=da384694807172f0ca40eca2e49a11688aba6e93&end=a1a13b2bc4fa6370b9501135d97c5fe0bc401894&stat=instructions:u) (up to 36.6% on `incr-patched: println` builds of `clap-rs-debug`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=da384694807172f0ca40eca2e49a11688aba6e93&end=a1a13b2bc4fa6370b9501135d97c5fe0bc401894&stat=instructions:u) (up to -2.6% on `incr-patched: Compiler new` builds of `regex-opt`)
- Pretty much limited to just incremental builds, likely the addition of
  allocators to Vec is causing some problems in incremental caching.
  Potentially worth tracking down the specific cause.

[#79186](https://github.com/rust-lang/rust/issues/79186)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=068320b39e3e4839d832b3aa71fa910ba170673b&end=40cf72108edb9b8633a9d284b238988309204494&stat=instructions:u) (up to -4.5% on `full` builds of `regression-31157-opt`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=068320b39e3e4839d832b3aa71fa910ba170673b&end=40cf72108edb9b8633a9d284b238988309204494&stat=instructions:u) (up to 4.4% on `full` builds of `deeply-nested-async-check`)
- Seems to largely be an improvement due to less queries being run in some
  cases, but there is some upfront cost -- presumably the regressed test case
  didn't end up calling/using the now less needed queries, but paid the price in
  metadata decoding.

#### Nags requiring follow up

- [Left a comment](https://github.com/rust-lang/rust/pull/79167#issuecomment-733207145) nagging the author of the `LD_PRELOAD` PR.
- [Left a comment](https://github.com/rust-lang/rust/pull/79273#issuecomment-733224830) asking why a codegen refactor could have regressed instruction count.

#### Compiler team notes

* https://github.com/rust-lang/rust/pull/78461 regressed incremental performance
  on debug builds of clap (interestingly, not opt builds). It may be worth
  investigating why, as the pattern of adding a generic parameter with a default
  really should not be causing regressions in downstream code. Not all of the
  regression is in LLVM.
  See by-query breakdown:
  https://perf.rust-lang.org/detailed-query.html?commit=a1a13b2bc4fa6370b9501135d97c5fe0bc401894&base_commit=da384694807172f0ca40eca2e49a11688aba6e93&benchmark=clap-rs-debug&run_name=incr-patched:%20println.

### 2020-12-03 Triage Log

A fairly mixed week with regressions and improvements mainly washing each other out with the exception of the very large improvement to [incremental compilation](https://github.com/rust-lang/rust/issues/74967) with huge gains in a large portion of the perf test suite.

Triage done by **@rylevick**.
Revision range: [25a691003cf6676259ee7d4bed05b43cb6283cea..c7cff213e937c1bb301be807ce04fcf6092b9163](https://perf.rust-lang.org/?start=25a691003cf6676259ee7d4bed05b43cb6283cea&end=c7cff213e937c1bb301be807ce04fcf6092b9163&absolute=false&stat=instructions%3Au)

2 Regressions, 2 Improvement, 2 Mixed
0 of them in rollups

#### Regressions

[#79284](https://github.com/rust-lang/rust/issues/79284)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=6a889570e46c03d7b156ec08f3f4cb4d145924a3&end=fd6b5376b723e22e3d98542e2e693d2717700900&stat=instructions:u) (up to 31.5% on `full` builds of `match-stress-enum-check`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=6a889570e46c03d7b156ec08f3f4cb4d145924a3&end=fd6b5376b723e22e3d98542e2e693d2717700900&stat=instructions:u) (up to -1.2% on `full` builds of `issue-58319-check`)
- The very large regression outweighs the moderate improvement.
- It's hard to tell what the issue is currently since the change involved moving large chunks of code to different files making it hard to tell what the actual changes are.

[#78725](https://github.com/rust-lang/rust/issues/78725)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=29c4358c189fbb3bd3fd7ac3d7a95fac7b97814c&end=c4926d01ada661d4fbffb0e5b1708ae5463d47b3&stat=instructions:u) (up to 2.6% on `full` builds of `ctfe-stress-4-check`)
- This change was a removal in an unneeded call to `upvar_tys`, and is not immeadiately obvious to the author where the regression is coming from.

#### Improvements

[#74967](https://github.com/rust-lang/rust/issues/74967)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b2dd82929b5b956972446d9720ceabdee171d405&end=4cbda829c00af2c3ac362c979fa97ea90be0be7d&stat=instructions:u) (up to -37.5% on `incr-unchanged` builds of `helloworld-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=b2dd82929b5b956972446d9720ceabdee171d405&end=4cbda829c00af2c3ac362c979fa97ea90be0be7d&stat=instructions:u) (up to 1.5% on `incr-unchanged` builds of `clap-rs-check`)
- A huge win for incremental compilation almost across the board with only a small regression in one test. 🎉

[#79523](https://github.com/rust-lang/rust/issues/79523)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=88b81970ba7a989a728b32039dd075dc206f1360&end=b776d1c3e3db8befabb123ebb1e46c3531eaed46&stat=instructions:u) (up to -2.3% on `full` builds of `unicode_normalization-check`)
- Small fix on exhaustiveness checking for `isize/usize` range patterns.
- Hard to tell where the perf gain comes from though it might be that part of the implementation was simplified enough to be inlined. 
- Unfortunately these perf gains are completely canceled out by the regression in [#79284](https://github.com/rust-lang/rust/issues/79284)

#### Mixed

[#79318](https://github.com/rust-lang/rust/issues/79318)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=361543d776d832b42f022f5b3aa1ab77263bc4a9&end=c9228570668803e3e6402770d55f23a12c9ae686&stat=instructions:u) (up to -4.7% on `incr-unchanged` builds of `deeply-nested-async-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=361543d776d832b42f022f5b3aa1ab77263bc4a9&end=c9228570668803e3e6402770d55f23a12c9ae686&stat=instructions:u) (up to 4.6% on `incr-full` builds of `externs-check`)
- A ~4% regression occured in the `extern` stress test which is likely to exercise this change quite a bit.

[#79547](https://github.com/rust-lang/rust/issues/79547)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=d37afad0cc87bf709ad10c85319296ac53030f03&end=a094ff9590b83c8f94d898f92c2964a5803ded06&stat=instructions:u) (up to -1.9% on `incr-unchanged` builds of `html5ever-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d37afad0cc87bf709ad10c85319296ac53030f03&end=a094ff9590b83c8f94d898f92c2964a5803ded06&stat=instructions:u) (up to 1.7% on `full` builds of `deeply-nested-debug`)
- This change makes small arguments (those equal to or less than `2 * size_of::<usize>()`) passed to functions in registers instead of by reference. This is unlikely to have too much effect on the compiler due to the compiler normally pasing large arguments to functions but it might help other workloads.

#### Nags requiring follow up

- Three pull requests require a follow up on their regressions: [#79318](https://github.com/rust-lang/rust/issues/79318), [#79284](https://github.com/rust-lang/rust/issues/79284), and [#78725](https://github.com/rust-lang/rust/issues/78725).
- [One of last week's nags](https://github.com/rust-lang/rust/pull/79167#issuecomment-733207145) has yet to be fully resolved.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.
  
[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "RFC: Checking conditional compilation at compile time" [rfcs#3013](https://github.com/rust-lang/rfcs/pull/3013)
