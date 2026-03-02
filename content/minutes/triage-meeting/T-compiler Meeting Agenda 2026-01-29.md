---
tags: weekly, rustc
type: docs
note_id: iO4MFLPRThShn0Yrne0N2w
---

# T-compiler Meeting Agenda 2026-01-29

## Announcements

- Tip: have a look at a first data extraction from the contributor survey results in `#all/private`
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce a tier-3 `wasm32-component` target" [compiler-team#948](https://github.com/rust-lang/compiler-team/issues/948) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20a.20tier-3.20.60wasm32-component.60.20tar.E2.80.A6.20compiler-team.23948))
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949))
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950))
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952))
  - "Tier 3 targets proposal: LoongArch UEFI" [compiler-team#953](https://github.com/rust-lang/compiler-team/issues/953) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20targets.20proposal.3A.20LoongArch.20UEFI.20compiler-team.23953))
  - "Emit retags in codegen" [compiler-team#958](https://github.com/rust-lang/compiler-team/issues/958) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20retags.20in.20codegen.20compiler-team.23958))
  - "Promote aarch64-unknown-freebsd to Tier 2 with host tools" [compiler-team#961](https://github.com/rust-lang/compiler-team/issues/961) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20aarch64-unknown-freebsd.20to.20Tier.202.E2.80.A6.20compiler-team.23961))
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 2 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 6 months ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: 3 months ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: 3 months ago)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 3 months ago)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945)) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|116118** @_**|259697** @_**|444933**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Revert "Do not check privacy for RPITIT." (rust#146470)](https://github.com/rust-lang/rust/pull/146470#issuecomment-3553748437)
    - no pending checkboxes
    - concerns: [crater run results (by tmandry)](https://github.com/rust-lang/rust/pull/146470#issuecomment-3637982255)
  - merge: [Support importing path-segment keyword with renaming (rust#146972)](https://github.com/rust-lang/rust/pull/146972#issuecomment-3666229367)
    - no pending checkboxes
    - concerns: [self-super-behavior (by traviscross)](https://github.com/rust-lang/rust/pull/146972#issuecomment-3808391770)
  - merge: [Inhibit all-absent-variant optimization for all enum reprs that inhibit layout optimization, not just repr(C). (rust#146989)](https://github.com/rust-lang/rust/pull/146989#issuecomment-3720147580)
    - @_**|116009** @_**|614535**
    - concerns: [crater (by joshtriplett)](https://github.com/rust-lang/rust/pull/146989#issuecomment-3720147472)
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|124288** @_**|326176**
    - concerns: [pending-reference-pr (by traviscross)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582964236)
  - merge: [rustc: Stop passing `--allow-undefined` on wasm targets (rust#149868)](https://github.com/rust-lang/rust/pull/149868#issuecomment-3775796653)
    - @_**|116266** @_**|124288** @_**|125250** @_**|116107** @_**|119031** @_**|353056**
    - no pending concerns
  - "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
  - merge: [Make operational semantics of pattern matching independent of crate and module (rust#150681)](https://github.com/rust-lang/rust/pull/150681#issuecomment-3756511490)
    - @_**|271719** @_**|120827** @_**|310518**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Extend the ` x.py` policy for `TODO` and `FIXME` to other in-tree projects" [compiler-team#963](https://github.com/rust-lang/compiler-team/issues/963) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Extend.20the.20.60.20x.2Epy.60.20policy.20for.20.60TODO.60.20and.20.E2.80.A6.20compiler-team.23963))
  - "resolve: Report more visibility-related early resolution ambiguities for imports" [rust#149596](https://github.com/rust-lang/rust/pull/149596)
  - "Feature-gate `mut ref` patterns in struct pattern field shorthand" [rust#151102](https://github.com/rust-lang/rust/pull/151102)
  - "Add FCW for derive helper attributes that will conflict with built-in attributes" [rust#151152](https://github.com/rust-lang/rust/pull/151152)
- Accepted MCPs
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918))
  - "Promote powerpc64-unknown-linux-musl to tier 2 with host tools" [compiler-team#946](https://github.com/rust-lang/compiler-team/issues/946) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20powerpc64-unknown-linux-musl.20to.20t.E2.80.A6.20compiler-team.23946))
  - "Use `annotate-snippets` as the default emitter" [compiler-team#947](https://github.com/rust-lang/compiler-team/issues/947) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60annotate-snippets.60.20as.20the.20default.20em.E2.80.A6.20compiler-team.23947))
  - "Create new Tier 2 targets with sanitizers enabled by default" [compiler-team#951](https://github.com/rust-lang/compiler-team/issues/951) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20new.20targets.20with.20sanitizers.20enable.E2.80.A6.20compiler-team.23951))
  - "Allow combining `--help -C help -Z help -W help` in one invocation" [compiler-team#954](https://github.com/rust-lang/compiler-team/issues/954) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20combining.20.60--help.20-C.20help.20-Z.20help.20-.E2.80.A6.20compiler-team.23954))
  - "Lint unsupported, target-specifc codegen flags" [compiler-team#957](https://github.com/rust-lang/compiler-team/issues/957) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Lint.20unsupported.2C.20target-specifc.20codegen.20.E2.80.A6.20compiler-team.23957))
  - "Remove the fluent files" [compiler-team#959](https://github.com/rust-lang/compiler-team/issues/959) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20the.20fluent.20files.20compiler-team.23959))
- MCPs blocked on unresolved concerns
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955))
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 7 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 3 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 6 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 3 months ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 2 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943)) (last review activity: about 47 days ago)
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)
- Finalized FCPs (disposition merge)
  - "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - "Stabilize `-Zremap-path-scope`" [rust#147611](https://github.com/rust-lang/rust/pull/147611)
- Other teams finalized FCPs
  - "Don't strip shebang in expr-ctxt `include!(…)`" [rust#146377](https://github.com/rust-lang/rust/pull/146377)
  - "Stabilize `const_mul_add`" [rust#148052](https://github.com/rust-lang/rust/pull/148052)
  - "Better closure requirement propagation." [rust#148329](https://github.com/rust-lang/rust/pull/148329)
  - "don't normalize where-clauses when checking well-formedness" [rust#148477](https://github.com/rust-lang/rust/pull/148477)
  - "misc coercion cleanups and handle safety correctly" [rust#148602](https://github.com/rust-lang/rust/pull/148602)
  - "const validation: remove check for mutable refs in final value of const" [rust#148746](https://github.com/rust-lang/rust/pull/148746)
  - "Policy on the use of `rustc_legacy_const_generics` in stdarch" [rust#149654](https://github.com/rust-lang/rust/issues/149654)

## Backport nominations

Note: given the number of possible stable backport candidates, [T-release will discuss tomorrow a 1.93.1](https://rust-lang.zulipchat.com/#narrow/channel/241545-t-release/topic/1.2E93.2E1/near/570079075). Few of the following PRs are still open, though.

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Don't try to evaluate const blocks during constant promotion" [rust#150557](https://github.com/rust-lang/rust/pull/150557)
  - Authored by dianne
  - Note: now merged, discussed [2 weeks ago](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202026-01-15/near/568238822) and decided to leave it nominated and backport in the next release cycle
- :beta: "layout: handle rigid aliases without params" [rust#151814](https://github.com/rust-lang/rust/pull/151814)
  - Authored by lcnr
  - Just opened, quite small, fixes P-high #151791
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151814.3A.20beta-nominated/near/570762156)
- :stable: "Don't try to recover keyword as non-keyword identifier " [rust#150590](https://github.com/rust-lang/rust/pull/150590)
  - Authored by jieyouxu
  - Merged 4 days ago, backport PR in #151714
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23150590.3A.20stable-nominated/near/569989784), majority in favour though - in isolation - wouldn't justify a dot release
- :stable: "Parse ident with allowing recovery when trying to diagnose" [rust#151249](https://github.com/rust-lang/rust/pull/151249)
  - Authored by mu001999
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151249.3A.20stable-nominated/near/570535621), unsure? Backport suggested by PR author, see [comment](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23150590.3A.20stable-nominated/near/570450343)
- :stable: "layout: handle rigid aliases without params" [rust#151814](https://github.com/rust-lang/rust/pull/151814)
  - Authored by lcnr
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151814.3A.20stable-nominated/near/570762158)
  - Just opened, quite small, fixes P-high #151791

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
- [64 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [46 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 37 P-high, 100 P-medium, 28 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- None

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Chromium hitting SIGILL crashes on aarch64 after #144938 enabled outlined atomics by default" [rust#151486](https://github.com/rust-lang/rust/issues/151486)
  - This is being discussed

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-01-27 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2026/2026-01-27.md)

This week saw a very nice win from doing overall less work in the compiler (https://github.com/rust-lang/rust/pull/151382). There were a few regressions, but only in artificial stress tests,
we are keeping an eye on them.

Triage done by **@kobzol**.
Revision range: [3d087e60..ebf13cca](https://perf.rust-lang.org/?start=3d087e6044bddc65723bf42c76fe4cc33a0076b0&end=ebf13cca58b551b83133d4895e123f7d1e795111&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |      range      | count |
|:------------------------:|:-----:|:---------------:|:-----:|
|  Regressions (primary)   | 0.6%  |  [0.2%, 1.8%]   |   9   |
| Regressions (secondary)  | 3.1%  |  [0.1%, 19.9%]  |  47   |
|  Improvements (primary)  | -1.0% | [-3.1%, -0.2%]  |  195  |
| Improvements (secondary) | -1.4% | [-10.1%, -0.1%] |  157  |
|      All  (primary)      | -1.0% |  [-3.1%, 1.8%]  |  204  |


2 Regressions, 2 Improvements, 6 Mixed; 6 of them in rollups
42 artifact comparisons made in total

#### Regressions

Rollup of 8 pull requests [#151395](https://github.com/rust-lang/rust/pull/151395) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=79818181387879de7a521366d9bea23624728462&end=fffc4fcf96b30bc838551de5104d74f82400b35b&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.9%] | 18    |
| Regressions (secondary)  | 0.7% | [0.2%, 1.1%] | 24    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.2%, 0.9%] | 18    |

* The doc regressions were caused by [#151091](https://github.com/rust-lang/rust/pull/151091).
* This adds new functionality to rustdoc.
* Already marked as triaged.

Rollup of 12 pull requests [#151716](https://github.com/rust-lang/rust/pull/151716) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b3cda168c8afd5c4240a9477f6a7f54e70e2589a&end=ebf13cca58b551b83133d4895e123f7d1e795111&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 4.0% | [0.0%, 5.2%] | 10    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

* Considerable regression on a single stress test caused by [#151529](https://github.com/rust-lang/rust/pull/151529).
* Continuing discussion on the PR.
* Marked as triaged.

#### Improvements

Only run finalizers of accepted attributes [#151382](https://github.com/rust-lang/rust/pull/151382) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=af6695c1142706c7a0718431f49057fa52e4c33f&end=d276646872981067251b0fe70131561f4a4142d8&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.0%  | [0.0%, 0.0%]    | 1     |
| Improvements (primary)   | -1.0% | [-3.2%, -0.2%]  | 182   |
| Improvements (secondary) | -1.7% | [-10.0%, -0.1%] | 110   |
| All  (primary)                 | -1.0% | [-3.2%, -0.2%]  | 182   |


Rollup of 4 pull requests [#151443](https://github.com/rust-lang/rust/pull/151443) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=88ad3d44ca811d988cb4df35f7ab8ac9d4fca451&end=838db2538201a845a3694c99d9114a1acebd6e28&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.0%, 0.2%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 11    |
| Improvements (secondary) | -0.5% | [-1.0%, -0.2%] | 22    |
| All  (primary)                 | -0.3% | [-0.3%, -0.2%] | 11    |


#### Mixed

Rollup of 15 pull requests [#151381](https://github.com/rust-lang/rust/pull/151381) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d940e56841ddcc05671ead99290e35ff2e98369f&end=63f4513795b198d034f5d19962659ea488163755&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 4.6%  | [0.1%, 20.1%]  | 20    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | -0.2% | [-0.2%, -0.2%] | 1     |

* A large regression on stress tests was caused by [#148623](https://github.com/rust-lang/rust/pull/148623).
* Continuing discussion on the PR.
* Marked as triaged.

compiler: upgrade to hashbrown 0.16.1 [#151076](https://github.com/rust-lang/rust/pull/151076) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=058a763dd295a4ea6a8d0c94e326d852e32f52ea&end=79818181387879de7a521366d9bea23624728462&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 3     |
| Regressions (secondary)  | 0.6%  | [0.1%, 1.2%]   | 8     |
| Improvements (primary)   | -0.8% | [-0.8%, -0.7%] | 2     |
| Improvements (secondary) | -0.3% | [-1.4%, -0.1%] | 12    |
| All  (primary)                 | -0.2% | [-0.8%, 0.2%]  | 5     |

* Dependency update, performance-wise overall a wash.
* Marked as triaged.

Use `repeat_packed` when calculating layouts in `RawVec` [#151389](https://github.com/rust-lang/rust/pull/151389) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=165591238e723f2e4a1adecb0b4bacebb805bb6f&end=9283d592deb2887311b9fa95027fd78c2172e554&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.7%, 1.8%]   | 2     |
| Regressions (secondary)  | 0.4%  | [0.2%, 1.6%]   | 9     |
| Improvements (primary)   | -0.2% | [-0.8%, -0.2%] | 35    |
| Improvements (secondary) | -0.4% | [-1.8%, -0.1%] | 43    |
| All  (primary)                 | -0.2% | [-0.8%, 1.8%]  | 37    |

* More improvements than regressions.
* Already marked as triaged.

Rollup of 10 pull requests [#151634](https://github.com/rust-lang/rust/pull/151634) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=75963ce795666bc1f961e5d60060809809f6bc68&end=4d38622e8bec00a9001264c4e9f4723fceca23cb&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | 1.0%  | [0.3%, 3.0%]   | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.6% | [-0.9%, -0.2%] | 7     |
| All  (primary)                 | 0.7%  | [0.7%, 0.7%]   | 1     |

* While the regression on the incremental case of a single stress test looks real, there is only a single tiny regression on real world benchmarks, and overall the results are a wash. I don't think it's worth it investigating further.
* Marked as triaged.

optimize `vec.extend(slice.to_vec())`, take 2 [#151337](https://github.com/rust-lang/rust/pull/151337) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=38c71295e8cdc6f04511fd7a12b28f000b620994&end=873d4682c7d285540b8f28bfe637006cef8918a6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.3%, 1.0%]   | 6     |
| Regressions (secondary)  | 0.3%  | [0.0%, 0.7%]   | 4     |
| Improvements (primary)   | -0.6% | [-0.7%, -0.5%] | 2     |
| Improvements (secondary) | -0.5% | [-4.2%, -0.0%] | 12    |
| All  (primary)                 | 0.3%  | [-0.7%, 1.0%]  | 8     |

* The results are a wash overall.
* Marked as triaged.

Rollup of 5 pull requests [#151727](https://github.com/rust-lang/rust/pull/151727) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ebf13cca58b551b83133d4895e123f7d1e795111&end=78df2f92de1da3601d967dc8beb9f9cea267e45f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.0%, 0.1%]   | 4     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.0%] | 3     |
| All  (primary)                 | -0.3% | [-0.3%, -0.3%] | 1     |

* The regressions are very tiny and only on two secondary benchmarks, I don't think we have to investigate further.
* Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

This week skip :-)

Next meetings' agenda draft: [hackmd link](https://hackmd.io/-qHRiHiXTsqak3NMhPs6Rg)
