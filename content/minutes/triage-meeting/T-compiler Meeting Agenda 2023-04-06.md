---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2023-04-06

## Announcements

- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzA0MDdUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-04-07T10:00:00-04:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA0MTBUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-04-10T10:00:00-04:00>
- Signal boost this request for contributors for Diagnostics Translation from @**Michael Goulet (compiler-errors)** ([Zulip comment](https://rust-lang.zulipchat.com/#narrow/stream/328238-RustcContributor.3A.3Anew/topic/Diagnostics.20Translation))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
  - (from @apiraino) in PR "Fix off-by-one error in X87DoubleExtended::from_bits" [rust#100685](https://github.com/rust-lang/rust/pull/100685)
    - @**eddyb** mentions licensing issues [in comment](https://github.com/rust-lang/rust/pull/100685#issuecomment-1220718236)
    - cc: @**Wesley Wiser** (assigned reviewer)

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=M2xpa29pZjl1Z2NvazdhZXRzbDlmNnVsZWFfMjAyMzA0MDZUMTgwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-04-06T14:00:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzA0MTBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-04-10T11:00:00-04:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMzA0MTBUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-04-10T11:30:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Rename `wasm32-wasi` target to `wasm32-wasi-preview1`" [compiler-team#607](https://github.com/rust-lang/compiler-team/issues/607) 
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: 2 months ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: 3 months ago)
  - "Synthetic Partial Drop Glue" [compiler-team#585](https://github.com/rust-lang/compiler-team/issues/585) (last review activity: 2 months ago)
  - "New tier-2 target for `wasm32-wasi-preview2`" [compiler-team#594](https://github.com/rust-lang/compiler-team/issues/594) (last review activity: about 2 days ago)
  - "Add New Values To MIPS_ALLOWED_FEATURES" [compiler-team#595](https://github.com/rust-lang/compiler-team/issues/595) (last review activity: about 13 days ago)
  - "Take MIR `Analysis` by `&mut`" [compiler-team#598](https://github.com/rust-lang/compiler-team/issues/598) (last review activity: about 13 days ago)
  - "-C linker-flavor=clang" [compiler-team#601](https://github.com/rust-lang/compiler-team/issues/601) (last review activity: about 13 days ago)
  - "Add `TyCtxt` wrappers to sort its methods into groups and improve documentation" [compiler-team#603](https://github.com/rust-lang/compiler-team/issues/603) (last review activity: about 13 days ago)
  - "Stable -C binary-dep-depinfo flag" [compiler-team#604](https://github.com/rust-lang/compiler-team/issues/604) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking Issue for `debugger_visualizer`" [rust#95939](https://github.com/rust-lang/rust/issues/95939#issuecomment-1496371829) 
  - "Evaluate place expression in `PlaceMention`" [rust#104844](https://github.com/rust-lang/rust/pull/104844#issuecomment-1468653609)
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850)
  - "Update the version of musl used on `*-linux-musl` targets to 1.2.3" [rust#107129](https://github.com/rust-lang/rust/pull/107129#issuecomment-1407200120)
  - "Stabilize raw-dylib, link_ordinal, import_name_type and -Cdlltool" [rust#109677](https://github.com/rust-lang/rust/pull/109677#issuecomment-1491574659)
- Things in FCP (make sure you're good with it)
  - "Add `rustc_abi::FieldIdx`" [compiler-team#606](https://github.com/rust-lang/compiler-team/issues/606) 
  - "Increase `TypeId`'s hash from 64 bits to 128 bits." [compiler-team#608](https://github.com/rust-lang/compiler-team/issues/608) 
- Accepted MCPs
  - "Use `ControlFlow` in HIR `Visitor`" [compiler-team#597](https://github.com/rust-lang/compiler-team/issues/597) 
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580)
  - "Clone "copyables" using copy codegen" [compiler-team#588](https://github.com/rust-lang/compiler-team/issues/588)
  - "Add `force` option for `--extern` flag" [compiler-team#605](https://github.com/rust-lang/compiler-team/issues/605)
- Finalized FCPs (disposition merge)
  - "Tracking Issue for "C-unwind ABI", RFC 2945" [rust#74990](https://github.com/rust-lang/rust/issues/74990) 
  - "Initial support for return type notation (RTN)" [rust#109010](https://github.com/rust-lang/rust/pull/109010) 

### WG checkins

- Generic Associated Types initiative by @**Jack Huey** ([previous checkin](https://hackmd.io/IvuR59rBR2Ka9opecmfaJQ#WG-checkins)):
  > Nothing new. We have a deep dive retro and next steps scheduled for next week.

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/4CKNflTQQIKOxk7jiuh7NQ#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- [1.69.0] :beta: "Move a const-prop-lint specific hack from mir interpret to const-prop-lint and make it fallible" [rust#109938](https://github.com/rust-lang/rust/pull/109938)
  - patch authored by @**oli**, fixes [rust#109743](https://github.com/rust-lang/rust/issues/109743), a P-medium regression found in the beta crater run
  - beta backport nomination @**Michael Goulet (compiler-errors)**
<!--
/poll Approve beta backport of #109938?
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
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Change Wasm's `cdylib` etc. to be a "reactor"." [rust#108097](https://github.com/rust-lang/rust/pull/108097) (last review activity: about 41 days ago)
  - who has the context to review this? review assignment has been bouncing for a while
- "Run various queries from other queries instead of explicitly in phases" [rust#108118](https://github.com/rust-lang/rust/pull/108118) (last review activity: about 40 days ago)
  - review staff assigned to @**Wesley Wiser** 
  - unsure about the current status (@_**oli** also discussed the PR design with author)
- "Shrink `process_obligations`" [rust#108380](https://github.com/rust-lang/rust/pull/108380) (last review activity: about 34 days ago)
  - this PR seems to be meant to proceed on its own (i.e. no reviewer needed), right @**nnethercote**?
- "Implement jump threading MIR opt" [rust#107009](https://github.com/rust-lang/rust/pull/107009) (last review activity: 2 months ago)
  - cc @**Jak{e,ob} Degen**
- "Avoid wrong code suggesting for attribute macro" [rust#107254](https://github.com/rust-lang/rust/pull/107254) (last review activity: 2 months ago)
  - cc: @**Esteban Küber** ([previously mentioned](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-03-16/near/342335507) to have a better approach to suggest)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [30 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 4 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 96 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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
- "windows-gnu thin-lto test linking error regression" [rust#109797](https://github.com/rust-lang/rust/issues/109797)
  - bisection point to [rust#108089](https://github.com/rust-lang/rust/pull/108089)
  - workaround PR [cargo#11916](https://github.com/rust-lang/cargo/pull/11916) in cargo (Disable test_profile test on windows-gnu)
  - real fix is probably [rust#109806](https://github.com/rust-lang/rust/pull/109806)

## Performance logs

> [triage logs for 2023-04-04](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-04-04.md)

A large improvement in const evaluation (particularly for large types) in
[#109670](https://github.com/rust-lang/rust/pull/109670) and a large
improvement to many-paged rustdoc workloads in
[#109876](https://github.com/rust-lang/rust/pull/109876) by removing quadratic
behavior. Regressions are comparatively limited this week.

Triage done by **@simulacrum**.
Revision range: [cbc064b341be231403d181402a786cce7f1c73f1..7c96e40da81165beef4f273f44e96eeef5a1bd30](https://perf.rust-lang.org/?start=cbc064b341be231403d181402a786cce7f1c73f1&end=7c96e40da81165beef4f273f44e96eeef5a1bd30&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 2.3%  | [0.4%, 8.4%]    | 18    |
| Regressions (secondary)  | 1.6%  | [0.3%, 10.7%]   | 26    |
| Improvements (primary)   | -2.5% | [-77.6%, -0.3%] | 63    |
| Improvements (secondary) | -4.0% | [-27.9%, -0.3%] | 52    |
| All  (primary)           | -1.4% | [-77.6%, 8.4%]  | 81    |


1 Regressions, 4 Improvements, 3 Mixed; 2 of them in rollups
54 artifact comparisons made in total

#### Regressions

Insert alignment checks for pointer dereferences when debug assertions are enabled [#98112](https://github.com/rust-lang/rust/pull/98112) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ec7bb8da11f3e5cc73be397b78d2aea4157df300&end=22a7a19f9333bc1fcba97ce444a3515cb5fb33e6&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.4%, 0.5%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.4%, 0.5%] | 3     |

#### Improvements

Rollup of 6 pull requests [#109714](https://github.com/rust-lang/rust/pull/109714) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=acd27bb5572553a4dc9a2d6f21d9a3a68ff8a233&end=40cd0310db7f67867b305c28fb87b5b660e77df1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.7%, -0.3%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-0.7%, -0.3%] | 5     |


Make init mask lazy for fully initialized/uninitialized const allocations [#109670](https://github.com/rust-lang/rust/pull/109670) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cf32b9de1e8f66526c36ad2927458558d2e81093&end=86792086646b61342c9417b78b8a535392f1045f&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -     | -               | 0     |
| Improvements (secondary) | -5.1% | [-27.7%, -1.4%] | 17    |
| All  (primary)           | -     | -               | 0     |


Update `ty::VariantDef` to use `IndexVec<FieldIdx, FieldDef>` [#109762](https://github.com/rust-lang/rust/pull/109762) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=276029deae08ad5b62f7d1ef2ea1acb7f5f529d8&end=eb3e9c1f45981b47160543cfd882ca00e69bbfab&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.6%, -0.5%] | 3     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 8     |
| All  (primary)           | -0.5% | [-0.6%, -0.5%] | 3     |


rustdoc: make intra-doc link pass non-quadratic for repeated links [#109876](https://github.com/rust-lang/rust/pull/109876) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cf7ada217c8ac63367b184afd9fffaff30f6ed44&end=eb48e9771a924080a2a7a87b403278e61f3061ea&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | -      | -               | 0     |
| Regressions (secondary)  | -      | -               | 0     |
| Improvements (primary)   | -11.8% | [-77.7%, -0.6%] | 8     |
| Improvements (secondary) | -3.6%  | [-3.6%, -3.6%]  | 1     |
| All  (primary)           | -11.8% | [-77.7%, -0.6%] | 8     |


#### Mixed

Add a builtin `FnPtr` trait that is implemented for all function pointers [#108080](https://github.com/rust-lang/rust/pull/108080) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=60660371efe59dfc99644e9d709a1b71e25ae2ac&end=bf57e8ada6dc62369d1cee7ab055fb4074bd2d10&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.2%  | [1.1%, 5.5%]   | 10    |
| Regressions (secondary)  | 0.9%  | [0.3%, 1.1%]   | 5     |
| Improvements (primary)   | -1.8% | [-7.3%, -0.3%] | 17    |
| Improvements (secondary) | -4.0% | [-7.5%, -0.4%] | 27    |
| All  (primary)           | 0.1%  | [-7.3%, 5.5%]  | 27    |


Rollup of 8 pull requests [#109692](https://github.com/rust-lang/rust/pull/109692) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bf57e8ada6dc62369d1cee7ab055fb4074bd2d10&end=478cbb42b730ba4739351b72ce2aa928e78e2f81&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.2%, 9.2%]   | 31    |
| Regressions (secondary)  | 1.7%  | [0.2%, 10.9%]  | 25    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.1% | [-1.6%, -0.5%] | 5     |
| All  (primary)           | 0.9%  | [0.2%, 9.2%]   | 31    |


numeric vars can only be unified with numerical types in deep reject [#109750](https://github.com/rust-lang/rust/pull/109750) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c1d3610ac1ddd1cd605479274047fd0a3f37d220&end=276029deae08ad5b62f7d1ef2ea1acb7f5f529d8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 3     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.5%]   | 8     |
| Improvements (primary)   | -0.6% | [-1.8%, -0.2%] | 44    |
| Improvements (secondary) | -0.8% | [-1.5%, -0.2%] | 3     |
| All  (primary)           | -0.6% | [-1.8%, 0.6%]  | 47    |


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Tracking issue for RFC 2603, "Rust Symbol Mangling (v0)"" [rust#60705](https://github.com/rust-lang/rust/issues/60705) 
  - nominated by @**jyn** ([comment](https://github.com/rust-lang/rust/issues/60705#issuecomment-1483919068)), to stimulate creating this ([exhaustive](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-03-30/near/345706041)?) list of tools that should support v0 mangling
  - [previously visited by T-compiler](https://github.com/rust-lang/rust/issues/60705#issuecomment-1213168334)
  - [Past Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-01-13.20.2354818/near/267886210)
  - A starting point could be [the opening comment](https://github.com/rust-lang/rust/issues/60705#issue-442790471)
  - But also this [comment](https://github.com/rust-lang/rust/issues/60705#issuecomment-1484247817) from @**nnethercote** about v0 breaking `cargo llvm-lines`

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

## Next week's WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
- Impl Trait initiative by @**oli**

Agenda draft: https://hackmd.io/XSIWiDBHTyyb33sarCfpEg
