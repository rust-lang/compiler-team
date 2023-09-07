---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-08-10

## Announcements

- [wg-async deep dive: 2024 Prelude + `Future::map`](https://www.google.com/calendar/event?eid=ajVtNGowYjlzdDNhM2VwZG9vNjg4OTlzNDBfMjAyMzA4MTBUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-10T12:00:00-04:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA4MTBUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-10T16:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA4MTRUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-14T10:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
    - "Cell Broadband Engine SPU support" [compiler_team#614](https://github.com/rust-lang/compiler-team/issues/614) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Cell.20Broadband.20Engine.20SPU.20support.20compiler-team.23614))
    - "Add support for Zephyr OS" [compiler_team#629](https://github.com/rust-lang/compiler-team/issues/629) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20Zephyr.20OS.20compiler-team.23629))
    - "Consistently use \"region\" terminology in later stages of the compiler" [compiler_team#634](https://github.com/rust-lang/compiler-team/issues/634) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Consistently.20use.20.22region.22.20terminology.20in.20.E2.80.A6.20compiler-team.23634))
    - "Add a new `--build-id` flag to rustc" [compiler_team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - "Simplify and improve explicitness of the check-cfg syntax" [compiler_team#636](https://github.com/rust-lang/compiler-team/issues/636) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Simplify.20and.20improve.20explicitness.20of.20the.20.E2.80.A6.20compiler-team.23636))
    - "Add support for visionOS targets" [compiler_team#642](https://github.com/rust-lang/compiler-team/issues/642) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20visionOS.20targets.20compiler-team.23642))
    - "Add illumos Tier3 targets" [compiler_team#644](https://github.com/rust-lang/compiler-team/issues/644) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20illumos.20Tier3.20targets.20compiler-team.23644))
    - "Migrate away from u32 as an offset/length type" [compiler_team#647](https://github.com/rust-lang/compiler-team/issues/647) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Migrate.20away.20from.20u32.20as.20an.20offset.2Flength.E2.80.A6.20compiler-team.23647))
    - "Add `builtin:$path` option to the `-L` flag" [compiler_team#659](https://github.com/rust-lang/compiler-team/issues/659) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60builtin.3A.24path.60.20option.20to.20the.20.60-L.60.20fl.E2.80.A6.20compiler-team.23659))
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler_team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concerns raised
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991#issuecomment-1670127912)
    - concerns raised, notably about the stabilization requirements (from [here](https://github.com/rust-lang/rust/issues/65991#issuecomment-1670355101))
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307#issuecomment-1621305927)
  - "Stabilize `PATH` option for `--print KIND=PATH`" [rust#114183](https://github.com/rust-lang/rust/pull/114183#issuecomment-1656270266)
- Things in FCP (make sure you're good with it)
    - "Add a blanket flag to enable/disable codegen UB checks" [compiler_team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
    - "[MCP] proposing a macros working group" [compiler_team#637](https://github.com/rust-lang/compiler-team/issues/637) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.5BMCP.5D.20proposing.20a.20macros.20woriking.20group.20compiler-team.23637))
    - "Disallow non-identifier-valid --extern crate names " [compiler_team#650](https://github.com/rust-lang/compiler-team/issues/650) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Disallow.20non-identifier-valid.20--extern.20cr.E2.80.A6.20compiler-team.23650))
    - "Windows support schedule 2024" [compiler_team#651](https://github.com/rust-lang/compiler-team/issues/651) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Windows.20support.20schedule.202024.20compiler-team.23651))
    - "New tier-3 targets for TEEOS" [compiler_team#652](https://github.com/rust-lang/compiler-team/issues/652) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20tier-3.20targets.20for.20TEEOS.20compiler-team.23652))
    - "Expose default_hidden_visibility as a rustc command line option" [compiler_team#656](https://github.com/rust-lang/compiler-team/issues/656) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Expose.20default_hidden_visibility.20as.20a.20rus.E2.80.A6.20compiler-team.23656))
- Accepted MCPs
  - "Revise error code documentation standard" [compiler-team#615](https://github.com/rust-lang/compiler-team/issues/615)
  - "[MCP] proposing a macros working group" [compiler-team#637](https://github.com/rust-lang/compiler-team/issues/637)
  - "Disallow non-identifier-valid --extern crate names " [compiler-team#650](https://github.com/rust-lang/compiler-team/issues/650)
  - "Windows support schedule 2024" [compiler-team#651](https://github.com/rust-lang/compiler-team/issues/651)
  - "New tier-3 targets for TEEOS" [compiler-team#652](https://github.com/rust-lang/compiler-team/issues/652)
  - "Expose default_hidden_visibility as a rustc command line option" [compiler-team#656](https://github.com/rust-lang/compiler-team/issues/656)
- Finalized FCPs (disposition merge)
  - "check for non-defining uses of RPIT" [rust#112842](https://github.com/rust-lang/rust/pull/112842)
  - "add notes about non-compliant FP behavior on 32bit x86 targets" [rust#113053](https://github.com/rust-lang/rust/pull/113053)
  - "Mention style for new syntax in tracking issue template" [rust#113586](https://github.com/rust-lang/rust/pull/113586)
  - "Make `unconditional_recursion` warning detect recursive drops" [rust#113902](https://github.com/rust-lang/rust/pull/113902)

### WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry** ([previous checkin](https://hackmd.io/EewyTLZXQpmtfaH633GU-A#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "lint/ctypes: only try normalize" [rust#113921](https://github.com/rust-lang/rust/pull/113921)
  - Fixes P-medium #113900, ICE when trying to compile an empty crate pulling a specific crate `abi_stable` as dependency 
<!--
/poll Approve beta backport of #113921?
approve
decline
don't know
-->
- :beta: "Restrict linker version script of proc-macro crates to just its two symbols" [rust#114470](https://github.com/rust-lang/rust/pull/114470)
  - Fixes #111888 and #99978
  - "Restrict linker version script of proc-macro crates to just the two symbols of each proc-macro crate."
<!--
/poll Approve beta backport of #114470?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [54 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [27 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 33 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Recursion using `extern "C"` causes miscompilation" [rust#114312](https://github.com/rust-lang/rust/issues/114312)
  - Seems to have regressed in the LLVM 16 upgrade, #109474 ([comment](https://github.com/rust-lang/rust/issues/114312#issuecomment-1659354950))
  - Should be resolved by LLVM fix [llvm-project#150](https://github.com/rust-lang/llvm-project/pull/150)
  - PR is also `I-compiler-nominated` to discuss an LLVM 16 backport
- "Miscompilation when matching on an enum after printing Hello world" [rust#114691](https://github.com/rust-lang/rust/issues/114691)
  - Regressed in LLVM 17 upgrade
  - @**Nikita Popov** reported upstream [llvm-project#64589](https://github.com/llvm/llvm-project/issues/64589) and self-assigned (:heart:) 

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "regex miscompiles with aggressive optimization flags" [rust#114488](https://github.com/rust-lang/rust/issues/114488)
  - bisected to #109025
  - (confirm P-high)?

## Performance logs

> [triage logs for 2023-08-08](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-08-08.md)

Overall a very positive week, primarily due to an [upgrade to LLVM
17](https://github.com/rust-lang/rust/pull/114048) and some changes to [lint
execution](https://github.com/rust-lang/rust/pull/113734). Memory usage is down
[4-7%](https://perf.rust-lang.org/?start=828bdc2c26f5c95773c4ecf72870919f16417b66&end=443c3161dd04f4c1b656a626f9079921bee9c326&absolute=false&stat=max-rss&kind=percentfromfirst)
over the last week and wall times are down
[3-5%](https://perf.rust-lang.org/?start=828bdc2c26f5c95773c4ecf72870919f16417b66&end=443c3161dd04f4c1b656a626f9079921bee9c326&absolute=false&stat=wall-time&kind=percentfromfirst).

Triage done by **@simulacrum**.
Revision range: [828bdc2c26f5c95773c4ecf72870919f16417b66..443c3161dd04f4c1b656a626f9079921bee9c326](https://perf.rust-lang.org/?start=828bdc2c26f5c95773c4ecf72870919f16417b66&end=443c3161dd04f4c1b656a626f9079921bee9c326&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -3.1% | [-7.1%, -1.2%]  | 253   |
| Improvements (secondary) | -4.1% | [-28.4%, -0.3%] | 233   |
| All  (primary)           | -3.1% | [-7.1%, -1.2%]  | 253   |


2 Regressions, 7 Improvements, 2 Mixed; 2 of them in rollups
64 artifact comparisons made in total

#### Regressions

Rollup of 9 pull requests [#114481](https://github.com/rust-lang/rust/pull/114481) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fe896efa974ea759b10b9754234ae61e9cab28b3&end=e4c14468460b22ac7a289a422fb7fee606e12a0b&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.4%, 1.5%] | 80    |
| Regressions (secondary)  | 0.7% | [0.2%, 1.2%] | 25    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.4%, 1.5%] | 80    |

Unclear what is causing this regression. It's entirely limited to the
incr-patched and incr-unchanged scenarios, and digging into one of the
benchmarks (bitmaps-3.1.0 check incr-unchanged) seems to show a mix of noise
and, in aggregate, significant improvements over the last several days. Not
clear which PR in this rollup could have caused this change in behavior.

See [these comments](https://github.com/rust-lang/rust/pull/114481#issuecomment-1666438972) for some more details.

Re-enable atomic loads and stores for all RISC-V targets [#98333](https://github.com/rust-lang/rust/pull/98333) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e173a8e6634d787a1529ff6ec5dc63273425ca34&end=90f0b24ad3e7fc0dc0e419c9da30d74629cd5736&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.4%, 1.3%] | 18    |
| Regressions (secondary)  | 0.6% | [0.2%, 0.9%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.4%, 1.3%] | 18    |

This PR has a very similar regression profile to the previous rollup in this list (#114481).

#### Improvements

Remove `constness` from `TraitPredicate` [#114202](https://github.com/rust-lang/rust/pull/114202) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7637653b9fdd2b2f2dc3b378891eb5cf6aea9f5d&end=20747af8940cf683970e76ec9a433305940c05f3&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.4%] | 16    |
| Improvements (secondary) | -0.6% | [-1.2%, -0.3%] | 13    |
| All  (primary)           | -0.7% | [-0.9%, -0.4%] | 16    |

cg_llvm: stop identifying ADTs in LLVM IR [#114350](https://github.com/rust-lang/rust/pull/114350) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=098c1db7e55e7229a520a2ec8e460e1e300e109b&end=73dc6f03a2a8c0e8b8b25fb97d7f4805995ce0b9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.2%, -0.6%] | 5     |
| Improvements (secondary) | -1.1% | [-1.5%, -0.6%] | 6     |
| All  (primary)           | -0.8% | [-1.2%, -0.6%] | 5     |

Convert builtin "global" late lints to run per module [#113734](https://github.com/rust-lang/rust/pull/113734) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fca59ab5f0e7df7d816bed77a32abc0045ebe80b&end=67626b8e89ff57269f1d67cb9bc037088c058b42&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.5%  | [0.4%, 0.8%]    | 3     |
| Improvements (primary)   | -1.7% | [-3.4%, -0.2%]  | 88    |
| Improvements (secondary) | -4.2% | [-26.5%, -0.2%] | 85    |
| All  (primary)           | -1.7% | [-3.4%, -0.2%]  | 88    |

parent_module_from_def_id does not need to be a query. [#114516](https://github.com/rust-lang/rust/pull/114516) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e59540968e0c6fc3c37d92a639b83fc8fcee5e81&end=5973bfbd38fcefb63090a588733931e933498dfd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.4% | [-2.0%, -1.1%] | 17    |
| Improvements (secondary) | -1.2% | [-1.5%, -0.3%] | 11    |
| All  (primary)           | -1.2% | [-2.0%, 0.4%]  | 19    |

Steal MIR for CTFE when possible. [#114502](https://github.com/rust-lang/rust/pull/114502) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=85fbb571497d13cfb828de9b0d3e78656b9203c1&end=f3623871cfa0763c95ebd6ceafaa6dc2e44ca68f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.6%, -0.6%] | 1     |
| Improvements (secondary) | -1.5% | [-2.6%, -0.5%] | 19    |
| All  (primary)           | -0.6% | [-0.6%, -0.6%] | 1     |

Update to LLVM 17 [#114048](https://github.com/rust-lang/rust/pull/114048) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=03a119b0b0e310d22d94399b24ed030056050f13&end=443c3161dd04f4c1b656a626f9079921bee9c326&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -2.2% | [-5.6%, -0.8%]  | 173   |
| Improvements (secondary) | -2.2% | [-12.9%, -0.5%] | 199   |
| All  (primary)           | -2.2% | [-5.6%, -0.8%]  | 173   |

This represents a large win across multiple benchmarks. Unfortunately it also
regresses artifact sizes for libLLVM.so by 50MB. Investigation into why is
[ongoing](https://github.com/rust-lang/rust/pull/114048#issuecomment-1669252031).

Do not run ConstProp on mir_for_ctfe. [#114459](https://github.com/rust-lang/rust/pull/114459) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=67626b8e89ff57269f1d67cb9bc037088c058b42&end=1cabb8ed2301faf193132e71ca5b10f82913e48a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.2%, -0.5%] | 8     |
| Improvements (secondary) | -1.7% | [-3.0%, -1.1%] | 7     |
| All  (primary)           | -0.7% | [-1.2%, 0.2%]  | 9     |

The one regression is actually within noise floor for the relevant benchmark.

#### Mixed

Optimize `Iterator` implementation for `&mut impl Iterator + Sized` [#111200](https://github.com/rust-lang/rust/pull/111200) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9565b68b741fd0466b3af075139e819e7d73ee38&end=eb088b8b9d98f1af1b0e61bbdcd8686e1b0db7b6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.5%]   | 6     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-0.9%, -0.5%] | 2     |
| All  (primary)           | 0.4%  | [0.3%, 0.5%]   | 6     |

Rollup of 7 pull requests [#114604](https://github.com/rust-lang/rust/pull/114604) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=443c3161dd04f4c1b656a626f9079921bee9c326&end=8e7fd551311d424e4e63fa45906a2a928fce96a7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.4%  | [0.4%, 2.0%]   | 3     |
| Regressions (secondary)  | 1.2%  | [1.1%, 1.3%]   | 6     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.4%] | 2     |
| Improvements (secondary) | -1.0% | [-1.5%, -0.5%] | 2     |
| All  (primary)           | 0.5%  | [-0.9%, 2.0%]  | 5     |

Investigation into cause is [ongoing](https://github.com/rust-lang/rust/pull/114604#issuecomment-1669350724).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Recursion using `extern "C"` causes miscompilation" [rust#114312](https://github.com/rust-lang/rust/issues/114312)
  - Nominated by @**Josh Stone (cuviper)** in [comment](https://github.com/rust-lang/rust/issues/114312#issuecomment-1670482403): LLVM PR author @_**DianQK**  suggests an LLVM 16 backport - sort of unusual for us
- "Non-temporal stores (and _mm_stream operations in stdarch) break our memory model" [rust#114582](https://github.com/rust-lang/rust/issues/114582)
  - `I-lang-nominated`, FIY to T-compiler 
  - ([comment](https://github.com/rust-lang/rust/issues/114582#issuecomment-1670907861)) The nontemporal-store intrinsic was introduced in [fe53a81](https://github.com/rust-lang/rust/commit/fe53a8106dfb54b5fe04d2ce7e8ee6472b0d5b16), with a comment saying this will likely never be stable but then accidentally stabilized in [stdarch#414](https://github.com/rust-lang/stdarch/pull/414) 
- "Associated type constraints on super traits allowing for unsound transmutation to trait objects" [rust#114389](https://github.com/rust-lang/rust/issues/114389)
  - nominated by @**apiraino** ([comment](https://github.com/rust-lang/rust/issues/114389#issuecomment-1669310386))
  - Prioritization [comment](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23114389.20Associated.20type.20constraints.20on.20super.20traits.20allowin.E2.80.A6/near/382891948): "If understand correctly this is a symptom of another old issue #57893. I cannot grasp the context but the linked #57893 is an unsoundeness marked as P-high since 2019, then demoted in 2020, then again P-high"

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "`-Z trait-solver=next`: Deduplicate region constraints in query responses" [rust#111172](https://github.com/rust-lang/rust/pull/111172)
  - cc: @**lcnr** 
- "Rebased: Mark drop calls in landing pads cold instead of noinline" [rust#102099](https://github.com/rust-lang/rust/pull/102099)(last review activity: 2 months ago)
  - @**Nikita Popov** asking for someone to look into the MSVC in this PR ([comment](https://github.com/rust-lang/rust/pull/102099#issuecomment-1671103591))
  - Seems kind of related to the discussion we had last week about MSVC target tier support ([summary](https://github.com/rust-lang/rust/issues/112480#issuecomment-1665258086))
- "Only emit one error per unsized binding, instead of one per usage" [rust#113183](https://github.com/rust-lang/rust/pull/113183)(last review activity: about 41 days ago)
  - was reassigned to @_**TaKO8Ki**, reroll to someone else of WG-diag?
- "fix: extract rustc_test_marker attr in test_case" [rust#113315](https://github.com/rust-lang/rust/pull/113315)(last review activity: about 37 days ago)
  - assigned to @**Jack Huey** then @**Vadim Petrochenkov** was mentioned. Reroll this one? 

## Next week's WG checkins

- TBA

Next meetings' agenda draft: https://hackmd.io/c9KaX3GNRZSKbIUp3SJpJw
