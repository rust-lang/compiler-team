---
tags: weekly, rustc
type: docs
note_id: t6jzlSpDScqdP-ibSkABRw
---

# T-compiler Meeting Agenda 2024-06-13

## Announcements

- Today release of Rust stable 1.79! [Blog post PR](https://github.com/rust-lang/blog.rust-lang.org/blob/e5298c3115b2b661682fb57360e64db2cb27fb05/posts/2024-06-13-Rust-1.79.0.md)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-06-13T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "Enable `clang-format` for `rustc`" [compiler-team#756](https://github.com/rust-lang/compiler-team/issues/756) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60clang-format.60.20for.20.60rustc.60.20compiler-team.23756))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  -  "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  -  "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 4 months ago)
  -  "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: 3 months ago)
  -  "Only emit forward compatible v0 symbol names with graceful degradation" [compiler-team#737](https://github.com/rust-lang/compiler-team/issues/737) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Only.20emit.20forward.20compatible.20v0.20symbol.20na.E2.80.A6.20compiler-team.23737)) (last review activity: 2 months ago)
  -  "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 2 months ago)
  -  "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 27 days ago)
  -  "Add a `--emit=nameres` for IDEs" [compiler-team#749](https://github.com/rust-lang/compiler-team/issues/749) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20.60--emit.3Dnameres.60.20for.20IDEs.20compiler-team.23749)) (last review activity: about 20 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: stabilize core sanitizers (i.e., AddressSanitizer, LeakSanitizer, MemorySanitizer, ThreadSanitizer) (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - @_**|119009** @_**|124288** @_**|125250** @_**|119031** @_**|124287** @_**|426609** @_**|232957**
    - no pending concerns
  - merge: [allow overwriting the output of `rustc --version` (rust#124339)](https://github.com/rust-lang/rust/pull/124339#issuecomment-2075414901)
    - @_**|426609** @_**|216206** @_**|232957**
    - no pending concerns
  - merge: [Remove the `box_pointers` lint. (rust#126018)](https://github.com/rust-lang/rust/pull/126018#issuecomment--2143120454)
    - @_**|119009** @_**|123586** @_**|125294** @_**|119031** @_**|124287**
    - no pending concerns
  - merge: [Remove the `missing_copy_implementations` lint. (rust#126293)](https://github.com/rust-lang/rust/pull/126293#issuecomment--2132638472)
    - @_**|119009** @_**|116083** @_**|125250** @_**|119031** @_**|124287** @_**|426609** @_**|123856** @_**|116118**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Fully rustfmt `use` declarations" [compiler-team#750](https://github.com/rust-lang/compiler-team/issues/750) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23750))
  - "Remove `src/tools/rust-demangler`" [compiler-team#754](https://github.com/rust-lang/compiler-team/issues/754) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20.60src.2Ftools.2Frust-demangler.60.20compiler-team.23754))
  - "Extract rustc stable hasher into it's own crate" [compiler-team#755](https://github.com/rust-lang/compiler-team/issues/755) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Extract.20rustc.20stable.20hasher.20into.20it.27s.20own.E2.80.A6.20compiler-team.23755))
- Accepted MCPs
  -  "Promote loongarch64-unknown-linux-musl to tier 2" [compiler-team#753](https://github.com/rust-lang/compiler-team/issues/753) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch64-unknown-linux-musl.20to.E2.80.A6.20compiler-team.23753))
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
  -  "TAIT decision on "may define implies must define"" [rust#117861](https://github.com/rust-lang/rust/issues/117861)
  -  "Allow constraining opaque types during subtyping in the trait system" [rust#125447](https://github.com/rust-lang/rust/pull/125447)
- Other teams finalized FCPs
  -  "TAIT decision on "may define implies must define"" [rust#117861](https://github.com/rust-lang/rust/issues/117861)
  -  "Allow constraining opaque types during subtyping in the trait system" [rust#125447](https://github.com/rust-lang/rust/pull/125447)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Only compute `specializes` query if (min)specialization is enabled in the crate of the specializing impl" [rust#126139](https://github.com/rust-lang/rust/pull/126139)
  - Authored by compiler-errors
  - Fixes #125197, a regression discovered in a crater run
  - As @**lqd** [assesses](https://github.com/rust-lang/rust/pull/126139#issuecomment-2157774670), the regression is not yet reported by anyone and the impact in the crater run was rather small but still a "nice-to-have" as a backport
<!--
/poll Approve beta backport of #126139?
approve
deny
don't know
-->
- :beta: "Do not define opaque types when selecting impls" [rust#126258](https://github.com/rust-lang/rust/pull/126258)
  - Authored by oli-obk
  - Fixes #126117, a P-high regression reported by a user in their project
  - (@_**oli** is also working on reintroducing an improved patch in #126316)
<!--
/poll Approve beta backport of #126258?
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
- [65 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [35 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Regression in nightly-2024-05-27" [rust#126117](https://github.com/rust-lang/rust/issues/126117)
  - This is fixed by [rust#126258](https://github.com/rust-lang/rust/pull/126258)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "regression: trait bound not satisfied" [rust#125194](https://github.com/rust-lang/rust/issues/125194)
  - reverted in beta (#125629) the changes that caused the regression

## Performance logs

> [triage logs 2024-06-13](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-06-11.md)

This week saw more regressions than wins, caused mostly by code being reorganized within the
compiler and a new feature being implemented. There have also been some nice improvements caused
by better optimizing spans.

Triage done by **@kobzol**.
Revision range: [1d52972d..b5b13568](https://perf.rust-lang.org/?start=1d52972dd8592edf4026aa577c8ce69acc0ac2d1&end=b5b13568fb5da4ac988bde370008d6134d3dfe6c&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 2.7%]   | 105   |
| Regressions (secondary)  | 1.0%  | [0.1%, 6.9%]   | 74    |
| Improvements (primary)   | -0.5% | [-1.0%, -0.2%] | 20    |
| Improvements (secondary) | -1.4% | [-8.8%, -0.2%] | 32    |
| All  (primary)           | 0.5%  | [-1.0%, 2.7%]  | 125   |


5 Regressions, 3 Improvements, 4 Mixed; 5 of them in rollups
59 artifact comparisons made in total

#### Regressions

Rollup of 8 pull requests [#125976](https://github.com/rust-lang/rust/pull/125976) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bc33782c23bc3e04eab7c85c43bbe1a108b11f80&end=30ea1a2693bb1ba4b119ac6257985b9e11e45b83&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.9% | [0.2%, 1.3%] | 14    |
| Regressions (secondary)  | 0.9% | [0.4%, 2.8%] | 5     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.9% | [0.2%, 1.3%] | 14    |

* Looks like it was caused by [#125968](https://github.com/rust-lang/rust/pull/125968).
* This PR resulted in some code being shuffled around the compiler (what we call "codegen noise"),
we determined that it is not worth investigating further.

Don't walk the bodies of free constants for reachability. [#122505](https://github.com/rust-lang/rust/pull/122505) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=72fdf913c53dd0e75313ba83e4aa80df3f6e2871&end=d0ccb5413ee2d9d40b574ad7998ffa866811d3f8&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.8% | [0.2%, 2.6%] | 4     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.8% | [0.2%, 2.6%] | 4     |

* The compiler needs to do a little bit more work after this PR, so the regression is expected.

Unsafe extern blocks [#124482](https://github.com/rust-lang/rust/pull/124482) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2b6a34273d820df4140a00984d38d40c745fb565&end=2d28b6384e5e0a2c9d1500a1f65e35423453fbf6&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 32    |
| Regressions (secondary)  | 0.2% | [0.2%, 0.3%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.4%] | 32    |

* This PR adds a new feature, so a small performance regression is expected.

Rollup of 7 pull requests [#126108](https://github.com/rust-lang/rust/pull/126108) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b74702fbb2a2bd56b39849d66bd59a453ed8c89e&end=468310ea0cdec87460b83710a3a78825bcae73c5&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.3%] | 5     |
| Regressions (secondary)  | 0.9% | [0.5%, 1.5%] | 15    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.3%] | 5     |

* Caused by [#125724](https://github.com/rust-lang/rust/pull/125724), which moves some code to
a different compiler package, so that it can be used with the new trait solver.

Add Rust for Linux `auto` CI job [#125209](https://github.com/rust-lang/rust/pull/125209) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a3167859f2fd8ff2241295469876a2b687280bdc&end=d402830c8a356332de93761d6996faf5a2ca29ca&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 4.3% | [2.5%, 6.1%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

* This PR did not modify the compiler at all, so this has to be noise.

#### Improvements

Rollup of 11 pull requests [#125989](https://github.com/rust-lang/rust/pull/125989) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=23e040adec50e10d3ff8103e405ff79e44908e70&end=a330e49593ee890f9197727a3a558b6e6b37f843&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.0%  | [2.0%, 2.0%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 10    |
| All  (primary)           | -     | -              | 0     |


Revert: create const block bodies in typeck via query feeding [#125918](https://github.com/rust-lang/rust/pull/125918) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=468310ea0cdec87460b83710a3a78825bcae73c5&end=1be24d70ced0d6b8d41a48b6a28b3790f6facf4c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 35    |
| Improvements (secondary) | -0.4% | [-0.4%, -0.3%] | 9     |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 35    |


Rollup of 9 pull requests [#126240](https://github.com/rust-lang/rust/pull/126240) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d402830c8a356332de93761d6996faf5a2ca29ca&end=b5b13568fb5da4ac988bde370008d6134d3dfe6c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.3% | [-6.4%, -0.2%] | 3     |
| All  (primary)           | -     | -              | 0     |


#### Mixed

Make TLS accessors closures that return pointers [#125525](https://github.com/rust-lang/rust/pull/125525) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=90d6255d82dcfd0b73dbaa4f172a7f9886dcc2c1&end=27529d5c2526eab5aa03d765426c44ea55c5d269&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 6     |
| Regressions (secondary)  | 2.9%  | [2.9%, 2.9%]   | 1     |
| Improvements (primary)   | -0.5% | [-1.1%, -0.3%] | 14    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-1.1%, 0.4%]  | 20    |

* More wins than losses.

Rollup of 11 pull requests [#126134](https://github.com/rust-lang/rust/pull/126134) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4dc24ae394a03755cf337bebc8cd2e022a1a4848&end=804421dff5542c9c7da5c60257b5dbc849719505&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.0%]   | 43    |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.8%]   | 14    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 3     |
| All  (primary)           | 0.4%  | [0.2%, 1.0%]   | 43    |


rustc_span: Optimize syntax context updates in spans [#125017](https://github.com/rust-lang/rust/pull/125017) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0de24a5177b1d49d6304f76f3ab159faaec134f9&end=a3167859f2fd8ff2241295469876a2b687280bdc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.6%]   | 6     |
| Regressions (secondary)  | 0.7%  | [0.4%, 1.0%]   | 10    |
| Improvements (primary)   | -0.4% | [-1.5%, -0.2%] | 37    |
| Improvements (secondary) | -1.5% | [-9.3%, -0.2%] | 33    |
| All  (primary)           | -0.3% | [-1.5%, 0.6%]  | 43    |

* More improvements than regressions.

Add `SingleUseConsts` mir-opt pass [#125910](https://github.com/rust-lang/rust/pull/125910) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b5b13568fb5da4ac988bde370008d6134d3dfe6c&end=fa1681c9f6a66f0240c46c98bfef6209c9d6df23&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 4     |
| Improvements (secondary) | -2.3% | [-2.9%, -1.7%] | 2     |
| All  (primary)           | -0.1% | [-0.4%, 0.4%]  | 6     |

* Slighty more wins than losses on instructions.
* Small binary size win.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "tidy watcher" [rust#114209](https://github.com/rust-lang/rust/pull/114209) (last review activity: 5 months ago)
  - This PR looks to me a bit dead in the water. It's lacking a review and the author seems to not respond. Any taker?
- "Remove unnecessary impl sorting in queries and metadata" [rust#120812](https://github.com/rust-lang/rust/pull/120812) (last review activity: 3 months ago)
  - cc @**cjgillot**
- "Suggest a borrow when using dbg" [rust#120990](https://github.com/rust-lang/rust/pull/120990) (last review activity: 3 months ago)
  - cc @**Esteban Küber**
- "Always emit `native-static-libs` note, even if it is empty" [rust#121216](https://github.com/rust-lang/rust/pull/121216) (last review activity: 3 months ago)
  - cc @**Wesley Wiser**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/X-gaY--lTLGfQCL_VEdVcA)
