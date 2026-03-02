---
tags: weekly, rustc
type: docs
note_id: 67FQZ5uRSJ2BTOHHsh3ETA
---

# T-compiler Meeting Agenda 2025-09-18

## Announcements

- Today release of Rust 1.90.0, [blog post](https://github.com/Mark-Simulacrum/blog.rust-lang.org/blob/release-blog/content/Rust-1.90.0.md)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-09-18T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 6 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 39 days ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: 3 months ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 4 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 54 days ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: about 54 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|116266** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|123856** @_**|116118** @_**|259697** @_**|444933** @_**|353056**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854)
  - merge: [Promote armv7a-none-eabihf to Tier 2 (compiler-team#913)](https://github.com/rust-lang/compiler-team/issues/913#issuecomment-3302409433)
    - @_**|116266** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|123856** @_**|116118** @_**|444933** @_**|353056**
    - no pending concerns
  - merge: [Promote armv8r-none-eabihf to Tier 2 (compiler-team#914)](https://github.com/rust-lang/compiler-team/issues/914#issuecomment-3302407120)
    - @_**|116266** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|123856** @_**|116118** @_**|444933** @_**|353056**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|116122** @_**|123856** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
  - "Demote both armebv7r-none-* targets" [compiler-team#912](https://github.com/rust-lang/compiler-team/issues/912) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Demote.20both.20armebv7r-none-.2A.20targets.20compiler-team.23912))
- Accepted MCPs
  - "Unstably add -Cpanic=immediate-abort" [compiler-team#909](https://github.com/rust-lang/compiler-team/issues/909) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstably.20add.20-Cpanic.3Dimmediate-abort.20compiler-team.23909))
  - "ship clang and llvm-ar in rustup" [compiler-team#907](https://github.com/rust-lang/compiler-team/issues/907) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/ship.20clang.20and.20llvm-ar.20in.20rustup.20compiler-team.23907))
  - "Move LTO from the codegen coordinator thread to link_binary" [compiler-team#908](https://github.com/rust-lang/compiler-team/issues/908) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20LTO.20from.20the.20codegen.20coordinator.20thr.E2.80.A6.20compiler-team.23908))
- MCPs blocked on unresolved concerns
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 2 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: 2 months ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 2 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 3 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 2 months ago)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
- Finalized FCPs (disposition merge)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
- Other teams finalized FCPs
  - "Do not materialise X in [X; 0] when X is unsizing a const" [rust#145277](https://github.com/rust-lang/rust/pull/145277)
  - "Reject invalid literal suffixes in tuple indexing, tuple struct indexing, and struct field name position" [rust#145463](https://github.com/rust-lang/rust/pull/145463)
  - "Stabilize `std::panic::Location::file_as_c_str`" [rust#145664](https://github.com/rust-lang/rust/pull/145664)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "don't apply temporary lifetime extension rules to non-extended `super let`" [rust#145838](https://github.com/rust-lang/rust/pull/145838)
  - Authored by dianne, nominated again by @_**theemathas** (due to T-lang approving this)
  - Beta channel is intended for the next 1.91 (IIUC)
  - Breaking change, just merged
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145838.3A.20beta-nominated/near/540013021). preference is to decline (noting @_**TC** opposite opinion in the discussion)
- :beta: "[beta] Revert "compiler: Add Windows resources to rustc-main and rustc_driver"" [rust#146687](https://github.com/rust-lang/rust/pull/146687)
  - Authored by lambdageek
  - Reverts #146018 (also authored by lambdageek) which breaks compiling rustc on Windows (#146693)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23146687.3A.20beta-nominated/near/540125914), in favor.
  - Note: for the master branch, seems the plan is to work on a different patch (#146689, see [comment](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23146687.3A.20beta-nominated/near/540146373))
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [55 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 25 P-high, 100 P-medium, 23 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "`alloc-variant-zeroed` causing issues with LTO" [rust#145995](https://github.com/rust-lang/rust/issues/145995)
  - this is slowly entering beta and has no assignee yet. Though @**Nikita Popov** is aware of it (comments from [here](https://github.com/rust-lang/rust/pull/144086#issuecomment-3241389409))

> [triage logs for 2025-09-15](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-09-15.md)

Difficult week to interpret, because a positive change in [#145910](https://github.com/rust-lang/rust/pull/145910) performs a bit worse in our benchmarks than it would in the real world. Overall result is probably still slightly negative, because there's more work from added features. On the other hand, we also have a nice improvement in reducing the number of query dependencies in compiler's incremental system in [#145186](https://github.com/rust-lang/rust/pull/145186).

Triage done by **@panstromek**.
Revision range: [f13ef0d7..52618eb3](https://perf.rust-lang.org/?start=f13ef0d75d834c826c9479a5d244bcfb9891df45&end=52618eb338609df44978b0ca4451ab7941fd1c7a&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 2.7%]   | 72    |
| Regressions (secondary)  | 0.7%  | [0.0%, 3.5%]   | 96    |
| Improvements (primary)   | -0.5% | [-0.9%, -0.1%] | 10    |
| Improvements (secondary) | -0.8% | [-2.9%, -0.1%] | 41    |
| All  (primary)           | 0.4%  | [-0.9%, 2.7%]  | 82    |


1 Regression, 1 Improvement, 6 Mixed; 3 of them in rollups
36 artifact comparisons made in total

#### Regressions

consider item bounds for non-yet-defined opaque types [#146329](https://github.com/rust-lang/rust/pull/146329) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=408eacfb95ea19e248c0fe5e377980bc00682c1b&end=a171994070dc18c3a32fc1aa2d98cf03ae96b63e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.2%, 0.8%]   | 11    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)                 | -     | -              | 0     |

`tt-muncher`, `ucd` and `tuple-stress` all look like noise to me. The rest is in new-solver, which is still WIP and not enabled by default.

#### Improvements

Make `AssocItem` aware of its impl kind [#145186](https://github.com/rust-lang/rust/pull/145186) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b50f345a2f3f49764024cabc30ef99e15c0240f7&end=637b50be01093962ac6f4432d6881ab41d6d90b4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 15    |
| Improvements (secondary) | -0.4% | [-1.2%, -0.1%] | 25    |
| All  (primary)                 | -0.2% | [-0.3%, -0.1%] | 15    |


#### Mixed

Rollup of 4 pull requests [#146304](https://github.com/rust-lang/rust/pull/146304) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=23718020b12d7e5a54f82a19910e8356ee719667&end=12eb345e5593a10e61b4aef766076c8bd552fea6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.4%]   | 8     |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.9%]   | 13    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -2.7% | [-2.9%, -2.5%] | 6     |
| All  (primary)                 | 0.2%  | [-0.2%, 0.4%]  | 9     |

Seems to be caused by https://github.com/rust-lang/rust/pull/146297, pinged the author and continuing the discussion there.

Ignore intrinsic calls in cross-crate-inlining cost model [#145910](https://github.com/rust-lang/rust/pull/145910) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2f3f27bf79ec147fec9d2e7980605307a74067f4&end=a09fbe2c8372643a27a8082236120f95ed4e6bba&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.3%, 2.4%]   | 10    |
| Regressions (secondary)  | 1.9%  | [0.2%, 3.0%]   | 9     |
| Improvements (primary)   | -0.5% | [-0.7%, -0.4%] | 5     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.1%] | 14    |
| All  (primary)                 | 0.5%  | [-0.7%, 2.4%]  | 15    |

Already triaged by reviewer. Justified in PR description. Should be an improvement overall, but causes a lot of CGU perturbation in our benchmark suite.

eagerly compute `sub_unification_table` again [#140375](https://github.com/rust-lang/rust/pull/140375) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a78f9aa87fa828ad4a5c11f1e3b93e94d9352ad6&end=9c27f27ea3bab79a2fec827ef3ae0009959d60f4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 1.4%]   | 61    |
| Regressions (secondary)  | 0.6%  | [0.1%, 2.7%]   | 71    |
| Improvements (primary)   | -0.4% | [-0.8%, -0.1%] | 3     |
| Improvements (secondary) | -0.9% | [-2.9%, -0.2%] | 21    |
| All  (primary)                 | 0.3%  | [-0.8%, 1.4%]  | 64    |

Expected regression, triaged by author and @Kobzol

Rollup of 11 pull requests [#146360](https://github.com/rust-lang/rust/pull/146360) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fefce3cecd63cebf2d7c9aa3dd90a84379fcfa1a&end=be8de5d6a0fc5cb2924e174a809a0aff303f281a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.4%]   | 10    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.6% | [-1.1%, -0.1%] | 9     |
| All  (primary)                 | -     | -              | 0     |

Tiny changes mostly in artificial stress tests, overall slightly positive. Probably not worth more investigation.

Rollup of 5 pull requests [#146409](https://github.com/rust-lang/rust/pull/146409) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7ad23f43a225546c095123de52cc07d8719f8e2b&end=565a9ca63e9df4b223fed0da01f15e578acfb538&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 3     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.2%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.3%  | [0.2%, 0.4%]   | 3     |

Some small regressions. I suspect the primary regressions in `unicode-normalization` come from https://github.com/rust-lang/rust/pull/144765, because it contains a few giant tables with a lot of range patterns. The other candidate would be https://github.com/rust-lang/rust/pull/146178 but I don't see anything that would be related in that benchmark.

Either way, together with the secondary benchmarks, all of those are tiny changes (0.002s) on tiny benchmarks, so I don't think this is worth more investigation.

Constify Eq, Ord, PartialOrd [#144847](https://github.com/rust-lang/rust/pull/144847) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a171994070dc18c3a32fc1aa2d98cf03ae96b63e&end=5c11fb842afc9876e985886c30292a227caee632&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.3%]   | 8     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] | 2     |
| All  (primary)                 | 0.1%  | [0.1%, 0.1%]   | 1     |

Slight regression in doc benchmarks, similar to [pre-merge results](https://github.com/rust-lang/rust/pull/144847#issuecomment-3189779391). Expected because of more const handling (looks like more time is spent in const related queries from a brief look at the detailed results of hello-world: https://perf.rust-lang.org/detailed-query.html?commit=5c11fb842afc9876e985886c30292a227caee632&benchmark=helloworld-doc&scenario=full&base_commit=a171994070dc18c3a32fc1aa2d98cf03ae96b63e)

Justified by https://github.com/rust-lang/rust/pull/144847#issuecomment-3193410781, if I understand correctly.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Stabilize -Zno-jump-tables into -Cjump-tables=bool" [rust#145974](https://github.com/rust-lang/rust/pull/145974)
  - Nominated by @**Trevor Gross**
  - [Opinion](https://github.com/rust-lang/rust/pull/145974#issuecomment-3236418282) from Ojeda (RfL)
  - Seems reaady for a discussion (or start FCP)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Tweak output of missing lifetime on associated type" [rust#135602](https://github.com/rust-lang/rust/pull/135602) (last review activity: 5 months ago)
  - cc: @**Nadrieril** (probably review of #145314 comes first, see [comment](https://github.com/rust-lang/rust/pull/135602#issuecomment-3180332810))
- "Add FileCheck annotations to mir-opt/copy-prop" [rust#135099](https://github.com/rust-lang/rust/pull/135099) (last review activity: 5 months ago)
  - cc @**Wesley Wiser**
- "Issue-125323: ICE non-ADT in struct pattern when long time constant evaluation is in for loop" [rust#138679](https://github.com/rust-lang/rust/pull/138679) (last review activity: 4 months ago)
  - cc: @**oli** or @**Michael Goulet (compiler-errors)** (both have been guiding and mentoring the author)
- "diagnostics: hide expansion of builtin-like macros" [rust#141314](https://github.com/rust-lang/rust/pull/141314) (last review activity: about 57 days ago)
  - cc @**Vadim Petrochenkov**
- "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682) (last review activity: about 49 days ago)
  - @**Wesley Wiser** (recent crater run returned a lot of spurious breakages)
- "[lib] In-place initialization infrastructure" [rust#142518](https://github.com/rust-lang/rust/pull/142518) (last review activity: 3 months ago)
  - seems more for T-libs but @**Michael Goulet (compiler-errors)** was mentioned
- "Remove fewer Storage calls in CopyProp and GVN" [rust#142531](https://github.com/rust-lang/rust/pull/142531) (last review activity: 2 months ago)
  - was partially approved ([comment](https://github.com/rust-lang/rust/pull/142531#issuecomment-3041368735)). Status? Need a review from someone familiar with LLVM? cc @**tm|352985** ?
- "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617) (last review activity: 2 months ago)
  - status? Besides a rebase, does it need also a T-lang review? See [comment](https://github.com/rust-lang/rust/pull/123617#issuecomment-3024833312)

Next meeting's agenda draft: [hackmd link](https://hackmd.io/4ry9YKnPTqKIIK3-AMuHWQ)
