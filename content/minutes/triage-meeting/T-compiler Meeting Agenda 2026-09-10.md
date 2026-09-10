---
tags: weekly, rustc
type: docs
note_id: VhBS-WUaT4K9ncI7r6YKhw
---

# T-compiler Meeting Agenda 2026-09-10

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce new -C flag for cross-target control of stack walking features" [compiler-team#1027](https://github.com/rust-lang/compiler-team/issues/1027) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20new.20-C.20flag.20for.20cross-target.20c.E2.80.A6.20compiler-team.231027/with/614727144))
  - "LLVM AllocToken and Heap Partitioning Support for Rust" [compiler-team#1032](https://github.com/rust-lang/compiler-team/issues/1032) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/LLVM.20AllocToken.20and.20Heap.20Partitioning.20Su.E2.80.A6.20compiler-team.231032/with/616646338))
  - "Expose `target_abi = "pauthtest"`" [compiler-team#1033](https://github.com/rust-lang/compiler-team/issues/1033) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retroactive.20MCP.20for.20the.20addition.20of.20.60Llv.E2.80.A6.20compiler-team.231033/with/617152754))
  - "Group similar `target_arch`es with `target_family`" [compiler-team#1034](https://github.com/rust-lang/compiler-team/issues/1034) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Group.20similar.20.60target_arch.60es.20with.20.60targ.E2.80.A6.20compiler-team.231034/with/621943054))

- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time

- Old MCPs (not seconded, take a look)
  - "Add testing for lint machinery at runtime" [compiler-team#1004](https://github.com/rust-lang/compiler-team/issues/1004) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20testing.20for.20lint.20machinery.20at.20runtime.20compiler-team.231004/with/605447442)) (last review activity: 2 months ago)
  - "More strongly point people to link to Tracking Issues in the PR template" [compiler-team#1009](https://github.com/rust-lang/compiler-team/issues/1009) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/More.20strongly.20point.20people.20to.20link.20to.20Tr.E2.80.A6.20compiler-team.231009/with/608085127)) (last review activity: 2 months ago)
  - "Add -Z stack-protector-guard" [compiler-team#1013](https://github.com/rust-lang/compiler-team/issues/1013) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20stack-protector-guard.20compiler-team.231013/with/609661756)) (last review activity: about 43 days ago)
  - "MCP: Add -Zasync-panic for binary size" [compiler-team#1016](https://github.com/rust-lang/compiler-team/issues/1016) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Add.20-Zasync-panic.20for.20binary.20size.20compiler-team.231016/with/611239381)) (last review activity: about 48 days ago)

- Pending FCP requests (check your boxes!)
  - merge: [WF checks on closure arguments and improved type-test promotion. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [Stabilize `optimize` attribute (rust#157273)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4691981605)
    - @_**|116009** @_**|125270** @_**|370197** @_**|343125**
    - concerns: [should-apply-to-closures (by tmandry)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4849404699) [make-optimize-none-be-c-opt-level-0 (by scottmcm)](https://github.com/rust-lang/rust/pull/157273#issuecomment-5120432771)
  - merge: [Stop using dlltool for generating import libraries on MinGW (rust#157712)](https://github.com/rust-lang/rust/pull/157712#issuecomment-5600760865)
    - @_**|116266** @_**|124288** @_**|125250** @_**|116107** @_**|116122** @_**|123856** @_**|370197** @_**|343125**
    - no pending concerns
  - merge: [move implied bounds computation out of borrowck (rust#160491)](https://github.com/rust-lang/rust/pull/160491#issuecomment-5409579691)
    - @**|116266** @**|124288** @**|326176** @**|232957**
    - no pending concerns
  - merge: [rustc: Stabilize the WebAssembly `wide-arithmetic` feature (rust#160877)](https://github.com/rust-lang/rust/pull/160877#issuecomment-5248194776)
    - @**|116266** @**|119031** @**|370197** @**|343125**
    - no pending concerns

- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Add `target_feature_available_at_call_site`" [compiler-team#1010](https://github.com/rust-lang/compiler-team/issues/1010) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_feature_available_at_call_si.E2.80.A6.20compiler-team.231010/with/608364780))
    - concern: [debugging-the-llvmir](https://github.com/rust-lang/compiler-team/issues/1010#issuecomment-4897007445)
  - "x86: on targets that requires SSE, use those registers for ABI" [rust#161583](https://github.com/rust-lang/rust/pull/161583)

- Accepted MCPs
  - "Add `codeview_annotation` intrinsic" [compiler-team#1026](https://github.com/rust-lang/compiler-team/issues/1026) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60codeview_annotation.60.20intrinsic.20compiler-team.231026/with/613872149))
  - "Expose `target_abi = "v8plus"` on sparc-unknown-linux-gnu" [compiler-team#1028](https://github.com/rust-lang/compiler-team/issues/1028) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Expose.20.60target_abi.20.3D.20.22v8plus.22.60.20on.20sparc-.E2.80.A6.20compiler-team.231028/with/615265243))
  - "Stop using dlltool for generating import libraries on MinGW" [compiler-team#1029](https://github.com/rust-lang/compiler-team/issues/1029) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20using.20dlltool.20for.20generating.20import.E2.80.A6.20compiler-team.231029/with/615356394))

- MCPs blocked on unresolved concerns
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 3 months ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 22 days ago)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
    - concern: [resolve ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-5330480749)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 7 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler)) (last review activity: 3 months ago)
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002)) (last review activity: 2 months ago)
    - concern: [question-boolean-valued-counters](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4807853132)
    - concern: [state-of-the-impl](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4905511221)

- Finalized FCPs (disposition merge)
  - None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [67 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [51 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 7 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 29 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

Results for the latest beta 1.99 crater run is at https://github.com/rust-lang/rust/issues/161326

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc)
- "1.99 beta crater regression: "type annotations needed"" [rust#161913](https://github.com/rust-lang/rust/issues/161913)
  - This seems to be "seen" by T-types (@_**lcnr** assigned priority) but does not yet have a fix (AFAICS)
- "1.99 beta crater regression: overflow evaluating the requirement" [rust#161916](https://github.com/rust-lang/rust/issues/161916)
  - This is being worked on

- FYI, other beta regressions (but many are duplicates/related to the same root issues)
  - [1.99 beta crater regression: type annotations needed · Issue #162109](https://github.com/rust-lang/rust/issues/162109)
    - Possibly a duplicate of #161913
  - [1.99 beta crater regression: unresolved import in doctest · Issue #162112](https://github.com/rust-lang/rust/issues/162112)
    - Duplicate of #162245
  - [1.99 beta crater regression with two doc comments in one line · Issue #162129](https://github.com/rust-lang/rust/issues/162129)
    - Same cause as #162131
  - [1.99 beta crater regression: expected item after attributes · Issue #162131](https://github.com/rust-lang/rust/issues/162131)
    - same cause as #162129 (caused by #159849)
  - [1.99 beta crater regression: unresolved imports · Issue #162351](https://github.com/rust-lang/rust/issues/162351)
    - Same cause as #162129

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.
- Note: the new trait solver in the nightly release channel is generating feedback and @_**lcnr** is keeping track of the regressions ([here a list](https://github.com/rust-lang/rust/issues?q=sort%3Aupdated-desc%20state%3Aopen%20label%3Aregression-from-stable-to-nightly%20label%3AWG-trait-system-refactor))

## Performance logs

> [2026-09-07 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week we've hit quite a few regressions, both expected and unexpected.
One of them has already been fixed, with fixes for a few others being discussed.
One big improvement comes from caching the sanitizer set in `Session`, which fixes a large regression from last week.
A few minor improvements landed, including a 75% reduction in memory usage while compiling `bevy_render` with the next trait solver.

Triage done by **@JonathanBrouwer**.
Revision range: [5321a4f4..656a9da1](https://perf.rust-lang.org/?start=5321a4f40c957cf3587c055e77461febc2ebc865&end=656a9da186dacaf3bf8f7f7296a825d256cb4ae3&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 1.3%]   | 121   |
| Regressions (secondary)  | 0.6%  | [0.1%, 10.3%]  | 106   |
| Improvements (primary)   | -0.6% | [-1.9%, -0.1%] | 63    |
| Improvements (secondary) | -0.6% | [-2.4%, -0.1%] | 65    |
| All  (primary)                 | 0.1%  | [-1.9%, 1.3%]  | 184   |


3 Regressions, 2 Improvements, 8 Mixed; 6 of them in rollups
33 artifact comparisons made in total

#### Regressions

abby: always store nextgen region constraints in canonical form [#161306](https://github.com/rust-lang/rust/pull/161306) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4fcf39725a9c99bd495d8c73af83628a256ff9a9&end=d8df82673d5911b6112a85bf91d9adefb2c66a1a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.5%]   | 57    |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.6%]   | 41    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.2%  | [0.1%, 0.5%]   | 57    |

The cause of the regression is not yet known, the author has been pinged about this.
Given that this change should only affect the next trait solver, it is unexpected that it has an effect on performance on stable.

Rollup of 25 pull requests [#162229](https://github.com/rust-lang/rust/pull/162229) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d8df82673d5911b6112a85bf91d9adefb2c66a1a&end=c33d8f3b5a50b56466998e8c5ed8a077d2caed84&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 1     |
| Regressions (secondary)  | 0.4% | [0.2%, 0.7%] | 18    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.2%, 0.2%] | 1     |

Perf regression triaged to [#162229](https://github.com/rust-lang/rust/pull/162164).
This PR is reverting a perf improvement that caused a correctness regression, and the regression is therefore accepted.
It seems likely that this will re-land in the future.

Rollup of 25 pull requests [#162310](https://github.com/rust-lang/rust/pull/162310) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0ed41eb4142dda2df61eb1145a312c1a9d62eb56&end=0f819a1602c3814642aa63799b43772b7bb456e8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.2%, 2.6%]   | 50    |
| Regressions (secondary)  | 1.2%  | [0.2%, 5.4%]   | 60    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 5     |
| All  (primary)                 | 1.0%  | [0.2%, 2.6%]   | 50    |

Caused by [#162179](https://github.com/rust-lang/rust/pull/162179) and [#161953](https://github.com/rust-lang/rust/pull/161953).

- For [#162179](https://github.com/rust-lang/rust/pull/162179):
The const_of_item query went from only being supported on type consts
and ICEing on non-type consts, and instead, supports all constants,
began to return Option instead of the value directly, and returns None if it's not a "direct" constant.
This extra storage of storing None for all constants, rather than just type consts,
will increase metadata and query cache size.
Unfortunately this is unavoidable, we can't detect direct const stuff in the def_collector,
and is worth a minor perf hit IMO.

- For [#161953](https://github.com/rust-lang/rust/pull/161953):
The sanitizers() function before just did a single bitor.
Now it iterates over an array and performs a bunch of computation.
This is fixed in [#162371](https://github.com/rust-lang/rust/pull/162371) by caching the function result.

#### Improvements

- Rollup of 12 pull requests [#162254](https://github.com/rust-lang/rust/pull/162254) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a69a63265cfd9e006d43137f98301b8d274ad4c9&end=71238e21fc55e73ab3aad8c9f79fed7a47a179e1&stat=instructions:u)
- Cache sanitizer set in `Session` [#162371](https://github.com/rust-lang/rust/pull/162371) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=31c76a10a742d10a749ab4e19cec324864314b70&end=32d94cc9be3f6e6c3fa1deaea9e0ab93c4980dba&stat=instructions:u)
- Fix of the regression in [#161953](https://github.com/rust-lang/rust/pull/161953).

#### Mixed

Add intrinsics for integer minimum and maximum [#161081](https://github.com/rust-lang/rust/pull/161081) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5321a4f40c957cf3587c055e77461febc2ebc865&end=be4b6a99a3c605d27786c7d48772fec5bd2df76c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.2%]   | 4     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.9% | [-0.9%, -0.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.1% | [-0.9%, 0.2%]  | 5     |

Perf changes look mostly like the kind of thing that makes sense from better inlining:
reduced is_mir_available calls, and permuted codegen schedules from different CGU partitioning that sometimes is better, sometimes worse.
The pre-merge perf run was more green, which is expected based on this theory.

Rollup of 16 pull requests [#162117](https://github.com/rust-lang/rust/pull/162117) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=70222712809cd5cc1718ed8995914a1cbacb6b92&end=a4330234a776684c36428d001721d0320d24dd77&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | 0.4%  | [0.0%, 0.7%]   | 29    |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 1     |
| Improvements (secondary) | -0.4% | [-1.0%, -0.0%] | 27    |
| All  (primary)                 | 0.1%  | [-0.1%, 0.3%]  | 2     |

Perf improvements caused by https://github.com/rust-lang/rust/pull/161929 and perf regression caused by https://github.com/rust-lang/rust/pull/162051
- For [#161929](https://github.com/rust-lang/rust/pull/161929), the unexpected improvement is caused by calling the `def_kind` query fewer times.
- For [#162051](https://github.com/rust-lang/rust/pull/162051), even though the effect is quite strong, it is just noise.
The benchmarks affected are parsing benchmarks, which this PR does not touch, and the regression does not reproduce locally.

Revert "Use `drop_guard` in some places in {core,alloc,std}" [#162128](https://github.com/rust-lang/rust/pull/162128) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5db7f4be8a36c1b8ae19299469e2be2b0f052c21&end=edc52f87c28f328c61685a02c47887a5cec7d767&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.3%, 1.5%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.9%, -0.2%] | 46    |
| Improvements (secondary) | -0.6% | [-1.8%, -0.2%] | 26    |
| All  (primary)                 | -0.4% | [-1.9%, 1.5%]  | 49    |

This PR is a revert of a PR from last week, because of the performance regressions caused by that PR.
The performance improvements strongly outweigh the regressions.

Rollup of 3 perf-sensitive pull requests [#162183](https://github.com/rust-lang/rust/pull/162183) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=59dabe56f7b78d9dd427645cd7f8e7fd426724cc&end=824336ad4127ce295849937a24c08a4aeff6ada7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.2%]   | 9     |
| Improvements (primary)   | -0.3% | [-1.3%, -0.1%] | 49    |
| Improvements (secondary) | -0.3% | [-0.7%, -0.1%] | 39    |
| All  (primary)                 | -0.3% | [-1.3%, -0.1%] | 49    |

This is a rollup of three perf-sensitive pull requests:
- [Store LiveLoans more densely packed](https://github.com/rust-lang/rust/pull/161850)
  `-0.4%` on 18 primary benchmarks, matches expected results, a clear improvement
- [Reduce next-solver memory usage by interning CanonicalQueryInput - #162031](https://github.com/rust-lang/rust/pull/162031)
  `+0.2%` on 5 secondary benchmarks, `-0.3%` on 6 secondary benchmarks, instruction counts are a wash.
  This is however a clear improvement on max RSS, going from ~15GiB to ~4GiB for the `bevy_render` crate.
- [Optimize empty token streams](https://github.com/rust-lang/rust/pull/162047)
  `-0.2%` on 18 primary benchmarks. Some regressions on secondary benchmarks which don't match expected results, those are noise.

Update cargo submodule [#161789](https://github.com/rust-lang/rust/pull/161789) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fb9a3389fdeb347c7658a422ed41b79499434452&end=2e2b193f8ada105f27608b7be81c293e0d7292cb&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.0% | [-2.1%, -0.1%] | 11    |
| All  (primary)                 | 0.3%  | [0.2%, 0.4%]   | 2     |

A small performance regression in `unicode-normalization`, caused by cargo setting extra options that it needs for the stabilization of cargo lints.
The PR also comes with a nice improvement on the `large-workspace` benchmark, the cause of which is not clear.
The regression is worth it, so this is accepted.

always rerun if we normalize local opaques [#161795](https://github.com/rust-lang/rust/pull/161795) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b924f94129bce80f36dd9f08bb78dd5393fe196e&end=0ed41eb4142dda2df61eb1145a312c1a9d62eb56&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 6.8%  | [4.7%, 10.7%]  | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | -     | -              | 0     |

The regression concentrates in a stress test which is very sensitive to changes on opaques.
The regressions are unavoidable. only on secondary benchmarks, and need to be accepted to fix a bug.

Rollup of 14 pull requests [#162333](https://github.com/rust-lang/rust/pull/162333) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=546f07f6ee18fa92e586e659ef888bbf0f99e6e7&end=f207aa3913114c3326bc0b88acbd12b10244edf8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 0.7%]   | 94    |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 35    |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 6     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 12    |
| All  (primary)                 | 0.3%  | [-0.5%, 0.7%]  | 100   |

Caused by two PRS: [#160745](https://github.com/rust-lang/rust/pull/160745) and [#162250](https://github.com/rust-lang/rust/pull/162250).
- [#160745](https://github.com/rust-lang/rust/pull/160745) caused a regression because it removes the `noalias` llvm annotations of the closure argument in FnOnce closures.
  The topic is nominated to the opsem team for discussion, of whether this deserves a revert.
- [#162250](https://github.com/rust-lang/rust/pull/162250) is a minor regression (`+0.3%` on 5 secondary benchmarks), which is required to fix the correctness of hashing span locations.
  The regression is only visible in doc builds.


Use query for Variant InhabitedPredicate [#159541](https://github.com/rust-lang/rust/pull/159541) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7cef43fbb6862a20766f206ed6fec78124922d2c&end=da47efd27287edb02eed0b5a178a165c8f258e37&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.2%]   | 2     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.4%] | 2     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 3     |
| All  (primary)                 | -0.4% | [-0.5%, -0.4%] | 2     |

Improvements are real, achieved by introducing new caching.
The regression is noise.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "support passing `i128` to assembly on `aarch64`" [rust#154342](https://github.com/rust-lang/rust/pull/154342) (last review activity: 5 months ago)
  - cc @**Amanieu d'Antras**
- "Fix quadratic MIR blowup for large `vec![]` expressions with `Drop`-implementing elements in async functions" [rust#154720](https://github.com/rust-lang/rust/pull/154720) (last review activity: 5 months ago)
  - cc @**Ben Kimock (Saethlin)** (or reroll?)
- "Move checking placeholder types in return types to `typeck`" [rust#153243](https://github.com/rust-lang/rust/pull/153243) (last review activity: 4 months ago)
  - cc @**Ben Kimock (Saethlin)** @**León Orell Liehr (fmease)**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/hmsSzLT_TL-PjULgJBPKww)
