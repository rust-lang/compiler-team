---
tags: weekly, rustc
type: docs
note_id: zOAhGmCuQvy9AeQKGwqAIw
---

# T-compiler Meeting Agenda 2026-09-03

## Announcements

- Today releasing rust 1.98.1
  - Fixes `P-critical` "rustc: fix miscompilation in generating vtables" [rust#161441](https://github.com/rust-lang/rust/issues/161441)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce new -C flag for cross-target control of stack walking features" [compiler-team#1027](https://github.com/rust-lang/compiler-team/issues/1027) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20new.20-C.20flag.20for.20cross-target.20c.E2.80.A6.20compiler-team.231027/with/614727144))
  - "LLVM AllocToken and Heap Partitioning Support for Rust" [compiler-team#1032](https://github.com/rust-lang/compiler-team/issues/1032) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/LLVM.20AllocToken.20and.20Heap.20Partitioning.20Su.E2.80.A6.20compiler-team.231032/with/616646338))
  - "Expose `target_abi = "pauthtest"`" [compiler-team#1033](https://github.com/rust-lang/compiler-team/issues/1033) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retroactive.20MCP.20for.20the.20addition.20of.20.60Llv.E2.80.A6.20compiler-team.231033/with/617152754))

- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time

- Old MCPs (not seconded, take a look)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler)) (last review activity: 2 months ago)
  - "Add testing for lint machinery at runtime" [compiler-team#1004](https://github.com/rust-lang/compiler-team/issues/1004) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20testing.20for.20lint.20machinery.20at.20runtime.20compiler-team.231004/with/605447442)) (last review activity: 2 months ago)
  - "More strongly point people to link to Tracking Issues in the PR template" [compiler-team#1009](https://github.com/rust-lang/compiler-team/issues/1009) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/More.20strongly.20point.20people.20to.20link.20to.20Tr.E2.80.A6.20compiler-team.231009/with/608085127)) (last review activity: about 55 days ago)
  - "Add -Z stack-protector-guard" [compiler-team#1013](https://github.com/rust-lang/compiler-team/issues/1013) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20stack-protector-guard.20compiler-team.231013/with/609661756)) (last review activity: about 36 days ago)
  - "MCP: Add -Zasync-panic for binary size" [compiler-team#1016](https://github.com/rust-lang/compiler-team/issues/1016) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Add.20-Zasync-panic.20for.20binary.20size.20compiler-team.231016/with/611239381)) (last review activity: about 41 days ago)

- Pending FCP requests (check your boxes!)
  - merge: [WF checks on closure arguments and improved type-test promotion. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [Stabilize `optimize` attribute (rust#157273)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4691981605)
    - @_**|116009** @_**|125270** @_**|370197** @_**|343125**
    - concerns: [should-apply-to-closures (by tmandry)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4849404699) [make-optimize-none-be-c-opt-level-0 (by scottmcm)](https://github.com/rust-lang/rust/pull/157273#issuecomment-5120432771)
  - merge: [move implied bounds computation out of borrowck (rust#160491)](https://github.com/rust-lang/rust/pull/160491#issuecomment-5409579691)
    - @_**|116266** @_**|124288** @_**|326176** @_**|232957**
    - no pending concerns
  - merge: [rustc: Stabilize the WebAssembly `wide-arithmetic` feature (rust#160877)](https://github.com/rust-lang/rust/pull/160877#issuecomment-5248194776)
    - @_**|116266** @_**|119031** @_**|370197** @_**|343125**
    - no pending concerns

- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Add `target_feature_available_at_call_site`" [compiler-team#1010](https://github.com/rust-lang/compiler-team/issues/1010) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_feature_available_at_call_si.E2.80.A6.20compiler-team.231010/with/608364780))
    - concern: [debugging-the-llvmir](https://github.com/rust-lang/compiler-team/issues/1010#issuecomment-4897007445)
  - "Add `codeview_annotation` intrinsic" [compiler-team#1026](https://github.com/rust-lang/compiler-team/issues/1026) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60codeview_annotation.60.20intrinsic.20compiler-team.231026/with/613872149))
  - "x86: on targets that requires SSE, use those registers for ABI" [rust#161583](https://github.com/rust-lang/rust/pull/161583)

- Accepted MCPs
  - "Wasm proc macro support" [compiler-team#1017](https://github.com/rust-lang/compiler-team/issues/1017) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Wasm.20proc.20macro.20support.20compiler-team.231017/with/611556767))
  - "Encode OpenBSD `-current` version in targets' `target_env`" [compiler-team#1018](https://github.com/rust-lang/compiler-team/issues/1018) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Encode.20OpenBSD.20.60-current.60.20version.20in.20tar.E2.80.A6.20compiler-team.231018/with/611628084))
  - "Implement a naming convention for lint/diagnostic-only `rustc_` attrs" [compiler-team#1021](https://github.com/rust-lang/compiler-team/issues/1021) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Implement.20a.20naming.20convention.20for.20lint.2Fd.E2.80.A6.20compiler-team.231021/with/612199410))
  - "Expose `target_abi = "v8plus"` on sparc-unknown-linux-gnu" [compiler-team#1028](https://github.com/rust-lang/compiler-team/issues/1028) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Expose.20.60target_abi.20.3D.20.22v8plus.22.60.20on.20sparc-.E2.80.A6.20compiler-team.231028/with/615265243))
  - "Stop using dlltool for generating import libraries on MinGW" [compiler-team#1029](https://github.com/rust-lang/compiler-team/issues/1029) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20using.20dlltool.20for.20generating.20import.E2.80.A6.20compiler-team.231029/with/615356394))

- MCPs blocked on unresolved concerns
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 3 months ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 15 days ago)
    - concern: [resolve ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-5330480749)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 7 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002)) (last review activity: about 57 days ago)
    - concern: [question-boolean-valued-counters](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4807853132)
    - concern: [state-of-the-impl](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4905511221)

- Finalized FCPs (disposition merge)
  - [T-compiler] "Error on projection of dyn noncompat type in old trait solver" [rust#154992](https://github.com/rust-lang/rust/pull/154992)
  - [T-compiler] "Stabilize `-Zprofile-sample-use`" [rust#155942](https://github.com/rust-lang/rust/pull/155942)
  - [T-compiler] "Ensure inferred let pattern types are well-formed" [rust#157841](https://github.com/rust-lang/rust/pull/157841)
  - [T-compiler] "Shallow resolve ty and const vars to their root vars, attempt 2" [rust#158447](https://github.com/rust-lang/rust/pull/158447)
  - [T-compiler] "PowerPC inline ASM: Fix scalar floats being in the wrong vector lane on little endian" [rust#160441](https://github.com/rust-lang/rust/pull/160441)
  - [T-compiler] "enable next solver by default in orphanck" [rust#160668](https://github.com/rust-lang/rust/pull/160668)
  - [T-types] "Remove `From<!> for T` *reservation* impl" [rust#160705](https://github.com/rust-lang/rust/pull/160705)

## Backport nominations

Note: All approved but one

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Check to ensure we're running against the correct LLVM version" [rust#161788](https://github.com/rust-lang/rust/pull/161788)
  - Authored by jnkel
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23161788.3A.20beta-nominated/near/620129078), approved
- :beta: "Revert "Add rustc_test_entrypoint_marker"" [rust#161931](https://github.com/rust-lang/rust/pull/161931)
  - Authored by JonathanBrouwer
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23161931.3A.20beta-nominated/near/619810869)
- :beta: "Make the LLVM version mismatch ICE a fatal error" [rust#162034](https://github.com/rust-lang/rust/pull/162034)
  - Authored by saethlin
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23162034.3A.20beta-nominated/near/620913910), approved
- :beta: "Update LLVM submodule" [rust#162133](https://github.com/rust-lang/rust/pull/162133)
  - Authored by nikic
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23162133.3A.20beta-nominated/near/620701268), approved
- :beta: "Revert "Implement Debug for C-like enums with a concatenated string"" [rust#162164](https://github.com/rust-lang/rust/pull/162164)
  - Authored by nnethercote
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23162164.3A.20beta-nominated/near/620843690)
- :beta: "Fix ICE of getting item name from RPITIT" [rust#162071](https://github.com/rust-lang/rust/pull/162071)
  - Authored by chenyukang
  - Fixes #161915 a P-medium beta regression, seems safe to backport
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23162071.3A.20beta-nominated/near/620504696)
<!--
@**triagebot** backport accept beta 162071
@**triagebot** backport decline beta 162071
-->
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [69 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 4 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 33 P-high, 100 P-medium, 29 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc)
- "1.99 beta crater regression: "type annotations needed"" [rust#161913](https://github.com/rust-lang/rust/issues/161913)
- "1.99 beta crater regression: overflow evaluating the requirement" [rust#161916](https://github.com/rust-lang/rust/issues/161916)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-08-31 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week continues a steady stream of compile time improvements. Most of the impact this week comes from type system
micro-optimization in [#160473](https://github.com/rust-lang/rust/pull/160473) and `dead_code` lint propagation
fix in [#161571](https://github.com/rust-lang/rust/pull/161571). We've also hit unexpected regression in a standard library
refactor, but we expect that to be addressed soon.

Triage done by **@panstromek**.
Revision range: [9a4ad59a..5321a4f4](https://perf.rust-lang.org/?start=9a4ad59ae3073b013cd62f53f8349ddc61a012e8&end=5321a4f40c957cf3587c055e77461febc2ebc865&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.6%  |  [0.2%, 1.8%]  |  27   |
| Regressions (secondary)  | 0.6%  |  [0.2%, 1.8%]  |  27   |
|  Improvements (primary)  | -0.7% | [-2.4%, -0.1%] |  135  |
| Improvements (secondary) | -0.7% | [-2.2%, -0.1%] |  120  |
|      All  (primary)      | -0.5% | [-2.4%, 1.8%]  |  162  |


5 Regressions, 4 Improvements, 4 Mixed; 9 of them in rollups
39 artifact comparisons made in total

#### Regressions

Rollup of 9 pull requests [#161706](https://github.com/rust-lang/rust/pull/161706) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e7769602aca3770e8d8ea55716becb22e839a579&end=9bb55c8c865411b7d9dea6ff743e583d510d89f5&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.5%, 0.6%] | 2     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.5% | [0.5%, 0.6%] | 2     |

Caused by https://github.com/rust-lang/rust/pull/159583, already triaged by @JonathanBrouwer:
"Caused the perf regression in the rollup.
This does more work because it's a new lint, and the regression is quite minor, so we probably just have to accept this"

Rollup of 5 pull requests [#161731](https://github.com/rust-lang/rust/pull/161731) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=26747db4f50d83f3670834410ac16fbd39c14c15&end=cc05892c8346313865afd91ca12ee1fde6d3603c&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 10    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

Noise, already triaged by @JonathanBrouwer

Rollup of 5 pull requests [#161783](https://github.com/rust-lang/rust/pull/161783) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=787af2b8c80638c51a4fc8e44f84e6891f243ec7&end=0f33d0912709e847199218ebab88e2311872f364&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 1     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 10    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.3%, 0.3%] | 1     |

Caused by https://github.com/rust-lang/rust/pull/161684, somehow rustdoc is sensitive to this trait bound.
This is arguably a problem in rustdoc and not in the PR, marked as triaged and opened a thread in T-rustdoc.
I think it's also ok to ignore this, the regression is quite minor.

Rollup of 7 pull requests [#161801](https://github.com/rust-lang/rust/pull/161801) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6510953ce01859dc271e3285cf539e03d0d781e7&end=3ffb26fbf5bf232cf59e314e75ea325973f4f583&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.3%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.3%] | 3     |

Caused by https://github.com/rust-lang/rust/pull/161718, we couldn't figure out why, seems spurious.

Investigated further by @nnethercote (author):

"I think the regression isn't real.

This PR did some very minor rearrangement of startup code that only runs once.
 - It's a 0.2% regression on three of the libc runs, i.e. very small.
 - I can't reproduce it on my machine with a local build.
 - I can't even reproduce it on my machine using the downloaded artifacts. (I got a 0.007% icount increase, not a 0.2% increase.) I don't remember ever seeing that before.

I'm out of ideas! I don't think it's worth investigating any further."

Rollup of 11 pull requests [#162028](https://github.com/rust-lang/rust/pull/162028) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=90850177249efe0321573c569aec5d12b257f8d6&end=4b7e3a76d8df78960dc7c65cad43f5da1dac8ade&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.1%, 1.9%] | 53    |
| Regressions (secondary)  | 0.6% | [0.2%, 1.9%] | 30    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.5% | [0.1%, 1.9%] | 53    |

Caused by https://github.com/rust-lang/rust/pull/161702, regression mostly in debug/opt builds,
mostly in codegen related queries. Binary size also regressed, so this is probably from more code in the standard library.
Investigations in progress, it will probably be addressed in a followup (or revert).

#### Improvements

- perf: Push nominal obligations instead of returning them [#160473](https://github.com/rust-lang/rust/pull/160473) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cc05892c8346313865afd91ca12ee1fde6d3603c&end=b751e7a48501be14dcd57b4a430b73a0e51a0c52&stat=instructions:u)
- Refactor the `#[allow(dead_code)]` propagation for impl items of traits [#161571](https://github.com/rust-lang/rust/pull/161571) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d0f2ef5e53039bd86fdcaa6e71860c4948880e04&end=c42ac5fd59628ea7e2f52af5944c2aaac3f0e7f6&stat=instructions:u)
- Rollup of 7 pull requests [#161990](https://github.com/rust-lang/rust/pull/161990) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fd7ed57dfd3bdebb745a1d8158638727b0e7047a&end=4545c8369286cd331ab9d6250c25630a69d6f790&stat=instructions:u)
- Rollup of 4 pull requests [#162009](https://github.com/rust-lang/rust/pull/162009) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=93635a5d547dd8a0c51553a15376012346f17261&end=2e071b28ef7e8a066b49a179e1da753c53500c62&stat=instructions:u)

#### Mixed

Rollup of 7 pull requests [#161672](https://github.com/rust-lang/rust/pull/161672) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ac62df9b49f9b9036af2a4957db70bf3850785e1&end=0a3fa2af35783dcd1b4206a85fe7811297eea0bf&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.4%]   | 10    |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 7     |
| Improvements (secondary) | -0.2% | [-0.4%, -0.1%] | 13    |
| All  (primary)                 | -0.2% | [-0.3%, -0.2%] | 7     |

Already triaged by @JonathanBrouwer:
"Improvements caused by #160705, regressions are noise"

stabilize never type [#155499](https://github.com/rust-lang/rust/pull/155499) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0a3fa2af35783dcd1b4206a85fe7811297eea0bf&end=e7769602aca3770e8d8ea55716becb22e839a579&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.1%] | 10    |
| All  (primary)                 | -     | -              | 0     |

`include-blob` regressions are noise, `tt-muncher` regression looks real, but it's small,
so this is probably fine for a PR like this.

Rollup of 21 pull requests [#161906](https://github.com/rust-lang/rust/pull/161906) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c42ac5fd59628ea7e2f52af5944c2aaac3f0e7f6&end=344f7902949345394fa40a5d7dda31f012ccbc0d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.4%] | 6     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.3%] | 2     |
| All  (primary)                 | -0.4% | [-0.5%, 0.1%]  | 7     |

The improvement is from https://github.com/rust-lang/rust/pull/161456, which addresses previously triaged regression. `include-blob` regression is noise. `html5ever` doc regression looks like it might be real, but it's tiny, so I don't think it's worth investigating further.

Add intrinsics for integer minimum and maximum [#161081](https://github.com/rust-lang/rust/pull/161081) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5321a4f40c957cf3587c055e77461febc2ebc865&end=be4b6a99a3c605d27786c7d48772fec5bd2df76c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.2%]   | 4     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.9% | [-0.9%, -0.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.1% | [-0.9%, 0.2%]  | 5     |


Some compile time impact was expected and justified in https://github.com/rust-lang/rust/pull/161081#issuecomment-5319412891 by the author (@scottmcm):
"Perf changes look mostly like the kind of thing that makes sense from better inlining: reduced is_mir_available calls, and permuted codegen schedules from different CGU partitioning that sometimes is better, sometimes worse.

Overall perf seems perhaps slightly better, and the bootstrap being green in both runs is also promising."

The post-merge result doesn't match the pre-merge run, but I assume that's also somewhat expected based on that comment justification.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "make target feature ABI check a hard error on ARM" [rust#161280](https://github.com/rust-lang/rust/pull/161280)
  - nominated by Ralf (https://github.com/rust-lang/rust/pull/161280#issuecomment-5331351235)
  - David (ARM maintainer) approved, T-lang as well
  - anything else to discuss for T-compiler?
- "Deny partial `-Z stack-protector` by default in all editions" [rust#157941](https://github.com/rust-lang/rust/pull/157941)
  - Discussed this [last time](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202026-08-20/near/617708490) but the reviewer suggests ([comment](https://github.com/rust-lang/rust/pull/157941#issuecomment-5503601729)) these changes to be a bit too much and more suitable for an Edition bump
  - should we park these changes on ice for now?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- Skipping

Next meeting's agenda draft: [hackmd link](https://hackmd.io/VhBS-WUaT4K9ncI7r6YKhw)
