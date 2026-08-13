---
tags: weekly, rustc
type: docs
note_id: rWWyD4rfTXigyJrlKyxIeQ
---

# T-compiler Meeting Agenda 2026-08-13

## Announcements

- :speaker: P-high review triage (2nd run) tomorrow <time:2026-07-31T16:00:00+02:00>
  - Issue list at https://hackmd.io/CQmx-X5iTO6nf23Ng5uHtA
- Next week release of Rust 1.98 (crater beta triage in progress, see regressions). [Changelog for 1.98](https://github.com/rust-lang/rust/issues/160700).
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours <time:2026-08-16T11:00:00+02:00>  and <time:2026-08-20T11:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add `codeview_annotation` intrinsic" [compiler-team#1026](https://github.com/rust-lang/compiler-team/issues/1026) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60codeview_annotation.60.20intrinsic.20compiler-team.231026/with/613872149))
  - "Introduce new -C flag for cross-target control of stack walking features" [compiler-team#1027](https://github.com/rust-lang/compiler-team/issues/1027) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20new.20-C.20flag.20for.20cross-target.20c.E2.80.A6.20compiler-team.231027/with/614727144))
  - "Expose `target_abi = "v8plus"` on sparc-unknown-linux-gnu" [compiler-team#1028](https://github.com/rust-lang/compiler-team/issues/1028) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Expose.20.60target_abi.20.3D.20.22v8plus.22.60.20on.20sparc-.E2.80.A6.20compiler-team.231028/with/615265243))

- Old MCPs (not seconded, take a look)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler)) (last review activity: 2 months ago)
  - "Add testing for lint machinery at runtime" [compiler-team#1004](https://github.com/rust-lang/compiler-team/issues/1004) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20testing.20for.20lint.20machinery.20at.20runtime.20compiler-team.231004/with/605447442)) (last review activity: about 46 days ago)
  - "More strongly point people to link to Tracking Issues in the PR template" [compiler-team#1009](https://github.com/rust-lang/compiler-team/issues/1009) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/More.20strongly.20point.20people.20to.20link.20to.20Tr.E2.80.A6.20compiler-team.231009/with/608085127)) (last review activity: about 33 days ago)
  - "Add -Z stack-protector-guard" [compiler-team#1013](https://github.com/rust-lang/compiler-team/issues/1013) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20stack-protector-guard.20compiler-team.231013/with/609661756)) (last review activity: about 14 days ago)
  - "MCP: Add -Zasync-panic for binary size" [compiler-team#1016](https://github.com/rust-lang/compiler-team/issues/1016) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Add.20-Zasync-panic.20for.20binary.20size.20compiler-team.231016/with/611239381)) (last review activity: about 19 days ago)

- Pending FCP requests (check your boxes!)
  - merge: [WF checks on closure arguments and improved type-test promotion. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
    - `I-types-nominated`
  - merge: [Stabilize `optimize` attribute (rust#157273)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4691981605)
    - @_**|116009** @_**|125270** @_**|370197** @_**|343125**
    - concerns: [should-apply-to-closures (by tmandry)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4849404699) [make-optimize-none-be-c-opt-level-0 (by scottmcm)](https://github.com/rust-lang/rust/pull/157273#issuecomment-5120432771)
  - merge: [rustc: Stabilize the WebAssembly `wide-arithmetic` feature (rust#160877)](https://github.com/rust-lang/rust/pull/160877#issuecomment-5248194776)
    - @_**|116266** @_**|124288** @_**|116107** @_**|119031** @_**|123856** @_**|370197** @_**|343125**
    - no pending concerns

- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Add `target_feature_available_at_call_site`" [compiler-team#1010](https://github.com/rust-lang/compiler-team/issues/1010) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_feature_available_at_call_si.E2.80.A6.20compiler-team.231010/with/608364780))
    - concern: [debugging-the-llvmir](https://github.com/rust-lang/compiler-team/issues/1010#issuecomment-4897007445)
  - "Encode OpenBSD `-current` version in targets' `target_env`" [compiler-team#1018](https://github.com/rust-lang/compiler-team/issues/1018) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Encode.20OpenBSD.20.60-current.60.20version.20in.20tar.E2.80.A6.20compiler-team.231018/with/611628084))
  - "Drop tier 2 `i686-pc-windows-gnu` host tools" [compiler-team#1020](https://github.com/rust-lang/compiler-team/issues/1020) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Drop.20.60i686-pc-windows-gnu.60.20host.20tools.20compiler-team.231020/with/611912720))
  - "Promote riscv64a23-unknown-linux-gnu to Tier 2 with host tools" [compiler-team#1022](https://github.com/rust-lang/compiler-team/issues/1022) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64a23-unknown-linux-gnu.20to.20.E2.80.A6.20compiler-team.231022/with/612286219))
  - "Stop using dlltool for generating import libraries on MinGW" [compiler-team#1029](https://github.com/rust-lang/compiler-team/issues/1029) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20using.20dlltool.20for.20generating.20import.E2.80.A6.20compiler-team.231029/with/615356394))
    - concern: [flag](https://github.com/rust-lang/compiler-team/issues/1029#issuecomment-5226178703)
  - "Error on projection of dyn noncompat type in old trait solver" [rust#154992](https://github.com/rust-lang/rust/pull/154992)
  - "Stabilize `-Zprofile-sample-use`" [rust#155942](https://github.com/rust-lang/rust/pull/155942)
  - "enable next solver by default in orphanck" [rust#160668](https://github.com/rust-lang/rust/pull/160668)

- Accepted MCPs
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980))
  - "Let the OS handle stack growth" [compiler-team#1011](https://github.com/rust-lang/compiler-team/issues/1011) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Let.20the.20OS.20handle.20stack.20growth.20compiler-team.231011/with/608661022))
  - "Wasm proc macro support" [compiler-team#1017](https://github.com/rust-lang/compiler-team/issues/1017) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Wasm.20proc.20macro.20support.20compiler-team.231017/with/611556767))
  - "Emit `note` when calling `rustc` without specifying an edition" [compiler-team#1019](https://github.com/rust-lang/compiler-team/issues/1019) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20.60note.60.20when.20calling.20.60rustc.60.20without.E2.80.A6.20compiler-team.231019/with/611792752))
  - "Implement a naming convention for lint/diagnostic-only `rustc_` attrs" [compiler-team#1021](https://github.com/rust-lang/compiler-team/issues/1021) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Implement.20a.20naming.20convention.20for.20lint.2Fd.E2.80.A6.20compiler-team.231021/with/612199410))

- MCPs blocked on unresolved concerns
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 2 months ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 4 months ago)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 6 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002)) (last review activity: about 35 days ago)
    - concern: [question-boolean-valued-counters](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4807853132)
    - concern: [state-of-the-impl](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4905511221)

- Finalized FCPs (disposition merge)
  - [T-compiler] "Ensure inferred let pattern types are well-formed" [rust#157841](https://github.com/rust-lang/rust/pull/157841)
  - [T-compiler] "Shallow resolve ty and const vars to their root vars, attempt 2" [rust#158447](https://github.com/rust-lang/rust/pull/158447)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "resolving cyclic glob vis-max" [rust#161024](https://github.com/rust-lang/rust/pull/161024)
  - FIY, PR was just opened should close #160685
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23161024.3A.20beta-nominated/near/616225913)

- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [66 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [52 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 32 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "dist-i686-msvc hang on lint-docs" [rust#158378](https://github.com/rust-lang/rust/issues/158378)
  - Waiting for the RFC to demote the target, [discussion on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Demoting.20.60i686-pc-windows-msvc.60.20to.20Tier.202.3F/near/611179208)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

Mostly for awareness, since we are a week before the release.

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "1.98 beta regression: compiler stack overflow" [rust#160685](https://github.com/rust-lang/rust/issues/160685)
  - unsure about priority, on one hand is just one crate, on the other is a segfault easily reproducible
  - author of the regressed patch is at work on a fix (#160685), would that a good candidate for a backport? (in case we make it to the release cut)
- "Rust warns pub glob export is unused" [rust#160691](https://github.com/rust-lang/rust/issues/160691)
  - unsure about priority, follows a number of similar regressions (now fixed)
  - the originating PR #145108 was FCP'd and will be in the release notes so we are just dealing with some fallout
  - Reviewer of the PR (Vadim) left a comment but probably someone else should author a fix (in case it's something we def. want to fix)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-08-09 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week so many new performance improvements landed that we needed to roll 10 of them up together to keep the bors queue manageable, great work!
Also new is the LLVM 23 update which caused massive compile-time, run-time, bootstrap time and artifact size improvements.
These improvements are reduced by the merge of Polonius Alpha on nightly causing a 3.0% regression. There still seems to be some potential to mitigate this regression.

Triage done by **@JonathanBrouwer**.
Revision range: [65dd30fb..771916f9](https://perf.rust-lang.org/?start=65dd30fb9e882a7e8f0be10caca62936db2a98b8&end=771916f9028e7fe56d2685f2c4f698de5d7d6a45&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 4.6%  | [0.2%, 12.8%]   | 24    |
| Regressions (secondary)  | 4.3%  | [0.2%, 14.3%]   | 30    |
| Improvements (primary)   | -3.3% | [-16.4%, -0.2%] | 251   |
| Improvements (secondary) | -5.2% | [-34.8%, -0.2%] | 308   |
| All  (primary)                 | -2.6% | [-16.4%, 12.8%] | 275   |


1 Regression, 4 Improvements, 7 Mixed; 5 of them in rollups
25 artifact comparisons made in total

#### Regressions

Rollup of 22 pull requests [#160517](https://github.com/rust-lang/rust/pull/160517) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1ed2df61a19042f231709eb05d032ae9e2cb2084&end=7218ebe93668f51a94a572b690c433dfdbdc2c3d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 1.9%]   | 11    |
| Regressions (secondary)  | 0.5%  | [0.2%, 1.8%]   | 13    |
| Improvements (primary)   | -0.8% | [-0.8%, -0.8%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.5%  | [-0.8%, 1.9%]  | 12    |

Most of this regression is noise, showing up on all PRs that were part of this rollup identically.
The one exception is [#160480](https://github.com/rust-lang/rust/pull/160480), which changes the implementation of `to_ascii_uppercase` and `to_ascii_lowercase` to be faster.
While the run-time performance of these functions improve, they are now slower to compile because they use more generics. Why this effect is so significant is unclear.

#### Improvements

- perf: Lock-free root fast paths for hygiene queries [#160494](https://github.com/rust-lang/rust/pull/160494) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=26bfbf28f5f79dff333ce5a232f131b496ec9cfe&end=f73951df0a5566d94d13b7954acd9f4ab1fa3734&stat=instructions:u)
- Optimize handling of solver errors [#160160](https://github.com/rust-lang/rust/pull/160160) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=88f7399cb4912680976e1c342ea7661b9dc84940&end=ae45457594a670c59cd4d5591eaa243d9a3d44d5&stat=instructions:u)
- Optimize `try_evaluate_obligations` [#160479](https://github.com/rust-lang/rust/pull/160479) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ae45457594a670c59cd4d5591eaa243d9a3d44d5&end=65bcac45b3d8a8b2126e5cc844cf6fff5795d32a&stat=instructions:u)
- [perf] Reuse existing trait reference instead of recreating it. [#160539](https://github.com/rust-lang/rust/pull/160539) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7dfb9d0c40d3338e1a27f0f787182c6b90e6791e&end=49c80b5a0db8abd63315c04ff34f58629e388281&stat=instructions:u)

#### Mixed

Rollup of 10 perf-sensitive pull requests [#160506](https://github.com/rust-lang/rust/pull/160506) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0b63defc8fd68957c635fe61f097b84df8fd9611&end=1ed2df61a19042f231709eb05d032ae9e2cb2084&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]    | 1     |
| Improvements (primary)   | -1.7% | [-6.2%, -0.2%]  | 237   |
| Improvements (secondary) | -4.7% | [-34.7%, -0.1%] | 230   |
| All  (primary)                 | -1.7% | [-6.2%, -0.2%]  | 237   |

This is a rollup of 10 perf-sensitive pull requestions, this was made for the first time because the queue was too large.
After the rollup was merged, every PR in the rollup was individually benchmarked.
The following 10 PRs were rolled up: (below each PR the effect on benchmarks is listed)

* [perf: skip irrelevant foreign impls when building the specialization graph - #157281](https://github.com/rust-lang/rust/pull/157281#issuecomment-5188979580)

  -1.5% [-6.1%, -0.2%]  209
* [Next steps for FnDef binder changes](https://github.com/rust-lang/rust/pull/159403#issuecomment-5189362799)

  0.3%  [-0.2%, 0.4%]   19

  This change is a part of the ongoing effort to clean up binder/turbofishing behavior in the compiler.
  While the perf regression was known before merging, it wasn't explained by the author. Author has been pinged.
* [Optimize crate resolution for large workspace](https://github.com/rust-lang/rust/pull/159763#issuecomment-5189793061)

  -7.5% [-15.3%, -1.7%] 11 (secondary, no effect on primaries)
* [Speed up EverInitializedPlaces](https://github.com/rust-lang/rust/pull/160033#issuecomment-5190192416)

  -0.4%     [-0.6%, -0.2%]  10
* [store the fulfillment engine inline in ObligationCtxt](https://github.com/rust-lang/rust/pull/160268#issuecomment-5190941859)

  -0.5%     [-1.4%, -0.2%]  71
* [Cache already-checked types in the privacy visitor](https://github.com/rust-lang/rust/pull/160317#issuecomment-5191318930)

  -0.5%     [-1.1%, -0.2%]  57
* [interpret: skip deref-projection validity checks when they are not needed](https://github.com/rust-lang/rust/pull/160399#issuecomment-5191715368)

  -12.8%    [-13.9%, -11.9%]    6 (secondary, no effect on primaries)
* [Deduplicate target and host filesearch](https://github.com/rust-lang/rust/pull/160451#issuecomment-5192147316)

  -0.7%     [-1.4%, -0.3%]  11 (secondary, no effect on primaries)
* [Add fast path to escape_string_symbol](https://github.com/rust-lang/rust/pull/160453#issuecomment-5192623577)

  -19.2%    [-34.8%, -4.4%]     14 (secondary, no effect on primaries)
* [Add offload guard flags to typeck to prevent perf regressions](https://github.com/rust-lang/rust/pull/160454#issuecomment-5193112704)

  -0.4%     [-0.5%, -0.2%]  10 (secondary, no effect on primaries)


Update to LLVM 23 [#158734](https://github.com/rust-lang/rust/pull/158734) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7218ebe93668f51a94a572b690c433dfdbdc2c3d&end=1b29cfdbee8ee37333f4b24afb936350eb57e705&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.7%]    | 14    |
| Regressions (secondary)  | 1.7%  | [0.0%, 9.1%]    | 27    |
| Improvements (primary)   | -2.6% | [-16.8%, -0.2%] | 208   |
| Improvements (secondary) | -2.0% | [-11.9%, -0.0%] | 246   |
| All  (primary)                 | -2.4% | [-16.8%, 0.7%]  | 222   |

Not only does the LLVM 23 update have an overwhelmingly positive effect on compile-time performance,
it also seriously improves run-time performance (-6.9% on the raytracer benchmark), it reduces bootstrap time by 7.7%, and reduces binary size by 0.2%.
Thanks to everyone who worked on landing this update!

Type fallback refactorings [#159026](https://github.com/rust-lang/rust/pull/159026) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1b29cfdbee8ee37333f4b24afb936350eb57e705&end=22950ab9e29e11620a10905f027f141ea126966e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.6%]   | 12    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.2% | [-3.1%, -0.1%] | 13    |
| All  (primary)                 | -     | -              | 0     |

The perf regression is noise, while the improvements are real.

Rollup of 25 pull requests [#160559](https://github.com/rust-lang/rust/pull/160559) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=22950ab9e29e11620a10905f027f141ea126966e&end=87212cef77e7bfa92ba0c4850be1d089745ba6fc&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.2%]   | 2     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]   | 16    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.8%, -0.2%] | 13    |
| All  (primary)                 | 0.2%  | [0.1%, 0.2%]   | 2     |

The performance improvements and some of the regressions are noise.
[The rest of the regressions are caused by changes in rustc-perf.](https://github.com/rust-lang/rust/pull/160510#issuecomment-5216265249)

Enable polonius alpha on nightly [#159343](https://github.com/rust-lang/rust/pull/159343) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=87212cef77e7bfa92ba0c4850be1d089745ba6fc&end=7608eb7b07eaf93f16d7cf5bcb2098eca87503df&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.0%  | [0.2%, 15.7%]  | 89    |
| Regressions (secondary)  | 2.3%  | [0.2%, 17.3%]  | 108   |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.9% | [-1.3%, -0.3%] | 9     |
| All  (primary)                 | 3.0%  | [0.2%, 15.7%]  | 89    |

This enables polonius alpha on nightly, which represents years of work on making the borrow checker stronger.
This is not enabled on stable yet, thus the performance regression won't be present there.
Polonius does strictly more work so getting this to zero will be impossible.
Serde is the biggest regression with a 15.6% regression.

While some performance work has already been done on polonius alpha, there seems to be quite some opportunities left.
One of those that @panstromek mentioned is that the `IntervalSet` datatype could be optimized further.

Rollup of 17 pull requests [#160627](https://github.com/rust-lang/rust/pull/160627) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=887804d5686c3bf9a090b5bbc23e3dcdfd9e316a&end=84b36a78a28a63f134171c670be1932ffa2485f8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.5%]   | 7     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 5     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 4     |
| All  (primary)                 | -0.3% | [-0.3%, -0.2%] | 5     |

The new-solver benchmark improvements seem to be noise.
Some improvements caused by https://github.com/rust-lang/rust/pull/160555.
Perf regression caused by https://github.com/rust-lang/rust/pull/160464. Pinged the authors.

Rollup of 28 pull requests [#160725](https://github.com/rust-lang/rust/pull/160725) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a98b1e135b254f209c67d447b6d8bcd56a859e0&end=7dfb9d0c40d3338e1a27f0f787182c6b90e6791e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.7%  | [0.5%, 0.9%]   | 2     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 2     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 3     |
| All  (primary)                 | -0.4% | [-0.5%, -0.3%] | 2     |

Improvements outweigh regressions.
The regressions may or may not be caused by a separate PR, but are so small that they are not worth hunting down.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "30% cargo target directory size regression between rust 1.96(.1) and 1.97(.1)" [rust#160659](https://github.com/rust-lang/rust/issues/160659)
  - Similar to what we discussed last week about #151994 (v0 mangling has some side-effects on binary size): [#t-compiler/meetings > &#91;weekly&#93; 2026-07-30 @ 💬](#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202026-07-30/near/613660367)
  - Tuning the `strip`'ing can help but I am not sure we can recover everything.
  - Opinions?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "improve error message when a cfg-ed out item is resolved" [rust#154037](https://github.com/rust-lang/rust/pull/154037) (last review activity: 3 months ago)
  - cc @**Jana Dönszelmann**
- "Normalize .. and . in diagnostic file paths" [rust#155569](https://github.com/rust-lang/rust/pull/155569) (last review activity: 3 months ago)
  - cc @**Urgau**
- "debuginfo: emit DW_TAG_call_site entries on optimized builds" [rust#154532](https://github.com/rust-lang/rust/pull/154532) (last review activity: 2 months ago)
  - @**Ding Xiang Fei (wieDasDing)**
- "fix: fix the capture behavior of `if let` in closures" [rust#154210](https://github.com/rust-lang/rust/pull/154210) (last review activity: 2 months ago)
  - cc @**Nadrieril** (assigned) or someone from T-compiler?
- "Wrap multi-bound impl/dyn after prefix type constructors in the type printer" [rust#156844](https://github.com/rust-lang/rust/pull/156844) (last review activity: 2 months ago)
  - cc @**Shoyu Vanilla**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/JqHHNK9hSwe5w_dJwiIHIA)
