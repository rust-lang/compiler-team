---
tags: weekly, rustc
type: docs
note_id: krFREVlUR9aH5LDFmZRzcA
---

# T-compiler Meeting Agenda 2026-07-30

## Announcements

- P-high review triage (2nd run) tomorrow <time:2026-07-31T16:00:00+02:00>
  - Issue list at https://hackmd.io/CQmx-X5iTO6nf23Ng5uHtA (will be updated)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.

- Old MCPs (not seconded, take a look, [tracking HackMD](https://hackmd.io/n53PZVXnSxSrvEcp1zrohA))
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler)) (last review activity: about 48 days ago)
  - "@moelwintun api" [compiler-team#1000](https://github.com/rust-lang/compiler-team/issues/1000) (last review activity: about 49 days ago)
  - "Add testing for lint machinery at runtime" [compiler-team#1004](https://github.com/rust-lang/compiler-team/issues/1004) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20testing.20for.20lint.20machinery.20at.20runtime.20compiler-team.231004/with/605447442)) (last review activity: about 34 days ago)
  - "More strongly point people to link to Tracking Issues in the PR template" [compiler-team#1009](https://github.com/rust-lang/compiler-team/issues/1009) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/More.20strongly.20point.20people.20to.20link.20to.20Tr.E2.80.A6.20compiler-team.231009/with/608085127)) (last review activity: about 20 days ago)
  - "Add -Z stack-protector-guard" [compiler-team#1013](https://github.com/rust-lang/compiler-team/issues/1013) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20stack-protector-guard.20compiler-team.231013/with/609661756)) (last review activity: about 1 days ago)
  - "MCP: Add -Zasync-panic for binary size" [compiler-team#1016](https://github.com/rust-lang/compiler-team/issues/1016) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Add.20-Zasync-panic.20for.20binary.20size.20compiler-team.231016/with/611239381)) (last review activity: about 6 days ago)
  - "Encode OpenBSD `-current` version in targets' `target_env`" [compiler-team#1018](https://github.com/rust-lang/compiler-team/issues/1018) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Encode.20OpenBSD.20.60-current.60.20version.20in.20tar.E2.80.A6.20compiler-team.231018/with/611628084)) (last review activity: about 6 days ago)
  - "Implement a naming convention for lint/diagnostic-only `rustc_` attrs" [compiler-team#1021](https://github.com/rust-lang/compiler-team/issues/1021) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Implement.20a.20naming.20convention.20for.20lint.2Fd.E2.80.A6.20compiler-team.231021/with/612199410)) (last review activity: about 6 days ago)

- Pending FCP requests (check your boxes!)
  - merge: [Drop tier 2 `i686-pc-windows-gnu` host tools (compiler-team#1020)](https://github.com/rust-lang/compiler-team/issues/1020#issuecomment-5040686618)
    - @_**|124288** @_**|125250** @_**|119031** @_**|116122** @_**|370197** @_**|343125**
    - no pending concerns
  - merge: [Promote riscv64a23-unknown-linux-gnu to Tier 2 with host tools (compiler-team#1022)](https://github.com/rust-lang/compiler-team/issues/1022#issuecomment-5082632158)
    - @_**|124288** @_**|125250** @_**|116107** @_**|370197** @_**|343125**
    - no pending concerns
  - merge: [WF checks on closure arguments and improved type-test promotion. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|124288** @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [Stabilize `-Zprofile-sample-use` (rust#155942)](https://github.com/rust-lang/rust/pull/155942#issuecomment-4603443003)
    - reminder cc: @**|119031** @**|370197** @**|343125**
    - no pending concerns

- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980))
  - "Promote `wasm32-wasip3` to Tier 2" [compiler-team#1001](https://github.com/rust-lang/compiler-team/issues/1001) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60wasm32-wasip3.60.20to.20Tier.202.20compiler-team.231001))
  - "Add `target_feature_available_at_call_site`" [compiler-team#1010](https://github.com/rust-lang/compiler-team/issues/1010) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_feature_available_at_call_si.E2.80.A6.20compiler-team.231010/with/608364780))
    - concern: [debugging-the-llvmir](https://github.com/rust-lang/compiler-team/issues/1010#issuecomment-4897007445)
  - "Let the OS handle stack growth" [compiler-team#1011](https://github.com/rust-lang/compiler-team/issues/1011) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Let.20the.20OS.20handle.20stack.20growth.20compiler-team.231011/with/608661022))
  - "Wasm proc macro support" [compiler-team#1017](https://github.com/rust-lang/compiler-team/issues/1017) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Wasm.20proc.20macro.20support.20compiler-team.231017/with/611556767))
  - "Emit `note` when calling `rustc` without specifying an edition" [compiler-team#1019](https://github.com/rust-lang/compiler-team/issues/1019) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20.60note.60.20when.20calling.20.60rustc.60.20without.E2.80.A6.20compiler-team.231019/with/611792752))
  - "lint against repeated repr attributes" [rust#157036](https://github.com/rust-lang/rust/pull/157036)
  - "Ensure inferred let pattern types are well-formed" [rust#157841](https://github.com/rust-lang/rust/pull/157841)
  - "Shallow resolve ty and const vars to their root vars, attempt 2" [rust#158447](https://github.com/rust-lang/rust/pull/158447)
  - "Stabilize passing 128-bit integers via vector registers with `asm!` on x86" [rust#159525](https://github.com/rust-lang/rust/pull/159525)
  - "stabilize `c_variadic_naked_functions`" [rust#159746](https://github.com/rust-lang/rust/pull/159746)

- Accepted MCPs
  - "Enable `-Znext-solver` on nightly by default for testing" [compiler-team#1014](https://github.com/rust-lang/compiler-team/issues/1014) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60-Znext-solver.60.20on.20nightly.20by.20def.E2.80.A6.20compiler-team.231014/with/610769469))
  - "Enable `-Zpolonius=next` on nightly" [compiler-team#1015](https://github.com/rust-lang/compiler-team/issues/1015) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60-Zpolonius.3Dnext.60.20on.20nightly.20compiler-team.231015/with/610827625))

- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 9 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 12 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 56 days ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 5 months ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 8 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 4 months ago)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 6 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 5 months ago)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002)) (last review activity: about 22 days ago)
    - concern: [question-boolean-valued-counters](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4807853132)
    - concern: [state-of-the-impl](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4905511221)
  - "Move `Layout` and `TyAndLayout` to `rustc_type_ir`" [compiler-team#1008](https://github.com/rust-lang/compiler-team/issues/1008) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20.60Layout.60.20and.20.60TyAndLayout.60.20to.20.60rust.E2.80.A6.20compiler-team.231008/with/607237809)) (last review activity: about 27 days ago)
    - concern: [type_ir-is-a-pain](https://github.com/rust-lang/compiler-team/issues/1008#issuecomment-4837039344)

- Finalized FCPs (disposition merge)
  - None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Rename splat to avoid stable name collisions" [rust#159817](https://github.com/rust-lang/rust/pull/159817)
  - Authored by teor2345
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23159817.3A.20beta-nominated/with/613455663), unanimously approved
- :beta: "Rename `#[unroll]` => `#[rustc_unroll]` to mitigate names ambiguity" [rust#160211](https://github.com/rust-lang/rust/pull/160211)
  - Authored by Jieyou
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23160211.3A.20beta-nominated/near/613627477) (just opened)
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [64 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [50 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 32 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "dist-i686-msvc hang on lint-docs" [rust#158378](https://github.com/rust-lang/rust/issues/158378)
  - (being worked on, nothing to do)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### (new) Stable regressions

Just a quick check:

- [`-Cpasses` transformations are missing from embedded bitcode with one codegen unit · Issue #159533](https://github.com/rust-lang/rust/issues/159533)
  - Any opinion or context about this issue?
- [ICE: could not replace AliasTerm · Issue #159462 · rust-lang/rust](https://github.com/rust-lang/rust/issues/159462)
  - a recent regression
- [Large arm64 macOS debug binaries fail to exec since the v0 mangling default · Issue #159426 · rust-lang/rust](https://github.com/rust-lang/rust/issues/159426)
  - Discussed on [Zulip](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/.23159426.20Large.20arm64.20macOS.20dbg.20bins.20fail.20since.20v0.20mangling/near/613232387), we suggested mitigations but not a lot we can do. So maybe I'll leave this open and remove I-priority?

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "1.98 beta regression: "queries overflow the depth limit!"" [rust#159427](https://github.com/rust-lang/rust/issues/159427)
  - Discussion [on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/245100-t-compiler.2Fprioritization.2Falerts/topic/.23159427.201.2E98.20beta.20regression.3A.20.22queries.20overflow.20the.20depth.20l.E2.80.A6/near/611229677)
  - In some similar cases (IIUC) of overflow error, we fixed the crates as per the suggestion ("`consider increasing the recursion limit`"), unsure if this is the case here. Opinions? What should we do? (cc @**cjgillot** @**oli**)
- "1.98 beta regression due to name collision with `splat`" [rust#159428](https://github.com/rust-lang/rust/issues/159428)
  - Solved by renaming the attribute (#159817)
- "1.98 beta regression due to name collision with `unroll`" [rust#159429](https://github.com/rust-lang/rust/issues/159429)
  - Same reasoning, proposed fix #160211 (authored by @**Jieyou Xu**, thanks!)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-07-27 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

Several large improvements landed in the past week:

* rustdoc is on average roughly 16% faster across all of our doc benchmarks:
  * [rustdoc: Only inline impls for local primitives](https://github.com/rust-lang/rust/pull/159721), 7% faster doc builds
  * [rustdoc: Only synthesize auto/blanket impls for documented items](https://github.com/rust-lang/rust/pull/159779), another 7% faster doc builds
  * [rustdoc: Only build extern trait impls if needed](https://github.com/rust-lang/rust/pull/159623), another 10% faster doc builds
* [Early removal of no-op panic handling in debug builds](https://github.com/rust-lang/rust/pull/143208). This speeds up Cargo by ~4% in cycle count.
* [Optimize escape_string_symbol()](https://github.com/rust-lang/rust/pull/159609) sped
  up large `include_bytes!`/`include_str!` through changes to string escaping, avoiding a regression in upcoming LLVM 23 upgrade.

Great to see so many improvements!

Triage done by **@simulacrum**.
Revision range: [d527bc9b..ad0c9dce](https://perf.rust-lang.org/?start=d527bc9bfa297ca7fd7f5ae93781eeec42073170&end=ad0c9dce27a22416b65946bc0010edaf22ac6c83&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 16.2% | [16.2%, 16.2%]  | 1     |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.6%]    | 17    |
| Improvements (primary)   | -3.3% | [-50.5%, -0.1%] | 143   |
| Improvements (secondary) | -8.8% | [-50.4%, -0.1%] | 137   |
| All  (primary)                 | -3.1% | [-50.5%, 16.2%] | 144   |


2 Regressions, 7 Improvements, 5 Mixed; 5 of them in rollups
30 artifact comparisons made in total

#### Regressions

Rollup of 20 pull requests [#159802](https://github.com/rust-lang/rust/pull/159802) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=76c35a14a45897a366c11657ecbbe9ec4153ad17&end=1498f9968f75e8e5ded6892b9c97bfe66b5a966f&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.3%] | 20    |
| Regressions (secondary)  | 0.4% | [0.2%, 0.6%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.3%] | 20    |

Root caused to [#150161](https://github.com/rust-lang/rust/pull/150161), which
increases metadata / incremental dep graph and so causes regressions across the
board. `@panstromek` asked for followup from the author on whether that can be mitigated.

Rollup of 28 pull requests [#159966](https://github.com/rust-lang/rust/pull/159966) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dc3f85158a955a87a6e4363af1fbe9cf2d063cce&end=dfbea5bc945a9d7ff017d3d4bfbd1af9295fe5b8&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 6     |
| Regressions (secondary)  | 0.4% | [0.2%, 0.6%] | 22    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.3%, 0.3%] | 6     |

Queued up builds on a few of the contained PRs which should hopefully narrow
down root cause.

#### Improvements

- Use PGO for Cargo [#159149](https://github.com/rust-lang/rust/pull/159149) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=87e5904f5eb6398af6b22eac2802c78934260c48&end=5a8cd237d4fad99d862aed51fab8cb5345c97013&stat=instructions:u)
- Resolve: more preperation work for parallelizing the import resolution loop [#159440](https://github.com/rust-lang/rust/pull/159440) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cde3f8aee5a30928872e2438e3f18238a3fa306c&end=f65b272fc92b1e7527dea4a224430a249ab25c2d&stat=instructions:u)
- Optimize escape_string_symbol() [#159609](https://github.com/rust-lang/rust/pull/159609) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1af98b7cdf86932b76182a387f52f1be6f0c1be0&end=b803f36e0748c40af88b786bd23499cb21fb97ad&stat=instructions:u)

This is being further iterated on in
[#159916](https://github.com/rust-lang/rust/pull/159916) to bring these
improvements to users without needing replacement of
`escape_default().to_string()` with a hand-coded version; that PR will bring
further improvements to `include-blob`.

- Apply RemoveNoopLandingPads post-monomorphization [#143208](https://github.com/rust-lang/rust/pull/143208) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ae3bbe78ec2a9bb57a03f10ad6ee0388e12bcefb&end=6f72b5dd5f82226a2773d40efea7bab941892a73&stat=instructions:u)
- rustdoc: Only inline impls for local primitives [#159721](https://github.com/rust-lang/rust/pull/159721) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=165cce8d820b229af8f6a8226cf0b910b57600ff&end=2d8fa67781953811835f7ae45f670afbb7f44285&stat=instructions:u)
- Try to make FieldDef smaller [#157986](https://github.com/rust-lang/rust/pull/157986) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2d8fa67781953811835f7ae45f670afbb7f44285&end=89c61a7545da48b06116675b888398d02a4064c7&stat=instructions:u)
- rustdoc: Only synthesize auto/blanket impls for documented items [#159779](https://github.com/rust-lang/rust/pull/159779) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=89c61a7545da48b06116675b888398d02a4064c7&end=76c35a14a45897a366c11657ecbbe9ec4153ad17&stat=instructions:u)

#### Mixed

Rollup of 14 pull requests [#159634](https://github.com/rust-lang/rust/pull/159634) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5a8cd237d4fad99d862aed51fab8cb5345c97013&end=cde3f8aee5a30928872e2438e3f18238a3fa306c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-0.2%, 0.4%]  | 4     |

This seems like it's probably noise - single affected benchmark, and mixed
results (improvements and regressions). Not worth further followup.

rustdoc: Only build extern trait impls if needed [#159623](https://github.com/rust-lang/rust/pull/159623) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b803f36e0748c40af88b786bd23499cb21fb97ad&end=c188565812a9b414ddf02f3c7d89e84f1ba53f7d&stat=instructions:u)

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 1.4%   | [0.6%, 2.2%]    | 2     |
| Regressions (secondary)  | 2.2%   | [2.2%, 2.2%]    | 1     |
| Improvements (primary)   | -10.8% | [-30.8%, -1.7%] | 18    |
| Improvements (secondary) | -20.3% | [-31.4%, -4.9%] | 24    |
| All  (primary)                 | -9.6%  | [-30.8%, 2.2%]  | 20    |

Improvements greatly outweigh the small regressions.

codegen: skip stores for entirely-uninit constant aggregate fields [#157797](https://github.com/rust-lang/rust/pull/157797) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6f72b5dd5f82226a2773d40efea7bab941892a73&end=e7795af6d2449fb05a6393c3320ced873a999eb3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 16.2% | [16.2%, 16.2%] | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 8     |
| All  (primary)                 | 16.2% | [16.2%, 16.2%] | 1     |

> Perf looks clean and slightly improving things across the board. There is one
> regression (building cranelift with opts) that has a 16% compile-time perf
> hit entirely in LLVM, so this change tips the optimizations over the edge
> somewhere and causes lots of changes. I have not checked whether it produces
> better runtime code, but let's land it regardless.

Quoting from a [reviewer comment](https://github.com/rust-lang/rust/pull/157797#issuecomment-5044501993).

Rollup of 25 pull requests [#159942](https://github.com/rust-lang/rust/pull/159942) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fdbd8ee70d9b68d98be873e1095d74cf9441f0c8&end=5d4886964b04e1aa6aca158a677183a778e2950d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.5%]   | 4     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 9     |
| All  (primary)                 | -     | -              | 0     |

Regression has held up in subsequent PRs, appears to be limited to our
large-workspace benchmark. This was deemed acceptable on the root cause PR
([comment](https://github.com/rust-lang/rust/pull/159732#pullrequestreview-4760565100)),
and given the regression is small it seems OK.

Rollup of 14 pull requests [#160003](https://github.com/rust-lang/rust/pull/160003) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ad0c9dce27a22416b65946bc0010edaf22ac6c83&end=4fefe3656700e5528edddc2336667818917dfc70&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.8%  | [0.1%, 1.3%]   | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 4     |
| All  (primary)                 | -     | -              | 0     |

Most likely new-solver specific regression coming from a bug fix [#159840](https://github.com/rust-lang/rust/pull/159840).


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "1.98 beta regressions involving ambiguous glob imports" [rust#159432](https://github.com/rust-lang/rust/issues/159432)
  - This crater run shows many more breaking crates (about 30, see [comment](https://github.com/rust-lang/rust/issues/159432#issuecomment-5001947335)) than the [original PR crate run](https://github.com/rust-lang/rust/pull/149195#issuecomment-4058706923) which was then used to [inform](https://github.com/rust-lang/rust/pull/149195#issuecomment-4091314853) making that breakage
  - See triage [comment](https://github.com/rust-lang/rust/issues/159432#issuecomment-5001812697) and [comment](https://github.com/rust-lang/rust/issues/159432#issuecomment-5077541438)
  - I (@apiraino) nominated this one, relaying @_**theemathas** question: should we have T-lang FCP these breaking changes?
- Describe approval needed for promoting/demoting between T2 w/ host tools <=> T2 w/out host tools? [forge#1085](https://github.com/rust-lang/rust-forge/pull/1085)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Region inference: split results from RegionInferenceContext" [rust#151688](https://github.com/rust-lang/rust/pull/151688) (last review activity: 3 months ago)
  - cc: @**lcnr** (perhaps author asks for feedback, can't follow the thread, there are a few of review comments not resolved)
- "adds better error message for temporary value does not live long enough" [rust#154810](https://github.com/rust-lang/rust/pull/154810) (last review activity: 3 months ago)
  - cc @**Yuki Okushi**
- "Use `horde`'s `SyncTable` for default query caches and `CtxtInterners`" [rust#153826](https://github.com/rust-lang/rust/pull/153826) (last review activity: 3 months ago)
  - cc @_**TaKO8Ki**
- "Move checking placeholder types in return types to `typeck`" [rust#153243](https://github.com/rust-lang/rust/pull/153243) (last review activity: 3 months ago)
  - This PR design and motivation made @**fmease** raise some concerns ([comment](https://github.com/rust-lang/rust/pull/153243#issuecomment-3980755977)). @**fmease** how do you feel about it now?

Next meetings' agenda draft: [hackmd link](https://hackmd.io/yHABnOHiTWWGe-QL4GvoNA)
