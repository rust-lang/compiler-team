---
title: T-compiler Meeting Agenda 2024-06-27
tags: [weekly, ' rustc']

---

---
tags: weekly, rustc
type: docs
note_id: PfNc4XsWTbmI-XxbcooiGw
---

# T-compiler Meeting Agenda 2024-06-27

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-06-27T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "Add `-C embed-source` (DWARFv5 source code embedding extension)" [compiler-team#764](https://github.com/rust-lang/compiler-team/issues/764) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20embed-source.60.20.28DWARFv5.20source.20cod.E2.80.A6.20compiler-team.23764))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  -  "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  -  "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 4 months ago)
  -  "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 2 months ago)
  -  "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 40 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: stabilize core sanitizers (i.e., AddressSanitizer, LeakSanitizer, MemorySanitizer, ThreadSanitizer) (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - @_**|119009** @_**|125250** @_**|124287** @_**|426609**
    - no pending concerns
  - merge: [Remove the `missing_copy_implementations` lint. (rust#126293)](https://github.com/rust-lang/rust/pull/126293#issuecomment--2132638472)
    - @_**|119009** @_**|125250** @_**|426609** @_**|123856** @_**|116118**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728))
  - "Promote wasm32-wasip2 to a Tier 2 target" [compiler-team#760](https://github.com/rust-lang/compiler-team/issues/760) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20wasm32-wasip2.20to.20a.20Tier.202.20target.20compiler-team.23760))
  - "Promote Mac Catalyst targets to Tier 2" [compiler-team#761](https://github.com/rust-lang/compiler-team/issues/761) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20Mac.20Catalyst.20targets.20to.20Tier.202.20compiler-team.23761))
  - "Change `-Z asm_comments` to `-Z verbose_asm`, stop stripping handwritten assembly comments" [compiler-team#762](https://github.com/rust-lang/compiler-team/issues/762) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20.60-Z.20asm_comments.60.20to.20.60-Z.20verbose_a.E2.80.A6.20compiler-team.23762))
  - "Remove `Nonterminal` and `TokenKind::Interpolated`" [compiler-team#763](https://github.com/rust-lang/compiler-team/issues/763) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20.60Nonterminal.60.20and.20.60TokenKind.3A.3AInte.E2.80.A6.20compiler-team.23763))
  - "Remove the `box_pointers` lint." [rust#126018](https://github.com/rust-lang/rust/pull/126018)
- Accepted MCPs
  -  "Fully rustfmt `use` declarations" [compiler-team#750](https://github.com/rust-lang/compiler-team/issues/750) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23750))
  -  "Remove `src/tools/rust-demangler`" [compiler-team#754](https://github.com/rust-lang/compiler-team/issues/754) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20.60src.2Ftools.2Frust-demangler.60.20compiler-team.23754))
  -  "Extract rustc stable hasher into it's own crate" [compiler-team#755](https://github.com/rust-lang/compiler-team/issues/755) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Extract.20rustc.20stable.20hasher.20into.20it.27s.20own.E2.80.A6.20compiler-team.23755))
  -  "Contracts: Experimental attributes and language intrinsics" [compiler-team#759](https://github.com/rust-lang/compiler-team/issues/759) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Contracts.3A.20Experimental.20attributes.20and.20la.E2.80.A6.20compiler-team.23759))
- MCPs blocked on unresolved concerns
  - merge: [Add `--print host-triple` to print host target triple (rust#125579)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133192548)
    - @_**|119009** @_**|125250** @_**|426609** @_**|232957**
    - concerns: [triple vs tuple (by lcnr)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133938172)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
- Finalized FCPs (disposition merge)
  -  "Collect relevant item bounds from trait clauses for nested rigid projections" [rust#120752](https://github.com/rust-lang/rust/pull/120752)
  -  "allow overwriting the output of `rustc --version`" [rust#124339](https://github.com/rust-lang/rust/pull/124339)
  -  "Allow constraining opaque types during various unsizing casts" [rust#125610](https://github.com/rust-lang/rust/pull/125610)
- Other teams finalized FCPs
  -  "Collect relevant item bounds from trait clauses for nested rigid projections" [rust#120752](https://github.com/rust-lang/rust/pull/120752)
  -  "Allow constraining opaque types during various unsizing casts" [rust#125610](https://github.com/rust-lang/rust/pull/125610)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Properly gate `safe` keyword in pre-expansion" [rust#126757](https://github.com/rust-lang/rust/pull/126757)
  - Authored by compiler-errors
  - Gates `safe` keyword that leaked in beta channel by mistake, should mitigate #126755
  - slight perf. regression, triaged as less important than this merging this change
<!--
/poll Approve beta backport of #126757?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [70 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Regression in nightly-2024-05-27" [rust#126117](https://github.com/rust-lang/rust/issues/126117)
- "`safe` keyword is not feature-gated" [rust#126755](https://github.com/rust-lang/rust/issues/126755)
  - fixed by beta backport of #126757

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "regression: trait bound not satisfied" [rust#125194](https://github.com/rust-lang/rust/issues/125194)
  - @**lcnr** does it need a new backport? @_**apiraino** slightly confused by the timeline of the backport of #119820 and #126006
- "Varargs are completely unchecked if passed as generics" [rust-lang/61275](https://github.com/rust-lang/rust/issues/61275)
  - Very old issue, possibly not even a regression
  - Marked P-high now after @**Jubilee** did some minimization and analysis
  - More thoughts from @**Jubilee** [on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.2361275.20Varargs.20are.20completely.20unchecked.20if.20passed.20as.20generi.E2.80.A6/near/446573615)

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-06-23.md)

Mostly a number of improvements driven by [MIR inliner improvements], with a small number
benchmarks having a significant regression due to improvements in
[sort algorithms], which are runtime improvements at the cost of usually slight or
neutral compile time regressions, with outliers in a few cases.

[MIR inliner improvements]: https://github.com/rust-lang/rust/pull/126578
[sort algorithms]: https://github.com/rust-lang/rust/pull/124032

Triage done by **@simulacrum**.
Revision range: [c2932aaf..c3d7fb39](https://perf.rust-lang.org/?start=c2932aaf9d20acbc9259c762f1a06f8767c6f13f&end=c3d7fb398569407350abe044e786bc7890c90397&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.6%  | [0.2%, 16.4%]  | 36    |
| Regressions (secondary)  | 1.4%  | [0.1%, 5.0%]   | 31    |
| Improvements (primary)   | -0.8% | [-1.6%, -0.2%] | 184   |
| Improvements (secondary) | -0.9% | [-3.4%, -0.3%] | 138   |
| All  (primary)           | -0.2% | [-1.6%, 16.4%] | 220   |


4 Regressions, 5 Improvements, 3 Mixed; 2 of them in rollups
48 artifact comparisons made in total

#### Regressions

Rollup of 10 pull requests [#126655](https://github.com/rust-lang/rust/pull/126655) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4e63822fc4e2ca675dd28bb3f332f7fd4f3f8126&end=a1ca449981e3b8442e358026437b7bedb9a1458e&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.3%] | 6     |
| Regressions (secondary)  | 0.5% | [0.2%, 0.9%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.3%] | 6     |

Slight instruction count regressions, but mostly in somewhat noisy benchmarks.
It looks like performance went back to previous levels in the next few commits.

Replace sort implementations [#124032](https://github.com/rust-lang/rust/pull/124032) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=433355166d769afc9c19f761cc7efc4d152e9a2c&end=684b3553f70148ded97a80371c2405984d4f6aa7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.1%  | [0.2%, 18.0%]  | 51    |
| Regressions (secondary)  | 1.6%  | [0.4%, 3.9%]   | 8     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 2.0%  | [-0.3%, 18.0%] | 52    |

This change was extensively benchmarked, and the regressions were known ahead
of time. Runtime improvements are considered worth the regressions, which are
limited to just a few benchmarks. (Extensive effort was also put in to minimize
the compile time and binary size costs).

Properly gate `safe` keyword in pre-expansion [#126757](https://github.com/rust-lang/rust/pull/126757) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7a08f84627ff3035de4d66ff3209e5fc93165dcb&end=4e6de37349c7838df095b085a2640cb6a007c96a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.3%] | 4     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.3%] | 4     |

Looks like a minimal regression (maybe spurious/bimodality) and the change is
clearly needed. Marking as triaged.

 Generalize `{Rc,Arc}::make_mut()` to unsized types. [#116113](https://github.com/rust-lang/rust/pull/116113) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ac47dbad504b892bc0f3be8fa097537c6e0544a3&end=f944afe3807104803976484e7ee3aff49b6ac070&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.3%, 2.2%] | 13    |
| Regressions (secondary)  | 0.9% | [0.9%, 0.9%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.3%, 2.2%] | 13    |

Regressions are mostly in doc benchmarks, seem likely to be just new docs due
to extra stuff in the standard library.

#### Improvements

Migrate `extern-flag-fun`, `incremental-debugger-visualiser` and `incremental-session-fail` `run-make` tests to `rmake.rs` [#126490](https://github.com/rust-lang/rust/pull/126490) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c2932aaf9d20acbc9259c762f1a06f8767c6f13f&end=67cfc3a558a54e351d14120099bf3158812b4130&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.4%, -0.3%] | 6     |


Rework `feature(precise_capturing)` to represent `use<...>` as a syntactical bound [#126049](https://github.com/rust-lang/rust/pull/126049) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f873ae029e3ee2bbb8bc70a7ef3f1a06c22b0eac&end=c1f62a7c35349438ea9728abbe1bcf1cebd426b7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 7     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 12    |
| All  (primary)           | -0.2% | [-0.2%, -0.2%] | 7     |


Fix duplicated attributes on nonterminal expressions [#126678](https://github.com/rust-lang/rust/pull/126678) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3186d17d56f9803b739a2c0aabd23aafd8791485&end=894f7a4ba6554d3797404bbf550d9919df060b97&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.2%] | 7     |
| Improvements (secondary) | -0.7% | [-0.7%, -0.6%] | 3     |
| All  (primary)           | -0.4% | [-0.5%, -0.2%] | 7     |


Trying to address an incremental compilation issues [#126409](https://github.com/rust-lang/rust/pull/126409) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1208eddaff59c98e37574c860de6f68aa404958f&end=1d96de2a20e963abb8923dfa3c6175517dfb9d2c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 21    |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 15    |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 21    |


Rollup of 3 pull requests [#126838](https://github.com/rust-lang/rust/pull/126838) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f944afe3807104803976484e7ee3aff49b6ac070&end=a0f01c3c1067aecb3d1ad88621bb4d63d0a2d289&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.9%, -0.2%] | 50    |
| Improvements (secondary) | -0.4% | [-0.9%, -0.2%] | 19    |
| All  (primary)           | -0.4% | [-0.9%, -0.2%] | 50    |


#### Mixed

[perf] More span update benchmarking [#126591](https://github.com/rust-lang/rust/pull/126591) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=67cfc3a558a54e351d14120099bf3158812b4130&end=737e42308c6e957575692965d73b17937f936f28&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.4%]   | 5     |
| Regressions (secondary)  | 2.3%  | [1.4%, 3.6%]   | 6     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 14    |
| All  (primary)           | 0.2%  | [-0.3%, 0.4%]  | 6     |

Triaged to be mostly just inlining noise:
https://github.com/rust-lang/rust/pull/126591#issuecomment-2175875210

Account for things that optimize out in inlining costs [#126578](https://github.com/rust-lang/rust/pull/126578) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a9c8887c7d548abc6c3e87f7d6fa02a0e95880bd&end=7a08f84627ff3035de4d66ff3209e5fc93165dcb&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.4%  | [0.4%, 2.0%]   | 6     |
| Regressions (secondary)  | 1.4%  | [0.3%, 4.1%]   | 16    |
| Improvements (primary)   | -0.6% | [-1.5%, -0.2%] | 183   |
| Improvements (secondary) | -0.9% | [-4.6%, -0.2%] | 121   |
| All  (primary)           | -0.5% | [-1.5%, 2.0%]  | 189   |

Mostly an improvement for the majority of benchmarks, including some slight runtime improvements.

More ptr metadata gvn [#126541](https://github.com/rust-lang/rust/pull/126541) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4e6de37349c7838df095b085a2640cb6a007c96a&end=e32ea4822ba3f7c9054a7fb5345232388cc50c4b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.4%, -0.6%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.6% | [-1.4%, 0.2%]  | 3     |

Slight improvements on `full` builds, slight regression in incremental for
cargo. In general fairly neutral, only a few benchmarks affected.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "in asm!() using a local numeric label made of all 0's and 1's gives a confusing error" [rust#94426](https://github.com/rust-lang/rust/issues/94426)
  - nominated by @**Josh Triplett**
  - Quite old issue (2022), recently owned by @**asquared31415** and will be fixed in #126922
  - [Comment](https://github.com/rust-lang/rust/issues/94426#issuecomment-2189894270):
    > Documenting something that isn't explicitly stated here: this is an issue specifically related to the use of Intel syntax, because (AFAICT) LLVM doesn't have this issue for AT&T syntax.
    > This seems like something that, eventually, we could try to get a fix for into LLVM. We would need an assembly dialect option that either handles binary numbers differently or handles backwards labels differently.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "Remove -Zfuel" [rust-lang115293](https://github.com/rust-lang/rust/pull/115293)
  - cc @**cjgillot** for when you have time to bring this to completion
- "Various rustc_codegen_ssa cleanups" [rust#123237](https://github.com/rust-lang/rust/pull/123237) (last review activity: 2 months ago)
  - cc @**matthiaskrgr**
- "Add test for fn pointer duplication." [rust#123714](https://github.com/rust-lang/rust/pull/123714) (last review activity: 2 months ago)
  - cc: @**RalfJ**
- "Silence unnecessary "missing `dyn`" errors and tweak E0746 suggestions" [rust#122957](https://github.com/rust-lang/rust/pull/122957) (last review activity: 2 months ago)
  - cc: @**oli**
- "Give RPITITs variances, so they can (not) capture lifetimes" [rust#124029](https://github.com/rust-lang/rust/pull/124029) (last review activity: 2 months ago)
  - cc @**Michael Goulet (compiler-errors)** self-assigned, unsure about current status
- "Update AST validation module docs" [rust#124091](https://github.com/rust-lang/rust/pull/124091) (last review activity: 2 months ago)
  - cc @**Esteban Küber**
- "Move alignment checks to codegen" [rust#117473](https://github.com/rust-lang/rust/pull/117473) (last review activity: about 42 days ago)
  - cc @**oli**, I think
- "Suggest borrowing on fn argument that is `impl AsRef`" [rust#124599](https://github.com/rust-lang/rust/pull/124599) (last review activity: about 55 days ago)
  - cc: @**Wesley Wiser**

## Next week's WG checkins

Next meetings' agenda draft: [hackmd link](https://hackmd.io/b8aoULbjSOiPk2z64V-ncA)
