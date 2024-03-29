---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2023-06-01

## Announcements

- Today Rust stable 1.70 release!
- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzA2MDJUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-06-02T10:00:00-04:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA2MDVUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-06-05T10:00:00-04:00>
- Last minute backport to 1.70-stable (and 1.71-beta): https://github.com/rust-lang/rust/pull/112070
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- T-compiler members: check your emails for a message from Felix.

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=ZDYzaGYwYnM4bWs2cHA3ZGRmazhvOGVjOXJfMjAyMzA2MDFUMjAzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-06-01T16:30:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzA2MDVUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-06-05T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) 
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: 4 months ago)
  - "Take MIR `Analysis` by `&mut`" [compiler-team#598](https://github.com/rust-lang/compiler-team/issues/598) (last review activity: 2 months ago)
  - "-C linker-flavor=clang" [compiler-team#601](https://github.com/rust-lang/compiler-team/issues/601) (last review activity: 2 months ago)
  - "Stable -C binary-dep-depinfo flag" [compiler-team#604](https://github.com/rust-lang/compiler-team/issues/604) (last review activity: about 20 days ago)
  - "Increase `TypeId`'s hash from 64 bits to 128 bits." [compiler-team#608](https://github.com/rust-lang/compiler-team/issues/608) (last review activity: about 41 days ago)
  - "Disallow incoherent cfgs" [compiler-team#610](https://github.com/rust-lang/compiler-team/issues/610) (last review activity: about 48 days ago)
  - "2024: Decrease debuginfo generated by  `-Cdebuginfo=1`" [compiler-team#613](https://github.com/rust-lang/compiler-team/issues/613) (last review activity: about 41 days ago)
  - "Cell Broadband Engine SPU support" [compiler-team#614](https://github.com/rust-lang/compiler-team/issues/614) (last review activity: about 48 days ago)
  - "Revise error code documentation standard" [compiler-team#615](https://github.com/rust-lang/compiler-team/issues/615) (last review activity: about 41 days ago)
  - "Runtime checks for occupied niches" [compiler-team#624](https://github.com/rust-lang/compiler-team/issues/624) (last review activity: about 6 days ago)
  - "Add support for Zephyr OS" [compiler-team#629](https://github.com/rust-lang/compiler-team/issues/629) (last review activity: about 6 days ago)
  - "Add `mips64r6` option to `target_arch`" [compiler-team#632](https://github.com/rust-lang/compiler-team/issues/632) (last review activity: about 6 days ago)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634) (last review activity: about 6 days ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) 
  - "Tier 3 target proposal: bare-metal loongarch64" [compiler-team#628](https://github.com/rust-lang/compiler-team/issues/628) 
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Make pointer_structural_match normal and warn" [rust#110166](https://github.com/rust-lang/rust/pull/110166) 
  - "[mir-opt] SimplifyLocals should also clean up debuginfo" [rust#110702](https://github.com/rust-lang/rust/pull/110702) 
  - "Stabilize inline asm for LoongArch64" [rust#111235](https://github.com/rust-lang/rust/pull/111235) 
  - "Uplift `clippy::undropped_manually_drops` lint" [rust#111530](https://github.com/rust-lang/rust/pull/111530) 
  - "Uplift `clippy::invalid_utf8_in_unchecked` lint" [rust#111543](https://github.com/rust-lang/rust/pull/111543) 
  - "Uplift `clippy::cast_ref_to_mut` lint" [rust#111567](https://github.com/rust-lang/rust/pull/111567) 

### WG checkins

- Types team by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/8Wy81OhVQ06VG2px9R1eSA#WG-checkins)):
  > Checkin text

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/auk0MATiScWFokXL6RlO-w#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.71.0] "Load only the crate header for `locator::crate_matches`" [rust#111329](https://github.com/rust-lang/rust/pull/111329)
  - nominated and authored by @**jyn**
  - improves the logic the bootstrap uses to load a crate
<!--
/poll Approve beta backport of #111329?
approve
decline
don't know
-->
- :beta: [1.71.0] "Make struct layout not depend on unsizeable tail" [rust#112062](https://github.com/rust-lang/rust/pull/112062)
  - nominated and authored by @**Lukas (lukas-code)**, patch still being in review 
  - fixes #11048, P-critical unsound regression
<!--
/poll Approve beta backport of #112062?
approve
decline
don't know
-->
- :stable: "change `BorrowKind::Unique` to be a mutating `PlaceContext`" [rust#112070](https://github.com/rust-lang/rust/pull/112070)
  - FIY: nominated and approved for beta+stable backport with expedite procedure (see [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/last.20minute.20PR.20.2E.2E.2E.20for.201.2E70.2E0.20.2E.2E.2E.3F/near/362522771))
  - fixes #112056, a P-critical unsoundness in the borrowck

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)


### Oldest PRs waiting for review

- "avoid deadlock when reporting ice" [rust#111352](https://github.com/rust-lang/rust/pull/111352) (last review activity: about 23 days ago)
  - cc: @**Zoxc** (I think)
- "Do not substitute nonexistent lifetime in RPIT in recursive function" [rust#110844](https://github.com/rust-lang/rust/pull/110844) (last review activity: about 21 days ago)
  - cc: @**oli** (though this PR seems not so straightforward to review)
- "Extra context for unreachable_pub lint" [rust#111496](https://github.com/rust-lang/rust/pull/111496) (last review activity: about 20 days ago)
  - cc: @**davidtwco**

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [28 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 1 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 35 P-high, 96 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` at this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "Evade borrowck by wrapping your lifetime crimes in a simple closure" [rust#112056](https://github.com/rust-lang/rust/issues/112056)
  - Fixed by #112070 and #112073

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` at this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression - nightly 2023-03-30 -> 2023-03-31 causes linker error when importing wasm_bindgen::JsValue in a proc_macro" [rust#111888](https://github.com/rust-lang/rust/issues/111888)
  - @**Ben Kimock (Saethlin)** found a mitigation (see [comment](https://github.com/rust-lang/rust/issues/111888#issuecomment-1567416478))
  - who has some more context on wasm bindgens?
  - is it P-high?

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-05-30](https://github.com/rust-lang/rustc-perf/blob/dd296e1d57e277a09cec2110f018d429fc19c41d/triage/2023-05-30.md)

A good week overall, with a broad set of improvements to many primary benchmarks.
The main single source of primary regressions is from rollup PR #111869; we are
in the process of narrowing that down to see if there is a root cause.

Triage done by **@pnkfelix**.
Revision range: [cda5becc..1221e43b](https://perf.rust-lang.org/?start=cda5becc27cbc7106646fbc40aacea5e7896d954&end=1221e43bdf413f7c405e9b17ef19d76c88222098&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.5%]   | 19    |
| Regressions (secondary)  | 0.5%  | [0.2%, 2.7%]   | 35    |
| Improvements (primary)   | -0.6% | [-1.2%, -0.1%] | 84    |
| Improvements (secondary) | -0.5% | [-1.1%, -0.1%] | 15    |
| All  (primary)           | -0.4% | [-1.2%, 0.5%]  | 103   |


3 Regressions, 3 Improvements, 3 Mixed; 4 of them in rollups
30 Untriaged Pull Requests
26 artifact comparisons made in total

#### Regressions

[rustc_ty_utils] Treat `drop_in_place`'s *mut argument like &mut when adding LLVM attributes [#111807](https://github.com/rust-lang/rust/pull/111807) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cda5becc27cbc7106646fbc40aacea5e7896d954&end=f3d597b31c0f101a02c230798afa31a36bdacbc6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.7%]   | 17    |
| Regressions (secondary)  | 1.3%  | [0.2%, 2.9%]   | 6     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.4%  | [-0.2%, 0.7%]  | 18    |

* already triaged last week

Rollup of 6 pull requests [#111869](https://github.com/rust-lang/rust/pull/111869) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f3d597b31c0f101a02c230798afa31a36bdacbc6&end=b08148f6a76010ea3d4e91d61245aa7aac59e4b4&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.6%] | 12    |
| Regressions (secondary)  | 0.2% | [0.2%, 0.2%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 0.6%] | 12    |

* The five primary regressions over 0.4% are to diesel full and incr-full scenarios.
* It is not clear what caused these regressions; pnkfelix started requesting individual rust-timer runs, but has not yet identified any root cause.

Support #[global_allocator] without the allocator shim [#86844](https://github.com/rust-lang/rust/pull/86844) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cade26637fe1c23965ce644299ed5200db7c92dd&end=a2b1646c597329d0a25efa3889b66650f65de1de&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 1     |
| Regressions (secondary)  | 0.5% | [0.3%, 0.7%] | 10    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.2%] | 1     |

* The 0.2% hit to primary benchmark serde_derive check-incr_unchanged is easily justified by the feature addition here.
* The more interesting question is 44 primary benchmarks saw a regression to their binary size. However, the only one of those of note, in my opinion, is ripgrep, which suffered a 0.43% increase to binary size on various opt scenarios.
* marked as triaged.

#### Improvements

Rollup of 6 pull requests [#111919](https://github.com/rust-lang/rust/pull/111919) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c373194cb6d882dc455a588bcc29c92a96b50252&end=096309e6dc4378e175e524e963332d1a3830ed63&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.6%] | 2     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 2     |
| All  (primary)           | -0.7% | [-0.7%, -0.6%] | 2     |

* a small improvement to serde_derive check-{full, incr-full} that seems like its not noise, not completely.

fix: :bug: etc/bash_complettion -> src/etc/... to avoid copy error [#110906](https://github.com/rust-lang/rust/pull/110906) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eb9da7bfa375ad58bcb946115f3191a2756785e5&end=d300bffa4f0036e9138ef752610d08fc63f87a77&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-0.8%, -0.7%] | 2     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.3%] | 6     |
| All  (primary)           | -0.8% | [-0.8%, -0.7%] | 2     |

* lol helloworld check-{full, incr-unchanged} improved by [-0.80%, -0.74%].
* based on the PR itself, we should consider this to be some confounding factor, not meaningful.

Rollup of 7 pull requests [#111960](https://github.com/rust-lang/rust/pull/111960) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a2b1646c597329d0a25efa3889b66650f65de1de&end=0004b3b984b19646c1f78b09ba497b7bd6e882c1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.3%, -0.2%] | 65    |
| Improvements (secondary) | -0.6% | [-1.2%, -0.2%] | 18    |
| All  (primary)           | -0.5% | [-1.3%, -0.2%] | 65    |

* a lot of primary improvements here, mostly to incr-{unchanged, patched} scenarios
* fired off rust-timer run on specific PR just to see if it was root cause of improvement.


#### Mixed

Rollup of 7 pull requests [#111882](https://github.com/rust-lang/rust/pull/111882) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=52dd1cde59ee86e5d61469ee1befe09c132c777d&end=d5699874dc07d2dfb262d007293853f73c171f7e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 5     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.7%, -0.2%] | 18    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 9     |
| All  (primary)           | -0.2% | [-0.7%, 0.3%]  | 23    |

* regressions are to bitmaps {{check, debug}-full, {check, debug, opt}-incr-full}.
* improvements clearly outweigh regressions here
* marked as triaged

Preprocess and cache dominator tree [#111673](https://github.com/rust-lang/rust/pull/111673) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b3cbf7c8351dd48dc2e07a1cdc69620f8e40dd2f&end=97d328012b9ed9b7d481c40e84aa1f2c65b33ec8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.2% | [-1.2%, -1.2%] | 3     |
| All  (primary)           | 0.3%  | [0.2%, 0.4%]   | 3     |

* primary benchmarks libc {check, debug}-full and bitmaps check-full regressed a little.
* this pays a bit of upfront cost to avoid a O(n^2) pathology in other planned code.
* marked as triaged.

rustc_privacy: Cleanups and perf improvements to `EmbargoVisitor` [#111260](https://github.com/rust-lang/rust/pull/111260) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=97d328012b9ed9b7d481c40e84aa1f2c65b33ec8&end=c373194cb6d882dc455a588bcc29c92a96b50252&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.6%]   | 9     |
| Improvements (primary)   | -0.4% | [-1.3%, -0.1%] | 67    |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 15    |
| All  (primary)           | -0.4% | [-1.3%, -0.1%] | 67    |

* already marked as triaged

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

## Next week's WG checkins

- @_*WG-polymorphization* by @**davidtwco**
- @_*WG-rls2.0* by @**Lukas Wirth**

Agenda draft: https://hackmd.io/LBCwQjC6QFCfan1AHHFVVQ
