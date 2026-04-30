---
tags: weekly, rustc
type: docs
note_id: -cLp7QNdRx6ortU7xb3XWw
---

# T-compiler Meeting Agenda 2026-03-26

## Announcements

- Today, patch release 1.94.1, see [blog post](https://github.com/Mark-Simulacrum/blog.rust-lang.org/blob/release-blog/content/1.94.1-release.md) (patches are not for the compiler)
- FYI from @_**jieyouxu**: WG-linker is now an active WG :) Zulip group is @_*WG-linker* (see https://github.com/rust-lang/team/pull/2299)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- (TIP) get them from https://github.com/rust-lang/calendar

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 0 days ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 5 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 8 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 8 months ago)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 5 months ago)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 40 days ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 4 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 3 days ago)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 55 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: about 55 days ago)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: about 55 days ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: about 55 days ago)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: about 41 days ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976)) (last review activity: about 2 days ago)
  - "Change the ABI of powerpc64-unknown-linux-gnu to ELFv2" [compiler-team#977](https://github.com/rust-lang/compiler-team/issues/977) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20the.20ABI.20of.20powerpc64-unknown-linux.E2.80.A6.20compiler-team.23977)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote loongarch32-unknown-none* to Tier 2 (compiler-team#968)](https://github.com/rust-lang/compiler-team/issues/968#issuecomment-3907992097)
    - @_**|124288** @_**|125250** @_**|119031** @_**|353056**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Make trait refs & assoc ty paths properly induce trait object lifetime defaults (rust#129543)](https://github.com/rust-lang/rust/pull/129543#issuecomment-2862410551)
    - @_**|116009** @_**|326176** @_**|216206** @_**|232957**
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|124288** @_**|326176**
    - concerns: [implementation-confidence (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853046997) [inconsistent-name-res-semantics (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853051038)
  - "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
  - merge: [WF checks on closure arguments. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|124288** @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [Clean up crate type names to fix dylib vs staticlib confusion (rust#153863)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4061709608)
    - @_**|120518** @_**|116266** @_**|424212** @_**|124288** @_**|270929** @_**|125250** @_**|116107** @_**|248906** @_**|120179** @_**|245964** @_**|116118** @_**|415544** @_**|296292** @_**|353056**
    - concerns: [cargo-impact (by epage)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4070064048)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Emit retags in codegen" [compiler-team#958](https://github.com/rust-lang/compiler-team/issues/958) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20retags.20in.20codegen.20compiler-team.23958))
  - "Syntactically reject equality predicates" [rust#153513](https://github.com/rust-lang/rust/pull/153513)
  - "1.95 beta regression: "malformed `feature` attribute input"" [rust#153764](https://github.com/rust-lang/rust/issues/153764)
  - "stabilize s390x vector registers" [rust#154184](https://github.com/rust-lang/rust/pull/154184)
- Accepted MCPs
  - "Tier 3 targets proposal: LoongArch UEFI" [compiler-team#953](https://github.com/rust-lang/compiler-team/issues/953) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20targets.20proposal.3A.20LoongArch.20UEFI.20compiler-team.23953))
  - "Remove -Csoft-float" [compiler-team#971](https://github.com/rust-lang/compiler-team/issues/971) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20-Csoft-float.20compiler-team.23971))
  - "allow `incomplete_features` in UI tests" [compiler-team#974](https://github.com/rust-lang/compiler-team/issues/974) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/allow.20.60incomplete_features.60.20in.20UI.20tests.20compiler-team.23974))
  - "Add `-Zsanitizer=kernel-hwaddress`" [compiler-team#975](https://github.com/rust-lang/compiler-team/issues/975) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zsanitizer.3Dkernel-hwaddress.60.20compiler-team.23975))
- Finalized FCPs (disposition merge)
  - "rustc: Stop passing `--allow-undefined` on wasm targets" [rust#149868](https://github.com/rust-lang/rust/pull/149868)
  - "switch to v0 mangling by default on stable" [rust#151994](https://github.com/rust-lang/rust/pull/151994)
- Other teams finalized FCPs
  - [T-types] "Always make tuple elements a coercion site" [rust#147834](https://github.com/rust-lang/rust/pull/147834)
  - [T-rustdoc, T-lang] "Stabilize Frontmatter" [rust#148051](https://github.com/rust-lang/rust/pull/148051)
  - [T-types] "Always check `ConstArgHasType` even when otherwise ignoring" [rust#152931](https://github.com/rust-lang/rust/pull/152931)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "[beta] Revert #151380 in beta" [rust#154307](https://github.com/rust-lang/rust/pull/154307)
  - Authored by ShoyuVanilla
  - Fixes #153816 and #153849. The fix has two parts:
  - #154307 (this backport): reverts #151380 on beta
  - #154308: reverts on nightly #151380 and #153869
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23154307.3A.20beta-nominated/near/581415691), in favor
<!--
@**triagebot** backport :beta:  accept 154307
@**triagebot** backport :beta:  decline 154307
-->
- :beta: "Init `self_decl` with a correct visibility" [rust#154313](https://github.com/rust-lang/rust/pull/154313)
  - Authored by mu001999
  - Fixes #154295, code compiles that should not be accepted (debug builds only)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23154313.3A.20beta-nominated/near/581651652), in favor
<!--
@**triagebot** backport :beta:  accept 154313
@**triagebot** backport :beta:  decline 154313
-->
- :beta: "Update LLVM to 22.1.2" [rust#154344](https://github.com/rust-lang/rust/pull/154344)
  - Authored by dianqk
  - From ([comment](https://github.com/rust-lang/rust/pull/154344#issuecomment-4124882573)):
    > Fixes a not so important nightly-only miscompile for the s390x `f16::is_normal` miscompile
    > BUT fixes quite a few long-standing LLVM 22 issues (at least a ppc64le miscompile affecting the Rust uuid crate, a crash when building with PGO, and a build hang on s390x)
  - [List of changes](https://github.com/rust-lang/llvm-project/compare/41f177ed26a5252a30ea6090a4da66ce0a96bf44...05918363362b439b9b0bced3daa14badd75da790)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23154344.3A.20beta-nominated/near/581557110), in favor
<!--
@**triagebot** backport :beta: accept 154344
@**triagebot** backport :beta: decline 154344
-->
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "Strict version hash is sensitive to presence of standard library source code on host" [rust#153898](https://github.com/rust-lang/rust/issues/153898)
  - Question: do we provide any stability guarantees for these hashes?
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [46 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 4 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 100 P-medium, 31 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- None

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "Significant compilation time regression starting in v1.95.0-nightly (bevy)" [rust#153910](https://github.com/rust-lang/rust/issues/153910)
  - Still need investigation. A reduction would be useful (the bevy crate pulls in a lot of deps)
- "Complex EH flow miscompiled on wasm" [rust#153948](https://github.com/rust-lang/rust/issues/153948)
  - Investigated by xxx ([comment](https://github.com/rust-lang/rust/issues/153948#issuecomment-4089579826)), opened an upstream issue llvm-project#187302. Note: affects only legacy `eh`, the codegen with`-wasm-use-legacy-eh=false` is correct.
  - asks if in the meanwhile shouldn't we revert #151771 (from @_**apiraino**: I would be in favor of reverting, seems quite self-contained)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-03-24 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

Lot of mixed results this week. One big regression from [#152931](https://github.com/rust-lang/rust/pull/152931) makes the results look pretty negative, but otherwise the week was fairly quiet.

Triage done by **@panstromek**.
Revision range: [5b61449e..6f22f613](https://perf.rust-lang.org/?start=5b61449ed85a670f1dd3fca6a8c759ee0b451b66&end=6f22f61305478df09f9a4523743f85d9f558c3d7&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 1.0%  |  [0.1%, 4.2%]  |  27   |
| Regressions (secondary)  | 0.2%  |  [0.0%, 0.6%]  |  36   |
|  Improvements (primary)  | -0.1% | [-0.2%, -0.1%] |   3   |
| Improvements (secondary) | -0.3% | [-2.8%, -0.0%] |  14   |
|      All  (primary)      | 0.9%  | [-0.2%, 4.2%]  |  30   |


1 Regression, 1 Improvement, 4 Mixed; 1 of them in rollups
32 artifact comparisons made in total

#### Regressions

Always check `ConstArgHasType` even when otherwise ignoring [#152931](https://github.com/rust-lang/rust/pull/152931) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eb9d3caf0511a5fa9fa70251e2ac9fa33a9a4652&end=f66622c7eca7fc48ccc4dac848ff911b09a4d566&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   | 1.9% | [0.1%, 4.1%] |  13   |
| Regressions (secondary)  |  -   |      -       |   0   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      | 1.9% | [0.1%, 4.1%] |  13   |

These regressions look real, and it seems like they were not discussed before merge.

Regressed benchmarks are both type-heavy, and the regression seems to be entirely in typeck (`assumed_wf_types`, `check_well_formed`, `predicates_of` and `type_alias_is_lazy` all show some negative changes in detailed results). This seems to match the PR changes.

Asked on the PR, got response from reviewer: "typenum has a lot of type aliases, so doing additional work for them causing a regression seems expected to me. Looking at the code, I don't know how to avoid this regression"


#### Improvements

`DepNode` use improvements [#154076](https://github.com/rust-lang/rust/pull/154076) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6f22f61305478df09f9a4523743f85d9f558c3d7&end=212b0d480f337082bbe1132d2b62be20e7e61f8a&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.2% | [-0.3%, -0.0%] |  12   |
|      All  (primary)      |   -   |       -        |   0   |


#### Mixed

Do not shallow resolve to root var while fudging [#153869](https://github.com/rust-lang/rust/pull/153869) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8b86f48958be8c3473c979e0b5504c2d2e0fd4fd&end=1f7f8ea0721a3b1eb73e6c6d25cccb371434b320&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.3%  |  [0.2%, 0.4%]  |   7   |
|  Improvements (primary)  | -0.1% | [-0.1%, -0.1%] |   2   |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] |   4   |
|      All  (primary)      | -0.1% | [-0.1%, -0.1%] |   2   |

Improvements mostly outweigh regressions. Secondary regressions in `projection-caching` and `regression-31157` seem to just undo part of the wins from https://github.com/rust-lang/rust/pull/151380, so this still seems like a net improvement overall.

Eagerly normalize in generalize [#151746](https://github.com/rust-lang/rust/pull/151746) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bfc05d6b072585dfd0c792ec1b8728c08a3511fe&end=ac7f9ec7da74d37fd28667c86bf117a39ba5b02a&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.2%, 0.3%]  |   7   |
| Regressions (secondary)  | 0.3%  |  [0.1%, 0.4%]  |  10   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] |   1   |
|      All  (primary)      | 0.2%  |  [0.2%, 0.3%]  |   7   |

Reverted in https://github.com/rust-lang/rust/pull/154257 for other reasons

Remove the `anon` query modifier [#154122](https://github.com/rust-lang/rust/pull/154122) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=20f19f4615200b16e3631816e7824e832ff394db&end=562dee4820c458d823175268e41601d4c060588a&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.2%, 0.3%]  |   3   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  | -0.2% | [-0.2%, -0.2%] |   2   |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] |   2   |
|      All  (primary)      | 0.1%  | [-0.2%, 0.3%]  |   5   |

Quoting the author (@Zalathar):

"Small regressions to `cargo` were expected, and everything else is green. I'm experimenting with [#154162](https://github.com/rust-lang/rust/pull/154162) to undo those small regressions, but that work will have to be judged on its own perf/complexity merits."

Rollup of 8 pull requests [#154273](https://github.com/rust-lang/rust/pull/154273) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f66622c7eca7fc48ccc4dac848ff911b09a4d566&end=6f22f61305478df09f9a4523743f85d9f558c3d7&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.4%  |  [0.4%, 0.4%]  |   1   |
|  Improvements (primary)  | -0.2% | [-0.3%, -0.1%] |   7   |
| Improvements (secondary) | -0.2% | [-0.4%, -0.1%] |  17   |
|      All  (primary)      | -0.2% | [-0.3%, -0.1%] |   7   |

Regressions are noise, already triaged by @JonathanBrouwer


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

### Open T-compiler RFCs with disposition-merge + finished FCP

List: https://github.com/rust-lang/rfcs/issues?q=sort%3Aupdated-desc%20state%3Aopen%20label%3Afinished-final-comment-period%20label%3Adisposition-merge

From @_**jieyouxu**: I saw a IRLO thread recently regarding "FCP complete but not merged RFCs" so I was curious how we are doing. I only see two of them:

- "Mitigation enforcement" [rfcs#3855](https://github.com/rust-lang/rfcs/pull/3855)
  - Finished FCP 2 weeks ago: https://github.com/rust-lang/rfcs/pull/3855#issuecomment-4050365833
  - AFAICT this one seems okay to merge, I don't see any notable outstanding comments/concerns
  - Comment from @_**apiraino**: I think I agree, also [rust#146369](https://github.com/rust-lang/rust/pull/146369) was waiting on this (see [comment](https://github.com/rust-lang/rust/pull/146369#issuecomment-3288755608))
- "[RFC2603] Extend `<const>` to include str and structural constants" [rfcs#3161](https://github.com/rust-lang/rfcs/pull/3161)
  - Finished FCP in 2023: https://github.com/rust-lang/rfcs/pull/3161#issuecomment-1727997539
  - Now this RFC I think is maybe not ready for merge: outstanding concerns / notable unresolved questions:
    - There was some weak concern re. documenting unstable features at the time of FCP: https://github.com/rust-lang/rfcs/pull/3161#issuecomment-1930532909
    - https://github.com/rust-lang/rfcs/pull/3161#issuecomment-2180425897
    - https://github.com/rust-lang/rfcs/pull/3161#issuecomment-2191837103
    - *Maybe* @_*project-const-traits* have some further feedback for the discussions?
    - EDIT: oh, this is an **amendment** to an existing RFC. Then I'd say I agree with Eric's comment where
      > Process-wise, instead of amending RFCs, this should probably be done as a PR to update the documentation at rust-lang/rust@master/src/doc/rustc/src/symbol-mangling/v0.md.
    - Comment from @_**apiraino**: isn't the mangling v0 in FCP now? See:
      - "switch to v0 mangling by default on stable" [rust#151994](https://github.com/rust-lang/rust/pull/151994)
      - Very old story, I'd probably leave a ping there and ask about the status

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Store `chunk_domain_size` explicitly in `Chunk`." [rust#147802](https://github.com/rust-lang/rust/pull/147802) (last review activity: 5 months ago)
  - cc @**cjgillot**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/qk6pLRaLSS2_MnVFtHUGqQ)
