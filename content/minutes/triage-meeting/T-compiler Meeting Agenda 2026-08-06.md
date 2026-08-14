---
tags: weekly, rustc
type: docs
note_id: yHABnOHiTWWGe-QL4GvoNA
---

# T-compiler Meeting Agenda 2026-08-06

## Announcements

- Reschedule P-high review triage (2nd run)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours <time:2026-07-13T16:00:00+02:00> and <time:2026-07-16T16:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add `codeview_annotation` intrinsic" [compiler-team#1026](https://github.com/rust-lang/compiler-team/issues/1026) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60codeview_annotation.60.20intrinsic.20compiler-team.231026/with/613872149))
  - "Introduce new -C flag for cross-target control of stack walking features" [compiler-team#1027](https://github.com/rust-lang/compiler-team/issues/1027) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20new.20-C.20flag.20for.20cross-target.20c.E2.80.A6.20compiler-team.231027/with/614727144))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time

- Old MCPs (not seconded, take a look)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler)) (last review activity: about 55 days ago)
  - "Add testing for lint machinery at runtime" [compiler-team#1004](https://github.com/rust-lang/compiler-team/issues/1004) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20testing.20for.20lint.20machinery.20at.20runtime.20compiler-team.231004/with/605447442)) (last review activity: about 41 days ago)
  - "More strongly point people to link to Tracking Issues in the PR template" [compiler-team#1009](https://github.com/rust-lang/compiler-team/issues/1009) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/More.20strongly.20point.20people.20to.20link.20to.20Tr.E2.80.A6.20compiler-team.231009/with/608085127)) (last review activity: about 27 days ago)
  - "Add -Z stack-protector-guard" [compiler-team#1013](https://github.com/rust-lang/compiler-team/issues/1013) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20stack-protector-guard.20compiler-team.231013/with/609661756)) (last review activity: about 8 days ago)
  - "MCP: Add -Zasync-panic for binary size" [compiler-team#1016](https://github.com/rust-lang/compiler-team/issues/1016) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Add.20-Zasync-panic.20for.20binary.20size.20compiler-team.231016/with/611239381)) (last review activity: about 13 days ago)

- Pending FCP requests (check your boxes!)
  - merge: [Drop tier 2 `i686-pc-windows-gnu` host tools (compiler-team#1020)](https://github.com/rust-lang/compiler-team/issues/1020#issuecomment-5040686618)
    - @_**|124288** @_**|125250** @_**|119031** @_**|116122** @_**|370197** @_**|343125**
    - no pending concerns
  - merge: [Promote riscv64a23-unknown-linux-gnu to Tier 2 with host tools (compiler-team#1022)](https://github.com/rust-lang/compiler-team/issues/1022#issuecomment-5082632158)
    - cc: @**|124288** @**|125250** @**|116107** @**|370197** @**|343125**
    - no pending concerns
  - merge: [WF checks on closure arguments and improved type-test promotion. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|124288** @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
    - [t-types nominated](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
  - merge: [Error on projection of dyn noncompat type in old trait solver (rust#154992)](https://github.com/rust-lang/rust/pull/154992#issuecomment-5175423454)
    - @_**|116266** @_**|326176** @_**|232957**
    - no pending concerns
  - merge: [Stabilize `optimize` attribute (rust#157273)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4691981605)
    - @_**|116009** @_**|125270** @_**|370197** @_**|343125**
    - concerns: [should-apply-to-closures (by tmandry)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4849404699) [make-optimize-none-be-c-opt-level-0 (by scottmcm)](https://github.com/rust-lang/rust/pull/157273#issuecomment-5120432771)

- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Promote `wasm32-wasip3` to Tier 2" [compiler-team#1001](https://github.com/rust-lang/compiler-team/issues/1001) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60wasm32-wasip3.60.20to.20Tier.202.20compiler-team.231001))
  - "Add `target_feature_available_at_call_site`" [compiler-team#1010](https://github.com/rust-lang/compiler-team/issues/1010) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_feature_available_at_call_si.E2.80.A6.20compiler-team.231010/with/608364780))
    - concern: [debugging-the-llvmir](https://github.com/rust-lang/compiler-team/issues/1010#issuecomment-4897007445)
  - "Encode OpenBSD `-current` version in targets' `target_env`" [compiler-team#1018](https://github.com/rust-lang/compiler-team/issues/1018) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Encode.20OpenBSD.20.60-current.60.20version.20in.20tar.E2.80.A6.20compiler-team.231018/with/611628084))
  - "Implement a naming convention for lint/diagnostic-only `rustc_` attrs" [compiler-team#1021](https://github.com/rust-lang/compiler-team/issues/1021) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Implement.20a.20naming.20convention.20for.20lint.2Fd.E2.80.A6.20compiler-team.231021/with/612199410))
  - "Stabilize `-Zprofile-sample-use`" [rust#155942](https://github.com/rust-lang/rust/pull/155942)
  - "lint against repeated repr attributes" [rust#157036](https://github.com/rust-lang/rust/pull/157036)
  - "Ensure inferred let pattern types are well-formed" [rust#157841](https://github.com/rust-lang/rust/pull/157841)
  - "Shallow resolve ty and const vars to their root vars, attempt 2" [rust#158447](https://github.com/rust-lang/rust/pull/158447)
  - "stabilize `c_variadic_naked_functions`" [rust#159746](https://github.com/rust-lang/rust/pull/159746)

- Accepted MCPs
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980))
  - "Let the OS handle stack growth" [compiler-team#1011](https://github.com/rust-lang/compiler-team/issues/1011) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Let.20the.20OS.20handle.20stack.20growth.20compiler-team.231011/with/608661022))
  - "Wasm proc macro support" [compiler-team#1017](https://github.com/rust-lang/compiler-team/issues/1017) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Wasm.20proc.20macro.20support.20compiler-team.231017/with/611556767))
  - "Emit `note` when calling `rustc` without specifying an edition" [compiler-team#1019](https://github.com/rust-lang/compiler-team/issues/1019) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20.60note.60.20when.20calling.20.60rustc.60.20without.E2.80.A6.20compiler-team.231019/with/611792752))

- MCPs blocked on unresolved concerns (tracking [HackMD doc](hackmd.io/n53PZVXnSxSrvEcp1zrohA))
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 10 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
    - Left a comment asking about the [RFC proposal](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Vibe.20check.20for.20target.20aliases/near/543597655) and suggesting to close the MCP. Does anyone know anything about the RFC?
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 12 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
    - Author never replied. Proposal Seems dead in the water, suggesting to close
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 2 months ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916))
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - No reply from anyone. Will revisit in a month or two and maybe understand if it's abandoned
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 9 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
    - Left a ping on [Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/213817-t-lang/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms/near/546954026)) to check progress
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 4 months ago)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - left a ping, checking for updates
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 6 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
    - left a ping, suggested to close
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 5 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
    - left a ping, suggested to close
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002)) (last review activity: about 29 days ago)
    - concern: [state-of-the-impl](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4905511221)
    - concern: [question-boolean-valued-counters](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4807853132)
    - waiting on author

- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [49 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 31 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "dist-i686-msvc hang on lint-docs" [rust#158378](https://github.com/rust-lang/rust/issues/158378)
  - Discussion [on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Demoting.20.60i686-pc-windows-msvc.60.20to.20Tier.202.3F/with/609294663) about demoting the target

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "1.98 beta regression due to name collision with `splat`" [rust#159428](https://github.com/rust-lang/rust/issues/159428)
  - (fyi) Solved by renaming the attribute (#159817)
- "1.98 beta regression due to name collision with `unroll`" [rust#159429](https://github.com/rust-lang/rust/issues/159429)
  - (fyi) Solved by renaming the attribute (#160211)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-08-03 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

A lot of optimizations landed this week. Some big improvements to rustdoc in [#159854](https://github.com/rust-lang/rust/pull/159854), one big improvement in control flow graph traversal for `cranelift-codegen`, few more improvements to next-solver benchmarks and various other micro-optimizations, bringing the total to a nice round number of 10 improvements this week.

Triage done by **@panstromek**.
Revision range: [ad0c9dce..65dd30fb](https://perf.rust-lang.org/?start=ad0c9dce27a22416b65946bc0010edaf22ac6c83&end=65dd30fb9e882a7e8f0be10caca62936db2a98b8&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |      range      | count |
|:------------------------:|:-----:|:---------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.2%, 0.5%]   |  18   |
| Regressions (secondary)  | 2.1%  |  [0.1%, 16.8%]  |  64   |
|  Improvements (primary)  | -3.3% | [-39.8%, -0.2%] |  97   |
| Improvements (secondary) | -6.1% | [-39.6%, -0.1%] |  111  |
|      All  (primary)      | -2.7% | [-39.8%, 0.5%]  |  115  |


1 Regression, 5 Improvements, 11 Mixed; 6 of them in rollups
32 artifact comparisons made in total

#### Regressions

Rollup of 20 pull requests [#160190](https://github.com/rust-lang/rust/pull/160190) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=83709eedfff36840b0749ca429ac43f5479b268f&end=be3d26db984c6f96335faca1f254dc04873cb1c1&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.4%  |  [0.1%, 0.6%]  |  16   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] |   2   |
|      All  (primary)      |   -   |       -        |   0   |

Already triaged by @jhpratt: "caused by [#158693](https://github.com/rust-lang/rust/pull/158693), which is apparently needed for kernel stuff"

Looks like the depgraph size has increased on all benchmarks because the new query is called on every function. I left a comment there.
@Sa4dUs (original author) opened a PR which addresses the regression https://github.com/rust-lang/rust/pull/160454.

#### Improvements

- Skip query machinery when promoting disk-cached values [#158059](https://github.com/rust-lang/rust/pull/158059) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=09ee43b2d6055539771bee8ac30a6e56eb4db773&end=d3ea0356830dc019038110eba0bc8f790aaef2e4&stat=instructions:u)
- rustdoc: Only analyze head of self type when deciding impl inlining [#159854](https://github.com/rust-lang/rust/pull/159854) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=26ae60a9eeb20b4935be49d7a931a650fa1d2923&end=701a6513a48eac30d49110ba06187648b7553622&stat=instructions:u)
- Avoid TrustedLen specialization that optimize poorly in collect_remaining_errors [#160073](https://github.com/rust-lang/rust/pull/160073) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ce6983167791bf9418726264f8e5cc7abf73d69b&end=d3663963ca08f465d01d283a7199778902623bb9&stat=instructions:u)
- perf: Avoid a heap allocation per basic block in MoveData's location maps [#160245](https://github.com/rust-lang/rust/pull/160245) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b6a3d7965e2c5de79378a88a3f28a6f1b73fbb16&end=c47bb2f39658c00b109693df9611d7238bedf6fa&stat=instructions:u)
- [perf] defer the unconditional output resolution  [#160312](https://github.com/rust-lang/rust/pull/160312) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c3a200b704adb5f110249b68daa4ff386b36e29&end=b04d3c8c22822b7f10dab5a563b4e2afff1861c1&stat=instructions:u)

#### Mixed

Rollup of 14 pull requests [#160003](https://github.com/rust-lang/rust/pull/160003) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ad0c9dce27a22416b65946bc0010edaf22ac6c83&end=4fefe3656700e5528edddc2336667818917dfc70&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.8%  |  [0.1%, 1.3%]  |   5   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] |   4   |
|      All  (primary)      |   -   |       -        |   0   |

New solver changes are at least partially caused by https://github.com/rust-lang/rust/pull/159649. There's a pre-merge perf run, so this is accepted for a correctness fix.

Also started perf run on https://github.com/rust-lang/rust/pull/159840 (Mark tried it before but had a typo in the command). This returned no significant results.

I don't think we need to dig further into this. The rest are tiny secondary changes.

Rollup of 9 pull requests [#160047](https://github.com/rust-lang/rust/pull/160047) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bf9944f0b8006b152ef4d5f408ae75a0dde3d044&end=e7b595554e664e6bd281c8cf881093d6c71bc0e1&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.4%  |  [0.4%, 0.4%]  |   2   |
| Regressions (secondary)  | 0.3%  |  [0.1%, 0.6%]  |   8   |
|  Improvements (primary)  | -0.8% | [-0.8%, -0.8%] |   1   |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] |   1   |
|      All  (primary)      | 0.0%  | [-0.8%, 0.4%]  |   3   |

Already triaged by @jhpratt: "caused by [#159220](https://github.com/rust-lang/rust/pull/159220)"

[#159220](https://github.com/rust-lang/rust/pull/159220) fixes a miscompilation introduced by an optimization, so this is acceptable.

Avoid excessive `memcpy`s with the new solver [#160005](https://github.com/rust-lang/rust/pull/160005) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e7b595554e664e6bd281c8cf881093d6c71bc0e1&end=e19d321c06479c6fd77533582b0d5a86651f1be3&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.4%  |  [0.1%, 0.6%]  |   7   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -1.9% | [-4.9%, -0.1%] |  15   |
|      All  (primary)      |   -   |       -        |   0   |

Already triaged before merge. Improvements outweigh regressions, affects only new solver. There are also 20-40% improvements in crates outside the of the benchmark suite, see https://github.com/rust-lang/rust/pull/160005#issuecomment-5097871218.

Rollup of 21 pull requests [#160102](https://github.com/rust-lang/rust/pull/160102) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e19d321c06479c6fd77533582b0d5a86651f1be3&end=26ae60a9eeb20b4935be49d7a931a650fa1d2923&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.3%, 0.3%]  |   1   |
| Regressions (secondary)  | 0.2%  |  [0.1%, 0.3%]  |  11   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] |   3   |
|      All  (primary)      | 0.3%  |  [0.3%, 0.3%]  |   1   |

Seems to be mostly caused by https://github.com/rust-lang/rust/pull/160057.

Left a comment there, the author will look into it. It looks like there's an unexpected increase in query calls to def_kind (and therefore increase in depgraph size).

Update cargo submodule [#159857](https://github.com/rust-lang/rust/pull/159857) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a833e16546c2eb012758ddd499964fd8afee29e&end=83709eedfff36840b0749ca429ac43f5479b268f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.6%]   | 15    |
| Regressions (secondary)  | 37.3% | [0.2%, 104.0%] | 18    |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 3     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)                 | 0.3%  | [-0.3%, 0.6%]  | 18    |

Triaged by Kobzol:

"The big regression on large-workspace was expected, and comes from Cargo passing in many more -L flags to rustc, which is not optimized for something like this at the moment. In absolute wall-time numbers, it was a regression of a few milliseconds on a crate with a thousand transitive dependencies, so it shouldn't be such a big deal in practice.

#158823 should improve the performance here considerably."

Rollup of 25 pull requests [#160238](https://github.com/rust-lang/rust/pull/160238) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8ab9fdff5a91b9f2b5ed57fb0275452d9a0d0280&end=922325bb13bfea5b41454318563f2a65e83c2336&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.3%]   | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 6     |
| All  (primary)                 | -     | -              | 0     |

Looks to be mostly noise or tiny impact. Not worth more investigation. Already triaged by @JonathanBrouwer

Unify two `for_each_relevant_impl` methods [#159836](https://github.com/rust-lang/rust/pull/159836) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fc0f51f5ca44d4586b0e309181382608cd6a8441&end=64af19d44c63587455c76f484ce76261a9971e96&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]    | 4     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]    | 9     |
| Improvements (primary)   | -2.8% | [-20.6%, -0.2%] | 16    |
| Improvements (secondary) | -0.5% | [-0.8%, -0.3%]  | 7     |
| All  (primary)                 | -2.2% | [-20.6%, 0.2%]  | 20    |

Improvements outweigh regressions. The impact was measured before merge and accepted.

Flatten all -L search paths into a single list of files [#158823](https://github.com/rust-lang/rust/pull/158823) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ad3d0bc141a02cf446e384136d250a1f6950fed5&end=6c04025a8a1d2b4b25283bb56b6c6450e3d38ba7&stat=instructions:u)

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 0.2%   | [0.2%, 0.2%]    | 1     |
| Regressions (secondary)  | 0.6%   | [0.6%, 0.6%]    | 3     |
| Improvements (primary)   | -0.4%  | [-0.6%, -0.2%]  | 14    |
| Improvements (secondary) | -23.8% | [-49.2%, -0.1%] | 17    |
| All  (primary)                 | -0.3%  | [-0.6%, 0.2%]   | 15    |

Improvements greatly outweigh tiny regressions (might as well be noise but not sure).

Improve CFG traversal [#160193](https://github.com/rust-lang/rust/pull/160193) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6c04025a8a1d2b4b25283bb56b6c6450e3d38ba7&end=cb9d1b0640549f1b041aae430dc413ce93f8c204&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]    | 6     |
| Improvements (primary)   | -6.4% | [-21.7%, -0.3%] | 10    |
| Improvements (secondary) | -     | -               | 0     |
| All  (primary)                 | -6.4% | [-21.7%, -0.3%] | 10    |

`include-blob` regressions are noise.

Rollup of 12 pull requests [#160339](https://github.com/rust-lang/rust/pull/160339) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c47bb2f39658c00b109693df9611d7238bedf6fa&end=b430378746a835fd5240e2c7169795d7de0547e8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 15.8% | [14.6%, 17.3%] | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 3     |
| All  (primary)                 | -     | -              | 0     |

Already triaged by @JonathanBrouwer: "Caused by [#160012](https://github.com/rust-lang/rust/pull/160012)"

Big part of the regression will be addressed by [#160399](https://github.com/rust-lang/rust/pull/160399).

Implement `Debug` for C-like enums with a concatenated string [#155452](https://github.com/rust-lang/rust/pull/155452) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=11177f2235f0c842b00f82c558ad9480c0c3a895&end=22057b88b091743bc0fd8d592a9264f0a6951403&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] | 13    |
| All  (primary)                 | 0.7%  | [0.7%, 0.7%]   | 1     |

`cranelift-codegen` regression is probably unrelated because it wasn't present in the pre-merge results (it was actually an improvement there). Looks like a codegen unit scheduling change, based on the graph.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- Skipping this week

Next meetings' agenda draft: [hackmd link](https://hackmd.io/rWWyD4rfTXigyJrlKyxIeQ)
