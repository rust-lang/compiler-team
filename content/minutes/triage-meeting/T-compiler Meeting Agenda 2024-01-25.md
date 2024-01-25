---
tags: weekly, rustc
type: docs
note_id: XFCdZKuHRO2QFV5gUfUoDA
---

# T-compiler Meeting Agenda 2024-01-25

## Announcements

- Steering meeting: Tracking Issue Review <time:2024-01-25T16:00:00+01:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-01-24T22:00:00+01:00>
- Stable MIR Weekly Meeting <time:2024-01-25T16:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Semantics of `-Cinstrument-coverage=all`" [compiler-team#690](https://github.com/rust-lang/compiler-team/issues/690) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Semantics.20of.20.60-Cinstrument-coverage.3Dall.60.20compiler-team.23690)) (last review activity: about 43 days ago)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 8 days ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703)) (last review activity: about 41 days ago)
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: about 41 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
    - concern: [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
  - "Stabilize `--env-set` option" [rust#119926](https://github.com/rust-lang/rust/pull/119926)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "New Tier-3 target: `wasm32-wasi-preview2`" [compiler-team#694](https://github.com/rust-lang/compiler-team/issues/694) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.3A.20.60wasm32-wasi-preview2.60.20compiler-team.23694))
  - "Smooth the renaming transition of `wasm32-wasi`" [compiler-team#695](https://github.com/rust-lang/compiler-team/issues/695) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Smooth.20the.20renaming.20transition.20of.20.60wasm32.E2.80.A6.20compiler-team.23695))
  - "Provide option to shorten symbol names by replacing them with a digest" [compiler-team#705](https://github.com/rust-lang/compiler-team/issues/705) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/new.20option.20to.20reduce.20the.20size.20of.20dylib.20compiler-team.23705))
  - "uplift some -Zverbose calls and rename to -Zverbose-internals" [compiler-team#706](https://github.com/rust-lang/compiler-team/issues/706) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/merge.20-Zverbose.20into.20--verbose.20compiler-team.23706))
  - "Add -Z direct-access-external-data" [compiler-team#707](https://github.com/rust-lang/compiler-team/issues/707) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20direct-access-external-data.20compiler-team.23707))
  - "Promote tier 3 `*-pc-windows-gnullvm` targets to tier 2" [compiler-team#710](https://github.com/rust-lang/compiler-team/issues/710) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20.60.2A-pc-windows-gnullvm.60.20tar.E2.80.A6.20compiler-team.23710))
  - "Unstably support MIR-only rlibs" [compiler-team#713](https://github.com/rust-lang/compiler-team/issues/713) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstably.20support.20MIR-only.20rlibs.20compiler-team.23713))
- Accepted MCPs
  - "Start using clippy on rustc" [compiler-team#709](https://github.com/rust-lang/compiler-team/issues/709) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Start.20using.20clippy.20on.20rustc.20compiler-team.23709))
- Finalized FCPs (disposition merge)
  - "error on incorrect implied bounds in wfcheck except for Bevy dependents" [rust#118553](https://github.com/rust-lang/rust/pull/118553)
  - "Undeprecate lint `unstable_features` and make use of it in the compiler" [rust#118639](https://github.com/rust-lang/rust/pull/118639)
  - "Warn on references casting to bigger memory layout" [rust#118983](https://github.com/rust-lang/rust/pull/118983)
  - "const-eval interning: get rid of type-driven traversal" [rust#119044](https://github.com/rust-lang/rust/pull/119044)
  - "Deny braced macro invocations in let-else" [rust#119062](https://github.com/rust-lang/rust/pull/119062)

### WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry**
  > Checkin text

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
  > * new activity on annotate-snippets (for now just for use in cargo, but moving towards using it in rustc, too)
  > * removing the reliance of the compiler on the global error counter by instead tainting or bubbling up errors as appropriate

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

Note: [2 beta backport](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted) nominations for T-libs

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - @**pnkfelix** ([proponent of the FCP](https://github.com/rust-lang/rust/issues/65991#issuecomment-1670127912)) do you know what is the actual status of this tracking issue?
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [31 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "Pointer casts allow switching trait parameters for trait objects, which doesn’t interact soundly with trait upcasting" [rust#120222](https://github.com/rust-lang/rust/issues/120222)
  - `I-types-nominated`
  - T-types approved the revert of #118133 with [rust#120233](https://github.com/rust-lang/rust/pull/120233) ([comment](https://github.com/rust-lang/rust/pull/120233#issuecomment-1906590672))
  - Revert also backported

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2024-01-23](https://github.com/rust-lang/rustc-perf/blob/16f2ce47ea1b2e10ba0c969b2d5e1d714fea517f/triage/2024-01-23.md)

This week saw a bunch of regressions caused by correctness fixes and in general doing more work
in the compiler. These were offset by many improvements (especially around hashing in the compiler)
that improved performance by ~2% across a large number of benchmarks. Don't get too excited about the
large 45+% wins though, these were only for tiny benchmarks like helloworld. They were caused by a
[change in Cargo](https://github.com/rust-lang/cargo/pull/13257) which introduces stripping of debug
symbols from Rust release binaries by default, and in turn also improves compilation time for small
crates.

Triage done by **@kobzol**.
Revision range: [f9c2421a..d6b151fc](https://perf.rust-lang.org/?start=f9c2421a2a6e34f3756900dd7d600704c08bfccb&end=d6b151fc77e213bf637db0f12c1965ace3ffe255&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.5%]    | 11    |
| Regressions (secondary)  | 2.2%  | [0.2%, 9.9%]    | 26    |
| Improvements (primary)   | -3.2% | [-47.5%, -0.2%] | 191   |
| Improvements (secondary) | -7.9% | [-46.5%, -0.1%] | 123   |
| All  (primary)           | -3.0% | [-47.5%, 1.5%]  | 202   |


4 Regressions, 4 Improvements, 9 Mixed; 4 of them in rollups
48 artifact comparisons made in total

#### Regressions

fix fn/const items implied bounds and wf check (rebase) [#120019](https://github.com/rust-lang/rust/pull/120019) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6ed31aba1a889b5d5e5362f1cdde316fb0b571d1&end=6bf600bc98879bf1bf2ab0f3b3b37c965f5bdff6&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.5%] | 26    |
| Regressions (secondary)  | 1.3% | [0.3%, 1.6%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.5%] | 26    |

* This was a correctness fix that had an expected performance hit.

Rollup of 8 pull requests [#120187](https://github.com/rust-lang/rust/pull/120187) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=867d39cdf625e4db4b381faff993346582e598b4&end=cb25c5bc3d526a8fb931314cb3a7849115134b04&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.3%, 1.0%] | 8     |
| Regressions (secondary)  | 0.9% | [0.3%, 1.8%] | 16    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.3%, 1.0%] | 8     |

* This was a mixture of several PRs that had a perf. effect.
* [#119461](https://github.com/rust-lang/rust/pull/119461) and [#118811](https://github.com/rust-lang/rust/pull/118811)
slightly regressed the `deep-vector` benchmark, which was however quite noisy recently, so it was
probably just a blip.
* [#116090](https://github.com/rust-lang/rust/pull/116090) caused a real regression on `doc`
benchmarks, which was caused simply by adding a bunch of new methods to the standard library.

Rollup of 8 pull requests [#120196](https://github.com/rust-lang/rust/pull/120196) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a58ec8ff03b3269b20104eb7eae407be48ab95a7&end=6fff796eac247c072ddb84f8202bedecc8e94f0d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [1.3%, 1.3%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [1.3%, 1.3%] | 1     |

* Caused by [#120145](https://github.com/rust-lang/rust/pull/120145), which was a correctness fix,
so marked as triaged.

Rollup of 10 pull requests [#120242](https://github.com/rust-lang/rust/pull/120242) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=021861aea8de20c76c7411eb8ada7e8235e3d9b5&end=d5fd0997291ca0135401a39dff25c8a9c13b8961&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 3.1% | [3.1%, 3.1%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

* Caused by [#120137](https://github.com/rust-lang/rust/pull/120137), which added more validation
to the compiler, and the perf. hit was deemed acceptable, so marked as triaged.

#### Improvements

Cache local DefId-keyed queries without hashing [#119977](https://github.com/rust-lang/rust/pull/119977) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=92f2e0aa62113a5f31076a9414daca55722556cf&end=098d4fd74c078b12bfc2e9438a2a04bc18b393bc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.2% | [-8.2%, -0.2%] | 161   |
| Improvements (secondary) | -1.5% | [-3.7%, -0.3%] | 64    |
| All  (primary)           | -1.2% | [-8.2%, 0.7%]  | 162   |

* Incredible wins across many benchmarks, caused by improving hashing in the compiler.
* The wall-time results of this PR were even more [impressive](https://perf.rust-lang.org/compare.html?start=92f2e0aa62113a5f31076a9414daca55722556cf&end=098d4fd74c078b12bfc2e9438a2a04bc18b393bc&stat=wall-time), resulting in a ~4% mean improvement across more than a hundred benchmark
configurations!

Get rid of the hir_owner query. [#120006](https://github.com/rust-lang/rust/pull/120006) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=25f8d01fd8bda339612d0c0a8844173a09205f7c&end=d3c9082a44f00b22152ebc9c92c129b10ccb7793&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 3     |
| Improvements (primary)   | -1.8% | [-5.5%, -0.3%] | 129   |
| Improvements (secondary) | -2.1% | [-4.4%, -0.4%] | 46    |
| All  (primary)           | -1.8% | [-5.5%, -0.3%] | 129   |

* Again, great wins across a lot of benchmarks.

Use UnhashMap for a few more maps [#120076](https://github.com/rust-lang/rust/pull/120076) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d3c9082a44f00b22152ebc9c92c129b10ccb7793&end=1bd42be8cb707aadaf2068d5ac186154970c4d80&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 13    |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 4     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 13    |

* Continuation of hashing improvements.

Always use RevealAll for const eval queries [#119821](https://github.com/rust-lang/rust/pull/119821) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=128148d4cf742c3056e9bfc65e7cc9531cb0f815&end=5378c1cf0713ab224eb6431327c28522182feb69&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 3     |
| Improvements (secondary) | -1.4% | [-1.8%, -1.2%] | 7     |
| All  (primary)           | -0.3% | [-0.3%, -0.3%] | 3     |

* This PR improved mainly the performance of const evaluation in the compiler.

#### Mixed

Sandwich MIR optimizations between DSE. [#119672](https://github.com/rust-lang/rust/pull/119672) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f9c2421a2a6e34f3756900dd7d600704c08bfccb&end=fa0dc208d0a34027c1d3cca7d47975d8238bcfde&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.4%]   | 14    |
| Regressions (secondary)  | 0.5%  | [0.2%, 2.7%]   | 14    |
| Improvements (primary)   | -1.0% | [-2.2%, -0.2%] | 31    |
| Improvements (secondary) | -0.9% | [-2.2%, -0.2%] | 10    |
| All  (primary)           | -0.4% | [-2.2%, 1.4%]  | 45    |

* Several nice wins on larger benchmarks, overall the wins outweighed the losses.

large_assignments: Lint on specific large args passed to functions [#116520](https://github.com/rust-lang/rust/pull/116520) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e64f8495e73fbc3653b4bcb73268c58b9c4a0a0d&end=92f2e0aa62113a5f31076a9414daca55722556cf&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.8%]   | 45    |
| Regressions (secondary)  | 0.6%  | [0.2%, 2.1%]   | 8     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -6.0% | [-6.0%, -6.0%] | 1     |
| All  (primary)           | 0.4%  | [0.2%, 0.8%]   | 45    |

* This new lint introduced more tracking of spans in the compiler, which expectedly
slightly regressed compile times. It is expected that the new spans will be used
by future lints/errors to provide better diagnostics.

Update cargo [#120036](https://github.com/rust-lang/rust/pull/120036) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=098d4fd74c078b12bfc2e9438a2a04bc18b393bc&end=6ed31aba1a889b5d5e5362f1cdde316fb0b571d1&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 0.4%   | [0.4%, 0.5%]    | 2     |
| Regressions (secondary)  | 1.4%   | [1.4%, 1.4%]    | 1     |
| Improvements (primary)   | -16.8% | [-47.6%, -0.4%] | 13    |
| Improvements (secondary) | -20.5% | [-46.9%, -2.2%] | 37    |
| All  (primary)           | -14.5% | [-47.6%, 0.5%]  | 15    |

* A few tiny regressions, but there's not much to be done about these since this
was a Cargo update.
* The large instruction count improvements came from https://github.com/rust-lang/cargo/pull/13257,
which introduced stripping of `--release` binaries by default. This coincidentally also reduces
linking time on Linux quite a lot for tiny programs, which caused these improvements on
`helloworld`-like crates.

error on incorrect implied bounds in wfcheck except for Bevy dependents [#118553](https://github.com/rust-lang/rust/pull/118553) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c485ee71477a29041895c47cc441b364670f3772&end=a34faab155417481e191e8d467a5ea9bdd2174a0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.6%]   | 30    |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.6%]   | 13    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.0% | [-1.2%, -0.8%] | 6     |
| All  (primary)           | 0.7%  | [0.2%, 1.6%]   | 30    |

* Regressions have outweighted the improvements here, however, this was a correctness fix,
so we will have to take the hit. A part of the regressions reverted wins from
[#120123](https://github.com/rust-lang/rust/pull/120123).

Rollup of 9 pull requests [#120112](https://github.com/rust-lang/rust/pull/120112) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=16fadb3f252bcfc5ee3f0be09472c9600a052202&end=92d727796be7c882d2efbc06e08bbf4743cf29dc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 3.2%  | [0.3%, 4.1%]   | 7     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 1     |

* This was caused by [#120037](https://github.com/rust-lang/rust/pull/120037), which
seems to have just undone a previous perf. win on the same benchmarks caused by
code being reshuffled around.

use implied bounds compat mode in MIR borrowck [#120123](https://github.com/rust-lang/rust/pull/120123) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=32ec40c68533f325a3c8fe787b77ef5c9e209b23&end=88189a71e4e4376eea82ac61db6a539612eb200a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.9%, 1.0%]   | 4     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.6%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.7% | [-0.9%, -0.6%] | 6     |

* This PR had more wins than losses, however its effects were later mostly reverted in
[#118553](https://github.com/rust-lang/rust/pull/118553).

LLVM 18 x86 data layout update [#116672](https://github.com/rust-lang/rust/pull/116672) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=88189a71e4e4376eea82ac61db6a539612eb200a&end=0547c41f906760ce117a55ca690820b44d8e7eef&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | 1.0%  | [0.3%, 3.3%]   | 6     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.3%] | 8     |
| Improvements (secondary) | -0.6% | [-1.1%, -0.4%] | 11    |
| All  (primary)           | -0.3% | [-0.6%, 0.7%]  | 9     |

* The wins have outweighted the losses.
* This change is required to update to LLVM 18.
* It introduced a few Max-RSS regressions, which were later fixed in
[#120080](https://github.com/rust-lang/rust/pull/120080).

Rollup of 6 pull requests [#120170](https://github.com/rust-lang/rust/pull/120170) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1828461982f37d1a0053d156cedad5522b0f8a97&end=038d115cd8659bbe4d5e9600839759f55dfcfb0c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.4%, -0.5%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-1.4%, 0.6%]  | 3     |

* Tiny regression on a single benchmark, marked as triaged.

Pack u128 in the compiler to mitigate new alignment [#120080](https://github.com/rust-lang/rust/pull/120080) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=366d112fa69164d79239ceeaa49e06497df5497f&end=30662530506ed29ea29191798cb2ab8aa1249023&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.5%]   | 12    |
| Regressions (secondary)  | 1.2%  | [0.4%, 2.1%]   | 2     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 1     |
| Improvements (secondary) | -0.6% | [-0.7%, -0.3%] | 5     |
| All  (primary)           | 0.3%  | [-0.7%, 0.5%]  | 13    |

* This PR mitigates the Max-RSS hits caused by [#116672](https://github.com/rust-lang/rust/pull/116672),
at the cost of a few small instruction count regressions.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- None this week

## Next week's WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
- Impl Trait initiative by @**oli**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/zW1EBQGZQ2yVhGBlvlPPpg)
