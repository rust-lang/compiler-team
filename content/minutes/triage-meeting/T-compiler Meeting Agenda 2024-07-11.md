---
title: T-compiler Meeting Agenda 2024-07-11
tags: [weekly, ' rustc']

---

---
tags: weekly, rustc
type: docs
note_id: eQkxivnwRCuEACPKwn7T3A
---

# T-compiler Meeting Agenda 2024-07-11

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-07-11T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 5 months ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 3 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 55 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Disallow setting some built-in cfg via set the command-line (rust#126158)](https://github.com/rust-lang/rust/pull/126158#issuecomment--2098595599)
    - @_**|116083** @_**|125250** @_**|119031** @_**|116118** @_**|232957**
    - no pending concerns
  - merge: [Remove the `missing_copy_implementations` lint. (rust#126293)](https://github.com/rust-lang/rust/pull/126293#issuecomment--2132638472)
    - @_**|125250** @_**|426609** @_**|123856** @_**|116118**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Add `-Z embed-source` (DWARFv5 source code embedding extension)" [compiler-team#764](https://github.com/rust-lang/compiler-team/issues/764) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20embed-source.60.20.28DWARFv5.20source.20cod.E2.80.A6.20compiler-team.23764))
  - "MCP: Alternate cargo freshness algorithm, unstable flag to annotate depinfo file with checksums and file sizes" [compiler-team#765](https://github.com/rust-lang/compiler-team/issues/765) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Alternate.20cargo.20freshness.20algorithm.3A.E2.80.A6.20compiler-team.23765))
  - "Implement lint against ambiguous negative literals" [rust#121364](https://github.com/rust-lang/rust/pull/121364)
- Accepted MCPs
  - "Promote wasm32-wasip2 to a Tier 2 target" [compiler-team#760](https://github.com/rust-lang/compiler-team/issues/760) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20wasm32-wasip2.20to.20a.20Tier.202.20target.20compiler-team.23760))
  - "Remove `Nonterminal` and `TokenKind::Interpolated`" [compiler-team#763](https://github.com/rust-lang/compiler-team/issues/763) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20.60Nonterminal.60.20and.20.60TokenKind.3A.3AInte.E2.80.A6.20compiler-team.23763))
- MCPs blocked on unresolved concerns
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - @_**|124287**
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment--2102637174)
  - merge: [Add `--print host-triple` to print host target triple (rust#125579)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133192548)
    - @_**|125250** @_**|232957**
    - concerns: [triple vs tuple (by lcnr)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133938172)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.
- Other teams finalized FCPs
  - "Tracking issue for function attribute `#[coverage]`" [rust#84605](https://github.com/rust-lang/rust/issues/84605)
  - "Don't make statement nonterminals match pattern nonterminals" [rust#120221](https://github.com/rust-lang/rust/pull/120221)
  - "Allow `#[deny]` inside `#[forbid]` as a no-op" [rust#121560](https://github.com/rust-lang/rust/pull/121560)
  - "Bump `elided_lifetimes_in_associated_constant` to deny" [rust#124211](https://github.com/rust-lang/rust/pull/124211)
  - "Deny keyword lifetimes pre-expansion" [rust#126762](https://github.com/rust-lang/rust/pull/126762)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Update LLVM submodule" [rust#127364](https://github.com/rust-lang/rust/pull/127364)
  - Authored by DianQK
  - Fixes #127260 and #127286 (P-high miscompilations)
  - [Changes](https://github.com/rust-lang/llvm-project/compare/e6a6470d1eb4c88fee4b1ea98cd8e0ac4a181c16...c54cff0e6e4d1a0d0a2df7c1ce3d96cdd554763e)
<!--
/poll Approve beta backport of #127364?
approve
deny
don't know
-->
- :beta: "instantiate higher ranked goals in candidate selection again" [rust#127568](https://github.com/rust-lang/rust/pull/127568)
  - Authored by lcnr (thanks!)
  - As discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-06-27/near/450445893). Reverts #119820 as that PR has a significant impact and breaks code which feels like it should work.
<!--
/poll Approve beta backport of #127568?
approve
deny
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
  - [42 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: trait bound is not satisfied Cow/Borrow<str>" [rust#127339](https://github.com/rust-lang/rust/issues/127339)
  - regressions reverted in #127568 (beta-backport nominated)
- "regression: borrowed data escapes outside of the method" [rust#127342](https://github.com/rust-lang/rust/issues/127342)
  - fixed downstream

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "regression: trait bound not satisfied" [rust#125194](https://github.com/rust-lang/rust/issues/125194)
  - regressions reverted in #127568 (beta-backport nominated)

## Performance logs

> [triage logs for 2024-07-09](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-07-09.md)

More regressions than improvements this week, caused by a combination of fixes,
refactorings, third-party dependency updates and in general the compiler doing
slightly more work.

Triage done by **@kobzol**.
Revision
range: [cf2df68d..a2d58197](https://perf.rust-lang.org/?start=cf2df68d1f5e56803c97d91e2b1a9f1c9923c533&end=a2d58197a766085856504328948c89a33a6a36e8&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 2.5%]   | 53    |
| Regressions (secondary)  | 1.0%  | [0.4%, 1.5%]   | 31    |
| Improvements (primary)   | -0.6% | [-1.2%, -0.2%] | 10    |
| Improvements (secondary) | -1.7% | [-2.4%, -1.4%] | 4     |
| All  (primary)           | 0.5%  | [-1.2%, 2.5%]  | 63    |

1 Regression, 2 Improvements, 7 Mixed; 3 of them in rollups
62 artifact comparisons made in total

#### Regressions

Make `can_eq` process obligations (almost)
everywhere [#127172](https://github.com/rust-lang/rust/pull/127172) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=20ae37c18df95f9246c019b04957d23b4164bf7a&end=89aefb9c53090851be903b5a9171a2efdc3fd16f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.6%] | 25    |
| Regressions (secondary)  | 0.8% | [0.7%, 0.9%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.6%] | 25    |

- Small regression across several benchmarks.
- Not marking as triaged yet, https://github.com/rust-lang/rust/pull/127473 has been
  opened to investigate a potential performance fix.

#### Improvements

Make jump threading state
sparse [#127036](https://github.com/rust-lang/rust/pull/127036) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1cfd47fe0b78f48a04ac8fce792a406b638da40b&end=2b90614e94cfb400820cfc10fe63b0db74f9e67a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.1%, -0.5%] | 5     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)           | -0.8% | [-1.1%, -0.5%] | 5     |

Cache hir_owner_nodes in
ParentHirIterator. [#127421](https://github.com/rust-lang/rust/pull/127421) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=89aefb9c53090851be903b5a9171a2efdc3fd16f&end=b1de36ff34a4fe4ba820f195481a13aee74e1358&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-1.0%, -0.2%] | 16    |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 3     |
| All  (primary)           | -0.3% | [-1.0%, -0.2%] | 16    |

#### Mixed

Check alias args for WF even if they have escaping bound
vars [#123737](https://github.com/rust-lang/rust/pull/123737) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=67f0d43890801f50ef2d24cd66de523f89ccb157&end=d163e5e515d470a713f7d6907852904622a85d4e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]   | 1     |
| Regressions (secondary)  | 0.7%  | [0.4%, 1.1%]   | 4     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.0%  | [-0.2%, 0.5%]  | 3     |

- This change is required for further improvements of the type system, the compiler does a bit more work.
- The regression is limited to one stress test and one cargo benchmark.
- Marked as triaged.

Re-implement a type-size based
limit [#125507](https://github.com/rust-lang/rust/pull/125507) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2db4ff40af2b9f93b6240dbd67ed7f2f34b19776&end=c872a1418a4be3ea84a8d5232238b60d35339ba9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.3%  | [0.3%, 1.9%]   | 5     |
| Regressions (secondary)  | 0.9%  | [0.9%, 0.9%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)           | 1.3%  | [0.3%, 1.9%]   | 5     |

- This PR re-enabled a type size limit check that was not working for a long time.
- It heavily regressed a stress test that contains very deeply nested types, this regression
  has been resolved in https://github.com/rust-lang/rust/pull/127288.
- It seems like the PR is causing issues for various projects, and it might be reverted, but
  the perf. regression itself has been fixed by https://github.com/rust-lang/rust/pull/127288.
- Marked as triaged.

rustdoc: update to pulldown-cmark
0.11 [#127127](https://github.com/rust-lang/rust/pull/127127) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b45401283fad51849dbb37d78f0b2093a21fb58f&end=66b4f0021bfb11a8c20d084c99a40f4a78ce1d38&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.2%, 1.8%]   | 16    |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.6%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | 0.8%  | [0.2%, 1.8%]   | 16    |

- This PR updated the used version of `pulldown-cmark`, which resolves several bugs in handling doc blocks.
- It caused a small regression in `doc` builds.
- Marked as triaged.

cache type sizes in type-size limit
visitor [#127288](https://github.com/rust-lang/rust/pull/127288) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c4225812973cee4bba952cbf7a421f69871fed0d&end=cc8da78a036dc3c15c35a97651b02af9a6d30c1e&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 0.3%   | [0.2%, 0.3%]    | 9     |
| Regressions (secondary)  | 0.7%   | [0.6%, 0.8%]    | 3     |
| Improvements (primary)   | -1.3%  | [-1.6%, -0.4%]  | 4     |
| Improvements (secondary) | -85.4% | [-99.8%, -1.9%] | 7     |
| All  (primary)           | -0.2%  | [-1.6%, 0.3%]   | 13    |

- Resolved a perf. regression from https://github.com/rust-lang/rust/pull/125507.

Rollup of 8 pull
requests [#127403](https://github.com/rust-lang/rust/pull/127403) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5c08cc765af9975d4b176f7a377bbf927791e20d&end=51917e2e69702e5752bce6a4f3bfd285d0f4ae39&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.9% | [-1.3%, -0.6%] | 9     |
| All  (primary)           | 0.2%  | [0.2%, 0.3%]   | 3     |

- Small regression on a single benchmark, but only in incremental unchanged build.
- Improvements outweigh the regressions.
- Marked as triaged.

Rollup of 10 pull
requests [#127476](https://github.com/rust-lang/rust/pull/127476) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9af6fee87de71729efca7dbb61c0931180895424&end=7fdefb804ec300fb605039522a7c0dfc9e7dc366&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.7%]   | 15    |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.7%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | 0.5%  | [0.2%, 1.7%]   | 15    |

- Small regressions on `doc` builds caused by https://github.com/rust-lang/rust/pull/127439.
- This is a necessary refactoring, and the author has deemed the small perf. hit to be worth it.
- Marked as triaged.

Rollup of 5 pull
requests [#127486](https://github.com/rust-lang/rust/pull/127486) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cfd7cf5a0e497c238dcf9947e2eeec01837beeb4&end=a06e9c83f6bc6b9b69f1b0d9f1ab659f8f03db4d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.4%]   | 7     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.8% | [-0.8%, -0.8%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.2%  | [-0.8%, 0.4%]  | 8     |

- Unclear which PR has caused the (small) regression.
- Not marking as triaged yet.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "Report a specialized error when a `'static` obligation comes from an `impl dyn Trait`" [rust#121274](https://github.com/rust-lang/rust/pull/121274)
  - cc @**León Orell Liehr (fmease)**
- "Apply dllimport in ThinLTO for -Z dylib-lto" [rust#122790](https://github.com/rust-lang/rust/pull/122790)
   - cc @**Wesley Wiser**
- "Suggest borrowing on fn argument that is `impl AsRef`" [rust#124599](https://github.com/rust-lang/rust/pull/124599)
  - cc: @**Wesley Wiser**
- "PinCoerceUnsized trait into core" [rust#125048](https://github.com/rust-lang/rust/pull/125048) (last review activity: about 59 days ago)
  - cc @**Michael Goulet (compiler-errors)**



## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/qw4V2S72S76yFPEn-uk2bg)
