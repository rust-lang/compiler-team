---
tags: weekly, rustc
type: docs
note_id: nh6L_dh3Q_eZbnIOYuIOqQ
---

# T-compiler Meeting Agenda 2026-01-08

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2026-01-08T19:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce a tier-3 `wasm32-component` target" [compiler-team#948](https://github.com/rust-lang/compiler-team/issues/948) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20a.20tier-3.20.60wasm32-component.60.20tar.E2.80.A6.20compiler-team.23948))
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949))
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950))
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952))
  - "Tier 3 targets proposal: LoongArch UEFI" [compiler-team#953](https://github.com/rust-lang/compiler-team/issues/953) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20targets.20proposal.3A.20LoongArch.20UEFI.20compiler-team.23953))
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955))
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 6 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 55 days ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 3 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 5 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 5 months ago)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 3 months ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918)) (last review activity: 3 months ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: 2 months ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: 2 months ago)
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924)) (last review activity: 2 months ago)
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 2 months ago)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 2 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943)) (last review activity: about 26 days ago)
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945)) (last review activity: about 41 days ago)
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
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Create new Tier 2 targets with sanitizers enabled by default" [compiler-team#951](https://github.com/rust-lang/compiler-team/issues/951) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20new.20targets.20with.20sanitizers.20enable.E2.80.A6.20compiler-team.23951))
  - "Lint unsupported, target-specifc codegen flags" [compiler-team#957](https://github.com/rust-lang/compiler-team/issues/957) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Lint.20unsupported.2C.20target-specifc.20codegen.20.E2.80.A6.20compiler-team.23957))
  - "Stabilize ppc inline assembly" [rust#147996](https://github.com/rust-lang/rust/pull/147996)
  - "const-eval: always do mem-to-mem copies if there might be padding involved" [rust#148967](https://github.com/rust-lang/rust/pull/148967)
  - "FCW Lint when using an ambiguously glob imported trait" [rust#149058](https://github.com/rust-lang/rust/pull/149058)
- Accepted MCPs
  - "Promote powerpc64-unknown-linux-musl to tier 2 with host tools" [compiler-team#946](https://github.com/rust-lang/compiler-team/issues/946) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20powerpc64-unknown-linux-musl.20to.20t.E2.80.A6.20compiler-team.23946))
  - "Use `annotate-snippets` as the default emitter" [compiler-team#947](https://github.com/rust-lang/compiler-team/issues/947) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60annotate-snippets.60.20as.20the.20default.20em.E2.80.A6.20compiler-team.23947))
  - "Allow combining `--help -C help -Z help -W help` in one invocation" [compiler-team#954](https://github.com/rust-lang/compiler-team/issues/954) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20combining.20.60--help.20-C.20help.20-Z.20help.20-.E2.80.A6.20compiler-team.23954))
- MCPs blocked on unresolved concerns
  - <Here group MCPs blocked on unresolved concerns>
- Finalized FCPs (disposition merge)
  - "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - "Stabilize `-Zremap-path-scope`" [rust#147611](https://github.com/rust-lang/rust/pull/147611)
  - "Better closure requirement propagation." [rust#148329](https://github.com/rust-lang/rust/pull/148329)
  - "don't normalize where-clauses when checking well-formedness" [rust#148477](https://github.com/rust-lang/rust/pull/148477)
  - "misc coercion cleanups and handle safety correctly" [rust#148602](https://github.com/rust-lang/rust/pull/148602)
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
- :beta: "Perf regression fix" [rust#150056](https://github.com/rust-lang/rust/pull/150056)
  - Authored by Kivooeo
  - Follow-up to another regression fix (#149664)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23150056.3A.20beta-nominated/near/564493516) mostly in favor; one [comment](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23150056.3A.20beta-nominated/near/564857790) points out it fixes a tiny perf. regression so maybe not worth per se
- :beta: "Don't try to evaluate const blocks during constant promotion" [rust#150557](https://github.com/rust-lang/rust/pull/150557)
  - Authored by dianne
  - (Review in progress)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23150557.3A.20beta-nominated/near/566097782)
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "library: core: document layout guarantee of `TypeId`" [rust#148265](https://github.com/rust-lang/rust/pull/148265)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 32 P-high, 100 P-medium, 28 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-01-06 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2026/2026-01-06.md)

Not many PRs were merged, as it was still mostly a holiday week. [#149681](https://github.com/rust-lang/rust/pull/149681) caused small regressions across the board, this is pending investigation.

Triage done by **@kobzol**.
Revision range: [112a2742..7c04f5d2](https://perf.rust-lang.org/?start=112a274275d77ebc2b892f056a1e2fad141f4f08&end=7c04f5d216b5dcfff0a55fc20327a1c519004699&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.5%  |  [0.1%, 1.4%]  |  146  |
| Regressions (secondary)  | 0.6%  |  [0.0%, 3.5%]  |  91   |
|  Improvements (primary)  | -3.1% | [-4.7%, -1.5%] |   2   |
| Improvements (secondary) | -0.7% | [-6.4%, -0.1%] |  15   |
|      All  (primary)      | 0.4%  | [-4.7%, 1.4%]  |  148  |


2 Regressions, 0 Improvements, 7 Mixed; 4 of them in rollups
51 artifact comparisons made in total

#### Regressions

Use more principled check for generics in const ops [#150519](https://github.com/rust-lang/rust/pull/150519) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=056908d7f44ab901ae6573cf2d9c1d8b166ed1c5&end=a47f4dfd7f496ed51a383c540497899f9e3f91b4&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   | 0.2% | [0.1%, 0.3%] |   6   |
| Regressions (secondary)  | 0.2% | [0.2%, 0.2%] |   1   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      | 0.2% | [0.1%, 0.3%] |   6   |

- Tiny regression on the diesel benchmark.
- The compiler does more work here, and this fixes an ICE, so it seems warranted.
- Marked as triaged.

MGCA: Support for tuple constructors  [#150603](https://github.com/rust-lang/rust/pull/150603) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=451b7b6c775a2378fd18d2560bbfb31c3695d1cc&end=6885bdf1af7e0435b80bf79a780c3fe7a495094f&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.1% | [0.1%, 0.2%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

- The regressions are only on a few secondary stress tests and they are tiny.
- Marked as triaged.

#### Mixed

Remove the explicit branch hint from const_panic [#150386](https://github.com/rust-lang/rust/pull/150386) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b082bd59d2f6d74913b904ffdb81c0b9dd09022c&end=d874dce1252fe409ce13e64d773046853bf5e6ca&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.5%, 0.7%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.4%] | 2     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.0%] | 3     |
| All  (primary)                 | 0.1%  | [-0.5%, 0.7%]  | 4     |

- Over all benchmarks it's a wash.
- Marked as triaged.

Make inliner cycle detection a fallible process [#147361](https://github.com/rust-lang/rust/pull/147361) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=629b092f8fab1b0370dfb749c4f5e00e70169dd2&end=2848c2ebe9a8a604cd63455263299d7258bc8252&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.3%, 1.0%]   | 4     |
| Regressions (secondary)  | 0.8%  | [0.1%, 1.3%]   | 6     |
| Improvements (primary)   | -1.0% | [-4.9%, -0.1%] | 8     |
| Improvements (secondary) | -0.6% | [-6.5%, -0.1%] | 18    |
| All  (primary)                 | -0.5% | [-4.9%, 1.0%]  | 12    |

- The nalgebra win looks real.
- This changes inlining behavior, so that always perturbs compile times.
- Marked as triaged.

Rollup of 3 pull requests [#150582](https://github.com/rust-lang/rust/pull/150582) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a47f4dfd7f496ed51a383c540497899f9e3f91b4&end=1b4325211c3228dd10eea12e9b3f749f87363d95&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.2%]   | 2     |
| Improvements (primary)   | -0.1% | [-0.2%, -0.1%] | 4     |
| Improvements (secondary) | -0.7% | [-1.8%, -0.1%] | 3     |
| All  (primary)                 | -0.1% | [-0.2%, 0.2%]  | 5     |

- Tiny changes, overall it's a wash.
- Marked as triaged.

Rollup of 7 pull requests [#150669](https://github.com/rust-lang/rust/pull/150669) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f8b1d59a81c700cb7aa25cf69e3032b3ce333150&end=5afdf5d8c0377d6babd2504986982b5e5d724798&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.2%] | 4     |
| All  (primary)                 | 0.7%  | [0.7%, 0.7%]   | 1     |

- The regressed cargo benchmark seems a bit noisy.
- Over all benchmarks it's a wash, I don't think we need to investigate further.
- Marked as triaged.

Rollup of 3 pull requests [#150682](https://github.com/rust-lang/rust/pull/150682) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e29fcf45e4ae686d77b490bf07320f0d3a2cf35f&end=451b7b6c775a2378fd18d2560bbfb31c3695d1cc&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 1.5%]   | 154   |
| Regressions (secondary)  | 0.7%  | [0.0%, 3.5%]   | 87    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 4     |
| All  (primary)                 | 0.5%  | [0.1%, 1.5%]   | 154   |

- The regression was caused by [#149681](https://github.com/rust-lang/rust/pull/149681), continuing discussion there.
- Marked as triaged.

Rename the gcc component to gcc-dev [#150535](https://github.com/rust-lang/rust/pull/150535) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6885bdf1af7e0435b80bf79a780c3fe7a495094f&end=0d162b25edd5bf0dba9a22e83b614f1113e90474&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.5%, 0.6%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] | 9     |
| All  (primary)                 | -     | -              | 0     |

- Noise, this only changed a CI component.
- Marked as triaged.

Rollup of 3 pull requests [#150700](https://github.com/rust-lang/rust/pull/150700) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bd33b83cfdbac9bffa3b04aaef95ec97827909a9&end=4fa80a5e733e2202d7ca4c203c2fdfda41cfe7dc&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.0%  |  [0.0%, 0.1%]  |   2   |
|  Improvements (primary)  | -0.1% | [-0.1%, -0.1%] |   1   |
| Improvements (secondary) | -0.4% | [-0.8%, -0.0%] |   4   |
|      All  (primary)      | -0.1% | [-0.1%, -0.1%] |   1   |

- Noise.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Volatile reads and writes on aarch64 sometimes generate instructions not suitable for MMIO in protected VMs" [rust#131894](https://github.com/rust-lang/rust/issues/131894)
  - Author asks what are the guarantees of `core::ptr::write_volatile` and `core::ptr::read_volatile` on aarch64 inside virtual machines, currently they cause the hypervisor to generate faulty memory mappings (IIUC the details)
  - Asks what is the best place to clarify this behaviour: https://github.com/rust-lang/rust/issues/131894#issuecomment-3670747230
  - Jubilee supports that this should be handled at the LLVM level (here's the [reasoning](https://github.com/rust-lang/rust/issues/131894#issuecomment-3673646417)), opened a issue there [llvm-project#173014](https://github.com/llvm/llvm-project/issues/173014)
  - T-libs as well ([comment](https://github.com/rust-lang/rust/issues/131894#issuecomment-3719922651))
- "Diesel stops building with nightly-2025-12-10" [rust#149845](https://github.com/rust-lang/rust/issues/149845)
  - not nominated, just a FIY
  - regression (still in nightly) after #147984, fixed downstream by Vadim (thanks! see [comment](https://github.com/rust-lang/rust/issues/149845#issuecomment-3651764115))
  - Diesel author [asked](https://rust-lang.zulipchat.com/#narrow/channel/245100-t-compiler.2Fprioritization.2Falerts/topic/.23149845.20Diesel.20stops.20building.20with.20nightly-2025-12-10/near/563984984) if we could hold this change for a release cycle or two, given that he has very limited resources to maintain Diesel and is afraid his userbase might not have had enough time to install the fixed version of Diesel  before we land this change in 1.93 (in 2 weeks)
  - Author of # 147984 (Vadim) [prefers](https://github.com/rust-lang/rust/issues/149845#issuecomment-3712239571) landing this change either way

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- TODO

Next meeting's agenda draft: [hackmd link](https://hackmd.io/Enma8TywSQmI1nh33j7P4g)
