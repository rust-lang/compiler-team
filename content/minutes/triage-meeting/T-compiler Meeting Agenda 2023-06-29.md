---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2023-06-29

## Announcements

- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA2MjlUMTkwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-06-29T15:00:00-04:00>
- [wg-async: Open discussion](https://www.google.com/calendar/event?eid=ZDYzaGYwYnM4bWs2cHA3ZGRmazhvOGVjOXJfMjAyMzA2MjlUMjAzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-06-29T16:30:00-04:00>
- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzA2MzBUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-06-30T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA3MDNUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-03T10:00:00-04:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzA3MDNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-03T11:00:00-04:00>
- [[Types team] Formality testing sync](https://www.google.com/calendar/event?eid=MWowN2NydTBqbGpvaXI5OTVvcWptcW9mdXJfMjAyMzA3MDVUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-05T09:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642) 
  - "Remove +outline-atomics from arm64 linux" [compiler-team#643](https://github.com/rust-lang/compiler-team/issues/643) 
  - "Add illumos Tier3 targets" [compiler-team#644](https://github.com/rust-lang/compiler-team/issues/644) 
  - "Changes to StatementKind::Coverage" [compiler-team#645](https://github.com/rust-lang/compiler-team/issues/645) 
- Old MCPs (not seconded, take a look)
  - "2024: Decrease debuginfo generated by  `-Cdebuginfo=1`" [compiler-team#613](https://github.com/rust-lang/compiler-team/issues/613) (last review activity: 2 months ago)
  - "Cell Broadband Engine SPU support" [compiler-team#614](https://github.com/rust-lang/compiler-team/issues/614) (last review activity: 2 months ago)
  - "Revise error code documentation standard" [compiler-team#615](https://github.com/rust-lang/compiler-team/issues/615) (last review activity: 2 months ago)
  - "Add support for Zephyr OS" [compiler-team#629](https://github.com/rust-lang/compiler-team/issues/629) (last review activity: about 6 days ago)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634) (last review activity: about 34 days ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) (last review activity: about 34 days ago)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) (last review activity: about 14 days ago)
  - "[MCP] proposing a macros working group" [compiler-team#637](https://github.com/rust-lang/compiler-team/issues/637) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Disallow incoherent cfgs" [compiler-team#610](https://github.com/rust-lang/compiler-team/issues/610) 
  - "Runtime checks for occupied niches" [compiler-team#624](https://github.com/rust-lang/compiler-team/issues/624) 
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) 
  - "Add `mips64r6` and `mips32r6` options to `target_arch`" [compiler-team#632](https://github.com/rust-lang/compiler-team/issues/632) 
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) 
  - "Assign maintainers for MIPS R6 targets" [compiler-team#638](https://github.com/rust-lang/compiler-team/issues/638) 
  - "Use `FieldIdx` all the way down" [compiler-team#639](https://github.com/rust-lang/compiler-team/issues/639) 
  - "Add support for the riscv64-linux-android target" [compiler-team#640](https://github.com/rust-lang/compiler-team/issues/640) 
  - "Implement alignment and size niches for references" [compiler-team#641](https://github.com/rust-lang/compiler-team/issues/641) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/XSIWiDBHTyyb33sarCfpEg#WG-checkins)):
  > #### Most notable changes
  >
  > - add stub for proof trees [#1700](https://github.com/rust-lang/rustc-dev-guide/pull/1700)
  > - Include information about setup defaults in how-to-build guide [#1694](https://github.com/rust-lang/rustc-dev-guide/pull/1694)
  > - Define more lint terms. [#1681](https://github.com/rust-lang/rustc-dev-guide/pull/1681)
  > - extend the sixth trait system requirement [#1671](https://github.com/rust-lang/rustc-dev-guide/pull/1671)
  >
  > #### Most notable WIPs
  >
  > - Improve feature gate and x.py docs [#1701](https://github.com/rust-lang/rustc-dev-guide/pull/1701)
  > - new chapter with examples of diagnostic translation PRs [#1621](https://github.com/rust-lang/rustc-dev-guide/pull/1621)
  > - Add back the `canonicalization` chapter. [#1532](https://github.com/rust-lang/rustc-dev-guide/pull/1532)
  > - Improve documentation of MIR queries & passes [#1434](https://github.com/rust-lang/rustc-dev-guide/pull/1434)
  > - Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)

- Impl Trait initiative by @**oli** ([previous checkin](https://hackmd.io/jG2Ea1RxQJuQye5kIiiHkA#WG-checkins)):
  > The TAIT implementation is being turned into a minimal version that will be forwards compatible to more convenient and simpler schemes. This allows an earlier stabilization with follow ups planned after stabilization.
  > The async functions in trait implementation is tracking its blockers for stabilization and looking into making decisions on them and implementing them.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.71.0] "Fix linker failures when #[global_allocator] is used in a dependency" [rust#112794](https://github.com/rust-lang/rust/pull/112794)
  - fixes P-high ~~unsoundness~~ #112715
  - discussed last week, postponed waiting to be merged
<!--
/poll Approve beta backport of #112794?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [29 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 37 P-high, 100 P-medium, 19 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` at this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` at this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` at this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-06-27](https://github.com/rust-lang/rustc-perf/blob/4551586ece7258881a12f2e876eb457dd474757f/triage/2023-06-27.md)

Relatively quiet week outside of a large win on one incremental benchmark in a
regression test (i.e., not real world code). Bimodality in a number of
benchmarks continues to be an issue.

Triage done by **@simulacrum**.
Revision range: [b9d608c979ad3c0700f9f0237a8c12feb0ba44fb..b5e51db16dfbf5685e32dfe2d9a835a5c695afe4](https://perf.rust-lang.org/?start=b9d608c979ad3c0700f9f0237a8c12feb0ba44fb&end=b5e51db16dfbf5685e32dfe2d9a835a5c695afe4&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 1.0%   | [0.4%, 3.7%]    | 186   |
| Regressions (secondary)  | 1.1%   | [0.2%, 3.0%]    | 95    |
| Improvements (primary)   | -1.9%  | [-3.7%, -0.9%]  | 3     |
| Improvements (secondary) | -16.1% | [-78.8%, -0.3%] | 5     |
| All  (primary)           | 0.9%   | [-3.7%, 3.7%]   | 189   |


5 Regressions, 6 Improvements, 3 Mixed; 5 of them in rollups
44 artifact comparisons made in total

#### Regressions

proof tree nits [#112835](https://github.com/rust-lang/rust/pull/112835) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a34ceade11f62bdef20b86ef37949d3fe00944ef&end=46514218f6f31ad3a1510ecc32af47e9e486c27d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.3%, 0.9%] | 7     |
| Regressions (secondary)  | 1.2% | [0.5%, 1.7%] | 10    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.3%, 0.9%] | 7     |

The regression in diesel seems to have persisted in future commits, but PR
authors note that the code changed in this PR is not expected to affect
benchmarks, so it is likely to be optimizer noise of some kind.

Disable two mir opts that are known to be unsound [#112834](https://github.com/rust-lang/rust/pull/112834) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=97bf23d26b1ffff46f071aa687945a6cf85a5914&end=38b44eb2335885844137f918c44c437f5a8da951&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.9%]   | 48    |
| Regressions (secondary)  | 0.5%  | [0.2%, 1.1%]   | 30    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 2     |
| All  (primary)           | 0.4%  | [0.3%, 0.9%]   | 48    |

Regression on multiple benchmarks, seems to be real, likely to be expected with
disabling of optimization passes.

Inline before merging cgus [#112695](https://github.com/rust-lang/rust/pull/112695) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0928a1f7574f5ca019b5443b3a90008588d18c8c&end=fa06a371b715f137c952577cfded4e49cb7e76c4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 3.6%]   | 98    |
| Regressions (secondary)  | 0.5%  | [0.3%, 2.7%]   | 37    |
| Improvements (primary)   | -1.0% | [-1.2%, -0.9%] | 2     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 2     |
| All  (primary)           | 0.5%  | [-1.2%, 3.6%]  | 100   |

Instruction counts (shown in this table) are not the best metric for this
change. See [comment](https://github.com/rust-lang/rust/pull/112695#issuecomment-1603381738)
on the PR with more details for why this change makes sense.

Rollup of 9 pull requests [#112957](https://github.com/rust-lang/rust/pull/112957) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fe37f37e4b764bb82fc0eb8c727842746de7c93f&end=54d6738a8df74382c439e1dfb9ce4e2382d7742e&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.3%] | 8     |
| Regressions (secondary)  | 0.4% | [0.4%, 0.4%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.3%] | 8     |

Regressions are limited to subset of incremental benchmarks, multiple of which
are benchmarks prone to bimodality, with relatively low significance factors.
No further investigation warranted.

Rollup of 2 pull requests [#113057](https://github.com/rust-lang/rust/pull/113057) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6f8c27ae89dfd32895419d7ef5b89844bcad1bcd&end=36fb58e433c782e27dd41034284e157cf86d587f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.4%, 0.8%] | 5     |
| Regressions (secondary)  | 0.8% | [0.3%, 1.1%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.4%, 0.8%] | 5     |

See [comment](https://github.com/rust-lang/rust/pull/113057#issuecomment-1608561630) for details.

#### Improvements

Avoid `Lrc<Box<dyn CodegenBackend>>`. [#112913](https://github.com/rust-lang/rust/pull/112913) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fa06a371b715f137c952577cfded4e49cb7e76c4&end=2efe09170530fa18e42ff05b8d9dd23f00b5c430&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 10    |
| All  (primary)           | -     | -              | 0     |


rustc_session: default to -Z plt=yes on non-x86_64 [#109982](https://github.com/rust-lang/rust/pull/109982) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=54d6738a8df74382c439e1dfb9ce4e2382d7742e&end=c79d6be6a287dcda55236fa6438286d16ec990ae&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 5     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.3%] | 3     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 5     |


Rollup of 5 pull requests [#113014](https://github.com/rust-lang/rust/pull/113014) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f7ca9df69549470541fbf542f87a03eb9ed024b6&end=7b9b1277009c407010298bd2f195f83af31fd06b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.2%, -0.4%] | 39    |
| Improvements (secondary) | -0.6% | [-0.9%, -0.3%] | 20    |
| All  (primary)           | -0.7% | [-1.2%, -0.4%] | 39    |


Do not emit coerce_suggestions for expr from destructuring assignment desugaring [#112476](https://github.com/rust-lang/rust/pull/112476) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7b9b1277009c407010298bd2f195f83af31fd06b&end=3c5d71a99dd5ece7f6c87ca80b0adb1637c3b11a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.8%, -0.5%] | 6     |
| Improvements (secondary) | -1.0% | [-1.1%, -1.0%] | 4     |
| All  (primary)           | -0.6% | [-0.8%, -0.5%] | 6     |


Move windows-sys arm32 shim to c.rs [#113001](https://github.com/rust-lang/rust/pull/113001) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0d03812e2424b324d067d89852ad925d2eecb53e&end=c51fbb3dd3a75fd43d51c0c29ca645c3dac99aae&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 1     |
| Improvements (secondary) | -1.2% | [-1.3%, -1.1%] | 6     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 1     |


Rollup of 6 pull requests [#113049](https://github.com/rust-lang/rust/pull/113049) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=25b5af1b3a0b9e2c0c57b223b2d0e3e203869b2c&end=27e10c5292eee22abef69aed7144f80bdea00603&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.2%, -0.5%] | 17    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.8% | [-1.2%, -0.5%] | 17    |


#### Mixed

Rollup of 6 pull requests [#112877](https://github.com/rust-lang/rust/pull/112877) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=67da586efe13aa66eef576ba095e1875ba65fd20&end=97bf23d26b1ffff46f071aa687945a6cf85a5914&stat=instructions:u)

| (instructions:u)         | mean   | range            | count |
|:------------------------:|:------:|:----------------:|:-----:|
| Regressions (primary)    | 0.4%   | [0.4%, 0.4%]     | 4     |
| Regressions (secondary)  | 0.2%   | [0.2%, 0.2%]     | 2     |
| Improvements (primary)   | -2.9%  | [-2.9%, -2.9%]   | 1     |
| Improvements (secondary) | -78.9% | [-78.9%, -78.9%] | 1     |
| All  (primary)           | -0.3%  | [-2.9%, 0.4%]    | 5     |


Various impl trait in assoc tys cleanups [#112891](https://github.com/rust-lang/rust/pull/112891) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=22e9fe644ea710eec50cb0aabcae7fa8dd9fd675&end=1d67eba6873b1d551a259a0bbc1e2651b4443e12&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | 0.7%  | [0.6%, 0.7%]   | 2     |
| Improvements (primary)   | -0.5% | [-0.7%, -0.4%] | 6     |
| Improvements (secondary) | -1.0% | [-1.3%, -0.6%] | 8     |
| All  (primary)           | -0.4% | [-0.7%, 0.3%]  | 7     |

Performance is mixed, but the cleanups are useful in their own right.  Marking
as triaged.

Specialize `StepBy<Range<{integer}>>` [#111850](https://github.com/rust-lang/rust/pull/111850) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7f01f030613fb6ffe06d5f5791a273d384cd6f55&end=ae8ffa663c913551c462fd2e07705be730a4ea07&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.7%]   | 3     |
| Improvements (primary)   | -1.7% | [-2.1%, -1.4%] | 2     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.4%] | 6     |
| All  (primary)           | -1.7% | [-2.1%, -1.4%] | 2     |

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "'rustc' panicked at 'called `Result::unwrap()` on an `Err` value: TryFromIntError(())" [rust#112934](https://github.com/rust-lang/rust/issues/112934)
  - Big source file size (~85K locs) breaks compilation with ICE
  - nominated by @**Ben Kimock (Saethlin)**
  - @**Esteban Küber** suggests maybe fixing the ICE and add a useful message ("split your project!") or add a compiler flag to enable a `u64` type index ([comment](https://github.com/rust-lang/rust/issues/112934#issuecomment-1603654299))
- "Linking error on Rust 1.70 aarch64-unknown-linux-musl toolchain" [rust#113104](https://github.com/rust-lang/rust/issues/113104)
  - @**Ben Kimock (Saethlin)** suggests could be related to #111888 (which was bisected to [#108017](https://github.com/rust-lang/rust/issues/111888#issuecomment-1585690896))
  - nominated by @**apiraino**: are these class of breakages P-high's (seems to affect `musl` and `aarch64`, Tier 1 and 2) and if yes should these issues get some attention before next release?
  
[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Fix unset e_flags in ELF files generated for AVR targets" [rust#106619](https://github.com/rust-lang/rust/pull/106619) (last review activity: 3 months ago)
  - cc: @**nagisa** (tier3, so probably not extremely a priority)
- "Support embedding LLVM bitcode on AIX" [rust#109524](https://github.com/rust-lang/rust/pull/109524) (last review activity: 3 months ago)
  - cc: @**nagisa** (same as above)
- "Add documentation on v0 symbol mangling." [rust#97571](https://github.com/rust-lang/rust/pull/97571) (last review activity: about 44 days ago)
  - cc @**mw** 
- "Shrink error variants for layout and fn_abi" [rust#111035](https://github.com/rust-lang/rust/pull/111035) (last review activity: about 41 days ago)
  - cc: @**Wesley Wiser** (probably after another rebase) 

## Next week's WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**
- Types team by @**nikomatsakis** and @**Jack Huey**

Agenda draft: https://hackmd.io/dPMI9IZqR0uzp4fuZVr4lg