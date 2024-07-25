---
title: T-compiler Meeting Agenda 2024-07-25
tags: [weekly, ' rustc']

---

---
tags: weekly, rustc
type: docs
note_id: zlNQiMzJThWdBQvPYaqh0w
---

# T-compiler Meeting Agenda 2024-07-25

## Announcements

- Today release of stable Rust 1.80 ([blog post](https://github.com/rust-lang/blog.rust-lang.org/blob/ae579984017a569c7280ba9dfc86861e89c1f104/posts/2024-07-25-Rust-1.80.0.md))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-07-25T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  -  "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 6 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  -  "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 5 months ago)
  -  "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 3 months ago)
  -  "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - merge: [Disallow setting some built-in cfg via set the command-line (rust#126158)](https://github.com/rust-lang/rust/pull/126158#issuecomment-2196371697)
    - @_**|116083** @_**|125250** @_**|119031** @_**|232957**
    - no pending concerns
  - merge: [Remove the `missing_copy_implementations` lint. (rust#126293)](https://github.com/rust-lang/rust/pull/126293#issuecomment-2162328824)
    - @_**|125250** @_**|426609** @_**|123856**
    - concern: [list-actually-useful](https://github.com/rust-lang/rust/pull/126293#issuecomment-2192690954)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - No new accepted proposals this time.
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
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Add `--print host-triple` to print host target triple (rust#125579)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133192548)
    - @_**|125250** @_**|232957**
    - concerns: [triple vs tuple (by lcnr)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133938172)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.
- Other teams finalized FCPs
  -  "size_of_val_raw: for length 0 this is safe to call" [rust#126152](https://github.com/rust-lang/rust/pull/126152)
  -  "Reorder trait bound modifiers *after* `for<...>` binder in trait bounds" [rust#127054](https://github.com/rust-lang/rust/pull/127054)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
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
- [67 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2024-07-25](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-07-21.md)

Light week, with few changes on any dimension (including memory), though
overall a slight regression.

Triage done by **@simulacrum**.
Revision range: [5572759b..9629b90b](https://perf.rust-lang.org/?start=5572759b8d7012fa34eba47f4885c76fa06d9251&end=9629b90b3f7dd8f5626ec9d3b42556f39f09e214&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.8%]   | 6     |
| Regressions (secondary)  | 1.3%  | [0.2%, 7.3%]   | 13    |
| Improvements (primary)   | -0.7% | [-0.9%, -0.5%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.1% | [-0.9%, 0.8%]  | 12    |

1 Regression, 1 Improvement, 1 Mixed; 2 of them in rollups
34 artifact comparisons made in total

#### Regressions

Rollup of 8 pull requests [#127865](https://github.com/rust-lang/rust/pull/127865) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fcc325f1bc477975e2ce5ba534fe4c77ff8a8536&end=e35364a521372ce682e4bd4a5850d97ea33b0eab&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.4%, 0.7%] | 4     |
| Regressions (secondary)  | 1.1% | [0.6%, 2.1%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.4%, 0.7%] | 4     |

Clear regression, though contributing PR from the rollup is not clear. Started
a build to try to dig deeper.

#### Improvements

Represent type-level consts with new-and-improved `hir::ConstArg` [#125915](https://github.com/rust-lang/rust/pull/125915) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3d68afc9e821b00d59058abc9bda670b07639955&end=8c3a94a1c79c67924558a4adf7fb6d98f5f0f741&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.8%, -0.5%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.6% | [-0.8%, -0.5%] | 6     |


#### Mixed

Rollup of 9 pull requests [#127998](https://github.com/rust-lang/rust/pull/127998) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=41ff4608894d260462a7b6cf1ddefc6c8ecf6b1c&end=1afc5fd042f7583b9668dd62be98325487483d1c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 2     |
| Regressions (secondary)  | 1.3%  | [1.3%, 1.3%]   | 1     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.1% | [-0.7%, 0.3%]  | 3     |

Clear regression, though contributing PR from the rollup is not clear. Started
a build to try to dig deeper.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Async drop codegen" [rust#123948](https://github.com/rust-lang/rust/pull/123948)
  - Nominated by @**oli** in [comment](https://github.com/rust-lang/rust/pull/123948#issuecomment-2249793560): asking for someone else with enough context to take over the review.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Apply dllimport in ThinLTO for -Z dylib-lto" [rust#122790](https://github.com/rust-lang/rust/pull/122790) (last review activity: 4 months ago)
  - cc: @**Wesley Wiser**
- "Issue 83060 fix" [rust#119798](https://github.com/rust-lang/rust/pull/119798) (last review activity: 3 months ago)
  - cc @**Wesley Wiser**
- "Implement a lint for implicit autoref of raw pointer dereference - take 2" [rust#123239](https://github.com/rust-lang/rust/pull/123239) (last review activity: about 57 days ago)
  - cc: @**León Orell Liehr (fmease)** (?)
- "Improve unconstrained impl diagnostic (fixes #107295)" [rust#126026](https://github.com/rust-lang/rust/pull/126026) (last review activity: about 49 days ago)
  - cc @**León Orell Liehr (fmease)** (+ pending a rebase from author)
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784) (last review activity: about 48 days ago)
  - cc @**León Orell Liehr (fmease)**

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/hJCBlVJDQt-MIuhs6RM4Sw)
