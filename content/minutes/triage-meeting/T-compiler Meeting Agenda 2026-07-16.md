---
tags: weekly, rustc
type: docs
note_id: MvWffdh4RaS6hQ6i9wmCAw
---

# T-compiler Meeting Agenda 2026-07-16

## Announcements

- Today Rust 1.97.1 released, [blog post draft](https://github.com/Mark-Simulacrum/blog.rust-lang.org/blob/release-1.97.1/content/Rust-1.97.1.md)
  - Mainly for #159035, a miscompilation introduced in 1.97.0
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours <time:2026-07-16T16:00:00+02:00> and <time:2026-07-20T16:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add -Z stack-protector-guard" [compiler-team#1013](https://github.com/rust-lang/compiler-team/issues/1013) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20stack-protector-guard.20compiler-team.231013/with/609661756))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time

- Old MCPs (not seconded, take a look)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: 3 months ago)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler)) (last review activity: about 34 days ago)
  - "Add testing for lint machinery at runtime" [compiler-team#1004](https://github.com/rust-lang/compiler-team/issues/1004) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20testing.20for.20lint.20machinery.20at.20runtime.20compiler-team.231004/with/605447442)) (last review activity: about 19 days ago)
  - "More strongly point people to link to Tracking Issues in the PR template" [compiler-team#1009](https://github.com/rust-lang/compiler-team/issues/1009) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/More.20strongly.20point.20people.20to.20link.20to.20Tr.E2.80.A6.20compiler-team.231009/with/608085127)) (last review activity: about 6 days ago)

- Pending FCP requests (check your boxes!)
  - merge: [Promote `wasm32-wasip3` to Tier 2 (compiler-team#1001)](https://github.com/rust-lang/compiler-team/issues/1001#issuecomment-4694741738)
    - @_**|116266** @_**|119031** @_**|370197**
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

- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Add `target_feature_available_at_call_site`" [compiler-team#1010](https://github.com/rust-lang/compiler-team/issues/1010) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60target_feature_available_at_call_si.E2.80.A6.20compiler-team.231010/with/608364780))
    - concern: [debugging-the-llvmir](https://github.com/rust-lang/compiler-team/issues/1010#issuecomment-4897007445)
  - "Let the OS handle stack growth" [compiler-team#1011](https://github.com/rust-lang/compiler-team/issues/1011) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Let.20the.20OS.20handle.20stack.20growth.20compiler-team.231011/with/608661022))
    - concern: [back-to-the-past](https://github.com/rust-lang/compiler-team/issues/1011#issuecomment-4902571508)
  - "Stabilizing the state of the debuginfo test suite" [compiler-team#1012](https://github.com/rust-lang/compiler-team/issues/1012) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilizing.20the.20state.20of.20the.20debuginfo.20t.E2.80.A6.20compiler-team.231012/with/609486931))
  - "Enable `-Znext-solver` on nightly by default for testing" [compiler-team#1014](https://github.com/rust-lang/compiler-team/issues/1014) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60-Znext-solver.60.20on.20nightly.20by.20def.E2.80.A6.20compiler-team.231014/with/610769469))
  - "Enable `-Zpolonius=next` on nightly" [compiler-team#1015](https://github.com/rust-lang/compiler-team/issues/1015) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60-Zpolonius.3Dnext.60.20on.20nightly.20compiler-team.231015/with/610827625))
  - "Avoid computing layout of enums with non-int discriminants" [rust#157562](https://github.com/rust-lang/rust/pull/157562)
  - "rustc_passes: lint unused `#[path]` attributes on inline modules" [rust#158835](https://github.com/rust-lang/rust/pull/158835)
  - "enable `unreachable_cfg_select_predicates` lint as part of `unused` lint group" [rust#159179](https://github.com/rust-lang/rust/pull/159179)

- Accepted MCPs
  - No new accepted proposals this time.

- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 9 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 12 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 42 days ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 9 months ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 5 months ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 8 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 3 months ago)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 5 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 5 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002)) (last review activity: about 8 days ago)
    - concern: [state-of-the-impl](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4905511221)
    - concern: [question-boolean-valued-counters](https://github.com/rust-lang/compiler-team/issues/1002#issuecomment-4807853132)
  - "Move `Layout` and `TyAndLayout` to `rustc_type_ir`" [compiler-team#1008](https://github.com/rust-lang/compiler-team/issues/1008) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20.60Layout.60.20and.20.60TyAndLayout.60.20to.20.60rust.E2.80.A6.20compiler-team.231008/with/607237809)) (last review activity: about 13 days ago)
    - concern: [type_ir-is-a-pain](https://github.com/rust-lang/compiler-team/issues/1008#issuecomment-4837039344)

- Finalized FCPs (disposition merge)
  - [T-types] "Infer all anonymous lifetimes in assoc consts as `'static`" [rust#156508](https://github.com/rust-lang/rust/pull/156508)
  - [T-compiler] "enable eager `param_env` norm in new solver" [rust#156976](https://github.com/rust-lang/rust/pull/156976)
  - [T-types] "consider subtyping when checking if an infer var is sized" [rust#157820](https://github.com/rust-lang/rust/pull/157820)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "resolve: fix effective visibilities for items in ambiguous glob sets" [rust#159039](https://github.com/rust-lang/rust/pull/159039)
  - Authored by calvinrp
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23159039.3A.20stable-nominated/near/609485151), seems everyone was against, so the backport is declined
- :beta: "Revert extension of `-1` for `None`-like tags" [rust#159047](https://github.com/rust-lang/rust/pull/159047)
  - Authored by workingjubilee
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23159047.3A.20beta-nominated/near/609365399), approved
- :stable: "resolve: fix effective visibilities for items in ambiguous glob sets" [rust#159039](https://github.com/rust-lang/rust/pull/159039)
  - Authored by calvinrp
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23159039.3A.20stable-nominated/near/609485151), given the lack of consensus, so backport declined

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "Stabilize `-Zprofile-sample-use`" [rust#155942](https://github.com/rust-lang/rust/pull/155942)
  - @_**Jieyou Xu** [pinged the people](https://github.com/rust-lang/rust/pull/155942#issuecomment-4942039923) that still need to check the FCP box
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [46 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "dist-i686-msvc hang on lint-docs" [rust#158378](https://github.com/rust-lang/rust/issues/158378)
- "Miscompilation with FFI `bool` return type on AArch64" [rust#159244](https://github.com/rust-lang/rust/issues/159244)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs


> [2026-07-13 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week many new optimizations landed, making this a very good week for performance.
The only real regression was a fix for a miscompile that will likely be re-landed in the future.

Triage done by **@JonathanBrouwer**.
Revision range: [3659db0d..5503df87](https://perf.rust-lang.org/?start=3659db0d3e2cd634c766fcda79ed118eca31a9fd&end=5503df87342a73d0c29126a7e08dc9c1255c46ad&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]    | 3     |
| Regressions (secondary)  | 0.9%  | [0.1%, 2.5%]    | 25    |
| Improvements (primary)   | -1.2% | [-9.9%, -0.2%]  | 195   |
| Improvements (secondary) | -3.4% | [-92.1%, -0.1%] | 174   |
| All  (primary)                 | -1.2% | [-9.9%, 0.4%]   | 198   |


2 Regressions, 10 Improvements, 10 Mixed; 7 of them in rollups
36 artifact comparisons made in total

#### Regressions

Revert extension of `-1` for `None`-like tags [#159047](https://github.com/rust-lang/rust/pull/159047) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cb014fcb149e44d8aa16a8f66c9f2b1762f034f8&end=31e4b8481fec5ae856d786ff3b75a5bccaf33725&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.2% | [0.0%, 0.7%] | 16    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

Revert of a PR that caused a [miscompile in LLVM](https://github.com/rust-lang/rust/issues/159035).
Likely to be re-landed in the future.

Rollup of 3 pull requests [#159166](https://github.com/rust-lang/rust/pull/159166) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=be8e82435eb04fbe75ed5286b52735366e160bed&end=b69e089eb3ec9976ddec602bf18c3d6a8ce72512&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.0%, 0.2%]   | 11    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | -     | -              | 0     |

Bi-modal noise in the `include-blob` benchmark.

#### Improvements

- Use `LowerAvailableDepth::No` for normalizes-to goal itself instead of its nested goals [#158705](https://github.com/rust-lang/rust/pull/158705) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3659db0d3e2cd634c766fcda79ed118eca31a9fd&end=3c00c96d3af4d5b5e101e56cc161a608b21366ee&stat=instructions:u)
- Polish some macro parsing code [#158577](https://github.com/rust-lang/rust/pull/158577) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c4af71034e89a431eeee91125a31ad001379faac&end=b960fcf2ff0f04967b30b947be8fc155fb067901&stat=instructions:u)
- Predicate/clause cleanups [#157104](https://github.com/rust-lang/rust/pull/157104) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=76fcc1c04d0c7e5759d92af857f08609a3c8e506&end=5e91de65d75d3c849c643f5079509b9e5985a5c0&stat=instructions:u)
- Shrink no-op drop elaboration [#157491](https://github.com/rust-lang/rust/pull/157491) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5e91de65d75d3c849c643f5079509b9e5985a5c0&end=99576cf2ebc870c305225e9856b9423228872c56&stat=instructions:u)
- Try to mark param env as rigid with the next solver [#158643](https://github.com/rust-lang/rust/pull/158643) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=99576cf2ebc870c305225e9856b9423228872c56&end=c290daa1e5274a52e54a0f49e31bd70192abc606&stat=instructions:u)
- Use SmallVec for return places in MIR [#158842](https://github.com/rust-lang/rust/pull/158842) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7ef36edc23ac10760eb9f097d32edbab2e1e8928&end=14cae681329a63c622a6e1fbe1d30f9374bc51d8&stat=instructions:u)
- Clippy subtree update [#159030](https://github.com/rust-lang/rust/pull/159030) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=31e4b8481fec5ae856d786ff3b75a5bccaf33725&end=ae705ae862c518e4e1f8ead45777e18cf4b6a271&stat=instructions:u)
- Remove some AST `tokens` fields [#158942](https://github.com/rust-lang/rust/pull/158942) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ae705ae862c518e4e1f8ead45777e18cf4b6a271&end=375b1431b7d89d1c2e2bc168c011848ae12b7d14&stat=instructions:u)
- Lang item cleanups [#159004](https://github.com/rust-lang/rust/pull/159004) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=375b1431b7d89d1c2e2bc168c011848ae12b7d14&end=48e8ec6f05057f942a97187dde770a118e05f42c&stat=instructions:u)
- Rollup of 3 pull requests [#159170](https://github.com/rust-lang/rust/pull/159170) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b69e089eb3ec9976ddec602bf18c3d6a8ce72512&end=babf6ea4aab9ed78ea9400b25b0e7e79a6870f29&stat=instructions:u)

#### Mixed

Rollup of 12 pull requests [#158864](https://github.com/rust-lang/rust/pull/158864) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3c00c96d3af4d5b5e101e56cc161a608b21366ee&end=36714a9983d6ba11203d8bb87a1b372247fbcf06&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | 8.5%  | [0.2%, 16.6%]  | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 2     |
| All  (primary)                 | 0.1%  | [0.1%, 0.1%]   | 1     |

Triaged to be fully caused by [https://github.com/rust-lang/rust/pull/156976](enable eager param_env norm in new solver).
Author claims the perf impact is fully fixed by the later merge of [https://github.com/rust-lang/rust/pull/158643](#158643).

Rollup of 24 pull requests [#158847](https://github.com/rust-lang/rust/pull/158847) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=36714a9983d6ba11203d8bb87a1b372247fbcf06&end=c4af71034e89a431eeee91125a31ad001379faac&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 2     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.2% | [-0.3%, -0.1%] | 3     |

Regressions are noise, improvements seem real to me.
Not worth figuring out which PR caused the unexpected improvements.

Rollup of 23 pull requests [#158991](https://github.com/rust-lang/rust/pull/158991) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=07074cfe1d991fe06b7fc613bbbd1dd9d0d37c80&end=561ea2bfa3022226082e2db39d6ccb241e9e34bc&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | 0.0%  | [0.0%, 0.0%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 2     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 7     |
| All  (primary)                 | -0.1% | [-0.3%, 0.1%]  | 3     |

Regressions seem like noise, and are tiny.
Improvements seem real to me. Not worth figuring out which PR caused the unexpected improvements.

[perf] Specialize common `(1, 1)` case for arg unification. [#158865](https://github.com/rust-lang/rust/pull/158865) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=561ea2bfa3022226082e2db39d6ccb241e9e34bc&end=3664b37017c529cad0f0ed259769f15743c21a6a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 7     |
| Improvements (primary)   | -0.5% | [-0.7%, -0.2%] | 8     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.1%] | 6     |
| All  (primary)                 | -0.4% | [-0.7%, 0.2%]  | 9     |

Improvements caused by a new fast path in type checking for two-argument tuples.
Regressions are noise.

Inline some `Symbol` functions [#158931](https://github.com/rust-lang/rust/pull/158931) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3664b37017c529cad0f0ed259769f15743c21a6a&end=af3d95584dbddcae597890340995509a7fb47a50&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 4     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.2%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.1%] | 50    |
| Improvements (secondary) | -0.4% | [-0.9%, -0.1%] | 55    |
| All  (primary)                 | -0.3% | [-0.5%, 0.3%]  | 54    |

Improvements caused by marking `Symbol::intern` and `Symbol::as_str` as inline.
Regressions seem real but improvements seriously outweigh regressions.

perf: Rework read deduplication with pooled read recorders [#158794](https://github.com/rust-lang/rust/pull/158794) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=af3d95584dbddcae597890340995509a7fb47a50&end=d465559281ebfb5b586913285f4d40f9b518b729&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]    | 13    |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.7%]    | 29    |
| Improvements (primary)   | -1.5% | [-10.0%, -0.2%] | 89    |
| Improvements (secondary) | -1.0% | [-2.8%, -0.0%]  | 77    |
| All  (primary)                 | -1.2% | [-10.0%, 0.3%]  | 102   |

Improvements by deduplicating reads in the query infrastructure.
Further improvements might be possible and are being discussed in the comments of the PR.

Rollup of 24 pull requests [#159046](https://github.com/rust-lang/rust/pull/159046) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d465559281ebfb5b586913285f4d40f9b518b729&end=3ead112e67f8feb4d6b09e12f1b5d83b87698961&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.7%]   | 3     |
| Regressions (secondary)  | 0.0%  | [0.0%, 0.0%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.1%  | [-0.4%, 0.7%]  | 4     |

Some of the regressions are noise, and I'm still trying to triage which PR caused the last regressions.
Regressions are relatively small and most likely will just be accepted.

Rollup of 15 pull requests [#159113](https://github.com/rust-lang/rust/pull/159113) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=48e8ec6f05057f942a97187dde770a118e05f42c&end=ad49852b6f3dd9c1c73fe909d8843bb7e464b387&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.6%]   | 5     |
| Regressions (secondary)  | 0.3%  | [0.0%, 0.6%]   | 9     |
| Improvements (primary)   | -0.6% | [-0.6%, -0.6%] | 1     |
| Improvements (secondary) | -0.1% | [-0.2%, -0.0%] | 6     |
| All  (primary)                 | 0.3%  | [-0.6%, 0.6%]  | 6     |

Triaged to be caused by https://github.com/rust-lang/rust/pull/158767 and https://github.com/rust-lang/rust/pull/157690.
Author of the first PR has been pinged, regressions in the second PR are tiny.


Resolver: Wrap arenas in `WorkerLocal` [#159019](https://github.com/rust-lang/rust/pull/159019) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ad49852b6f3dd9c1c73fe909d8843bb7e464b387&end=3b58636b30eb364ac72aeaf03d46347084ed87d1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.0%, 0.5%]   | 10    |
| Improvements (primary)   | -0.4% | [-0.5%, -0.2%] | 10    |
| Improvements (secondary) | -0.2% | [-0.3%, -0.0%] | 7     |
| All  (primary)                 | -0.4% | [-0.5%, -0.2%] | 10    |

Small regressions on two stress benchmarks from worker local arenas.
It's acceptable, and we'll need to integrate resolver into the parallel compiler sooner or later anyway.
The build reduced graph changes are potential micro-optimizations (that's where the diesel improvements come from),
and the worker local changes are pessimizations.

Preparatory changes for macro parsing BFS->DFS [#158974](https://github.com/rust-lang/rust/pull/158974) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f0b782b56ad24e1bf7270b15ac52cbad0b0ad879&end=77cf889bc178ddb44d6a1c78e5a820b5abb31d8d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 2     |
| Improvements (secondary) | -3.8% | [-5.2%, -2.1%] | 9     |
| All  (primary)                 | -0.1% | [-0.4%, 0.3%]  | 4     |

Great perf results on tt-muncher! icounts, cycles, and wall-time all agree that it got significantly faster.
Improvements outweigh regressions significantly.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

None this week
