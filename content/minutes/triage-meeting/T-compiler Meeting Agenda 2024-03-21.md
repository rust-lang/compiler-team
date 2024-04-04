---
tags: weekly, rustc
type: docs
note_id: XOZqRee1QzmCEsaqQENWUQ
---

# T-compiler Meeting Agenda 2024-03-21

## Announcements

- Today release of rustc 1.77 stable
- "Enable frame pointers for the standard library" [rust#122646](https://github.com/rust-lang/rust/pull/122646)
  - suggested by @_**nils (Nilstrieb)** ([comment](https://github.com/rust-lang/rust/pull/122646#issuecomment-2003225294)): FIY to T-compiler as it's a perhaps impacting change
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-03-21T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: about 48 days ago)
  - "Add `--emit=` to emit nothing" [compiler-team#718](https://github.com/rust-lang/compiler-team/issues/718) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--emit.3D.60.20to.20emit.20nothing.20compiler-team.23718)) (last review activity: about 48 days ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking Issue for RFC 3013: Checking conditional compilation at compile time" [rust#82450](https://github.com/rust-lang/rust/issues/82450)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
  - "Stabilize `--env-set` option" [rust#119926](https://github.com/rust-lang/rust/pull/119926)
  - "Make casts of pointers to trait objects stricter" [rust#120248](https://github.com/rust-lang/rust/pull/120248)
  - "sess: stabilize `-Zrelro-level` as `-Crelro-level`" [rust#121694](https://github.com/rust-lang/rust/pull/121694)
  - "Add encoding for `f16` and `f128`" [rust#122106](https://github.com/rust-lang/rust/pull/122106)
- Things in FCP (make sure you're good with it)
  - "Dist rustc with overflow checks" [compiler-team#724](https://github.com/rust-lang/compiler-team/issues/724) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Dist.20rustc.20with.20overflow.20checks.20compiler-team.23724))
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
    - concern: [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 2 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
- Finalized FCPs (disposition merge)
  - "rework opaque type region inference" [rust#116891](https://github.com/rust-lang/rust/pull/116891)
  - "instantiate higher ranked goals outside of candidate selection" [rust#119820](https://github.com/rust-lang/rust/pull/119820)
- Other teams finalized FCPs
  - "Tracking issue for Allow a re-export for `main` (RFC 1260)" [rust#28937](https://github.com/rust-lang/rust/issues/28937)
  - "`c_unwind` full stabilization request: change in `extern "C"` behavior" [rust#115285](https://github.com/rust-lang/rust/issues/115285)
  - "rework opaque type region inference" [rust#116891](https://github.com/rust-lang/rust/pull/116891)
  - "Prevent opaque types being instantiated twice with different regions within the same function" [rust#116935](https://github.com/rust-lang/rust/pull/116935)
  - "instantiate higher ranked goals outside of candidate selection" [rust#119820](https://github.com/rust-lang/rust/pull/119820)
  - "Split refining_impl_trait lint into _reachable, _internal variants" [rust#121720](https://github.com/rust-lang/rust/pull/121720)
  - "Stabilize associated type bounds (RFC 2289)" [rust#122055](https://github.com/rust-lang/rust/pull/122055)

### WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
  > Checkin text

- Impl Trait initiative by @**oli**
  > Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.78] "Make `#[diagnostic::on_unimplemented]` format string parsing more robust" [rust#122402](https://github.com/rust-lang/rust/pull/122402)
  - Fixes #122391, a few diagnostic errors
  - Nominated by @**Michael Goulet (compiler-errors)** ([comment](https://github.com/rust-lang/rust/issues/122391)) to stabilize it at the same time as `diagnostic::on_unimplemented`
<!--
/poll Approve beta backport of #122402?
approve
decline
don't know
-->
- :beta: [1.78] "Do not eat nested expressions' results in `MayContainYieldPoint` format args visitor" [rust#122680](https://github.com/rust-lang/rust/pull/122680)
  - authored by @**lqd**, fixes #122674, a nightly miscompilation. Due to release timeline the issue is on beta right now
<!--
/poll Approve beta backport of #122680?
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
- [64 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 37 P-high, 100 P-medium, 15 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs for 2023-03-19](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-03-19.md)

Even though the summary might not look like it, this was actually a relatively quiet week,
with a few small regressions. The large regression that is also shown in the summary table was
caused by extending the verification of incremental compilation results.
However, this verification is not actually fully enabled by default, so these regressions are mostly
only visible in our benchmarking suite, which enables the verification to achieve more deterministic
benchmarking results. One small regression was also caused by enabling frame pointers for the Rust
standard library, which should improve profiling of Rust programs.

Triage done by **@kobzol**.
Revision
range: [e919669d..21d94a3d](https://perf.rust-lang.org/?start=e919669d42dfb8950866d4cb268c5359eb3f7c54&end=21d94a3d2c63cacf8eaf9d0ca770c0b450c558d4&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.5%  | [0.4%, 7.8%]   | 207   |
| Regressions (secondary)  | 2.9%  | [0.2%, 8.3%]   | 128   |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.0% | [-1.3%, -0.4%] | 4     |
| All  (primary)           | 2.5%  | [0.4%, 7.8%]   | 207   |

4 Regressions, 1 Improvements, 6 Mixed; 4 of them in rollups
67 artifact comparisons made in total

#### Regressions

Make `DefiningAnchor::Bind` only store the opaque types that may be constrained, instead of the
current infcx root
item. [#121796](https://github.com/rust-lang/rust/pull/121796) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6554a5645a13e4d9331fd028960d69be91d7492d&end=4ccbb7dc95596c7fc0c5756fdc47a17a56c085d3&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.2%, 1.8%] | 112   |
| Regressions (secondary)  | 0.7% | [0.2%, 1.8%] | 27    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.2%, 1.8%] | 112   |

* This is a refactoring of the "old" trait solver that was necessary for follow-up compiler changes.

Rollup of 12 pull
requests [#122389](https://github.com/rust-lang/rust/pull/122389) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7de1a1f6db26cf7af43cca74819118428e6317ee&end=6b1e5d9db3b0d569bd847fdcb98c85ee8f7a8ef1&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.7%, 0.7%] | 3     |
| Regressions (secondary)  | 1.1% | [0.5%, 2.1%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.7%, 0.7%] | 3     |

* Noise, marked as triaged.

Verify that query keys result in unique dep
nodes [#122227](https://github.com/rust-lang/rust/pull/122227) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e61dcc7a0ac33ef054d76453307124233edcf545&end=d3555f3d8e555ce488bbf8eee5eccdb66a464e14&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.0%  | [0.2%, 7.8%]   | 193   |
| Regressions (secondary)  | 2.4%  | [0.3%, 7.8%]   | 153   |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-1.3%, -1.3%] | 1     |
| All  (primary)           | 2.0%  | [0.2%, 7.8%]   | 193   |

* This PR adds additional verification to the compiler that checks if incremental compilation didn't
  encounter problems.
* This result looks quite bad, but that is mostly caused by the configuration of our benchmark
  suite, which fully enables this verification to make benchmarking more deterministic.
* Normal builds of user code should not be affected by this change.

Enable frame pointers for the standard
library [#122646](https://github.com/rust-lang/rust/pull/122646) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=13abc0ac9b2b77299cf02d634fc409e26a180ef3&end=3cdcdaf31b45f8045164aae9604573d23091970b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.6%]   | 70    |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 22    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.0% | [-2.0%, -2.0%] | 1     |
| All  (primary)           | 0.3%  | [0.2%, 0.6%]   | 70    |

* This PR has a small instruction count cost across the board, but cycles and walltime were affected
  much less.
* It enables frame pointers for the Rust standard library, which should make profiling of Rust code
  more robust and accurate, which should be worth this small perf. hit.
* Marked as triaged.

#### Improvements

Rollup of 15 pull
requests [#122338](https://github.com/rust-lang/rust/pull/122338) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=65cd843ae06ad00123c131a431ed5304e4cd577a&end=6554a5645a13e4d9331fd028960d69be91d7492d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.2% | [-1.2%, -1.1%] | 4     |
| Improvements (secondary) | -0.8% | [-1.2%, -0.4%] | 13    |
| All  (primary)           | -1.2% | [-1.2%, -1.1%] | 4     |

#### Mixed

Update
cargo [#122394](https://github.com/rust-lang/rust/pull/122394) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6b1e5d9db3b0d569bd847fdcb98c85ee8f7a8ef1&end=a165f1f65015b1bd4afd2ec50700aaacf2e0c485&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.1%  | [1.1%, 1.1%]   | 1     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 3     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.3%] | 5     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 3     |

* Most likely noise.

more eagerly instantiate
binders [#119849](https://github.com/rust-lang/rust/pull/119849) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=30f74ff0dc4d66debc8b50724c446f817e5f75f4&end=fd27e8745f0f04dc7c289893ef54a618c7c9e1da&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.1%]   | 14    |
| Regressions (secondary)  | 0.5%  | [0.4%, 1.0%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.2% | [-1.4%, -1.1%] | 6     |
| All  (primary)           | 0.7%  | [0.2%, 1.1%]   | 14    |

* A small regression for trait-heavy crates, caused by a fix to the trait solver.
* Marked as triaged.

Rollup of 9 pull
requests [#122607](https://github.com/rust-lang/rust/pull/122607) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4c1b9c3e2f402efe27a24e424c9b59aa2fa5c83f&end=c8813ddd6d2602ae5473752031fd16ba70a6e4a7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.7%  | [1.7%, 1.7%]   | 1     |
| Regressions (secondary)  | 2.7%  | [2.7%, 2.7%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -5.3% | [-5.3%, -5.3%] | 1     |
| All  (primary)           | 1.7%  | [1.7%, 1.7%]   | 1     |

* The largest regression was caused by [#122601](https://github.com/rust-lang/rust/pull/122601),
  which should enable more LLVM optimizations, so some regressions to `opt` benchmarks is expected.
* Marked as triaged.

Move generic `NonZero` `rustc_layout_scalar_valid_range_start` attribute to inner
type. [#121885](https://github.com/rust-lang/rust/pull/121885) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c8813ddd6d2602ae5473752031fd16ba70a6e4a7&end=a615cea3339046c7ab2d75cd253727d1fd42dd0b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.6%]   | 9     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.8% | [-2.8%, -2.8%] | 1     |
| All  (primary)           | 0.4%  | [0.3%, 0.6%]   | 9     |

* A small regression caused by internal refactoring in the compiler. Marked as triaged.

Rollup of 8 pull
requests [#122690](https://github.com/rust-lang/rust/pull/122690) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3cdcdaf31b45f8045164aae9604573d23091970b&end=d31b6fb8c06b43536ac5be38462d2a55784e2199&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.7%  | [0.2%, 5.3%]   | 2     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 7     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 9     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 7     |

* Most likely noise, marked as triaged.

Rollup of 11 pull
requests [#122713](https://github.com/rust-lang/rust/pull/122713) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d31b6fb8c06b43536ac5be38462d2a55784e2199&end=3c85e56249b0b1942339a6a989a971bf6f1c9e0f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.5%, 1.4%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.9%, -0.4%] | 7     |
| All  (primary)           | 1.0%  | [0.5%, 1.4%]   | 3     |

* Small regression in match checking caused
  by [#121823](https://github.com/rust-lang/rust/pull/121823),
  which improves compiler diagnostics.
* Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Enable DestinationPropagation by default." [rust#115105](https://github.com/rust-lang/rust/pull/115105) (last review activity: 2 months ago)
  - cc: @**tm|352985**
- "Suggest ref mut for pattern matching assignment" [rust#119650](https://github.com/rust-lang/rust/pull/119650) (last review activity: about 54 days ago)
  - cc: @**Wesley Wiser**
- "Small improvements to internal documentation" [rust#120388](https://github.com/rust-lang/rust/pull/120388) (last review activity: about 54 days ago)
  - cc: @**Esteban Küber**
- "Update rustc_codegen_cranelift's dependencies" [rust#119741](https://github.com/rust-lang/rust/pull/119741) (last review activity: about 53 days ago)
  - cc @**bjorn3**

## Next week's WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**
- @_*WG-mir-opt* by @**oli**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/iVOLhzajRKuaS4GzcSWVNQ)
