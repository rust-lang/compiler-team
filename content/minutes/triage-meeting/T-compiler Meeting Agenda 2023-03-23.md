---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2023-03-23

## Announcements

- [Types team: Roadmap update](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzAzMjdUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-27T10:00:00-04:00>
- Rust 1.68.1 will be released today ([Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/1.2E68.2E1.3F))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-rls-2.0 steering meeting](https://www.google.com/calendar/event?eid=M2xpa29pZjl1Z2NvazdhZXRzbDlmNnVsZWFfMjAyMzAzMjNUMTgwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-03-23T14:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add New Values To MIPS_ALLOWED_FEATURES" [compiler-team#595](https://github.com/rust-lang/compiler-team/issues/595) 
  - "Use `ControlFlow` in HIR `Visitor`" [compiler-team#597](https://github.com/rust-lang/compiler-team/issues/597) 
  - "Take MIR `Analysis` by `&mut`" [compiler-team#598](https://github.com/rust-lang/compiler-team/issues/598) 
  - "-C linker-flavor=clang" [compiler-team#601](https://github.com/rust-lang/compiler-team/issues/601) 
  - "Add `TyCtxt` wrappers to sort its methods into groups and improve documentation" [compiler-team#603](https://github.com/rust-lang/compiler-team/issues/603) 
  - "Stable -C binary-dep-depinfo flag" [compiler-team#604](https://github.com/rust-lang/compiler-team/issues/604) 
  - "Add `force` option for `--extern` flag" [compiler-team#605](https://github.com/rust-lang/compiler-team/issues/605) 
- Old MCPs (not seconded, take a look)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: 2 months ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: 2 months ago)
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580) (last review activity: about 22 days ago)
  - "Synthetic Partial Drop Glue" [compiler-team#585](https://github.com/rust-lang/compiler-team/issues/585) (last review activity: about 46 days ago)
  - "Clone "copyables" using copy codegen" [compiler-team#588](https://github.com/rust-lang/compiler-team/issues/588) (last review activity: about 33 days ago)
  - "New tier-2 target for `wasm32-wasi-preview2`" [compiler-team#594](https://github.com/rust-lang/compiler-team/issues/594) (last review activity: about 25 days ago)
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
  - "Lint ambiguous glob re-exports" [rust#107880](https://github.com/rust-lang/rust/pull/107880) 
  - "Treat `str` as containing `[u8]` for auto trait purposes" [rust#107941](https://github.com/rust-lang/rust/pull/107941) 
  - "rustdoc: search by macro when query ends with `!`" [rust#108143](https://github.com/rust-lang/rust/pull/108143) 
  - "Remove `box_syntax`" [rust#108471](https://github.com/rust-lang/rust/pull/108471) 

### WG checkins

- @_*WG-polymorphization* by @**davidtwco** ([previous checkin](https://hackmd.io/G07oxu2fTJaYnrMyh6Mjgg#WG-checkins)):
  > no update for polymorphization this cycle, we're waiting on the trait system refactor work to complete before continuing with it.

- @_*WG-rls2.0* by @**Lukas Wirth** ([previous checkin](https://hackmd.io/DzXUoPG6T-S5NfXcl8h1yg#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- [1.69.0] :beta: "Fix linker detection for clang with prefix" [rust#109156](https://github.com/rust-lang/rust/pull/109156)
  - stable backport approved on Zulip ([comment](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/1.2E68.2E1.3F/near/342858903))
  - any objection to backport to beta?
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
- "Default to -Z plt=yes" [rust#106380](https://github.com/rust-lang/rust/pull/106380) (last review activity: about 59 days ago)
  - MCP has been approved, next step?
- "Consistently use the highest bit of vector masks when converting to i1 vectors" [rust#104693](https://github.com/rust-lang/rust/pull/104693) (last review activity: about 57 days ago)
  - cc @**nagisa** 
- "Erase late bound regions for dropped instances" [rust#107936](https://github.com/rust-lang/rust/pull/107936) (last review activity: about 31 days ago)
  - unsure about the status: perhaps pending comments from PR author re: the implementation? cc: @**Jack Huey** 
- "Add note for identifier following by array literal error" [rust#108222](https://github.com/rust-lang/rust/pull/108222) (last review activity: about 31 days ago)
  - probably cc: @**Michael Goulet (compiler-errors)** 

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [26 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 36 P-high, 94 P-medium, 13 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Miscompilation of `is_whitespace` inside rustc on Windows-msvc (with -Zdylib-lto)" [rust#109067](https://github.com/rust-lang/rust/issues/109067) 
  - Will be fixed in 1.68.1 (namely by [#109094](https://github.com/rust-lang/rust/pull/109094))

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

> [triage logs for 2023-03-21](https://github.com/rust-lang/rustc-perf/blob/c2c2e681aebed843dbfeafd8531ed60ef5e3c622/triage/2023-03-21.md)

A mixed week, with some nice wins, but also at least two PR's that were
subsequently reverted, such as the upgrade to LLVM 16. We do want to
note PR #108944, which cut down on crate metadata, binary sizes, and
was an overall win on execution time for many benchmarks.

Triage done by **@pnkfelix**.
Revision range: [00587489..ef03fda3](https://perf.rust-lang.org/?start=0058748944abb3282aba0e0a74823c6411703565&end=ef03fda339923e659d3d3ca3321de887316d2807&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.2%, 2.3%]    | 31    |
| Regressions (secondary)  | 1.5%  | [0.3%, 3.0%]    | 40    |
| Improvements (primary)   | -1.1% | [-6.7%, -0.2%]  | 101   |
| Improvements (secondary) | -3.9% | [-16.8%, -0.5%] | 45    |
| All  (primary)           | -0.6% | [-6.7%, 2.3%]   | 132   |


1 Regressions, 4 Improvements, 11 Mixed; 2 of them in rollups
37 artifact comparisons made in total
30 Untriaged Pull Requests

#### Regressions

Rollup of 10 pull requests [#109206](https://github.com/rust-lang/rust/pull/109206) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cd6c574af3886c41f34086d90df42c3da0144693&end=7ac4b82ddd596a218cac8cd6b88a91b54fcdcf13&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.4%, 0.7%] | 2     |
| Regressions (secondary)  | 1.1% | [0.9%, 1.3%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.4%, 0.7%] | 2     |

* as noted on PR, primary regressions are doc benchmarks, and secondary regressions are tt-muncher ... likely being noisy
* marking as triaged.

#### Improvements

Remove identity_future indirection [#104833](https://github.com/rust-lang/rust/pull/104833) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0058748944abb3282aba0e0a74823c6411703565&end=669e75163957f8f2408d515ce2da3516cb31f747&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%]  | 1     |
| Improvements (secondary) | -3.9% | [-14.3%, -0.9%] | 19    |
| All  (primary)           | -0.5% | [-0.5%, -0.5%]  | 1     |


fix ignore header in MSVC test [#108809](https://github.com/rust-lang/rust/pull/108809) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=18e305dfca6dfef07478378cb9a673fdba6ac3b3&end=cd6c574af3886c41f34086d90df42c3da0144693&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -1.0% | [-1.3%, -0.9%] | 6     |
| All  (primary)           | -0.3% | [-0.3%, -0.3%] | 1     |


fast path for process_obligations [#108815](https://github.com/rust-lang/rust/pull/108815) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=85123d2504885e4670d80dab96f4f9629f2be98b&end=df61fcaec1fdd3b949a7721abfaf37a8ca6e144c&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%   | [0.5%, 0.5%]    | 1     |
| Regressions (secondary)  | 1.5%   | [1.5%, 1.5%]    | 1     |
| Improvements (primary)   | -2.6%  | [-8.6%, -0.3%]  | 9     |
| Improvements (secondary) | -12.7% | [-21.9%, -7.8%] | 6     |
| All  (primary)           | -2.3%  | [-8.6%, 0.5%]   | 10    |


Update host compiler to LLVM 16 [#108802](https://github.com/rust-lang/rust/pull/108802) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f177b7cb91acd9debd1ed974e6521edb2ab6b097&end=2d0a7def330ed90f416a3429dbb44c5ee2a914e5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.4%, -0.3%] | 38    |
| Improvements (secondary) | -0.9% | [-1.7%, -0.6%] | 11    |
| All  (primary)           | -0.7% | [-1.4%, -0.3%] | 38    |


#### Mixed

Rollup of 9 pull requests [#109130](https://github.com/rust-lang/rust/pull/109130) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2e7034ebf7f57066c260b680c5e9dfcf04ca4cd5&end=1716932743a7b3705cbf0c34db0c4e070ed1930d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.4%]   | 6     |
| Regressions (secondary)  | 0.6%  | [0.3%, 1.0%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.3%] | 5     |
| All  (primary)           | 0.3%  | [0.3%, 0.4%]   | 6     |

* the primary regressions are all to stm32f4-0.14.0 incremental (unchanged and patched:negate).
* nothing in the rollup stands out as an obvious culprit. (I was briefly curious about #109101, but I think that indeed should only affect compilation of type-erroneous code, IIUC)
* marking as triaged, because I do not think these results warrant deeper investigation at this time.


remove obsolete givens from regionck [#107376](https://github.com/rust-lang/rust/pull/107376) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1716932743a7b3705cbf0c34db0c4e070ed1930d&end=e84e5ff04a647ce28540300244a26ba120642eea&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.5%, 0.7%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 3     |
| All  (primary)           | 0.6%  | [0.5%, 0.7%]   | 3     |

* primary benchmark regressions were to bitmaps incr-full { check, debug, opt }
* This was reverted in PR #109183; but the revert PR didn't register analogous reversal of the performance impact here.
* The performance regression to bitmaps incr-full was swallowed by big gains registered by PR #109035
* Marking as triaged.

Ensure ptr::read gets all the same LLVM load metadata that dereferencing does [#109035](https://github.com/rust-lang/rust/pull/109035) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=992d154f3a84cc8abcefcf6e6cf3698e4821b506&end=e4b9f86054c581d931f8bad0c87523c53e1e8e3f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.3%, 1.9%]   | 7     |
| Regressions (secondary)  | 1.5%  | [0.3%, 2.9%]   | 5     |
| Improvements (primary)   | -0.8% | [-1.3%, -0.3%] | 14    |
| Improvements (secondary) | -2.2% | [-3.7%, -0.4%] | 20    |
| All  (primary)           | -0.2% | [-1.3%, 1.9%]  | 21    |

* already triaged, this was a big broad win.

Implement checked Shl/Shr at MIR building. [#108282](https://github.com/rust-lang/rust/pull/108282) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ab654863c3d50482f260cf862647f1fe0ff5e010&end=c90eb4825a9faca0d6317292a452859f00d5b786&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.3%  | [1.3%, 1.3%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.9% | [-1.3%, -0.5%] | 8     |
| All  (primary)           | -     | -              | 0     |

* already triaged

Flatten/inline format_args!() and (string and int) literal arguments into format_args!() [#106824](https://github.com/rust-lang/rust/pull/106824) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7ac4b82ddd596a218cac8cd6b88a91b54fcdcf13&end=1203e0866e6c3659775efcb8aecad21dc13ef38b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.7%  | [0.3%, 1.1%]   | 2     |
| Improvements (primary)   | -0.7% | [-1.3%, -0.3%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.7% | [-1.3%, -0.3%] | 4     |

* already triaged

Replace ZST operands and debuginfo by constants. [#107270](https://github.com/rust-lang/rust/pull/107270) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1203e0866e6c3659775efcb8aecad21dc13ef38b&end=e386217dd996d293b3bde2285f6f5f4f502d7c17&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.4%, 1.9%]   | 4     |
| Regressions (secondary)  | 0.7%  | [0.7%, 0.7%]   | 1     |
| Improvements (primary)   | -0.5% | [-0.6%, -0.3%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.5%  | [-0.6%, 1.9%]  | 7     |

* already triaged

Wrap the whole LocalInfo in ClearCrossCrate. [#108944](https://github.com/rust-lang/rust/pull/108944) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e386217dd996d293b3bde2285f6f5f4f502d7c17&end=511364e7874dba9649a264100407e4bffe7b5425&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.6%  | [0.3%, 2.4%]   | 6     |
| Regressions (secondary)  | 1.7%  | [1.0%, 2.9%]   | 16    |
| Improvements (primary)   | -0.8% | [-1.3%, -0.5%] | 45    |
| Improvements (secondary) | -0.8% | [-0.8%, -0.7%] | 5     |
| All  (primary)           | -0.5% | [-1.3%, 2.4%]  | 51    |


* primary instruction count regression was to unicode normalization (5 variations in [1.5%, 2.4%] range). Slightly more muted for cycle count and wall time there.
* as noted by @lqd and @nnethercote on PR comments: crate metadata + binary size improved all around.
* overall this is a win
* marking as triaged.

Upgrade to LLVM 16 [#107224](https://github.com/rust-lang/rust/pull/107224) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2d0a7def330ed90f416a3429dbb44c5ee2a914e5&end=4a04d086cac54a41517d5657b59d5fe2caca2d71&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.3%, 3.7%]   | 63    |
| Regressions (secondary)  | 1.1%  | [0.2%, 2.7%]   | 25    |
| Improvements (primary)   | -1.1% | [-3.4%, -0.5%] | 49    |
| Improvements (secondary) | -1.2% | [-4.3%, -0.3%] | 70    |
| All  (primary)           | 0.2%  | [-3.4%, 3.7%]  | 112   |

* instruction count deltas are all over the place
* cycle counts and wall-time seem to paint this PR in a much more positive light
* cycle counts regressions: [ +0.67%, +2.92%] +1.88% 22 (9); improvements: [-10.51%, -1.01%] -2.38% 141 (30)
* wall-time regressions: [ +0.51%, +3.75%] +2.04% 9 (6); improvements: [-10.11%, -0.75%] -2.60% 75 (25)
* marking as triaged, at least with respect to performance impact.
* doesn't really matter, since it was reverted in PR #109326 anyway


Revert "Auto merge of #107224 - nikic:llvm-16, r=cuviper" [#109326](https://github.com/rust-lang/rust/pull/109326) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4a04d086cac54a41517d5657b59d5fe2caca2d71&end=ab9bb3ea368b2412531a3e8c07ba73d1dd690134&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.5%, 3.6%]   | 51    |
| Regressions (secondary)  | 1.2%  | [0.3%, 4.5%]   | 67    |
| Improvements (primary)   | -1.2% | [-3.6%, -0.3%] | 64    |
| Improvements (secondary) | -1.1% | [-2.4%, -0.2%] | 25    |
| All  (primary)           | -0.2% | [-3.6%, 3.6%]  | 115   |

* already triaged. also, see notes for #107224.

Optimize dep node backtrace and ignore fatal errors [#108524](https://github.com/rust-lang/rust/pull/108524) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=356c651e6d013fe9ca1d47da278ba208a95dbcf9&end=13b7aa4d7faafbed78d195c27f6868f6bd90c2f8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 9     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -0.4% | [-0.6%, 0.4%]  | 10    |

* already triaged

Remove the assume(!is_null) from Vec::as_ptr [#106967](https://github.com/rust-lang/rust/pull/106967) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=84c47b8279b39e165dfebeb529eb6d92592e4f8d&end=ef03fda339923e659d3d3ca3321de887316d2807&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.3%, 1.7%]   | 16    |
| Regressions (secondary)  | 0.7%  | [0.2%, 1.4%]   | 15    |
| Improvements (primary)   | -0.8% | [-1.9%, -0.4%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.3%  | [-1.9%, 1.7%]  | 20    |


* results from final PR as it finally landed are a bit different (more broad in number of primary benchmarks effected) than the observations from trial performance run
* we expected to see [~2.0%, 2.2%] opt-full regression to regex and serde-derive
* we actually got a [~.7%, ~1.7%] regression to them instead; but a bunch of other primary benchmarks saw a slight dip (less than 0.7% of a regression for the new cases, many less than 0.4%)
* the cycle-counts and wall-times indicate more of an effect on clap and webrender here, but the effect there shows potentially more benefit than harm
* marking as triaged. Its too hard to make strong connections between the changes made here and actual costs/benefits.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "rust_eh_personality exported in cdylibs" [rust#100774](https://github.com/rust-lang/rust/issues/100774)
  - nominated by @__**Alan Wu**, suggests that after [#95604](https://github.com/rust-lang/rust/issues/95604) the general issue should be solved, asks an opinion from T-compiler


[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

## Next week's WG checkins

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser**

Agenda draft: https://hackmd.io/Su6FSOktQPu0TRiP0U_BAg
