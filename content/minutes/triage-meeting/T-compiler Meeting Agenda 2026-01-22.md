---
tags: weekly, rustc
type: docs
note_id: su5mwlYLRIOjXF4JXugHMw
---

# T-compiler Meeting Agenda 2026-01-22

## Announcements

- Today Rust 1.93 release, [blog post](https://blog.rust-lang.org/2026/01/22/Rust-1.93.0)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2026-01-22T19:00:00+01:00>

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
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 6 months ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: 3 months ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: 3 months ago)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 3 months ago)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945)) (last review activity: about 55 days ago)
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
  - merge: [Inhibit all-absent-variant optimization for all enum reprs that inhibit layout optimization, not just repr(C). (rust#146989)](https://github.com/rust-lang/rust/pull/146989#issuecomment-3720147580)
    - @_**|116009** @_**|614535** @_**|125270**
    - concerns: [crater (by joshtriplett)](https://github.com/rust-lang/rust/pull/146989#issuecomment-3720147472)
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|124288** @_**|326176**
    - concerns: [pending-reference-pr (by traviscross)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582964236)
  - merge: [rustc: Stop passing `--allow-undefined` on wasm targets (rust#149868)](https://github.com/rust-lang/rust/pull/149868#issuecomment-3775796653)
    - @_**|116266** @_**|124288** @_**|125250** @_**|116107** @_**|119031** @_**|116118** @_**|353056**
    - no pending concerns
  - "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
  - merge: [Make operational semantics of pattern matching independent of crate and module (rust#150681)](https://github.com/rust-lang/rust/pull/150681#issuecomment-3756511490)
    - @_**|116009** @_**|271719** @_**|120827** @_**|310518**
    - no pending concerns
  - merge: [Add FCW for derive helper attributes that will conflict with built-in attributes (rust#151152)](https://github.com/rust-lang/rust/pull/151152#issuecomment-3780600803)
    - @_**|116009** @_**|614535** @_**|125270**
    - concerns: [name (by traviscross)](https://github.com/rust-lang/rust/pull/151152#issuecomment-3780618296)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918))
  - "Support importing path-segment keyword with renaming" [rust#146972](https://github.com/rust-lang/rust/pull/146972)
  - "resolve: Report more visibility-related early resolution ambiguities for imports" [rust#149596](https://github.com/rust-lang/rust/pull/149596)
  - "Don't try to evaluate const blocks during constant promotion" [rust#150557](https://github.com/rust-lang/rust/pull/150557)
  - "Feature-gate `mut ref` patterns in struct pattern field shorthand" [rust#151102](https://github.com/rust-lang/rust/pull/151102)
- Accepted MCPs
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
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 2 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943)) (last review activity: about 40 days ago)
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
  - Visited [last week](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202026-01-15/near/568238343), decided to leave it backport nominated but approve for the next cycle
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
    - 👆 Note: this is reported to upstream LLVM
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [42 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 34 P-high, 100 P-medium, 28 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "macOS arm64: vec![None; N] with Option<NonZero<…>> can cause libc abort on free with codegen-units > 1" [rust#150898](https://github.com/rust-lang/rust/issues/150898)
  - regression since 1.92, visited last week
  - opened upstream issue https://github.com/llvm/llvm-project/issues/175323

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high stable regressions](#)
- Two related regressions caught my attention:
  - "ICE in release builds from 1.90.0 onwards" [rust#150263](https://github.com/rust-lang/rust/issues/150263)
  - "SignatureMismatch ICE" [rust#146965](https://github.com/rust-lang/rust/issues/146965)
    - both seems to originate from #142625
    - There's a pending patch (#150292) but it needs more work
    - Assigned P-high but unsure - maybe can we review?

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [Triage for 2026-01-19](https://github.com/rust-lang/rustc-perf/blob/panstromek-patch-1/triage/2026/2026-01-19.md)

Various changes in both direction, but not much has changed overall.

Triage done by **@panstromek**.
Revision range: [840245e9..3d087e60](https://perf.rust-lang.org/?start=840245e91b90f22adf9f26d0a0cd98c2416cdef3&end=3d087e6044bddc65723bf42c76fe4cc33a0076b0&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.1%, 1.6%]    | 21    |
| Regressions (secondary)  | 0.6%  | [0.0%, 2.6%]    | 113   |
| Improvements (primary)   | -0.3% | [-2.1%, -0.2%]  | 37    |
| Improvements (secondary) | -1.2% | [-29.6%, -0.1%] | 37    |
| All  (primary)                 | 0.0%  | [-2.1%, 1.6%]   | 58    |


3 Regressions, 4 Improvements, 7 Mixed; 6 of them in rollups
40 artifact comparisons made in total

#### Regressions

Rollup of 13 pull requests [#151087](https://github.com/rust-lang/rust/pull/151087) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fcac501a73cdde54de46a0683567f1a890730555&end=4931e09e3ac3182d2a00f38cccfdf68e8e385e1c&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   |  -   |      -       |   0   |
| Regressions (secondary)  | 0.3% | [0.1%, 0.4%] |   9   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      |  -   |      -       |   0   |

I'm inclined to say this is mostly noise, but it's not 100% clear to me. Previous PR was explicit optimization, so while this looks it could be return to default state in some cases, it could also be a legit regression. Some of those numbers also improve in next rollup (https://github.com/rust-lang/rust/pull/151107).

If this is a regression, then I'd expect https://github.com/rust-lang/rust/pull/151017 to be the cause, as we've already seen a few regressions from attribute parsing rework and based on detailed results, regressions are mostly in frontend (parse_crate, HIR and such) and in frontend-focused benchmarks. I personally don't think we need to dig deeper into this, these are small stress tests and regressions are also small.

Rollup of 15 pull requests [#151144](https://github.com/rust-lang/rust/pull/151144) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=86a49fd71fecd25b0fd20247db0ba95eeceaba28&end=b6fdaf2a15736cbccf248b532f48e33179614d40&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   |  -   |      -       |   0   |
| Regressions (secondary)  | 1.3% | [0.5%, 2.1%] |   6   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      |  -   |      -       |   0   |

Caused by https://github.com/rust-lang/rust/pull/150962, already triaged by @JonathanBrouwer. Discussion continues on the PR.

Only use SSA locals in SimplifyComparisonIntegral [#150925](https://github.com/rust-lang/rust/pull/150925) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=22c74ba91873dd013479f86eac3e9ea10593bff9&end=18ae99075575810a158cc670dcc7579f1c2ca012&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   | 0.3% | [0.2%, 0.4%] |   3   |
| Regressions (secondary)  |  -   |      -       |   0   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      | 0.3% | [0.2%, 0.4%] |   3   |

This fixes miscompilation regression, and the perf impact was measured and discussed before merge, so I assume this result is expected.

#### Improvements

Fix perf of `check_crate_level` refactor [#151015](https://github.com/rust-lang/rust/pull/151015) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2850ca8295bc253186b291314ddc239632755475&end=fcac501a73cdde54de46a0683567f1a890730555&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.5% | [-0.9%, -0.1%] |  14   |
|      All  (primary)      |   -   |       -        |   0   |


Rollup of 11 pull requests [#151107](https://github.com/rust-lang/rust/pull/151107) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2fd6efc32704647e64d3d646d21c4c68eae100e4&end=8c52f735abd1af9a73941b78fe7ed2ab08b9c0dd&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.0%  |  [0.0%, 0.0%]  |   1   |
|  Improvements (primary)  | -0.2% | [-0.3%, -0.2%] |   4   |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] |   7   |
|      All  (primary)      | -0.2% | [-0.3%, -0.2%] |   4   |


resolve: In `visit_scopes` do not extract ctxt out of span unless necessary [#150982](https://github.com/rust-lang/rust/pull/150982) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7704328ba5ae8d6ce0ac303c9d5a1a1605906766&end=b5c2a0fc0ac851e83ef943e3a2b90c1abab06baa&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  | -0.3% | [-0.5%, -0.1%] |  59   |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] |  27   |
|      All  (primary)      | -0.3% | [-0.5%, -0.1%] |  59   |


rustdoc: Stop unconditionally evaluating the initializer of associated consts [#151232](https://github.com/rust-lang/rust/pull/151232) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9f6cd6defbd7ef13f6777aa8e43b14d69f0a830a&end=fe98ddcfcfb6f185dbf4adeaf439d8a756da0273&stat=instructions:u)

|     (instructions:u)     |  mean  |      range      | count |
|:------------------------:|:------:|:---------------:|:-----:|
|  Regressions (primary)   |   -    |        -        |   0   |
| Regressions (secondary)  |   -    |        -        |   0   |
|  Improvements (primary)  | -0.3%  | [-0.4%, -0.3%]  |   2   |
| Improvements (secondary) | -14.8% | [-29.6%, -0.0%] |   2   |
|      All  (primary)      | -0.3%  | [-0.4%, -0.3%]  |   2   |


#### Mixed

Dogfood `-Zno-embed-metadata` in the standard library [#145343](https://github.com/rust-lang/rust/pull/145343) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2f1bd3f3781c90a8447e37d65a898442b8618895&end=b2a322beb29110e22a1782e2ce5ed2a0719b81ed&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.9%  |  [0.5%, 1.1%]  |   5   |
| Regressions (secondary)  | 0.3%  |  [0.1%, 0.8%]  |  45   |
|  Improvements (primary)  | -0.3% | [-0.3%, -0.2%] |   2   |
| Improvements (secondary) | -0.0% | [-0.0%, -0.0%] |   1   |
|      All  (primary)      | 0.5%  | [-0.3%, 1.1%]  |   7   |

Triaged by @Kobzol: "The tiny regressions are only noticeable on the smallest crates, they are caused by now loading both the .rmeta and .rlib files of stdlib."

Rollup of 14 pull requests [#151051](https://github.com/rust-lang/rust/pull/151051) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b2a322beb29110e22a1782e2ce5ed2a0719b81ed&end=db1484bdee1cb065b322a5bd512b39c49dadc9e5&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.1%  |  [0.1%, 0.2%]  |   4   |
| Regressions (secondary)  | 0.2%  |  [0.1%, 0.3%]  |  13   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] |   2   |
|      All  (primary)      | 0.1%  |  [0.1%, 0.2%]  |   4   |

Caused by https://github.com/rust-lang/rust/pull/150934, already triaged by @JonathanBrouwer.

Explicitly export core and std macros [#139493](https://github.com/rust-lang/rust/pull/139493) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=db1484bdee1cb065b322a5bd512b39c49dadc9e5&end=9b81629631b382fd49ee3a20ac47797b1467e52d&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.5%  |  [0.5%, 0.5%]  |   1   |
| Regressions (secondary)  | 0.1%  |  [0.0%, 0.5%]  |  10   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] |   2   |
|      All  (primary)      | 0.5%  |  [0.5%, 0.5%]  |   1   |

Pre-merge results (https://github.com/rust-lang/rust/pull/139493#issuecomment-3336171110) roughly match post-merge results, so I assume the regression is expected here. Some of this could also be noise, especially `include-blob`.

avoid phi node for pointers flowing into Vec appends [#130998](https://github.com/rust-lang/rust/pull/130998) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c52f735abd1af9a73941b78fe7ed2ab08b9c0dd&end=86a49fd71fecd25b0fd20247db0ba95eeceaba28&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.6%  |  [0.1%, 1.2%]  |  10   |
| Regressions (secondary)  | 0.2%  |  [0.1%, 0.9%]  |   8   |
|  Improvements (primary)  | -1.3% | [-2.7%, -0.5%] |   3   |
| Improvements (secondary) | -1.4% | [-4.3%, -0.3%] |   6   |
|      All  (primary)      | 0.2%  | [-2.7%, 1.2%]  |  13   |

Some change like this was expected, but this was reverted for non-perf reasons, so I don't think we need to investigate further at the moment.

Rollup of 2 pull requests [#151151](https://github.com/rust-lang/rust/pull/151151) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b6fdaf2a15736cbccf248b532f48e33179614d40&end=c9af9c1dc85a55e309345030ff9cb7ea247953fa&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 1.4%  |  [0.6%, 2.8%]  |   3   |
| Regressions (secondary)  | 1.4%  |  [0.3%, 4.5%]  |   6   |
|  Improvements (primary)  | -0.7% | [-1.1%, -0.6%] |   6   |
| Improvements (secondary) | -0.2% | [-0.6%, -0.1%] |   5   |
|      All  (primary)      | -0.0% | [-1.1%, 2.8%]  |   9   |

Revert of the previous PR, opposite effect. Quoting @Zalathar comment: "Perf changes appear to be the reverse of #130998 (comment), which is one of the PRs being reverted."

Rollup of 8 pull requests [#151291](https://github.com/rust-lang/rust/pull/151291) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=621d76794c76fc21c0a6151fbc090120e0230a91&end=ba2a7d33741a7ade4dc78e5e335d60d358cd1749&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.1%, 0.6%]  |  17   |
| Regressions (secondary)  | 0.5%  |  [0.1%, 1.7%]  |  41   |
|  Improvements (primary)  | -0.8% | [-2.3%, -0.2%] |   4   |
| Improvements (secondary) | -0.4% | [-2.1%, -0.2%] |  11   |
|      All  (primary)      | 0.0%  | [-2.3%, 0.6%]  |  21   |

Caused by https://github.com/rust-lang/rust/pull/150955, which will be addressed in https://github.com/rust-lang/rust/pull/151376 and by https://github.com/rust-lang/rust/pull/148769, I'll continue discussion there.

New MIR Pass: SsaRangePropagation [#150309](https://github.com/rust-lang/rust/pull/150309) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9b37157eceaa7c8ba4d6759335201a7dca58c2aa&end=3d087e6044bddc65723bf42c76fe4cc33a0076b0&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.2%, 0.4%]  |   4   |
| Regressions (secondary)  | 0.2%  |  [0.2%, 0.3%]  |   2   |
|  Improvements (primary)  | -0.4% | [-0.4%, -0.4%] |   1   |
| Improvements (secondary) |   -   |       -        |   0   |
|      All  (primary)      | 0.2%  | [-0.4%, 0.4%]  |   5   |

pre-merge results roughly match the final results. Based on the assessment from https://github.com/rust-lang/rust/pull/150309#issuecomment-3718871578, I assume some small regressions in `opt` are expected.

Note that I can't assess very well whether this is justified or not as I don't have that much context. The original motivation for mir-opts was improving compile time, which is what I'm triaging here. From that standpoint this is now negative and it's only acceptable if it later leads to more improvements.

As far as I can tell, the motivation here is to improve runtime performance, for which we don't have much coverage in the benchmarks, so from that standpoint it's also not obvious to me whether this is worth the cost. Somebody with more knowledge than me should make that judgement.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "mir-opt: Remove the workaround in UnreachableEnumBranching" [rust#146544](https://github.com/rust-lang/rust/pull/146544) (last review activity: 4 months ago)
  - cc @**Nikita Popov**
- "Remove `FromResidual` param default" [rust#147160](https://github.com/rust-lang/rust/pull/147160)
  - cc @**scottmcm**, plus maybe a look also from Miri folks ([link](https://github.com/rust-lang/rust/pull/147160#issuecomment-3348688857)) cc @**RalfJ** @**lcnr**
- "Initial upstreaming of Rust ADBench implementations" [rust#149126](https://github.com/rust-lang/rust/pull/149126) (last review activity: 2 months ago)
  - cc @**oli**
- "fix(compiler/rustc_target): set correct linker flags for `wasm32v1-none`" [rust#145539](https://github.com/rust-lang/rust/pull/145539) (last review activity: 4 months ago)
  - <2026-01-22 Thu> cc @**bjorn3**
- "slice/ascii: Optimize `eq_ignore_ascii_case` with auto-vectorization" [rust#147436](https://github.com/rust-lang/rust/pull/147436) (last review activity: 3 months ago)
  - cc: @**scottmcm**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/iO4MFLPRThShn0Yrne0N2w)
