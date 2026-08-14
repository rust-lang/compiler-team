---
tags: weekly, rustc
type: docs
note_id: 9jkpfxXITmaaOELe41y_Cw
---

# T-compiler Meeting Agenda 2026-07-23

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "MCP: Add -Zasync-panic for binary size" [compiler-team#1016](https://github.com/rust-lang/compiler-team/issues/1016) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Add.20-Zasync-panic.20for.20binary.20size.20compiler-team.231016/with/611239381))
  - "Wasm proc macro support" [compiler-team#1017](https://github.com/rust-lang/compiler-team/issues/1017) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Wasm.20proc.20macro.20support.20compiler-team.231017/with/611556767))
  - "Encode OpenBSD `-current` version in targets' `target_env`" [compiler-team#1018](https://github.com/rust-lang/compiler-team/issues/1018) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Encode.20OpenBSD.20.60-current.60.20version.20in.20tar.E2.80.A6.20compiler-team.231018/with/611628084))
  - "Implement a naming convention for lint/diagnostic-only `rustc_` attrs" [compiler-team#1021](https://github.com/rust-lang/compiler-team/issues/1021) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Implement.20a.20naming.20convention.20for.20lint.2Fd.E2.80.A6.20compiler-team.231021/with/612199410))
  - "Promote riscv64a23-unknown-linux-gnu to Tier 2 with host tools" [compiler-team#1022](https://github.com/rust-lang/compiler-team/issues/1022) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64a23-unknown-linux-gnu.20to.20.E2.80.A6.20compiler-team.231022/with/612286219))
  - "Parallel and scoped fat LTO" [compiler-team#1023](https://github.com/rust-lang/compiler-team/issues/1023) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parallel.20and.20scoped.20fat.20LTO.20compiler-team.231023/with/612325197))

- Old MCPs (not seconded, take a look. Traked in [HackMD doc](https://hackmd.io/n53PZVXnSxSrvEcp1zrohA))
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 9 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 12 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 49 days ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 5 months ago)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 8 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 4 months ago)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 5 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 5 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler)) (last review activity: about 41 days ago)
  - "@moelwintun api" [compiler-team#1000](https://github.com/rust-lang/compiler-team/issues/1000) (last review activity: about 42 days ago)
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002)) (last review activity: about 15 days ago)
    - concern: [question-boolean-valued-counters](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4807853132)
    - concern: [state-of-the-impl](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4905511221)
  - "Add testing for lint machinery at runtime" [compiler-team#1004](https://github.com/rust-lang/compiler-team/issues/1004) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20testing.20for.20lint.20machinery.20at.20runtime.20compiler-team.231004/with/605447442)) (last review activity: about 27 days ago)
  - "Move `Layout` and `TyAndLayout` to `rustc_type_ir`" [compiler-team#1008](https://github.com/rust-lang/compiler-team/issues/1008) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20.60Layout.60.20and.20.60TyAndLayout.60.20to.20.60rust.E2.80.A6.20compiler-team.231008/with/607237809)) (last review activity: about 20 days ago)
    - concern: [type_ir-is-a-pain](https://github.com/rust-lang/compiler-team/issues/1008#issuecomment-4837039344)
  - "More strongly point people to link to Tracking Issues in the PR template" [compiler-team#1009](https://github.com/rust-lang/compiler-team/issues/1009) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/More.20strongly.20point.20people.20to.20link.20to.20Tr.E2.80.A6.20compiler-team.231009/with/608085127)) (last review activity: about 13 days ago)
  - "Add -Z stack-protector-guard" [compiler-team#1013](https://github.com/rust-lang/compiler-team/issues/1013) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20stack-protector-guard.20compiler-team.231013/with/609661756)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `wasm32-wasip3` to Tier 2 (compiler-team#1001)](https://github.com/rust-lang/compiler-team/issues/1001#issuecomment-4694741738)
    - @_**|116266** @_**|119031** @_**|370197**
    - no pending concerns
  - merge: [Drop tier 2 `i686-pc-windows-gnu` host tools (compiler-team#1020)](https://github.com/rust-lang/compiler-team/issues/1020#issuecomment-5040686618)
    - @_**|116266** @_**|124288** @_**|125250** @_**|119031** @_**|116122** @_**|370197** @_**|343125**
    - no pending concerns
  - merge: [WF checks on closure arguments and improved type-test promotion. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|124288** @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [Stabilize `-Zprofile-sample-use` (rust#155942)](https://github.com/rust-lang/rust/pull/155942#issuecomment-4603443003)
    - @_**|116266** @_**|125250** @_**|119031** @_**|370197** @_**|343125**
    - no pending concerns
  - merge: [Stabilize `optimize` attribute (rust#157273)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4691981605)
    - @_**|116266** @_**|116009** @_**|125270** @_**|370197** @_**|343125**
    - concerns: [should-apply-to-closures (by tmandry)](https://github.com/rust-lang/rust/pull/157273#issuecomment-4849404699)
  - merge: [Ensure inferred let pattern types are well-formed (rust#157841)](https://github.com/rust-lang/rust/pull/157841#issuecomment-4831652944)
    - @_**|116266** @_**|124288** @_**|326176** @_**|232957**
    - no pending concerns
  - merge: [Shallow resolve ty and const vars to their root vars, attempt 2 (rust#158447)](https://github.com/rust-lang/rust/pull/158447#issuecomment-4990806022)
    - @_**|116266** @_**|124288** @_**|326176** @_**|232957**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980))
  - "Add `target_feature_available_at_call_site`" [compiler-team#1010](https://github.com/rust-lang/compiler-team/issues/1010) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_feature_available_at_call_si.E2.80.A6.20compiler-team.231010/with/608364780))
    - concern: [debugging-the-llvmir](https://github.com/rust-lang/compiler-team/issues/1010#issuecomment-4897007445)
  - "Let the OS handle stack growth" [compiler-team#1011](https://github.com/rust-lang/compiler-team/issues/1011) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Let.20the.20OS.20handle.20stack.20growth.20compiler-team.231011/with/608661022))
  - "Enable `-Znext-solver` on nightly by default for testing" [compiler-team#1014](https://github.com/rust-lang/compiler-team/issues/1014) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60-Znext-solver.60.20on.20nightly.20by.20def.E2.80.A6.20compiler-team.231014/with/610769469))
  - "Enable `-Zpolonius=next` on nightly" [compiler-team#1015](https://github.com/rust-lang/compiler-team/issues/1015) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60-Zpolonius.3Dnext.60.20on.20nightly.20compiler-team.231015/with/610827625))
  - "Emit `note` when calling `rustc` without specifying an edition" [compiler-team#1019](https://github.com/rust-lang/compiler-team/issues/1019) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20.60note.60.20when.20calling.20.60rustc.60.20without.E2.80.A6.20compiler-team.231019/with/611792752))
  - "Add `raw_borrows_via_references` lint" [rust#138230](https://github.com/rust-lang/rust/pull/138230)
  - "Avoid computing layout of enums with non-int discriminants" [rust#157562](https://github.com/rust-lang/rust/pull/157562)
  - "enable `unreachable_cfg_select_predicates` lint as part of `unused` lint group" [rust#159179](https://github.com/rust-lang/rust/pull/159179)
  - "Stabilize passing 128-bit integers via vector registers with `asm!` on x86" [rust#159525](https://github.com/rust-lang/rust/pull/159525)
  - "Split non-local `semicolon_in_expressions_from_macros` into a separate lint" [rust#159700](https://github.com/rust-lang/rust/pull/159700)

- Accepted MCPs
  - "Stabilizing the state of the debuginfo test suite" [compiler-team#1012](https://github.com/rust-lang/compiler-team/issues/1012) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilizing.20the.20state.20of.20the.20debuginfo.20t.E2.80.A6.20compiler-team.231012/with/609486931))

- Finalized FCPs (disposition merge)
  - [T-types] "Infer all anonymous lifetimes in assoc consts as `'static`" [rust#156508](https://github.com/rust-lang/rust/pull/156508)
  - [T-compiler] "enable eager `param_env` norm in new solver" [rust#156976](https://github.com/rust-lang/rust/pull/156976)
  - [T-types] "consider subtyping when checking if an infer var is sized" [rust#157820](https://github.com/rust-lang/rust/pull/157820)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix string indexing in diagnostic format strings" [rust#159470](https://github.com/rust-lang/rust/pull/159470)
  - Authored by mejrs
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23159470.3A.20beta-nominated/near/611378760), approved
- :beta: "Resolver: Record at least 1 ambiguous trait if main decl is not a trait." [rust#159599](https://github.com/rust-lang/rust/pull/159599)
  - Authored by LorrensP-2158466
  - Addresses #159476 (beta crater run regression, P-high)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23159599.3A.20beta-nominated/near/611670808), do we want to backport?
<!--
@**triagebot** backport accept beta 159599
@**triagebot** backport decline beta 159599
-->
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "library: core: document layout guarantee of `TypeId`" [rust#148265](https://github.com/rust-lang/rust/pull/148265)
- "Stabilize `-Zprofile-sample-use`" [rust#155942](https://github.com/rust-lang/rust/pull/155942)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [65 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [50 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 4 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 32 P-high, 100 P-medium, 31 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "dist-i686-msvc hang on lint-docs" [rust#158378](https://github.com/rust-lang/rust/issues/158378)
  - Demote Tier 2 > 3 discussed [on Zulip MCP compiler-team#1020](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Drop.20tier.202.20.60i686-pc-windows-gnu.60.20host.20t.E2.80.A6.20compiler-team.231020/near/611912720)
- "Miscompilation with FFI `bool` return type on AArch64" [rust#159244](https://github.com/rust-lang/rust/issues/159244)
  - Should be fixed by #159317 (being reviewed)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "1.98 beta regression: "queries overflow the depth limit!"" [rust#159427](https://github.com/rust-lang/rust/issues/159427)
  - Was bisected, needs patching
- "1.98 beta regression due to name collision with `splat`" [rust#159428](https://github.com/rust-lang/rust/issues/159428)
  - See following section of the agenda "Discussions and FYIs"
- "1.98 beta regression due to name collision with `unroll`" [rust#159429](https://github.com/rust-lang/rust/issues/159429)
  - Again a name collision with an unstable attribute, see "Discussions and FYIs"
- "1.98 beta rustdoc crater regression: "no method named ... found"" [rust#159476](https://github.com/rust-lang/rust/issues/159476)
  - Fixed by #159599

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-07-21 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

The two most notable changes this week were [#159115](https://github.com/rust-lang/rust/pull/159115),
which resulted in pretty nice instruction count wins for full incremental builds on several benchmarks,
and [#159091](https://github.com/rust-lang/rust/pull/159091), which enabled PGO for rustdoc, which
makes it ~3-4% faster across the board.

There were two large rollups with tiny performance regressions, which made it difficult to find
the offending PRs.

Triage done by **@Kobzol**.
Revision range: [5503df87..d527bc9b](https://perf.rust-lang.org/?start=5503df87342a73d0c29126a7e08dc9c1255c46ad&end=d527bc9bfa297ca7fd7f5ae93781eeec42073170&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.0%]   | 40    |
| Regressions (secondary)  | 0.7%  | [0.2%, 4.6%]   | 69    |
| Improvements (primary)   | -2.0% | [-6.2%, -0.2%] | 136   |
| Improvements (secondary) | -2.6% | [-8.4%, -0.2%] | 119   |
| All  (primary)                 | -1.4% | [-6.2%, 1.0%]  | 176   |


2 Regressions, 3 Improvements, 6 Mixed; 4 of them in rollups
34 artifact comparisons made in total

#### Regressions

Rollup of 13 pull requests [#159246](https://github.com/rust-lang/rust/pull/159246) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=225e91c03da22cd4b9792b83c1cfc97967101614&end=daf2e5e18b3abc4311d9da3d96fd64138f43d508&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 20    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.6% | [-0.6%, -0.6%] | 1     |
| All  (primary)                 | 0.3%  | [0.3%, 0.3%]   | 3     |

- The regressions are tiny, but across the board.
- Started several performance runs.
- Not marking as triaged yet.

Shrink `ast::Expr64` [#158720](https://github.com/rust-lang/rust/pull/158720) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=38a0576951fb5f7209c892b030f40ac166ae86b4&end=470556c8c1c21a736c90deea5c70d093ffa4e762&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.3%, 0.6%] | 3     |
| Regressions (secondary)  | 0.6% | [0.3%, 1.3%] | 25    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.3%, 0.6%] | 3     |

- This change resulted in instruction count regressions, but cycle count and wall-time wins.
- Already marked as triaged.

#### Improvements

- Rollup of 3 pull requests [#159367](https://github.com/rust-lang/rust/pull/159367) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ab4bbeb07dc7dc2d30e9f83d3e0326df981e0ee2&end=d62fb1c8a007f6967376a52da8315ae51b64a70c&stat=instructions:u)
- Overhaul `CfgTrace`/`CfgAttrTrace` handling [#159266](https://github.com/rust-lang/rust/pull/159266) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4a9d5368df6450bbd2fc8dde4508c3e5d83bb19d&end=656ccbe796ff98def9b555c118e1620c5389e3b2&stat=instructions:u)
- Get rid of `StructurallyRelateAliases` [#158731](https://github.com/rust-lang/rust/pull/158731) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=14ead7d3d509f50efe9afb84673e65885dfd4d07&end=9e71b3bc704eea68d39bd0f6a46703c7d22f5d3b&stat=instructions:u)

#### Mixed

Eagerly check for ambiguity in macro parsing [#158976](https://github.com/rust-lang/rust/pull/158976) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=da80ed0708a09dc096c184345d6eb42cbcd50a1e&end=2f5253f0087ee60faab7dbe7c9002163c605ac7e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 10    |
| Improvements (primary)   | -0.9% | [-2.3%, -0.3%] | 29    |
| Improvements (secondary) | -0.6% | [-0.9%, -0.4%] | 5     |
| All  (primary)                 | -0.9% | [-2.3%, -0.3%] | 29    |

- More wins than regressions.
- Already marked as triaged.

Rollup of 22 pull requests [#159293](https://github.com/rust-lang/rust/pull/159293) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2f5253f0087ee60faab7dbe7c9002163c605ac7e&end=38a0576951fb5f7209c892b030f40ac166ae86b4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.2%, 0.8%]   | 13    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 2     |
| All  (primary)                 | -     | -              | 0     |

- There seems to be a very tiny regression across the board, which is a bit larger (but still small) on some secondary benchmarks.
- The `wg-grammar` tiny regression was likely caused by [#158993](https://github.com/rust-lang/rust/pull/158993).
- Marked as triaged.

Rollup of 2 pull requests [#159350](https://github.com/rust-lang/rust/pull/159350) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2118366bbfe2e57ec0e8417ea270833e9f013640&end=d0babd8b6b05ef9bb65d42f928cef4129d64cf65&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.5%]   | 7     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 26    |
| Improvements (primary)   | -0.8% | [-0.9%, -0.8%] | 4     |
| Improvements (secondary) | -2.9% | [-5.1%, -0.7%] | 2     |
| All  (primary)                 | -0.1% | [-0.9%, 0.5%]  | 11    |

- Small regression caused by standard library dependency upgrades in [#159345](https://github.com/rust-lang/rust/pull/159345).
- Already marked as triaged.

Move fast paths around to gain a bit of new-solver perf [#158249](https://github.com/rust-lang/rust/pull/158249) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d62fb1c8a007f6967376a52da8315ae51b64a70c&end=a6050b7ea848e25289bf097c606e0611c58ef4f3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.2%  | [0.2%, 2.2%]   | 11    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -5.1% | [-8.4%, -1.5%] | 6     |
| All  (primary)                 | -     | -              | 0     |

- Only affects the next trait solver. Some benchmarks regressed, but there are larger wins.
- Marked as triaged.

Use PGO for rustdoc [#159091](https://github.com/rust-lang/rust/pull/159091) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=421875f8d2bbb9a9a47db179092a3266b87106d4&end=b6839f4d0e2bd63b960bbff8619c6fdea27d81e5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 4.5%  | [4.5%, 4.5%]   | 1     |
| Improvements (primary)   | -4.1% | [-6.3%, -1.6%] | 20    |
| Improvements (secondary) | -5.1% | [-8.1%, -2.0%] | 23    |
| All  (primary)                 | -4.1% | [-6.3%, -1.6%] | 20    |

- Many wins on `doc` benchmarks, expectedly, as this PR enabled PGO for rustdoc.
- Only one regression on a secondary benchmark.
- Marked as triaged.

perf: dep_graph: deduplicate task reads with an epoch-filtered index recorder [#159115](https://github.com/rust-lang/rust/pull/159115) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c904ba32e22c9d6fd31140b4283c5cc6c6b2fb5c&end=c7d7da3428c0e8b261e1ce1687e7228cf053cc62&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.5%]   | 11    |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 4     |
| Improvements (primary)   | -1.8% | [-6.4%, -0.3%] | 101   |
| Improvements (secondary) | -1.5% | [-4.9%, -0.1%] | 96    |
| All  (primary)                 | -1.6% | [-6.4%, 0.5%]  | 112   |

- A lot of big wins, and only a few tiny regressions.
- Marked as triaged.


## Discussions and FYIs

- Beta crater run: [1.98 beta regression: Behavior change involving comparisons #159519](https://github.com/rust-lang/rust/issues/159519)
  - Affects `spdx` due to `spdx` having `PartialOrd` <-> `Ord` contract violated (see [comment](https://github.com/rust-lang/rust/issues/159519#issuecomment-5011861606))
    > In particular: `PartialOrd` only compares the `id` fields, where `Ord` compares the `id` and `or_later` fields.
  - Technically not-a-bug, filed issue with `spdx` (https://github.com/EmbarkStudios/spdx/issues/95). However the crate does have fairly widespread usage.

- Beta crater run: two instances of introducing unstable {`#[splat]`, `#[unroll]`} built-in attributes in presence of user macro re-exports of the same name causing breakage in stable code due to new nameres ambiguity (#134963)
  - `#[splat]`: #159428; crater impact assessment minimal ([comment](https://github.com/rust-lang/rust/issues/159428#issuecomment-5002781279))
  - `#[unroll]`: #159429; crater impact assessment minimal ([comment](https://github.com/rust-lang/rust/issues/159429#issuecomment-5002758972))
  - Decision: accept breakage or beta-backport a rename mitigation {`#[splat]` -> `#[rustc_splat]`, `#[unroll]` -> `#[rustc_unroll]`} since `rust*`-prefix attributes are reserved names.
  - Factors to consider:
    - Unstable feature breaking stable code.
    - Precedent: `#[align]` (#143834) and https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202025-07-17/near/529289663, we decided to beta-backport a `#[rustc_$name]` rename for the `#[align]` case.

- "LLD crash on mingw related to TLS destruction"
  - FYI discussion on Zulip: https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/LLD.20crash.20on.20mingw.20related.20to.20TLS.20destruction/near/611316681

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

Will resume next week.

Next meeting's agenda draft: [hackmd link](https://hackmd.io/krFREVlUR9aH5LDFmZRzcA)
