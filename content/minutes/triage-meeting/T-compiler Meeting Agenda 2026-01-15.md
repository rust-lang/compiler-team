---
tags: weekly, rustc
type: docs
note_id: Enma8TywSQmI1nh33j7P4g
---

# T-compiler Meeting Agenda 2026-01-15

## Announcements

- Rust 1.93 release in one week.
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce a tier-3 `wasm32-component` target" [compiler-team#948](https://github.com/rust-lang/compiler-team/issues/948) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20a.20tier-3.20.60wasm32-component.60.20tar.E2.80.A6.20compiler-team.23948))
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949))
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950))
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952))
  - "Tier 3 targets proposal: LoongArch UEFI" [compiler-team#953](https://github.com/rust-lang/compiler-team/issues/953) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20targets.20proposal.3A.20LoongArch.20UEFI.20compiler-team.23953))
  - "Emit retags in codegen" [compiler-team#958](https://github.com/rust-lang/compiler-team/issues/958) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20retags.20in.20codegen.20compiler-team.23958))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 2 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 5 months ago)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918)) (last review activity: 3 months ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: 3 months ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: 3 months ago)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 3 months ago)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945)) (last review activity: about 48 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|125250** @_**|119031** @_**|116122** @_**|116118** @_**|259697** @_**|444933**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Revert "Do not check privacy for RPITIT." (rust#146470)](https://github.com/rust-lang/rust/pull/146470#issuecomment-3553748437)
    - no pending checkboxes
    - concerns: [crater run results (by tmandry)](https://github.com/rust-lang/rust/pull/146470#issuecomment-3637982255)
  - merge: [Support importing path-segment keyword with renaming (rust#146972)](https://github.com/rust-lang/rust/pull/146972#issuecomment-3666229367)
    - @_**|116009**
    - concerns: [documentation (by traviscross)](https://github.com/rust-lang/rust/pull/146972#issuecomment-3666233920) [consistent-axioms (by nikomatsakis)](https://github.com/rust-lang/rust/pull/146972#issuecomment-3666303278)
  - merge: [Inhibit all-absent-variant optimization for all enum reprs that inhibit layout optimization, not just repr(C). (rust#146989)](https://github.com/rust-lang/rust/pull/146989#issuecomment-3720147580)
    - @_**|116009** @_**|614535** @_**|125270**
    - concerns: [crater (by joshtriplett)](https://github.com/rust-lang/rust/pull/146989#issuecomment-3720147472)
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|116009** @_**|124288** @_**|326176**
    - concerns: [pending-reference-pr (by traviscross)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582964236)
  - merge: [resolve: Report more visibility-related early resolution ambiguities for imports (rust#149596)](https://github.com/rust-lang/rust/pull/149596#issuecomment-3639273969)
    - @_**|116009** @_**|239881** @_**|125270**
    - no pending concerns
  - merge: [Do not deduplicate captured args while expanding `format_args!` (rust#149926)](https://github.com/rust-lang/rust/pull/149926#issuecomment-3650769355)
    - @_**|116009** @_**|116883** @_**|125270**
    - no pending concerns
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
  - "Create new Tier 2 targets with sanitizers enabled by default" [compiler-team#951](https://github.com/rust-lang/compiler-team/issues/951) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20new.20targets.20with.20sanitizers.20enable.E2.80.A6.20compiler-team.23951))
  - "Remove the fluent files" [compiler-team#959](https://github.com/rust-lang/compiler-team/issues/959) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20the.20fluent.20files.20compiler-team.23959))
  - "Stabilize ppc inline assembly" [rust#147996](https://github.com/rust-lang/rust/pull/147996)
  - "const-eval: always do mem-to-mem copies if there might be padding involved" [rust#148967](https://github.com/rust-lang/rust/pull/148967)
  - "FCW Lint when using an ambiguously glob imported trait" [rust#149058](https://github.com/rust-lang/rust/pull/149058)
  - "Don't try to evaluate const blocks during constant promotion" [rust#150557](https://github.com/rust-lang/rust/pull/150557)
- Accepted MCPs
  - "Promote powerpc64-unknown-linux-musl to tier 2 with host tools" [compiler-team#946](https://github.com/rust-lang/compiler-team/issues/946) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20powerpc64-unknown-linux-musl.20to.20t.E2.80.A6.20compiler-team.23946))
  - "Use `annotate-snippets` as the default emitter" [compiler-team#947](https://github.com/rust-lang/compiler-team/issues/947) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60annotate-snippets.60.20as.20the.20default.20em.E2.80.A6.20compiler-team.23947))
  - "Allow combining `--help -C help -Z help -W help` in one invocation" [compiler-team#954](https://github.com/rust-lang/compiler-team/issues/954) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20combining.20.60--help.20-C.20help.20-Z.20help.20-.E2.80.A6.20compiler-team.23954))
  - "Lint unsupported, target-specifc codegen flags" [compiler-team#957](https://github.com/rust-lang/compiler-team/issues/957) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Lint.20unsupported.2C.20target-specifc.20codegen.20.E2.80.A6.20compiler-team.23957))
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
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 2 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943)) (last review activity: about 34 days ago)
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
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

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Don't try to evaluate const blocks during constant promotion" [rust#150557](https://github.com/rust-lang/rust/pull/150557)
  - Authored by dianne
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23150557.3A.20beta-nominated/near/566097782)
  - Still waiting on T-lang decisions (and not merged)
  - At this point in time, a backport is less likely (as pointed out last [week](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202026-01-08/near/566966328))
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 33 P-high, 100 P-medium, 28 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "macOS arm64: vec![None; N] with Option<NonZero<…>> can cause libc abort on free with codegen-units > 1" [rust#150898](https://github.com/rust-lang/rust/issues/150898)
  - miscompile on Aarch64/macOS on stable 1.92
  - @**nora (Noratrieb)** (thanks!) bisected the issue to LLVM 21 upgrade, built an IR repro ([comment](https://github.com/rust-lang/rust/issues/150898#issuecomment-3733020659)), opened issue upstream [llvm/llvm-project#175323](https://github.com/llvm/llvm-project/issues/175323)
- "Miscompile involving function inlining" [rust#150904](https://github.com/rust-lang/rust/issues/150904)
  - analysis at [comment](https://github.com/rust-lang/rust/issues/150904#issuecomment-3731769799), patch at #150925 is being reviewed (thanks @**Ben Kimock (Saethlin)** @**dianqk**)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-01-12 triage logs](https://github.com/Mark-Simulacrum/rustc-perf/blob/triage/triage/2026/2026-01-12.md)

Fairly quiet week, most changes due to new features which naturally carry some
overhead for existing programs. Overall though an improvement.

Triage done by **@simulacrum**.
Revision range: [7c04f5d2..840245e9](https://perf.rust-lang.org/?start=7c04f5d216b5dcfff0a55fc20327a1c519004699&end=840245e91b90f22adf9f26d0a0cd98c2416cdef3&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.5%  | [0.2%, 2.6%]   | 20    |
| Regressions ❌ <br /> (secondary)  | 0.4%  | [0.1%, 2.5%]   | 58    |
| Improvements ✅ <br /> (primary)   | -0.8% | [-6.6%, -0.2%] | 98    |
| Improvements ✅ <br /> (secondary) | -0.5% | [-1.8%, -0.1%] | 46    |
| All ❌✅ (primary)                 | -0.6% | [-6.6%, 2.6%]  | 118   |


3 Regressions, 1 Improvement, 4 Mixed; 2 of them in rollups
31 artifact comparisons made in total

#### Regressions

Rollup of 10 pull requests [#150726](https://github.com/rust-lang/rust/pull/150726) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=74fd7516dac6e7be0e561dddb9bee4e860598f07&end=4d73a008eaf6ba3ca067a3221e5c00602e33a5f2&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.4% | [0.2%, 0.8%] | 13    |
| Regressions ❌ <br /> (secondary)  | 0.2% | [0.1%, 0.3%] | 6     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 0.4% | [0.2%, 0.8%] | 13    |

This is due to "Impls and impl items inherit dead_code lint level of the
corresponding traits and trait items
[#144113](https://github.com/rust-lang/rust/pull/144113) which adds a new
'feature' to the lint system and so is expected to carry some cost. The costs
look reasonable enough (small, only ~1 primary benchmark affected), so marking
as triaged.

Add allocator parameter to HashMap [#148545](https://github.com/rust-lang/rust/pull/148545) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4586feb998521343b91c554adbb11ba30547d67a&end=31cd367b9ca1ce359268e7adf4ea540408c0ad85&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.3% | [0.2%, 0.5%] | 3     |
| Regressions ❌ <br /> (secondary)  | 0.5% | [0.5%, 0.5%] | 1     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 0.3% | [0.2%, 0.5%] | 3     |

Expected to cause regressions (actually surprised it's so few). Marked as triaged.

Rollup of 14 pull requests [#150957](https://github.com/rust-lang/rust/pull/150957) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=08f833aa179952037d5d0c5d949d4c3ec18ec212&end=1279939b38db460bd3844a6ca44e94961a48333d&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.1% | [0.1%, 0.2%] | 4     |
| Regressions ❌ <br /> (secondary)  | 0.4% | [0.1%, 1.0%] | 20    |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 0.1% | [0.1%, 0.2%] | 4     |

Kicked off [perf runs](https://github.com/rust-lang/rust/pull/150957#issuecomment-3738810175) on
component PRs to investigate root cause. If it is related to attribute parsing
it's likely these regressions should just be accepted though.

#### Improvements

resolve: Use `Macros20NormalizedIdent` in more interfaces [#150741](https://github.com/rust-lang/rust/pull/150741) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7c41ee66db9d08e3989858acaefa1c72a6a88518&end=b68e16cfc0e9f8b29c9ec41bfa6ab0a637eff19c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 0.6%  | [0.6%, 0.6%]   | 1     |
| Improvements ✅ <br /> (primary)   | -0.3% | [-0.6%, -0.1%] | 114   |
| Improvements ✅ <br /> (secondary) | -0.4% | [-1.2%, -0.1%] | 63    |
| All ❌✅ (primary)                 | -0.3% | [-0.6%, -0.1%] | 114   |


#### Mixed

`Vec::push` in consts MVP [#147893](https://github.com/rust-lang/rust/pull/147893) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=da476f1942868cdf94ed88b01ea31170cfe95047&end=74fd7516dac6e7be0e561dddb9bee4e860598f07&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.3%  | [0.3%, 0.4%]   | 3     |
| Regressions ❌ <br /> (secondary)  | 0.2%  | [0.1%, 0.4%]   | 5     |
| Improvements ✅ <br /> (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements ✅ <br /> (secondary) | -1.8% | [-1.9%, -1.7%] | 2     |
| All ❌✅ (primary)                 | 0.2%  | [-0.2%, 0.4%]  | 4     |

Looking at a cranelift profile it loosely looks like we're spending more time
in LLVM, maybe because of the extra indirection though the `const_eval_select`?
Though I don't see obvious signs of this in godbolt diffs vs beta.

In either case, marking as triaged as further investigation doesn't seem
warranted given magnitude and general desire for this feature.

Port `#[cfg]` and `#[cfg_attr]` trace attributes to the new attribute parsers  [#150310](https://github.com/rust-lang/rust/pull/150310) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0aced202c24f9356c1640fc0a7f07433b3a7124f&end=d9617c8d9a55773a96b61ba3a4acb107d65615c1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.3%  | [0.2%, 0.6%]   | 5     |
| Regressions ❌ <br /> (secondary)  | 0.1%  | [0.1%, 0.1%]   | 1     |
| Improvements ✅ <br /> (primary)   | -0.3% | [-0.4%, -0.1%] | 13    |
| Improvements ✅ <br /> (secondary) | -0.2% | [-0.3%, -0.1%] | 11    |
| All ❌✅ (primary)                 | -0.1% | [-0.4%, 0.6%]  | 18    |

Expected regressions from attribute parsing rework. Marking as triaged. This
also shrunk crate metadata a good bit, e.g., [2% on `syn`](https://perf.rust-lang.org/compare.html?start=0aced202c24f9356c1640fc0a7f07433b3a7124f&end=d9617c8d9a55773a96b61ba3a4acb107d65615c1&stat=size:crate_metadata).

Stop emitting UbChecks on every Vec→Slice [#150265](https://github.com/rust-lang/rust/pull/150265) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3fda0e426ca17b0baa0d6e765a0d23f487350573&end=85d0cdfe3489ff1a4b86daeddba6fcf82b47bd65&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 1.3%  | [0.1%, 2.6%]   | 3     |
| Regressions ❌ <br /> (secondary)  | 2.5%  | [2.5%, 2.5%]   | 1     |
| Improvements ✅ <br /> (primary)   | -1.5% | [-5.8%, -0.1%] | 25    |
| Improvements ✅ <br /> (secondary) | -0.5% | [-1.4%, -0.1%] | 6     |
| All ❌✅ (primary)                 | -1.2% | [-5.8%, 2.6%]  | 28    |

Mixed results but overall an improvement.

Also hash spans inside the same file as relative (V2) [#150540](https://github.com/rust-lang/rust/pull/150540) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9bc8b40bc314b74e1d5e5ab21a0df39c55a34806&end=08f833aa179952037d5d0c5d949d4c3ec18ec212&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.3%  | [0.1%, 0.4%]   | 6     |
| Regressions ❌ <br /> (secondary)  | 0.3%  | [0.1%, 0.7%]   | 27    |
| Improvements ✅ <br /> (primary)   | -1.2% | [-6.5%, -0.2%] | 20    |
| Improvements ✅ <br /> (secondary) | -0.3% | [-0.5%, -0.2%] | 8     |
| All ❌✅ (primary)                 | -0.9% | [-6.5%, 0.4%]  | 26    |

See [author's note here](https://github.com/rust-lang/rust/pull/150540#issuecomment-3734528974):

> Matches the expected performance, net positive

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "naked functions: respect `function-sections`" [rust#147811](https://github.com/rust-lang/rust/pull/147811)
  - seems to be waiting on @**Amanieu d'Antras**
- "Omit suggestions when spans are invalid" [rust#147849](https://github.com/rust-lang/rust/pull/147849)
  - self-assigned to @**Jana Dönszelmann** (feel free to ask if you need support)
- "Simplify the canonical enum clone branches to a copy statement" [rust#148034](https://github.com/rust-lang/rust/pull/148034)
  - cc @**Jubilee**
- "Explicitly forget the zero remaining elements in `vec::IntoIter::fold()`." [rust#148486](https://github.com/rust-lang/rust/pull/148486)
  - mostly T-libs, is there anything here for us to review?
- "[perf] Start using pattern types in libcore" [rust#148537](https://github.com/rust-lang/rust/pull/148537)
  - labelled T-compiler but mostly other teams
- "Ignore `#[doc(hidden)]` items when computing trimmed paths for printing" [rust#148623](https://github.com/rust-lang/rust/pull/148623)
  - cc @**davidtwco** (re-rolled reviewer recently)
- "Add support for xray in aarch64 unknown none target" [rust#148666](https://github.com/rust-lang/rust/pull/148666)
  - assigned to @**Wesley Wiser** but seems to be mostly LLVM - should reroll to someone there?

Next meeting's agenda draft: [hackmd link](https://hackmd.io/su5mwlYLRIOjXF4JXugHMw)
