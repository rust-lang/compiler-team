---
tags: weekly, rustc
type: docs
note_id: apkP_NKkQFyezgpc2HH3xA
---

# T-compiler Meeting Agenda 2024-04-11

## Announcements

- Release of Rust stable 1.77.2 ([blog post](https://blog.rust-lang.org/2024/04/09/cve-2024-24576.html)) (fixes the CVE on Windows platforms that is around now: args parsing for Windows scripts)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-04-11T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 2 months ago)
  - "Add `--emit=` to emit nothing" [compiler-team#718](https://github.com/rust-lang/compiler-team/issues/718) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--emit.3D.60.20to.20emit.20nothing.20compiler-team.23718)) (last review activity: 2 months ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: about 34 days ago)
  - "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730)) (last review activity: about 6 days ago)
  - "Add `-Zemit-thin-lto-index=<path>` to enable distributed ThinLTO users" [compiler-team#735](https://github.com/rust-lang/compiler-team/issues/735) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zemit-thin-lto-index.3D.3Cpath.3E.60.20to.20ena.E2.80.A6.20compiler-team.23735)) (last review activity: about 6 days ago)
  - "Only emit forward compatible v0 symbol names with graceful degradation" [compiler-team#737](https://github.com/rust-lang/compiler-team/issues/737) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Only.20emit.20forward.20compatible.20v0.20symbol.20na.E2.80.A6.20compiler-team.23737)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Make casts of pointers to trait objects stricter (rust#120248)](https://github.com/rust-lang/rust/pull/120248#issuecomment-1981506568)
    - @_**|239881** @_**|116883** @_**|125270**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "allow all command line flags to be passed multiple times, overwriting previous usages" [compiler-team#731](https://github.com/rust-lang/compiler-team/issues/731)
  - "Tracking Issue for RFC 3013: Checking conditional compilation at compile time" [rust#82450](https://github.com/rust-lang/rust/issues/82450)
  - "Ignore `-C strip` on MSVC" [rust#115120](https://github.com/rust-lang/rust/pull/115120)
  - "sess: stabilize `-Zrelro-level` as `-Crelro-level`" [rust#121694](https://github.com/rust-lang/rust/pull/121694)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - merge: [Retire the mailing list and make all decisions on zulip (compiler-team#649)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
    - no pending checkboxs
    - [automatic-sync (by compiler-errors)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660) [single-point-of-failure-via-stream-archival (by pnkfelix)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|116083** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692))
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
- Finalized FCPs (disposition merge)
  - "Pass list of defineable opaque types into canonical queries" [rust#122077](https://github.com/rust-lang/rust/pull/122077)
- Other teams finalized FCPs
  - "privacy: Stabilize lint `unnameable_types`" [rust#120144](https://github.com/rust-lang/rust/pull/120144)
  - "Pass list of defineable opaque types into canonical queries" [rust#122077](https://github.com/rust-lang/rust/pull/122077)

### WG checkins

- @_*T-rust-analyzer* by @**Lukas Wirth** (last [checkin](https://hackmd.io/kumG_EirTtOWJiQcgji7_w#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.78] "fix attribute validation on associated items in traits" [rust#121545](https://github.com/rust-lang/rust/pull/121545)
  - Merged. Fixes #121537 (ICE on AST lowering)
  - Should also fix #123287, @_**pnkfelix** is investigating ([comment](https://github.com/rust-lang/rust/pull/121545#issuecomment-2040326320))
<!--
/poll Approve beta backport of #121545?
approve
decline
don't know
-->
- :beta: [1.78] "Only inspect user-written predicates for privacy concerns" [rust#123377](https://github.com/rust-lang/rust/pull/123377)
  - merged. Fixes #123288, P-high regression in latest crater run
<!--
/poll Approve beta backport of #123377?
approve
decline
don't know
-->
- :beta: [1.78] "Check def id before calling `match_projection_projections`" [rust#123471](https://github.com/rust-lang/rust/pull/123471)
  - merged. Fixes #123448, compilation started looping forever (comment about [the fix](https://github.com/rust-lang/rust/pull/123471#issue-2226407754))
<!--
/poll Approve beta backport of #123471?
approve
decline
don't know
-->
- :beta: [1.78] "Update to LLVM 18.1.3" [rust#123555](https://github.com/rust-lang/rust/pull/123555)
  - merged. backports an LLVM patch. Fixes #122805 (p-medium codegen regression)
<!--
/poll Approve beta backport of #123555?
approve
decline
don't know
-->
- :beta: [1.78] "Restore `pred_known_to_hold_modulo_regions`" [rust#123578](https://github.com/rust-lang/rust/pull/123578)
  - merged. Fixes #123275 (regression from crater run)
<!--
/poll Approve beta backport of #123578?
approve
decline
don't know
-->
- :beta: [1.78] "Properly handle emojis as literal prefix in macros" [rust#123752](https://github.com/rust-lang/rust/pull/123752)
  - Fixes #123696, old stable-to-stable regression, nice but not a *vital* backport (see [comment](https://github.com/rust-lang/rust/pull/123752#issuecomment-2048446832))
  - Not merged, waiting for a crater run
<!--
/poll Approve beta backport of #123752?
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

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [64 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 5 P-high, 4 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 35 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "regression: unwrap on None in ast lowering" [rust#123287](https://github.com/rust-lang/rust/issues/123287)
  - *could* be fixed by #121545 (see [comment](https://github.com/rust-lang/rust/pull/121545#issuecomment-2040326320), @**pnkfelix** thanks!)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: ICE failed to get output type of async function" [rust#123273](https://github.com/rust-lang/rust/issues/123273)
  - under @**Michael Goulet (compiler-errors)** eyes
- "regression: unexpected unsized tail ICE" [rust#123275](https://github.com/rust-lang/rust/issues/123275)
  - Fixed by #123578
- "regression: trait bound is not satisfied" [rust#123279](https://github.com/rust-lang/rust/issues/123279)
  - will be closed by #123302 (merged and beta accepted)
- "regression: f16 + f128 is unstable" [rust#123282](https://github.com/rust-lang/rust/issues/123282)
  - Will be fixed by #123466 (merged straight into beta with a few other patches)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "nightly-2024-04-05 regression: error[E0275]: overflow evaluating the requirement" [rust#123573](https://github.com/rust-lang/rust/issues/123573)
  - reported by a project using Bevy and by the Diesel maintainer
  - seems the new solver could help here. See [comment](https://github.com/rust-lang/rust/issues/123573#issuecomment-2041348320) and PR #123594 (in FCP)

## Performance logs

> [triage logs for 2024-04-11](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-04-09.md)

A quiet week; all the outright regressions were already triaged (the one biggish one was #122077, which is justified as an important bug fix). There was a very nice set of improvements from PR #122070, which cleverly avoids a lot of unnecessary allocator calls when building an incremental dep graph by reusing the old edges from the previous graph.

Triage done by **@pnkfelix**.
Revision range: [3d5528c2..86b603cd](https://perf.rust-lang.org/?start=3d5528c287860b918e178a34f04ff903325571b3&end=86b603cd792b3f6172ba4f676d7b586c1af7630a&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.0%  | [0.4%, 5.0%]   | 83    |
| Regressions (secondary)  | 2.1%  | [0.5%, 4.8%]   | 79    |
| Improvements (primary)   | -1.5% | [-2.9%, -0.3%] | 121   |
| Improvements (secondary) | -1.4% | [-3.5%, -0.3%] | 67    |
| All  (primary)           | -0.1% | [-2.9%, 5.0%]  | 204   |


3 Regressions, 3 Improvements, 7 Mixed; 1 of them in rollups
78 artifact comparisons made in total

#### Regressions

instantiate higher ranked goals outside of candidate selection [#119820](https://github.com/rust-lang/rust/pull/119820) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0accf4ec4c07d23aa86f6a97aeb8797941abc30e&end=43f4f2a3b1a3d3fb3dbbbe4fde33fb97c780ee98&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.3%, 0.8%] | 8     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.3%, 0.8%] | 8     |

* already triaged by Jakub as an expected small performance regresison

Pass list of defineable opaque types into canonical queries [#122077](https://github.com/rust-lang/rust/pull/122077) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ab5bda1aa70f707014e2e691e43bc37a8819252a&end=b234e449443a49ab19ef6b712bf56cc65927d98f&stat=instructions:u)

| (instructions:u)        | mean | range        | count |
|:-----------------------:|:----:|:------------:|:-----:|
| Regressions (primary)   | 1.9% | [0.2%, 5.4%] | 101   |
| Regressions (secondary) | 2.3% | [0.3%, 4.7%] | 77    |

| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 1.8%  | [-0.6%, 5.4%]  | 102   |

* already triaged by oli, as an expected performance regression that is [justified](https://github.com/rust-lang/rust/pull/122077#issuecomment-1995694305) as an important bugfix

Replace some `CrateStore` trait methods with hooks.  [#123099](https://github.com/rust-lang/rust/pull/123099) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=59c808fcd9eeb3c5528209d1cef3aaa5521edbd6&end=bd12986fd6659a3091cff7694b8225374f4a26fe&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 14    |
| Regressions (secondary)  | 0.3% | [0.3%, 0.4%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.4%] | 14    |

* already triaged by oli, categorized as noise.

#### Improvements

hir: Drop owner's own item-local id (zero) from parenting tables [#123415](https://github.com/rust-lang/rust/pull/123415) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=703dc9ce64d9b31a239a7280d9b5f9ddd85ffed6&end=98efd808e1b77cd70a097620aad6250727167a28&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 3     |
| Improvements (secondary) | -0.4% | [-1.3%, -0.3%] | 13    |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 3     |


[perf] cache type info for ParamEnv [#123058](https://github.com/rust-lang/rust/pull/123058) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6f837503aa120ca69c2985b6c9a474c00674cef1&end=087ae978a13013800c8a484cf17c8951ab0b6b0c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-4.9%, -0.2%] | 47    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.9% | [-4.9%, -0.2%] | 47    |


Remove debuginfo from rustc-demangle too [#123608](https://github.com/rust-lang/rust/pull/123608) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0e5f5207881066973486e6a480fa46cfa22947e9&end=75fd074338801fba74a8cf7f8c48c5c5be362d08&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.4%, 0.9%]   | 4     |
| Improvements (primary)   | -1.6% | [-2.7%, -0.3%] | 7     |
| Improvements (secondary) | -1.3% | [-2.4%, -0.3%] | 24    |
| All  (primary)           | -1.6% | [-2.7%, -0.3%] | 7     |


#### Mixed

Add `Ord::cmp` for primitives as a `BinOp` in MIR [#118310](https://github.com/rust-lang/rust/pull/118310) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=029cb1b13b6388b95e64e8996ec8b41a9f3cf16e&end=a77322c16f188402fa22a5e87100acce42433cbc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.7%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 2     |
| Improvements (primary)   | -0.6% | [-0.6%, -0.6%] | 1     |
| Improvements (secondary) | -3.1% | [-3.1%, -3.1%] | 1     |
| All  (primary)           | 0.2%  | [-0.6%, 0.7%]  | 4     |

* The impact here is somewhat limited, and the graph indicates that the 0.69% instruction-count regression for image-0.24.1 was subsequently recovered.

Encode dep graph edges directly from the previous graph when promoting [#122070](https://github.com/rust-lang/rust/pull/122070) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d009f60b55fe4527e7ddf122bc4520f351d7b9d4&end=4563f70c3b599411836e285591479f4a3d364708&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.4%, 0.4%]   | 1     |
| Improvements (primary)   | -1.6% | [-3.1%, -0.2%] | 113   |
| Improvements (secondary) | -1.5% | [-3.6%, -0.3%] | 37    |
| All  (primary)           | -1.6% | [-3.1%, -0.2%] | 113   |

* already marked as triaged by Jakub

Implement T-types suggested logic for perfect non-local impl detection [#122747](https://github.com/rust-lang/rust/pull/122747) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ea40fa210b87a322d2259852c149ffa212a3a0da&end=9d79cd5f79e75bd0d2083260271307ce9acd9081&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.3%  | [0.6%, 4.4%]   | 12    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 9     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 1.2%  | [-0.4%, 4.4%]  | 21    |

* already marked as triaged by Urgau, with the comment "The perf regressions in diesel are due to the lint being triggered and producing nearly 300 warnings (with 155 actually shown)"
* (This reminds me of rustc-perf#1819)

Remove sharding for VecCache [#123556](https://github.com/rust-lang/rust/pull/123556) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=087ae978a13013800c8a484cf17c8951ab0b6b0c&end=af2525317be950fdae635bcbb46b3e755d14ab49&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | 0.5%  | [0.2%, 1.0%]   | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.9% | [-1.1%, -0.7%] | 4     |
| All  (primary)           | 0.4%  | [0.4%, 0.4%]   | 1     |

* already marked as triaged by simulacrum, presumably because this is likely noise since it is "just" removing the sharded type whose feature was not in use.

Use unchecked_sub in str indexing [#123561](https://github.com/rust-lang/rust/pull/123561) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fc1a4c5cc9308c4b5980c64a73fd344a59c10601&end=4e431fad67b46c480f1833119cd368fa33df95f7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.9%, 0.9%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.9%, -0.4%] | 7     |
| All  (primary)           | 0.9%  | [0.9%, 0.9%]   | 1     |

* this is an improvement to the code for `str::get_unchecked` when overflow checks are enabled; its calling a compiler-intrinsic directly now.
* it really doesn't make any sense that it caused any regression at all. (Perhaps this change is causing a change to inlining decisions, at least for cargo?)
* marking as triaged.

Rollup of 9 pull requests [#123645](https://github.com/rust-lang/rust/pull/123645) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=211518e5fb1336de6a4aab45dc1c05f5d83ce856&end=ab5bda1aa70f707014e2e691e43bc37a8819252a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 2     |
| Improvements (secondary) | -1.8% | [-1.8%, -1.8%] | 1     |
| All  (primary)           | -0.0% | [-0.4%, 0.6%]  | 3     |

* Looks like a temporary spike. Marking as triaged.

Only collect mono items from reachable blocks [#123272](https://github.com/rust-lang/rust/pull/123272) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=86b603cd792b3f6172ba4f676d7b586c1af7630a&end=bb78dba64ca4158ef2f3488d0d41a82c75a504f2&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.5%]   | 8     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.5%, -0.3%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.1% | [-1.5%, 1.5%]  | 14    |

* fixed an important bug.
* from the comment history, it looks like the minor restricted regressions were anticipated.
* marking as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Fallout from expansion of redundant import checking" [rust#121708](https://github.com/rust-lang/rust/issues/121708)
  - Fallout from #117772, added some linting improving `use` import redundancy.
  - Nominated for T-lang and T-compiler by @**Josh Triplett** [see comment](https://github.com/rust-lang/rust/issues/121708#issuecomment-2032578032)
  - change is already on beta, but it has *some* [impact](https://github.com/rust-lang/rust/issues/121708#issuecomment-2029760942), so in the meanwhile it will reverted ([comment](https://github.com/rust-lang/rust/issues/121708#issuecomment-2048105393))
- "Consider using `llvm-strip`" [rust#123151](https://github.com/rust-lang/rust/issues/123151)
  - proposal advanced by @_**Jubilee**, there's also a [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/llvm-tools.20stabilization/near/418694252)
    > on various systems, we are encountering reports of people having inadequately-built strip binaries in their PATH that cannot support all Rust compiler use-cases (...) `llvm-strip` gets everything right, as far as we are concerned
- "regression: compiler had non-unwinding abort" [rust#123286](https://github.com/rust-lang/rust/issues/123286)
  - this is a beta crater run regression. Actually we fixed a UB ([comment](https://github.com/rust-lang/rust/issues/123286#issuecomment-2029536170)): "People were executing UB, we now prevent that and try to tell them about it"
  - @**Ben Kimock (Saethlin)** suggests a possible quick fix for a beta backport ([comment](https://github.com/rust-lang/rust/issues/123286#issuecomment-2030344815))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Issue 83060 fix" [rust#119798](https://github.com/rust-lang/rust/pull/119798) (last review activity: 3 months ago)
  - cc @**Wesley Wiser**
- "Small improvements to internal documentation" [rust#120388](https://github.com/rust-lang/rust/pull/120388)
  - cc: @**Esteban Küber**
- "Suggest a borrow when using dbg" [rust#120990](https://github.com/rust-lang/rust/pull/120990) (last review activity: about 58 days ago)
  - cc: @**Esteban Küber**
- "Always emit `native-static-libs` note, even if it is empty" [rust#121216](https://github.com/rust-lang/rust/pull/121216) (last review activity: about 54 days ago)
  - cc @**Wesley Wiser** CI fails and author asked for input. Can you help there? thanks

## Next week's WG checkins

- Impl Trait initiative by @**oli**
- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/uKNODHUfQ2mUIjQtDiGwdg)
