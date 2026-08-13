---
tags: weekly, rustc
type: docs
note_id: 8wD8MNlFSFOm6h55j-_Kbg
---

# T-compiler Meeting Agenda 2026-07-09

## Announcements

- Today release of Rust 1.97.0, see [blog post](https://github.com/Mark-Simulacrum/blog.rust-lang.org/blob/release-1.97.0/content/Rust-1.97.0.md)
- P-high review, round 2 ([compiler-team#900](https://github.com/rust-lang/compiler-team/issues/900)), tentative scheduling:
  - <time:2026-07-16T16:00:00+02:00>
  - <time:2026-07-24T16:00:00+02:00>
  - <time:2026-07-31T16:00:00+02:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours <time:2026-07-13T16:00:00+02:00> and <time:2026-07-16T16:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "More strongly point people to link to Tracking Issues in the PR template" [compiler-team#1009](https://github.com/rust-lang/compiler-team/issues/1009) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/More.20strongly.20point.20people.20to.20link.20to.20Tr.E2.80.A6.20compiler-team.231009/with/608085127))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time

- Old MCPs (not seconded, take a look)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 9 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 11 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 35 days ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 9 months ago)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 4 months ago)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 8 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 3 months ago)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 5 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 4 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: 3 months ago)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler)) (last review activity: about 27 days ago)
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002)) (last review activity: about 1 days ago)
    - concern: [question-boolean-valued-counters](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4807853132)
    - concern: [state-of-the-impl](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4905511221)
  - "Add testing for lint machinery at runtime" [compiler-team#1004](https://github.com/rust-lang/compiler-team/issues/1004) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20testing.20for.20lint.20machinery.20at.20runtime.20compiler-team.231004/with/605447442)) (last review activity: about 12 days ago)
  - "Move `Layout` and `TyAndLayout` to `rustc_type_ir`" [compiler-team#1008](https://github.com/rust-lang/compiler-team/issues/1008) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20.60Layout.60.20and.20.60TyAndLayout.60.20to.20.60rust.E2.80.A6.20compiler-team.231008/with/607237809)) (last review activity: about 6 days ago)
    - concern: [type_ir-is-a-pain](https://github.com/rust-lang/compiler-team/issues/1008#issuecomment-4837039344)

- Pending FCP requests (check your boxes!)
  - merge: [Promote `wasm32-wasip3` to Tier 2 (compiler-team#1001)](https://github.com/rust-lang/compiler-team/issues/1001#issuecomment-4694741738)
    - @_**|116266** @_**|119031** @_**|370197**
    - no pending concerns
  - merge: [WF checks on closure arguments. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|124288** @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [Stabilize `-Zprofile-sample-use` (rust#155942)](https://github.com/rust-lang/rust/pull/155942#issuecomment-4603443003)
    - @_**|116266** @_**|125250** @_**|119031** @_**|370197** @_**|343125**
    - no pending concerns
  - merge: [Ensure inferred let pattern types are well-formed (rust#157841)](https://github.com/rust-lang/rust/pull/157841#issuecomment-4831652944)
    - @_**|116266** @_**|124288** @_**|326176** @_**|232957**
    - no pending concerns

- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Add `target_feature_available_at_call_site`" [compiler-team#1010](https://github.com/rust-lang/compiler-team/issues/1010) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_feature_available_at_call_si.E2.80.A6.20compiler-team.231010/with/608364780))
    - concern: [debugging-the-llvmir](https://github.com/rust-lang/compiler-team/issues/1010#issuecomment-4897007445)
  - "Let the OS handle stack growth" [compiler-team#1011](https://github.com/rust-lang/compiler-team/issues/1011) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Let.20the.20OS.20handle.20stack.20growth.20compiler-team.231011/with/608661022))
    - concern: [back-to-the-past](https://github.com/rust-lang/compiler-team/issues/1011#issuecomment-4902571508)
  - "Fix `overflowing_literals` lint with repeated negation" [rust#158302](https://github.com/rust-lang/rust/pull/158302)

- Accepted MCPs
  - "Desugar async blocks in HIR instead of MIR" [compiler-team#997](https://github.com/rust-lang/compiler-team/issues/997) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Desugar.20async.20blocks.20in.20HIR.20instead.20of.20MIR.20compiler-team.23997))
  - "Rename the compiler files containing struct diagnostics to `diagnostics.rs`" [compiler-team#1003](https://github.com/rust-lang/compiler-team/issues/1003) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20the.20compiler.20files.20containing.20str.E2.80.A6.20compiler-team.231003))
  - "MCP: Stabilization strategy for rustc parallel frontend" [compiler-team#1005](https://github.com/rust-lang/compiler-team/issues/1005) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Stabilization.20strategy.20for.20rustc.20pa.E2.80.A6.20compiler-team.231005/with/606039999))
  - "Decouple `BackendRepr` from ABI alignment" [compiler-team#1007](https://github.com/rust-lang/compiler-team/issues/1007) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Decouple.20.60BackendRepr.60.20from.20ABI.20alignment.20compiler-team.231007/with/607013445))

- Finalized FCPs (disposition merge)
  - [T-types] "Infer all anonymous lifetimes in assoc consts as `'static`" [rust#156508](https://github.com/rust-lang/rust/pull/156508)
  - [T-compiler] "enable eager `param_env` norm in new solver" [rust#156976](https://github.com/rust-lang/rust/pull/156976)
  - [T-types] "consider subtyping when checking if an infer var is sized" [rust#157820](https://github.com/rust-lang/rust/pull/157820)

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
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [45 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "dist-i686-msvc hang on lint-docs" [rust#158378](https://github.com/rust-lang/rust/issues/158378)
  - visited last week, we disabled the tests for this compile target in #158379 to unblock the CI
  - target demotion discussed [here](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Demoting.20.60i686-pc-windows-msvc.60.20to.20Tier.202.3F/near/606379344), seems the agreement is to demote down to **tier 2 without host tools**
  - opened a poll to contrast opinions better

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-07-06 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week was dominated by wild swings in benchmarks of the new-solver, which is not enabled by default, yet.
Apart from that, we got a very few notable changes, only one unexpected speedup from a bugfix in rustdoc.

Triage done by **@panstromek**.
Revision range: [7dc2c162..3659db0d](https://perf.rust-lang.org/?start=7dc2c162b9c197aaa76a6f9e7534569537830a01&end=3659db0d3e2cd634c766fcda79ed118eca31a9fd&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 0.2%   | [0.2%, 0.2%]    | 3     |
| Regressions (secondary)  | 162.1% | [0.2%, 1116.3%] | 20    |
| Improvements (primary)   | -1.4%  | [-8.4%, -0.1%]  | 7     |
| Improvements (secondary) | -1.1%  | [-8.4%, -0.1%]  | 11    |
| All  (primary)                 | -0.9%  | [-8.4%, 0.2%]   | 10    |


1 Regression, 1 Improvement, 4 Mixed; 3 of them in rollups
17 artifact comparisons made in total

#### Regressions

resolve: Explicit Set for detecting resolution cycles [#158035](https://github.com/rust-lang/rust/pull/158035) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7dc2c162b9c197aaa76a6f9e7534569537830a01&end=096694416a41840709140eb0fd0ca193d1a3e6ba&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.3%] | 7     |
| Regressions (secondary)  | 0.4% | [0.3%, 0.6%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.1%, 0.3%] | 7     |

Regression matches pre-merge run, justified by https://github.com/rust-lang/rust/pull/158035#issuecomment-4833952569:
"It looks acceptable now, unused-warnings is a stress benchmark with thousands of imports." (@petrochenkov)

This is also a stepping stone towards future performance improvements (parallel compiler). IIUC the primary regressions were mostly mitigated by https://github.com/rust-lang/rust/pull/158604, mentioned below.

#### Improvements

- Use `LowerAvailableDepth::No` for normalizes-to goal itself instead of its nested goals [#158705](https://github.com/rust-lang/rust/pull/158705) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3659db0d3e2cd634c766fcda79ed118eca31a9fd&end=3c00c96d3af4d5b5e101e56cc161a608b21366ee&stat=instructions:u)

#### Mixed

Rollup of 7 pull requests [#158629](https://github.com/rust-lang/rust/pull/158629) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f46ec5218fe7829ac18323b5ee0b409a63169f27&end=17aa77551e89d5e80d4b506c9a32fc151264b8e4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -8.5% | [-8.5%, -8.5%] | 1     |
| Improvements (secondary) | -8.5% | [-8.5%, -8.5%] | 1     |
| All  (primary)                 | -8.5% | [-8.5%, -8.5%] | 1     |

`include-blob` regression is probably bimodal noise again, improvement in `serde` doc is https://github.com/rust-lang/rust/pull/158569.

Rollup of 6 pull requests [#158639](https://github.com/rust-lang/rust/pull/158639) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=17aa77551e89d5e80d4b506c9a32fc151264b8e4&end=7c5dac9c7476a30e09a5aa87b4df2c5663fe7734&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 30.5% | [0.3%, 51.1%]  | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 2     |
| All  (primary)                 | -     | -              | 0     |

Regression caused by https://github.com/rust-lang/rust/pull/157718, already mitigated by https://github.com/rust-lang/rust/pull/158705 (mentioned above).

resolve: no allocation in `resolve_ident_in(_local)_module_*` [#158604](https://github.com/rust-lang/rust/pull/158604) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7c5dac9c7476a30e09a5aa87b4df2c5663fe7734&end=e2b71ade2db4ea263ab0d561d889f3e3795a500d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.3%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.2%] | 26    |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 5     |
| All  (primary)                 | -0.2% | [-0.4%, 0.3%]  | 29    |

Improvements outweigh regressions. Looks like this also mitigates the primary regressions from https://github.com/rust-lang/rust/pull/158035. Regressions are only in tiny `incr-unchanged` scenarios.

Rollup of 21 pull requests [#158795](https://github.com/rust-lang/rust/pull/158795) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ea088e0a3dd50c494b4589c3c121d7469dceec8f&end=4eb62535fc12dd1a63fd43a4173e224e79313c4d&stat=instructions:u)

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | -      | -               | 0     |
| Regressions (secondary)  | 441.1% | [0.2%, 1116.0%] | 7     |
| Improvements (primary)   | -0.3%  | [-0.3%, -0.2%]  | 2     |
| Improvements (secondary) | -0.6%  | [-1.2%, -0.3%]  | 6     |
| All  (primary)                 | -0.3%  | [-0.3%, -0.2%]  | 2     |

Regressions caused by https://github.com/rust-lang/rust/pull/158606#issuecomment-4890167477

Regressions are limited to new-solver, which is not enabled by default. I think we can mark this as triaged and let the types team follow up on this as they see fit.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Use `horde`'s `SyncTable` for default query caches and `CtxtInterners`" [rust#153826](https://github.com/rust-lang/rust/pull/153826) (last review activity: 2 months ago)
  - This PR is proposing adding the `horde` crate to our dependencies.
  - Left a ping for a vibecheck [here](https://rust-lang.zulipchat.com/#narrow/channel/187679-t-compiler.2Fparallel-rustc/topic/Using.20hashmap.20from.20.60horde.60.20crate/near/505538266)
  - Note about our docs: is there a path to proposing new dependencies? Maybe an MCP? I checked on `{rustc,forge}.r-l.o` but didn't find a clear answer (or maybe I missed it)
- "Move Region from rustc_middle to rustc_type_ir" [rust#154989](https://github.com/rust-lang/rust/pull/154989) (last review activity: 2 months ago)
  - I think this is waiting on this impl in rust-analyzer, see [https://github.com/rust-lang/rust/pull/154989#discussion_r3079993632](comment) cc @**Chayim Refael Friedman**
- "borrowck: clarify an E0502 label for &self.field vs mutable self" [rust#155116](https://github.com/rust-lang/rust/pull/155116) (last review activity: 2 months ago)
  - cc @**Esteban Küber**
- "Region inference: split results from RegionInferenceContext" [rust#151688](https://github.com/rust-lang/rust/pull/151688) (last review activity: 4 months ago)
  - cc: @**lcnr**, see previous [[https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202026-06-18/near/604546847](mention)
- "adds better error message for temporary value does not live long enough" [rust#154810](https://github.com/rust-lang/rust/pull/154810) (last review activity: 3 months ago)
  - cc @**Yuki Okushi**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/MvWffdh4RaS6hQ6i9wmCAw)
