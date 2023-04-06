---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2023-03-16

## Announcements

- [Types team: Review types-team#62 or types-team-#57](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzAzMjBUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-20T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))

- [wg-async weekly](https://www.google.com/calendar/event?eid=N211N3RrYzVqcnVvNnBycGFrcW9mcjNocTNfMjAyMzAzMTZUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-16T12:00:00-04:00>
- [wg-debugging triage meeting](https://www.google.com/calendar/event?eid=NjAwbDEwNzNmMzVsNDZucnFsdDdwbGJrdDRfMjAyMzAzMjBUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-20T10:00:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzAzMjBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-20T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add New Values To MIPS_ALLOWED_FEATURES" [compiler-team#595](https://github.com/rust-lang/compiler-team/issues/595) 
  - "Use `ControlFlow` in HIR `Visitor`" [compiler-team#597](https://github.com/rust-lang/compiler-team/issues/597) 
  - "Take MIR `Analysis` by `&mut`" [compiler-team#598](https://github.com/rust-lang/compiler-team/issues/598) 
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: 2 months ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: 2 months ago)
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580) (last review activity: about 15 days ago)
  - "Synthetic Partial Drop Glue" [compiler-team#585](https://github.com/rust-lang/compiler-team/issues/585) (last review activity: about 39 days ago)
  - "Clone "copyables" using copy codegen" [compiler-team#588](https://github.com/rust-lang/compiler-team/issues/588) (last review activity: about 26 days ago)
  - "New tier-2 target for `wasm32-wasi-preview2`" [compiler-team#594](https://github.com/rust-lang/compiler-team/issues/594) (last review activity: about 18 days ago)
- Pending FCP requests (check your boxes!)
  - "Evaluate place expression in `PlaceMention`" [rust#104844](https://github.com/rust-lang/rust/pull/104844#issuecomment-1468653609)
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850)
  - "Update the version of musl used on `*-linux-musl` targets to 1.2.3" [rust#107129](https://github.com/rust-lang/rust/pull/107129#issuecomment-1407200120)
- Things in FCP (make sure you're good with it)
  - "MCP: New Tier-3 target for `x86_64h-apple-darwin`" [compiler-team#599](https://github.com/rust-lang/compiler-team/issues/599) 
  - "Add `--print=all-target-specs-json` unstable flag" [compiler-team#600](https://github.com/rust-lang/compiler-team/issues/600) 
- Accepted MCPs
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) 
  - "Store ICE backtraces to disk and point end users at the file location" [compiler-team#578](https://github.com/rust-lang/compiler-team/issues/578) 
  - "Switch PLT default to "yes" for all targets except x86_64." [compiler-team#581](https://github.com/rust-lang/compiler-team/issues/581) 
  - "Opportunistically show code snippet on panic" [compiler-team#591](https://github.com/rust-lang/compiler-team/issues/591) 
  - "Implementing "<test_binary> --list --format json" for use by IDE test explorers / runners" [compiler-team#592](https://github.com/rust-lang/compiler-team/issues/592) 
  - "Add `internal_features` lint for internal unstable features" [compiler-team#596](https://github.com/rust-lang/compiler-team/issues/596) 
- Finalized FCPs (disposition merge)
  - "Stabilize rustdoc `--test-run-directory`" [rust#103682](https://github.com/rust-lang/rust/pull/103682) 
  - "Make `unused_allocation` lint against `Box::new` too" [rust#104363](https://github.com/rust-lang/rust/pull/104363) 
  - "Properly allow macro expanded `format_args` invocations to uses captures" [rust#106505](https://github.com/rust-lang/rust/pull/106505) 
  - "Treat `str` as containing `[u8]` for auto trait purposes" [rust#107941](https://github.com/rust-lang/rust/pull/107941) 
  - "rustdoc: search by macro when query ends with `!`" [rust#108143](https://github.com/rust-lang/rust/pull/108143) 
  - "Remove `box_syntax`" [rust#108471](https://github.com/rust-lang/rust/pull/108471)


### WG checkins

- Types team by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Niko reports:
  > - continued progress on new trait solver that @lcnr, @Michael Goulet (compiler-errors), and others are driving
  > - TAIT stabilization is moving forward
  > - more at the checkin meeting: https://rust-lang.zulipchat.com/#narrow/stream/326132-t-types.2Fmeetings/topic/2023-03-06.20extended.20updates

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- [1.68.1?] :stable: "Don't eagerly convert principal to string" [rust#108162](https://github.com/rust-lang/rust/pull/108162) 
  - Fixes [rust#108155](https://github.com/rust-lang/rust/issues/108155), an ICE preventing `cargo test` to complete on an `opengpg` crate
  - Note: there is another critical regression on stable (#109067) that could make `T-infra` into releasing a 1.68.1
- [1.69.0] :beta: Revert "enable ThinLTO for rustc on x86_64-pc-windows-msvc dist builds" #109094
  - Fixes P-critical regression on Windows msvc
- [1.68.0] :stable: Revert "enable ThinLTO for rustc on x86_64-pc-windows-msvc dist builds" #109094
  - Fixes P-critical regression on Windows msvc

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Enforce that `closure: 'a` requires that `closure_ret_ty: 'a` holds" [rust#84385](https://github.com/rust-lang/rust/pull/84385)
  - @*T-types*: anything new since [this comment](https://github.com/rust-lang/rust/pull/84385#issuecomment-1286950264) from last Oct.?
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Avoid alignment mismatch between ABI and layout for unions." [rust#104872](https://github.com/rust-lang/rust/pull/104872) (last review activity: 2 months ago)
  - cc: @**eddyb**
- "Preserve DebugInfo in DeadStoreElimination." [rust#106852](https://github.com/rust-lang/rust/pull/106852) (last review activity: about 57 days ago)
  - AFAIK `S-blocked` on a T-compiler design meeting to discuss the optimization level ([comment](https://github.com/rust-lang/rust/pull/106852#issuecomment-1384654654))
- "Implement jump threading MIR opt" [rust#107009](https://github.com/rust-lang/rust/pull/107009) (last review activity: about 56 days ago)
  - cc: @**Wesley Wiser** is this PR waiting on comments? ([comment](https://github.com/rust-lang/rust/pull/107009#issuecomment-1431615393))
- "Avoid wrong code suggesting for attribute macro" [rust#107254](https://github.com/rust-lang/rust/pull/107254) (last review activity: about 49 days ago)
  - cc: @**Esteban Küber** 
- "Replace ZST operands and debuginfo by constants." [rust#107270](https://github.com/rust-lang/rust/pull/107270) (last review activity: about 48 days ago)
  - cc: @**oli**

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [26 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 35 P-high, 94 P-medium, 14 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Miscompilation of `is_whitespace` inside rustc on Windows-msvc (with -Zdylib-lto)" [rust#109067](https://github.com/rust-lang/rust/issues/109067)
  - ThinLTO on windows reverted by @**nils (Nilstrieb)** in [rust#109094](https://github.com/rust-lang/rust/pull/109094)
  - #109094 is beta+stable nominated for `T-infra` (cc: `T-compiler`)

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

> [triage logs 2023-03-14](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-03-14.md)

A fairly mixed week, with several significant improvements and a few
significant regressions. On average, this week saw a slight increase in compile
times.

Triage done by **@simulacrum**.
Revision range: [8f9e09ac3ef3fa85d23ad6a0c920d49987144b13..0058748944abb3282aba0e0a74823c6411703565](https://perf.rust-lang.org/?start=8f9e09ac3ef3fa85d23ad6a0c920d49987144b13&end=0058748944abb3282aba0e0a74823c6411703565&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.8%  | [0.3%, 6.7%]    | 52    |
| Regressions (secondary)  | 12.3% | [0.2%, 139.9%]  | 45    |
| Improvements (primary)   | -0.9% | [-2.8%, -0.2%]  | 45    |
| Improvements (secondary) | -2.2% | [-11.2%, -0.2%] | 52    |
| All  (primary)           | 0.5%  | [-2.8%, 6.7%]   | 97    |


4 Regressions, 6 Improvements, 4 Mixed; 2 of them in rollups
39 artifact comparisons made in total

#### Regressions

Update cargo [#108665](https://github.com/rust-lang/rust/pull/108665) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7c306f6dcd600b1fcc74439c780e8ebef338d84c&end=900c3540378c8422b8087ffa3db60fa6c8abfcad&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.4%]   | 8     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]   | 13    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 2     |
| All  (primary)           | 0.3%  | [0.3%, 0.4%]   | 8     |

Noise, most likely, based on small deltas. Marked as triaged.

Make RPITITs simple cases work when using lower_impl_trait_in_trait_to_assoc_ty [#108700](https://github.com/rust-lang/rust/pull/108700) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=542ed2bf72b232b245ece058fc11aebb1ca507d7&end=9455a5591b1435dfc9a88b2922d0dfc155d9614f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 1.2%]   | 93    |
| Regressions (secondary)  | 1.1%  | [0.2%, 2.9%]   | 45    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.5% | [-1.5%, -1.5%] | 1     |
| All  (primary)           | 0.6%  | [0.2%, 1.2%]   | 93    |

Regressions largely resolved in
[#109057](https://github.com/rust-lang/rust/pull/109057); essentially all
regressions are to incremental workloads.

Move `Option::as_slice` to an always-sound implementation [#108623](https://github.com/rust-lang/rust/pull/108623) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f1b1ed7e18f1fbe5226a96626827c625985f8285&end=cf8d98b227fd3c7e50aa5a9453141c5edbf5df38&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.8%, 0.9%] | 3     |
| Regressions (secondary)  | 0.6% | [0.4%, 0.7%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.8%, 0.9%] | 3     |

Minor regressions in incremental scenarios for a few workloads; not concerning
enough to warrant further investigation.

Rollup of 9 pull requests [#109097](https://github.com/rust-lang/rust/pull/109097) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=22f247c6f3ed388cb702d01c2ff27da658a8b353&end=c54af457d05722321ca88c2ae0e5706ef803c5fb&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.3%, 2.7%]   | 17    |
| Regressions (secondary)  | 3.6%  | [0.6%, 11.4%]  | 17    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.3%] | 2     |
| All  (primary)           | 0.9%  | [0.3%, 2.7%]   | 17    |

Regression triaged to "Treat projections with infer as placeholder during fast
reject in new solver" [#108830](https://github.com/rust-lang/rust/pull/108830).
Pinged author/reviewer on that PR.

#### Improvements

Move dep graph methods to DepGraphData to avoid branches and `unwrap`s [#108417](https://github.com/rust-lang/rust/pull/108417) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8a73f50d875840b8077b8ec080fa41881d7ce40d&end=542ed2bf72b232b245ece058fc11aebb1ca507d7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 6     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 5     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 6     |


Avoid unnecessary hashing [#108794](https://github.com/rust-lang/rust/pull/108794) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=501ad021b9a4fb2cd6a39e0302d22f169f6166b0&end=150cb381471533050751111e5faf1d9f05c02f77&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -0.8% | [-2.9%, -0.2%]  | 68    |
| Improvements (secondary) | -2.0% | [-11.3%, -0.2%] | 53    |
| All  (primary)           | -0.8% | [-2.9%, -0.2%]  | 68    |


rustdoc: reduce allocs in FnDecl::inner_full_print [#109011](https://github.com/rust-lang/rust/pull/109011) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b05bb2900825e4d063ebf3f0f11afb08baed3bc6&end=d610b0c514b9ccb0dad5d0b77ce4c518f71b92c8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.0%, -0.4%] | 7     |
| Improvements (secondary) | -0.7% | [-2.3%, -0.3%] | 8     |
| All  (primary)           | -0.7% | [-1.0%, -0.4%] | 7     |


:arrow_up: `rust-analyzer` [#109069](https://github.com/rust-lang/rust/pull/109069) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cf8d98b227fd3c7e50aa5a9453141c5edbf5df38&end=8efa635b40ce6569e12f4988b7a9bcb7f3f0ed0c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.8%, -0.7%] | 3     |
| Improvements (secondary) | -0.5% | [-0.7%, -0.3%] | 2     |
| All  (primary)           | -0.7% | [-0.8%, -0.7%] | 3     |


resolve: Querify most cstore access methods (subset) [#108992](https://github.com/rust-lang/rust/pull/108992) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c54af457d05722321ca88c2ae0e5706ef803c5fb&end=bd43458d4c2a01af55f7032f7c47d7c8fecfe560&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.2%, -0.2%] | 15    |
| Improvements (secondary) | -1.6% | [-2.1%, -1.1%] | 2     |
| All  (primary)           | -0.4% | [-1.2%, 0.5%]  | 16    |


Don't `opt_rpitit_info` as a separate query [#109057](https://github.com/rust-lang/rust/pull/109057) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bd43458d4c2a01af55f7032f7c47d7c8fecfe560&end=0058748944abb3282aba0e0a74823c6411703565&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.1%, -0.2%] | 86    |
| Improvements (secondary) | -1.2% | [-2.7%, -0.2%] | 38    |
| All  (primary)           | -0.5% | [-1.1%, -0.2%] | 86    |


#### Mixed

always resolve to universal regions if possible [#108121](https://github.com/rust-lang/rust/pull/108121) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=60445fda58fc9f9aa413752530d6756ae5570f2f&end=7c306f6dcd600b1fcc74439c780e8ebef338d84c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.7%  | [0.7%, 0.7%]   | 2     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 3     |
| Improvements (secondary) | -1.4% | [-1.7%, -0.7%] | 9     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 3     |


Do not consider `&mut *x` as mutating `x` in `CopyProp` [#108178](https://github.com/rust-lang/rust/pull/108178) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6a179026decb823e6ad8ba1c81729528bc5d695f&end=66a2d6221069e0d08ceacf2a3201600e2092d2e0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.0%]   | 18    |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.5%]   | 11    |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.3%  | [-0.3%, 1.0%]  | 20    |


Rollup of 8 pull requests [#108934](https://github.com/rust-lang/rust/pull/108934) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f37f8549940386a9d066ba199983affff47afbb4&end=104f4300cfddbd956e32820ef202a732f06ec848&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.8%  | [0.5%, 1.1%]   | 2     |
| Improvements (primary)   | -0.9% | [-1.0%, -0.7%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.9% | [-1.0%, -0.7%] | 2     |


Strengthen state tracking in const-prop [#108872](https://github.com/rust-lang/rust/pull/108872) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7b4f48927dce585f747a58083b45ab62b9d73a53&end=b05bb2900825e4d063ebf3f0f11afb08baed3bc6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.4%  | [0.6%, 6.3%]   | 30    |
| Regressions (secondary)  | 41.6% | [0.3%, 139.3%] | 12    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.4% | [-1.9%, -1.0%] | 2     |
| All  (primary)           | 2.4%  | [0.6%, 6.3%]   | 30    |

Regression triaged in [this comment](https://github.com/rust-lang/rust/pull/108178#issuecomment-1461875685).


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- ""Could not compile `advapi32-sys` on a network-mapped drive" [rust#28002](https://github.com/rust-lang/rust/issues/28002)
  - nominated by @**Jubilee**, ([context](https://github.com/rust-lang/rust/issues/28002#issuecomment-1470947085))

- "+outline-atomics violates "core shall not depend on libc"" [rust#109064](https://github.com/rust-lang/rust/issues/109064)
    - nominated by @**jyn**

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

## Next week's WG checkins

- @_*WG-polymorphization* by @**davidtwco**
- @_*WG-rls2.0* by @**Lukas Wirth**

Agenda draft: https://hackmd.io/RN6ovtjCR5m-B5IWrVgkIA
