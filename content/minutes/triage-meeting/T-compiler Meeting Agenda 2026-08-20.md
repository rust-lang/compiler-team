---
tags: weekly, rustc
type: docs
note_id: JqHHNK9hSwe5w_dJwiIHIA
---

# T-compiler Meeting Agenda 2026-08-20

## Announcements

- Today, Rust 1.98 is out, [blog post](https://github.com/rust-lang/blog.rust-lang.org/pull/1915)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours <time:2026-08-24T11:00:00+02:00>  and <time:2026-08-27T11:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce new -C flag for cross-target control of stack walking features" [compiler-team#1027](https://github.com/rust-lang/compiler-team/issues/1027) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20new.20-C.20flag.20for.20cross-target.20c.E2.80.A6.20compiler-team.231027/with/614727144))
  - "LLVM AllocToken and Heap Partitioning Support for Rust" [compiler-team#1032](https://github.com/rust-lang/compiler-team/issues/1032) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/LLVM.20AllocToken.20and.20Heap.20Partitioning.20Su.E2.80.A6.20compiler-team.231032/with/616646338))
  - "Expose `target_abi = "pauthtest"`" [compiler-team#1033](https://github.com/rust-lang/compiler-team/issues/1033) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retroactive.20MCP.20for.20the.20addition.20of.20.60Llv.E2.80.A6.20compiler-team.231033/with/617152754))

- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time

- Old MCPs (not seconded, take a look)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler)) (last review activity: 2 months ago)
  - "Add testing for lint machinery at runtime" [compiler-team#1004](https://github.com/rust-lang/compiler-team/issues/1004) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20testing.20for.20lint.20machinery.20at.20runtime.20compiler-team.231004/with/605447442)) (last review activity: about 53 days ago)
  - "More strongly point people to link to Tracking Issues in the PR template" [compiler-team#1009](https://github.com/rust-lang/compiler-team/issues/1009) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/More.20strongly.20point.20people.20to.20link.20to.20Tr.E2.80.A6.20compiler-team.231009/with/608085127)) (last review activity: about 40 days ago)
  - "Add -Z stack-protector-guard" [compiler-team#1013](https://github.com/rust-lang/compiler-team/issues/1013) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20stack-protector-guard.20compiler-team.231013/with/609661756)) (last review activity: about 21 days ago)
  - "MCP: Add -Zasync-panic for binary size" [compiler-team#1016](https://github.com/rust-lang/compiler-team/issues/1016) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Add.20-Zasync-panic.20for.20binary.20size.20compiler-team.231016/with/611239381)) (last review activity: about 26 days ago)
  - "Add `codeview_annotation` intrinsic" [compiler-team#1026](https://github.com/rust-lang/compiler-team/issues/1026) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60codeview_annotation.60.20intrinsic.20compiler-team.231026/with/613872149)) (last review activity: about 2 days ago)

- Pending FCP requests (check your boxes!)
  - merge: [WF checks on closure arguments and improved type-test promotion. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [Stabilize `optimize` attribute (rust#157273)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4691981605)
    - @_**|116009** @_**|125270** @_**|370197** @_**|343125**
    - concerns: [should-apply-to-closures (by tmandry)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4849404699) [make-optimize-none-be-c-opt-level-0 (by scottmcm)](https://github.com/rust-lang/rust/pull/157273#issuecomment-5120432771)
  - merge: [rustc: Stabilize the WebAssembly `wide-arithmetic` feature (rust#160877)](https://github.com/rust-lang/rust/pull/160877#issuecomment-5248194776)
    - @_**|116266** @_**|119031** @_**|370197** @_**|343125**
    - no pending concerns

- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Add `target_feature_available_at_call_site`" [compiler-team#1010](https://github.com/rust-lang/compiler-team/issues/1010) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_feature_available_at_call_si.E2.80.A6.20compiler-team.231010/with/608364780))
    - concern: [debugging-the-llvmir](https://github.com/rust-lang/compiler-team/issues/1010#issuecomment-4897007445)
  - "Expose `target_abi = "v8plus"` on sparc-unknown-linux-gnu" [compiler-team#1028](https://github.com/rust-lang/compiler-team/issues/1028) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Expose.20.60target_abi.20.3D.20.22v8plus.22.60.20on.20sparc-.E2.80.A6.20compiler-team.231028/with/615265243))
  - "Stop using dlltool for generating import libraries on MinGW" [compiler-team#1029](https://github.com/rust-lang/compiler-team/issues/1029) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20using.20dlltool.20for.20generating.20import.E2.80.A6.20compiler-team.231029/with/615356394))
  - "Make let-else respect macro_rules expr metavariable grouping" [rust#158515](https://github.com/rust-lang/rust/pull/158515)
  - "target_features: sse (or at least avx2) is incompatible with soft-float ABI" [rust#160302](https://github.com/rust-lang/rust/pull/160302)

- Accepted MCPs
  - "Wasm proc macro support" [compiler-team#1017](https://github.com/rust-lang/compiler-team/issues/1017) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Wasm.20proc.20macro.20support.20compiler-team.231017/with/611556767))
  - "Encode OpenBSD `-current` version in targets' `target_env`" [compiler-team#1018](https://github.com/rust-lang/compiler-team/issues/1018) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Encode.20OpenBSD.20.60-current.60.20version.20in.20tar.E2.80.A6.20compiler-team.231018/with/611628084))
  - "Implement a naming convention for lint/diagnostic-only `rustc_` attrs" [compiler-team#1021](https://github.com/rust-lang/compiler-team/issues/1021) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Implement.20a.20naming.20convention.20for.20lint.2Fd.E2.80.A6.20compiler-team.231021/with/612199410))

- MCPs blocked on unresolved concerns
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 2 months ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 0 days ago)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
    - concern: [resolve ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-5330480749)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 6 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002)) (last review activity: about 42 days ago)
    - concern: [question-boolean-valued-counters](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4807853132)
    - concern: [state-of-the-impl](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4905511221)

- Finalized FCPs (disposition merge)
  - [T-compiler] "Error on projection of dyn noncompat type in old trait solver" [rust#154992](https://github.com/rust-lang/rust/pull/154992)
  - [T-compiler] "Stabilize `-Zprofile-sample-use`" [rust#155942](https://github.com/rust-lang/rust/pull/155942)
  - [T-compiler] "Ensure inferred let pattern types are well-formed" [rust#157841](https://github.com/rust-lang/rust/pull/157841)
  - [T-compiler] "Shallow resolve ty and const vars to their root vars, attempt 2" [rust#158447](https://github.com/rust-lang/rust/pull/158447)
  - [T-compiler] "PowerPC inline ASM: Fix scalar floats being in the wrong vector lane on little endian" [rust#160441](https://github.com/rust-lang/rust/pull/160441)
  - [T-compiler] "enable next solver by default in orphanck" [rust#160668](https://github.com/rust-lang/rust/pull/160668)

## Backport nominations

(all async approved, mentioned here for the record)

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: (1.98) revert of "riscv: promote d, e, and f target_features to CfgStableToggleUnstable" [rust#161064](https://github.com/rust-lang/rust/pull/161064)
  - Authored by beetrees
  - Reverts #156188
- :beta: (1.100.0) "fix buggy MaybeDangling<&T> validation logic" [rust#161125](https://github.com/rust-lang/rust/pull/161125)
  - Authored by RalfJ
  - Fixes a critical regression caused by #160749, issue tracked in https://github.com/rust-lang/miri/pull/5252
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23161125.3A.20beta-nominated/near/616915126), all in favor
- :beta: (1.100.0) "resolving cyclic glob vis-max" [rust#161024](https://github.com/rust-lang/rust/pull/161024)
  - Authored by calvinrp
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23161024.3A.20beta-nominated/near/616225913), all in favor
  - Fixes #160685 a p-high regression found by a crater run (1 crate), now on stable

- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [48 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 32 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No new `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc)
- "Rust warns pub glob export is unused" [rust#160691](https://github.com/rust-lang/rust/issues/160691)
  - Vadim self-assigned
  - A smaller reproduction would be welcome (in case anyone has time to help)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-08-18 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

There were almost no regressions this week, while the next trait solver saw several significant performance
improvements!

Triage done by **@kobzol**.
Revision range: [771916f9..8fa1c96c](https://perf.rust-lang.org/?start=771916f9028e7fe56d2685f2c4f698de5d7d6a45&end=8fa1c96cfd489e4c27654c144ae871ce2c4db6c6&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.5%]    | 6     |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.0%]    | 17    |
| Improvements (primary)   | -0.5% | [-1.7%, -0.2%]  | 166   |
| Improvements (secondary) | -2.3% | [-16.0%, -0.1%] | 219   |
| All  (primary)                 | -0.5% | [-1.7%, 0.5%]   | 172   |

0 Regressions, 6 Improvements, 7 Mixed; 4 of them in rollups
50 artifact comparisons made in total

#### Improvements

- Rollup of 11 pull requests [#160830](https://github.com/rust-lang/rust/pull/160830) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=811367e98c08549865a32553076d617fb63154ef&end=8a2fbe3ea881ec68b9f06510fd1a1484cdf5bb6b&stat=instructions:u)
- Shallow resolve ty and const vars to their root vars, attempt 2 [#158447](https://github.com/rust-lang/rust/pull/158447) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8a2fbe3ea881ec68b9f06510fd1a1484cdf5bb6b&end=7088e4b63a9516ebfbfe2ab2d999cf01a528ac14&stat=instructions:u)
- Optimize new solver unification table ops [#160801](https://github.com/rust-lang/rust/pull/160801) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=12c36e2539c54397c51d6ea4401defd8768a4f5b&end=fdda4c6a308e5ae5514757601fd41b2268665ce7&stat=instructions:u)
- Use `TyOrConstInferVar` in the next solver, fix #158441 [#158436](https://github.com/rust-lang/rust/pull/158436) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e64c8a664d9da54fc239cd4404cbf67f0d624326&end=3d6c19bb9ab4798ecfb2ee943df01a811720fc27&stat=instructions:u)
- Three new-solver speedups [#160605](https://github.com/rust-lang/rust/pull/160605) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=793b589680f2ad49fab6853e84dbd51c5d84c505&end=41fb9d458726b5effbd64c7c1beced947ea03242&stat=instructions:u)
- Simplify `MaybeBorrowedLocals` [#160889](https://github.com/rust-lang/rust/pull/160889) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eab115ea6d842276c6ad7b819e08297c8e7693f0&end=874e6f2a533b28b77892709ba774614a96686840&stat=instructions:u)

#### Mixed

Increase the default stack size to 16 MiB and remove `ensure_sufficient_stack` [#160535](https://github.com/rust-lang/rust/pull/160535) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=969b803cbe1d4499f841ae0a49c637d8c70a0458&end=811367e98c08549865a32553076d617fb63154ef&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.9%, 0.9%]   | 6     |
| Improvements (primary)   | -0.5% | [-1.8%, -0.2%] | 183   |
| Improvements (secondary) | -0.8% | [-2.9%, -0.2%] | 209   |
| All  (primary)                 | -0.5% | [-1.8%, -0.2%] | 183   |

- One tiny regression on a secondary benchmark, otherwise everything is green.
- Marked as triaged.

Rollup of 13 pull requests [#161014](https://github.com/rust-lang/rust/pull/161014) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=79ef636a60b0f5ca061b09122bbbca3c7b4a3b70&end=1e5ee356374211706221b71b6106d297a646ee57&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.8%]   | 15    |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -5.5% | [-8.9%, -1.5%] | 4     |
| All  (primary)                 | 0.3%  | [0.1%, 0.8%]   | 15    |

- Small regressions caused by [#137858](https://github.com/rust-lang/rust/pull/137858) and [#160976](https://github.com/rust-lang/rust/pull/160976).
- Marked as triaged.

Rollup of 23 pull requests [#161075](https://github.com/rust-lang/rust/pull/161075) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=93c9086fdd5b80d286480a19ac047746ecc5fa1f&end=059bf4a660ddea5bd8302ecdd4f7e40dd7a04313&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.5%]   | 19    |
| Regressions (secondary)  | 0.8%  | [0.0%, 1.7%]   | 51    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 2     |
| Improvements (secondary) | -0.8% | [-1.6%, -0.6%] | 6     |
| All  (primary)                 | 0.5%  | [-0.2%, 1.5%]  | 21    |

- Regression caused by [#160288](https://github.com/rust-lang/rust/pull/160288).
- Perf is partially recovered in [#161200](https://github.com/rust-lang/rust/pull/161200).
- Already marked as triaged.

stop using fully_perform_locally with the next solver, it's worse (perf fix for unic-ucd) [#160982](https://github.com/rust-lang/rust/pull/160982) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=059bf4a660ddea5bd8302ecdd4f7e40dd7a04313&end=a9066b3a6e6a0956706c77c49f24a8d258c5ed3b&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 2.0%  | [1.4%, 3.1%]    | 3     |
| Improvements (primary)   | -     | -               | 0     |
| Improvements (secondary) | -2.2% | [-11.8%, -0.2%] | 20    |
| All  (primary)                 | -     | -               | 0     |

- Only next solver changes, more wins than regressions.
- Marked as triaged.

Avoid allocations when canonicalizing [#161077](https://github.com/rust-lang/rust/pull/161077) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2fb4ed81d6a3131a5ba6d75fa1aeb15bc998a5f6&end=d453bdd8f092d099bc336f0bda4163f809ad18e0&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.1% | [-3.4%, -0.2%] | 25    |
| All  (primary)                 | 0.1%  | [0.1%, 0.1%]   | 2     |

- Several nice wins for the next trait solver, and only one tiny regression on `libc`.
- Marked as triaged.

Rollup of 5 pull requests [#161134](https://github.com/rust-lang/rust/pull/161134) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b4116af55fbe359273e2af9e5846a334606d9d6d&end=c9b7f178899788fac53d942b82cf97665ee59aaa&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.5%  | [1.5%, 1.5%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 3     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.6%  | [-0.2%, 1.5%]  | 2     |

- The `image` blip is noise, otherwise essentially no changes.
- Marked as triaged.

Single-byte ASCII searcher for StrSearcherImpl(pattern.rs) [#160408](https://github.com/rust-lang/rust/pull/160408) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6d656b1efca82491a110b476ac9bbe712628ccb6&end=e702ecae8a3e3756e8a499f8592be1e3efac0e8f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -1.0% | [-1.6%, -0.4%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.6% | [-1.6%, 0.2%]  | 3     |

- The `image` blip looks like noise spike returning back, but in general there were almost no significant changes on icounts.
- Marked as triaged.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add post-mono MIR optimizations" [rust#156858](https://github.com/rust-lang/rust/pull/156858) (last review activity: 2 months ago)
  - PR author is a bit stuck, can anyone with MIR expertise help?
- "Codegen Overloaded LLVM intrinsics based on their name" [rust#157145](https://github.com/rust-lang/rust/pull/157145) (last review activity: 2 months ago)
  - left a ping to LLM folks
- "Track items behind `cfg_select` in the same way we do for `cfg`" [rust#157218](https://github.com/rust-lang/rust/pull/157218) (last review activity: 2 months ago)
  - cc @**Jana Dönszelmann** (IIUC)
- "Deny partial `-Z stack-protector` by default in all editions" [rust#157941](https://github.com/rust-lang/rust/pull/157941) (last review activity: 2 months ago)
  - Does this need to go through some decisional process? MCP or lang-experiment?- TODO

Next week we will skip the meeting
