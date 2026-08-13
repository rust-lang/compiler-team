---
tags: weekly, rustc
type: docs
note_id: 75nJ8Lc2QyCiGJogY2Yz4Q
---

# T-compiler Meeting Agenda 2026-07-02

## Announcements

- Release **Rust 1.96.1** was released to close issue #158214 ([blog post](https://blog.rust-lang.org/2026/06/30/Rust-1.96.1))
- And next week release **Rust 1.97**!
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours <time:2026-07-02T16:00:00+02:00> and <time:2026-07-06T16:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Move `Layout` and `TyAndLayout` to `rustc_type_ir`" [compiler-team#1008](https://github.com/rust-lang/compiler-team/issues/1008) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20.60Layout.60.20and.20.60TyAndLayout.60.20to.20.60rust.E2.80.A6.20compiler-team.231008/with/607237809))
    - concern: [type_ir-is-a-pain](https://github.com/rust-lang/compiler-team/issues/1008#issuecomment-4837039344)
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: 3 months ago)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler)) (last review activity: about 20 days ago)
  - "Add testing for lint machinery at runtime" [compiler-team#1004](https://github.com/rust-lang/compiler-team/issues/1004) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20testing.20for.20lint.20machinery.20at.20runtime.20compiler-team.231004/with/605447442)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `wasm32-wasip3` to Tier 2 (compiler-team#1001)](https://github.com/rust-lang/compiler-team/issues/1001#issuecomment-4694741738)
    - @_**|116266** @_**|124288** @_**|116107** @_**|119031** @_**|370197** @_**|343125**
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
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Desugar async blocks in HIR instead of MIR" [compiler-team#997](https://github.com/rust-lang/compiler-team/issues/997) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Desugar.20async.20blocks.20in.20HIR.20instead.20of.20MIR.20compiler-team.23997))
  - "Rename the compiler files containing struct diagnostics to `diagnostics.rs`" [compiler-team#1003](https://github.com/rust-lang/compiler-team/issues/1003) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20the.20compiler.20files.20containing.20str.E2.80.A6.20compiler-team.231003))
  - "MCP: Stabilization strategy for rustc parallel frontend" [compiler-team#1005](https://github.com/rust-lang/compiler-team/issues/1005) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Stabilization.20strategy.20for.20rustc.20pa.E2.80.A6.20compiler-team.231005/with/606039999))
  - "Decouple `BackendRepr` from ABI alignment" [compiler-team#1007](https://github.com/rust-lang/compiler-team/issues/1007) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Decouple.20.60BackendRepr.60.20from.20ABI.20alignment.20compiler-team.231007/with/607013445))
  - "rustc_lint: Allow scoped `non_ascii_idents` lint levels" [rust#157497](https://github.com/rust-lang/rust/pull/157497)
  - "Fix `overflowing_literals` lint with repeated negation" [rust#158302](https://github.com/rust-lang/rust/pull/158302)
  - "infra: add policy covering mfa with hardware keys" [rust-forge#1051](https://github.com/rust-lang/rust-forge/pull/1051)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 8 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 11 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 28 days ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 8 months ago)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 4 months ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 7 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 3 months ago)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 5 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 4 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002)) (last review activity: about 0 days ago)
    - concern: [question-boolean-valued-counters](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4807853132)
- Finalized FCPs (disposition merge)
  - "Fix trait method resolution on an adjusted never type" [rust#156047](https://github.com/rust-lang/rust/pull/156047)
  - "enable eager `param_env` norm in new solver" [rust#156976](https://github.com/rust-lang/rust/pull/156976)

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
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [46 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "dist-i686-msvc hang on lint-docs" [rust#158378](https://github.com/rust-lang/rust/issues/158378)
  - Temporarily worked around by #158379 (disables part of CI)
  - Issue needs investigation, see [Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/242791-t-infra/topic/dist-i686-msvc.20hang/near/606330379)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-06-29 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

Overall, the week was fairly neutral, with no meaningful shift on most benchmarks on any of our statistics.

Triage done by **@simulacrum**.
Revision range: [8b6558a0..7dc2c162](https://perf.rust-lang.org/?start=8b6558a02b2774acfb25cf15e199467c37ba7490&end=7dc2c162b9c197aaa76a6f9e7534569537830a01&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |      range      | count |
|:------------------------:|:-----:|:---------------:|:-----:|
|  Regressions (primary)   | 0.9%  |  [0.1%, 3.7%]   |  45   |
| Regressions (secondary)  | 0.9%  |  [0.0%, 8.0%]   |  74   |
|  Improvements (primary)  | -0.4% | [-1.4%, -0.2%]  |  34   |
| Improvements (secondary) | -4.0% | [-30.6%, -0.2%] |  57   |
|      All  (primary)      | 0.3%  |  [-1.4%, 3.7%]  |  79   |


2 Regressions, 1 Improvement, 7 Mixed; 5 of them in rollups
34 artifact comparisons made in total

#### Regressions

Rollup of 13 pull requests [#158487](https://github.com/rust-lang/rust/pull/158487) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cb41b6d3daa0c1ad088a8802a6d8700c61290865&end=13f1859f2faf97a15664e655624baa7417fdc100&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.5%] | 8     |
| Regressions (secondary)  | 0.4% | [0.2%, 0.6%] | 18    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.5%] | 8     |

Root cause is Update doc_cfg hide/show syntax
[#157871](https://github.com/rust-lang/rust/pull/157871). Probably worth some
follow-up since it affects lots of doc benchmarks, and at least a glance it
seems plausible this might have a simple fix (syntax changes don't feel like
they should be meaningfully more expensive, especially in code that doesn't use
this feature like `helloworld`).

resolve: Explicit Set for detecting resolution cycles [#158035](https://github.com/rust-lang/rust/pull/158035) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7dc2c162b9c197aaa76a6f9e7534569537830a01&end=096694416a41840709140eb0fd0ca193d1a3e6ba&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.3%] | 7     |
| Regressions (secondary)  | 0.4% | [0.3%, 0.6%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.1%, 0.3%] | 7     |

This primarily (outside incremental) affects unused-warnings, which is a stress
test for this code. It's expected that this change would be a slight
regression, but per the PR description, this unblocks parallelization of this
code, which is an important benefit.

#### Improvements

- Rework lint pass running [#158239](https://github.com/rust-lang/rust/pull/158239) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=73100eefe2afb831c4964f579c95beeb27b86e28&end=973ad0d0ab149bde2e96422833c1265c7a5be217&stat=instructions:u)

#### Mixed

 GVN: Don't assume nested shared references are read-only. [#157346](https://github.com/rust-lang/rust/pull/157346) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d29dae8d17abb191a24f57eb00f68ebc1b168314&end=91fe22da8084a1c9e993d78d4a56f22ab8396236&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.1%, 0.5%]  |   9   |
| Regressions (secondary)  | 0.3%  |  [0.1%, 0.4%]  |  11   |
|  Improvements (primary)  | -0.3% | [-0.4%, -0.2%] |  10   |
| Improvements (secondary) | -0.5% | [-1.1%, -0.2%] |   5   |
|      All  (primary)      | 0.0%  | [-0.4%, 0.5%]  |  19   |

Soundness fix, regressions are minor.

Rollup of 35 pull requests [#158342](https://github.com/rust-lang/rust/pull/158342) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8e25b4121d5ea29bef166b86173fb043782ffbff&end=73100eefe2afb831c4964f579c95beeb27b86e28&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.1%  |  [0.1%, 0.1%]  |   7   |
| Regressions (secondary)  | 0.7%  |  [0.1%, 1.0%]  |   6   |
|  Improvements (primary)  | -0.3% | [-0.5%, -0.1%] |   5   |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] |   3   |
|      All  (primary)      | -0.1% | [-0.5%, 0.1%]  |  12   |

* Improvements are fully from proc_macro simplification [#157271](https://github.com/rust-lang/rust/pull/157271)
* Regressions are from:
  * delegation: add support for infers in generics [#157960](https://github.com/rust-lang/rust/pull/157960)
    * fixed in delegation: store child segment flag in PathSegment [#158556](https://github.com/rust-lang/rust/pull/158556)
  * Possibly some other PRs; note that there is also some regressions in ctfe-stress that I suspect are noise.

Add rigid alias marker [#156742](https://github.com/rust-lang/rust/pull/156742) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=973ad0d0ab149bde2e96422833c1265c7a5be217&end=fa36a479e492137fdf473a891206da127f132910&stat=instructions:u)

|     (instructions:u)     | mean  |      range      | count |
|:------------------------:|:-----:|:---------------:|:-----:|
|  Regressions (primary)   | 1.0%  |  [0.3%, 2.1%]   |  22   |
| Regressions (secondary)  | 1.2%  |  [0.3%, 3.6%]   |  13   |
|  Improvements (primary)  | -0.1% | [-0.1%, -0.1%]  |   3   |
| Improvements (secondary) | -6.0% | [-30.9%, -0.1%] |  31   |
|      All  (primary)      | 0.8%  |  [-0.1%, 2.1%]  |  25   |

> necessary refactor for the new trait solver and I would just eat the 1.4% diesel regression.

(see more here: https://github.com/rust-lang/rust/pull/156742#issuecomment-4807181842)

Rollup of 15 pull requests [#158416](https://github.com/rust-lang/rust/pull/158416) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fa36a479e492137fdf473a891206da127f132910&end=bd08c9e71874a81670fe3938dbf85148e42c2b96&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.1%  |  [0.1%, 0.1%]  |   1   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  | -0.2% | [-0.4%, -0.1%] |   2   |
| Improvements (secondary) |   -   |       -        |   0   |
|      All  (primary)      | -0.1% | [-0.4%, 0.1%]  |   3   |

Non-instruction count wins from reverting a change to how we build LLVM which
broke PGO. Minor regressions/wins otherwise that are *maybe* within noise
threshold, not worth digging deeper.

Rollup of 15 pull requests [#158455](https://github.com/rust-lang/rust/pull/158455) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ce9954c0cfc4bf26b82aef16e6fd8b020c237992&end=16761606d606b6ec4d0c88fc9251670742ad9fd2&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.1%  |  [0.1%, 0.1%]  |   2   |
| Regressions (secondary)  | 0.2%  |  [0.1%, 0.2%]  |   6   |
|  Improvements (primary)  | -0.2% | [-0.2%, -0.2%] |   1   |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] |   8   |
|      All  (primary)      | 0.0%  | [-0.2%, 0.1%]  |   3   |

* Add arg splat experiment initial tuple impl [#153697](https://github.com/rust-lang/rust/pull/153697) explains the regressions.
  * New feature, some poking at optimizing perf was attempted and this was
    best-possible so far. Previous work on this feature improved perf so this
    series is still a benefit overall in some sense.
* Improvements from:
  * Various borrowck cleanups and param_env/opaque_types_defined_by query simplifications for typeck children [#158360](https://github.com/rust-lang/rust/pull/158360)
  * perf: Make stable_crate_ids reads lock-free after crate loading [#158185](https://github.com/rust-lang/rust/pull/158185)

Rollup of 15 pull requests [#158508](https://github.com/rust-lang/rust/pull/158508) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8b95a26baf5820929d86a844317160905e7b325b&end=fd07dbfc91b7b6b3fa76d957e130c51e654131ee&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.4%  |  [0.3%, 0.5%]  |   6   |
|  Improvements (primary)  | -0.2% | [-0.3%, -0.2%] |  43   |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] |  20   |
|      All  (primary)      | -0.2% | [-0.3%, -0.2%] |  43   |

> The change is the same as [#157996](https://github.com/rust-lang/rust/pull/157996),
> which was explicitly listed as perf. The overall improvement was deemed to be worth it.

Move `std::io::Error` into `core` [#155625](https://github.com/rust-lang/rust/pull/155625) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=df6ee909ef35c75aa58aa45af6ac071a9b8285c2&end=7fb284d9037fa54f6a9b24261c82b394472cbfd7&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 1.0%  |  [0.5%, 2.6%]  |   9   |
| Regressions (secondary)  | 1.4%  |  [0.2%, 7.7%]  |  23   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -4.7% | [-6.0%, -3.2%] |   6   |
|      All  (primary)      | 1.0%  |  [0.5%, 2.6%]  |   9   |

Expected mixed results since this change shuffles a lot of code around between
crates/impl blocks and as a result likely tweaking how much things are
inlinable. Most of the results are probably fallout from that rather than rustc
performance changes in a direct sense. I don't think we need to dig deeper here.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

Tip: let's look at them one by one

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Suggest only Span without source changes when source code is unavailable" [rust#144585](https://github.com/rust-lang/rust/pull/144585) (last review activity: 7 months ago)
  - cc @**Esteban Küber**
- "Replace `jemalloc` bootstrap options with `override-allocator`" [rust#155617](https://github.com/rust-lang/rust/pull/155617) (last review activity: 2 months ago)
  - rerolled, asked who should have a look there first (any suggestions?)
- "tests/ui: use revisions for editions in several tests" [rust#155498](https://github.com/rust-lang/rust/pull/155498) (last review activity: 2 months ago)
  - Didn't we have a lengthy conversation about marking UI tests with editions in [compiler-team#861](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Make.20the.20UI.20test.20suite.20more.20amenable.20to.20m.E2.80.A6.20compiler-team.23861/near/511371104)? Is this PR related? cc @**davidtwco** do you know?
- "tests/ui/tuple: add annotations for reference rules" [rust#155846](https://github.com/rust-lang/rust/pull/155846) (last review activity: 2 months ago)
  - can this be reassigned? Or does it need specific context?
- "resolve: use `#[doc(alias)]` to improve function resolution diagnostics" [rust#154833](https://github.com/rust-lang/rust/pull/154833) (last review activity: 2 months ago)
  - Unsure about this: Vadim would decline this change, Esteban is instead in favor. Can perhaps anyone give a third opinion?

Next meetings' agenda draft: [hackmd link](https://hackmd.io/8wD8MNlFSFOm6h55j-_Kbg)
