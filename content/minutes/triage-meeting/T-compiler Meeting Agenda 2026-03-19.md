---
tags: weekly, rustc
type: docs
note_id: _lpHCix1Qf2qPUzfKPUliQ
---

# T-compiler Meeting Agenda 2026-03-19

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- None

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Change the ABI of powerpc64-unknown-linux-gnu to ELFv2" [compiler-team#977](https://github.com/rust-lang/compiler-team/issues/977) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20the.20ABI.20of.20powerpc64-unknown-linux.E2.80.A6.20compiler-team.23977))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 7 months ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: 5 months ago)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 48 days ago)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 48 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: about 48 days ago)
  - "Tier 3 targets proposal: LoongArch UEFI" [compiler-team#953](https://github.com/rust-lang/compiler-team/issues/953) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20targets.20proposal.3A.20LoongArch.20UEFI.20compiler-team.23953)) (last review activity: about 48 days ago)
  - "Emit retags in codegen" [compiler-team#958](https://github.com/rust-lang/compiler-team/issues/958) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20retags.20in.20codegen.20compiler-team.23958)) (last review activity: about 48 days ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: about 48 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote loongarch32-unknown-none* to Tier 2 (compiler-team#968)](https://github.com/rust-lang/compiler-team/issues/968#issuecomment-3907992097)
    - @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|353056**
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
    - @_**|120518** @_**|116266** @_**|424212** @_**|124288** @_**|123586** @_**|270929** @_**|125250** @_**|116107** @_**|248906** @_**|120179** @_**|245964** @_**|116118** @_**|415544** @_**|296292** @_**|353056**
    - concerns: [cargo-impact (by epage)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4070064048)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Promote aarch64-unknown-freebsd to Tier 2 with host tools" [compiler-team#961](https://github.com/rust-lang/compiler-team/issues/961) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20aarch64-unknown-freebsd.20to.20Tier.202.E2.80.A6.20compiler-team.23961))
  - "Remove -Csoft-float" [compiler-team#971](https://github.com/rust-lang/compiler-team/issues/971) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20-Csoft-float.20compiler-team.23971))
  - "allow `incomplete_features` in UI tests" [compiler-team#974](https://github.com/rust-lang/compiler-team/issues/974) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/allow.20.60incomplete_features.60.20in.20UI.20tests.20compiler-team.23974))
  - "Add `-Zsanitizer=kernel-hwaddress`" [compiler-team#975](https://github.com/rust-lang/compiler-team/issues/975) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zsanitizer.3Dkernel-hwaddress.60.20compiler-team.23975))
  - "rustc: Stop passing `--allow-undefined` on wasm targets" [rust#149868](https://github.com/rust-lang/rust/pull/149868)
  - "switch to v0 mangling by default on stable" [rust#151994](https://github.com/rust-lang/rust/pull/151994)
  - "privacy: Fix type privacy holes when it doesn't cause too much breakage" [rust#152543](https://github.com/rust-lang/rust/pull/152543)
  - "1.95 beta regression: "malformed `feature` attribute input"" [rust#153764](https://github.com/rust-lang/rust/issues/153764)
- Accepted MCPs
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 9 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 5 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 8 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 5 months ago)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 33 days ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 4 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: about 48 days ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: about 34 days ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976))
    - concern: [relation-with-project-goal](https://github.com/rust-lang/compiler-team/issues/976#issuecomment-4089422870)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - [T-types] "Always make tuple elements a coercion site" [rust#147834](https://github.com/rust-lang/rust/pull/147834)
  - [T-lang / T-rustdoc] "Stabilize Frontmatter" [rust#148051](https://github.com/rust-lang/rust/pull/148051)
  - [T-types] "Always check `ConstArgHasType` even when otherwise ignoring" [rust#152931](https://github.com/rust-lang/rust/pull/152931)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Don't look for non-type-level assoc consts when checking trait object types" [rust#153738](https://github.com/rust-lang/rust/pull/153738)
  - Authored by fmease
  - Closes #153731
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23153738.3A.20beta-nominated/near/578760179), in favor
  - If approved, an additional PR #153958 will need to be backported (thanks @**fmease**!)
<!--
@**triagebot** backport beta accept 153738
@**triagebot** backport beta decline 153738
-->
- :beta: "Don't add empty target features for target-cpu=native on macOS" [rust#153763](https://github.com/rust-lang/rust/pull/153763)
  - Authored by nikic (thanks!!)
  - Fixes #153397 (P-critical issue breaking compilation on Apple M5/M4)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23153763.3A.20beta-nominated/near/578867766), def. in favor
<!--
@**triagebot** backport beta accept 153763
@**triagebot** backport beta decline 153763
-->
- :beta: "Do not shallow resolve to root var while fudging" [rust#153869](https://github.com/rust-lang/rust/pull/153869)
  - Authored by ShoyuVanilla
  - Meant to address #153816 and #153849, still in review
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23153869.3A.20beta-nominated/near/580252182), seems a revert of #151380 looks preferable
  - left a comment: is this approved for merge? See [comment](https://github.com/rust-lang/rust/pull/153869#issuecomment-4084191075)
<!--
@**triagebot** backport beta accept 153869
@**triagebot** backport beta decline 153869
-->
- :beta: "Fix some suggestions of the `for-loops-over-fallibles` lint" [rust#153913](https://github.com/rust-lang/rust/pull/153913)
  - Authored by JohnTitor
  - Only FIY: approved but not yet merged, we can revisit next week
  - Fixes Fix #148114, #147973 and rust-lang/rust-clippy#16133
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23153913.3A.20beta-nominated/near/580052852)
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [45 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 4 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 37 P-high, 100 P-medium, 29 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "[ICE]: LLVM ERROR "Broken module" with -C target-cpu=native on aarch64-apple-darwin (Apple M5, LLVM 22.1.0)" [rust#153397](https://github.com/rust-lang/rust/issues/153397)
  - Addressed by #153763

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "1.95 beta regression affecting old versions of `bitvec`: "... is not dyn compatible"" [rust#153731](https://github.com/rust-lang/rust/issues/153731)
  - Addressed in #153738
- "Significant compilation time regression starting in v1.95.0-nightly (bevy)" [rust#153910](https://github.com/rust-lang/rust/issues/153910)
  - Being investigated (if anyone can help, see [comment](https://github.com/rust-lang/rust/issues/153910#issuecomment-4081663779)), seems originating from #149904. An MCVE could also be helpful
- "Complex EH flow miscompiled on wasm" [rust#153948](https://github.com/rust-lang/rust/issues/153948)
  - being investigated, @_**hoodmane** points to an LLVM upgrade ([comment](https://github.com/rust-lang/rust/issues/153948#issuecomment-4083310684)), opened a fix upstream llvm-project#187302
- "1.95 beta regression: "no method named `accept` found for struct..."" [rust#153849](https://github.com/rust-lang/rust/issues/153849)
  - Could be fixed by #153869 (or by a revert)

Note: [See here](https://github.com/rust-lang/rust/issues?q=is%3Aopen%20is%3Aissue%20label%3AI-prioritize%20label%3Aregression-from-stable-to-beta) there is a number of other beta regressions from the crater run. They are investigated, unsure about their impact.
- "1.95 beta regression: "displacement ... is not within [-2147483648, 2147483647]"" [rust#153852](https://github.com/rust-lang/rust/issues/153852)
  - Caused by llvm-project#75747 (which could be "working as intended")

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-03-16 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2026/2026-03-16.md)

Another fairly quiet week, with few changes and overall neutral performance.

Triage done by **@simulacrum**.
Revision range: [3945997a..5b61449e](https://perf.rust-lang.org/?start=3945997aabf6165261ef3419534c1ad59d9dc5c6&end=5b61449ed85a670f1dd3fca6a8c759ee0b451b66&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.1%, 0.4%]  |  53   |
| Regressions (secondary)  | 0.2%  |  [0.0%, 0.6%]  |  45   |
|  Improvements (primary)  | -1.8% | [-6.7%, -0.2%] |   4   |
| Improvements (secondary) | -1.2% | [-8.5%, -0.2%] |  10   |
|      All  (primary)      | 0.1%  | [-6.7%, 0.4%]  |  57   |

1 Regression, 1 Improvement, 2 Mixed; 3 of them in rollups
35 artifact comparisons made in total

#### Regressions

Rollup of 13 pull requests [#153672](https://github.com/rust-lang/rust/pull/153672) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0c68443b0a0469e4211acca7e7b06e14f256ada8&end=b49ecc9eb70a51e89f32a7358e790f7b3808ccb3&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   | 0.2% | [0.1%, 0.4%] |  10   |
| Regressions (secondary)  | 0.3% | [0.0%, 0.5%] |  44   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      | 0.2% | [0.1%, 0.4%] |  10   |

Due to [Implement coercions between &pin (mut|const) T and &(mut) T when T: Unpin](https://github.com/rust-lang/rust/pull/149130#issuecomment-4039415362)
and [Refactor ActiveJobGuard](https://github.com/rust-lang/rust/pull/153471#issuecomment-4039963973).

The first of those seems like an unavoidable regression (doing more work) and
regressions are limited to secondary benchmarks which stress coercions and the
second had some investigation done but didn't lead to success for CI-built
artifacts: see [this comment](https://github.com/rust-lang/rust/pull/153471#issuecomment-4065730587)
for more details.

#### Improvements

Rollup of 4 pull requests [#153642](https://github.com/rust-lang/rust/pull/153642) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3bc6ea5673e3e292db1e5b6ecaaaa883ca5af0b8&end=0c68443b0a0469e4211acca7e7b06e14f256ada8&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  | -0.2% | [-0.2%, -0.1%] |   3   |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] |  15   |
|      All  (primary)      | -0.2% | [-0.2%, -0.1%] |   3   |

Affects benchmarks that have been known to be spurious... they also regressed
in the next commit (rollup just above) so it's hard to say how real this
improvement is.

#### Mixed

Rollup of 12 pull requests [#153741](https://github.com/rust-lang/rust/pull/153741) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3b1b0ef4d80d3117924d91352c8b6ca528708b3c&end=d1ee5e59a964a419b84b760812a35075034f4861&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.1%  |  [0.1%, 0.2%]  |   4   |
| Regressions (secondary)  | 0.0%  |  [0.0%, 0.0%]  |   3   |
|  Improvements (primary)  | -0.2% | [-0.2%, -0.2%] |   1   |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] |  13   |
|      All  (primary)      | 0.1%  | [-0.2%, 0.2%]  |   5   |

Unclear what the root cause of the regression is, which is mostly affecting
just diesel. Secondary benchmarks have a bunch of improvements. Marking as
triaged since the regression seems fairly limited in scope and is probably due
to a cleanup that's worth doing even with the small perf cost. See
[comment](https://github.com/rust-lang/rust/pull/153741#issuecomment-4069943082)
for cachegrind diff.

rustdoc-search: update to stringdex 0.0.6 [#153799](https://github.com/rust-lang/rust/pull/153799) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d8897a4e88051480b36c501e66809425c6e08ad&end=a0e206b5665d7c075cdc0ca5f3637a697e8ff55a&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.4%  |  [0.4%, 0.4%]  |   1   |
| Regressions (secondary)  | 0.1%  |  [0.1%, 0.1%]  |   1   |
|  Improvements (primary)  | -3.5% | [-6.8%, -0.2%] |   2   |
| Improvements (secondary) | -8.6% | [-8.6%, -8.6%] |   1   |
|      All  (primary)      | -2.2% | [-6.8%, 0.4%]  |   3   |

Fairly expected to be a mixed result (as most heuristic/optimization tuning
things are). Improvements seem to outweigh regressions in practice, though few
benchmarks are affected.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Clean up crate type names to fix dylib vs staticlib confusion" [rust#153863](https://github.com/rust-lang/rust/issues/153863)
  - Proposal to "[...] rename `dylib` to `rdylib` and `staticlib` to `cstaticlib`" (see [comment](https://github.com/rust-lang/rust/issues/153863#:~:text=renaming%20dylib%20to%20rdylib%20and%20staticlib%20to%20cstaticlib))
  - Cargo raised concerns about the impact on cargo users ([comment](https://github.com/rust-lang/rust/issues/153863#issuecomment-4070064048))
  - Any comment from T-compiler or should we be waiting on the cargo concerna to be first clarified?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add support for xray in aarch64 unknown none target" [rust#148666](https://github.com/rust-lang/rust/pull/148666) (last review activity: 4 months ago)
  - cc: @**Wesley Wiser**
- "Stabilize stack-protector" [rust#146369](https://github.com/rust-lang/rust/pull/146369) (last review activity: 3 months ago)
  - IIUC this is/was waiting on rfcs#3855, now in FCP, see [comment](https://github.com/rust-lang/rfcs/pull/3855#issuecomment-3947708398) cc: @**Jieyou Xu**  @**Santiago Pastorino**  @**Wesley Wiser**
- "Add AddrspacePtr for pointers to non-0 addrspaces" [rust#150452](https://github.com/rust-lang/rust/pull/150452) (last review activity: 2 months ago)
  - This ended up being "blocked" on creating a notification group for the "GPU target" (see [comment](https://github.com/rust-lang/rust/pull/150452#issuecomment-3695115935)). The proposal for creating the group was [approved](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Create.20a.20GPU.20notification.20group.20compiler-team.23960/near/568629680)
  - I've just opened a PR on team#2337 (feel free to have a look)
- "naked functions: respect `function-sections`" [rust#147811](https://github.com/rust-lang/rust/pull/147811) (last review activity: 2 months ago)
  - cc: @**Amanieu d'Antras** (last ping 2 weeks ago)

Next meetings' agenda draft: [hackmd link](https://hackmd.io/-cLp7QNdRx6ortU7xb3XWw)
