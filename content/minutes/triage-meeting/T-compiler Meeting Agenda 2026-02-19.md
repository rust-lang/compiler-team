---
tags: weekly, rustc
type: docs
note_id: xoboY9dBQTOY-_Ocpechug
---

# T-compiler Meeting Agenda 2026-02-19

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 3 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 6 months ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: 4 months ago)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945)) (last review activity: 2 months ago)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 20 days ago)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 20 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: about 20 days ago)
  - "Tier 3 targets proposal: LoongArch UEFI" [compiler-team#953](https://github.com/rust-lang/compiler-team/issues/953) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20targets.20proposal.3A.20LoongArch.20UEFI.20compiler-team.23953)) (last review activity: about 20 days ago)
  - "Emit retags in codegen" [compiler-team#958](https://github.com/rust-lang/compiler-team/issues/958) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20retags.20in.20codegen.20compiler-team.23958)) (last review activity: about 20 days ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: about 20 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote aarch64-unknown-freebsd to Tier 2 with host tools (compiler-team#961)](https://github.com/rust-lang/compiler-team/issues/961#issuecomment-3854207173)
    - @_**|116266** @_**|124288** @_**|119031** @_**|116122** @_**|353056**
    - no pending concerns
  - merge: [Promote loongarch32-unknown-none* to Tier 2 (compiler-team#968)](https://github.com/rust-lang/compiler-team/issues/968#issuecomment-3907992097)
    - @_**|116266** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|248906** @_**|116122** @_**|116118** @_**|343125** @_**|353056**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Make trait refs & assoc ty paths properly induce trait object lifetime defaults (rust#129543)](https://github.com/rust-lang/rust/pull/129543#issuecomment-2862410551)
    - @_**|116009** @_**|326176** @_**|216206** @_**|232957**
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|124288** @_**|326176**
    - concerns: [implementation-confidence (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853046997) [inconsistent-name-res-semantics (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853051038)
  - merge: [rustc: Stop passing `--allow-undefined` on wasm targets (rust#149868)](https://github.com/rust-lang/rust/pull/149868#issuecomment-3775796653)
    - @_**|116266** @_**|124288** @_**|119031** @_**|353056**
    - no pending concerns
  - "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
  - merge: [switch to v0 mangling by default on stable (rust#151994)](https://github.com/rust-lang/rust/pull/151994#issuecomment-3838891427)
    - @_**|116266** @_**|123586** @_**|119031** @_**|116122** @_**|353056**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Introduce a tier-3 `wasm32-component` target" [compiler-team#948](https://github.com/rust-lang/compiler-team/issues/948) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20a.20tier-3.20.60wasm32-component.60.20tar.E2.80.A6.20compiler-team.23948))
  - "Remove the translation `-Z` options" [compiler-team#967](https://github.com/rust-lang/compiler-team/issues/967) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20the.20translation.20infrastructure.20compiler-team.23967))
  - "Add a `--min-recursion-limit` command line flag" [compiler-team#969](https://github.com/rust-lang/compiler-team/issues/969) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20.60--recursion-limit.60.20command.20line.20fl.E2.80.A6.20compiler-team.23969))
  - "Place-less cg_ssa intrinsics" [compiler-team#970](https://github.com/rust-lang/compiler-team/issues/970) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Place-less.20cg_ssa.20intrinsics.20compiler-team.23970))
  - "Inhibit all-absent-variant optimization for all enum reprs that inhibit layout optimization, not just repr(C)." [rust#146989](https://github.com/rust-lang/rust/pull/146989)
- Accepted MCPs
  - "For `nvptx64`, drop old CPUs and ISAs - drop support for `target-cpu` < SM 7.0 and PTX ISA < 7.0" [compiler-team#965](https://github.com/rust-lang/compiler-team/issues/965) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/For.20.60nvptx64.60.2C.20drop.20old.20CPUs.20and.20ISAs.20-.20d.E2.80.A6.20compiler-team.23965))

- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 8 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 4 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 7 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 4 months ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 5 days ago)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 3 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: about 20 days ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: about 6 days ago)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
- Finalized FCPs (disposition merge)
  - "`-Znext-solver` Remove the forced ambiguity hack from search graph" [rust#149904](https://github.com/rust-lang/rust/pull/149904)
- Other teams finalized FCPs
  - "Stabilize Frontmatter" [rust#148051](https://github.com/rust-lang/rust/pull/148051)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Consider captures to be used by closures that unwind" [rust#152103](https://github.com/rust-lang/rust/pull/152103)
  - Authored by eggyal
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23152103.3A.20beta-nominated/near/574142473) in favor
  - Fixes #152079, p-high regression from #142390
- :beta: "Fix feature gating for new `try bikeshed` expressions" [rust#152519](https://github.com/rust-lang/rust/pull/152519)
  - Authored by scottmcm
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23152519.3A.20beta-nominated/near/573442826), in favor
  - PR now merged, fixes p-high #152501
- :beta: "reject inline const patterns pre-expansion" [rust#152548](https://github.com/rust-lang/rust/pull/152548)
  - Authored by dianne
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23152548.3A.20beta-nominated/near/573567989), in favor
  - partial revert changes in #149667 to fix #152499
- :beta: "layout_of unexpected rigid alias delayed bug" [rust#152575](https://github.com/rust-lang/rust/pull/152575)
  - Authored by lcnr
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23152575.3A.20beta-nominated/near/573735593), in favor (already discussed lasat week?)
  - fixes a P-high #152545
- :beta: "resolve: Disable an assert that no longer holds" [rust#152711](https://github.com/rust-lang/rust/pull/152711)
  - Authored by petrochenkov
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23152711.3A.20beta-nominated/near/574106033), in favor
- :stable: "layout: handle rigid aliases without params" [rust#151814](https://github.com/rust-lang/rust/pull/151814)
  - Authored by lcnr
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151814.3A.20beta-nominated/near/570762156)
  - mentioned here for completeness, discussed last week ([comment](https://github.com/rust-lang/rust/pull/151814#issuecomment-3891598977)), we agreed it might get into a `.2` in case is planned

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [43 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 29 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-02-17 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2026/2026-02-17.md)

Several pull requests introduced (usually very small) regressions across the board this week. On the
other hand, [#151380](https://github.com/rust-lang/rust/pull/151380) provided a nice performance win in the inference engine.
I would also like to bring attention to [#152375](https://github.com/rust-lang/rust/pull/152375),
which improved the parallel frontend. It is not shown in this report, because we don't yet have
many benchmarks for the parallel frontend, but this PR seemingly improved the `check` (wall-time)
performance with multiple frontend threads on several real-world crates by 5-10%!

Triage done by **@kobzol**.
Revision range: [39219ceb..3c9faa0d](https://perf.rust-lang.org/?start=39219ceb97d1b37dda72517daa9ebe8364ffe186&end=3c9faa0d037b9eecda4a440cc482ff7f960fb8a5&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.7%  |  [0.2%, 3.1%]  |  96   |
| Regressions (secondary)  | 1.1%  |  [0.0%, 5.7%]  |  62   |
|  Improvements (primary)  | -0.4% | [-0.9%, -0.2%] |   8   |
| Improvements (secondary) | -2.6% | [-7.0%, -0.0%] |  45   |
|      All  (primary)      | 0.6%  | [-0.9%, 3.1%]  |  104  |


2 Regressions, 0 Improvements, 9 Mixed; 4 of them in rollups
36 artifact comparisons made in total

#### Regressions

Rollup of 17 pull requests [#152562](https://github.com/rust-lang/rust/pull/152562) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=47611e16044c68ef27bac31c35fda2ba1dc20b73&end=d7daac06d87e1252d10eaa44960164faac46beff&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.5%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

- Noise that got reverted in a follow-up PR.
- Already marked as triaged.

replace box_new with lower-level intrinsics [#148190](https://github.com/rust-lang/rust/pull/148190) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=71e00273c0921e1bc850ae8cc4161fbb44cfa848&end=3c9faa0d037b9eecda4a440cc482ff7f960fb8a5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.5%, 1.9%]   | 8     |
| Regressions (secondary)  | 1.8%  | [0.4%, 5.5%]   | 24    |
| Improvements (primary)   | -0.8% | [-0.8%, -0.8%] | 1     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)                 | 0.6%  | [-0.8%, 1.9%]  | 9     |

- Small performance hit across the board caused by refactoring how Box works internally.
- Was deemed acceptable pre-merge.
- Marked as triaged.

#### Mixed

Rollup of 12 pull requests [#152399](https://github.com/rust-lang/rust/pull/152399) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=71dc761bfe791895c5997dda654dca1dad817413&end=18d13b5332916ffca8eadb9106d54b5b434e9978&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 3     |
| Regressions (secondary)  | 0.8%  | [0.1%, 1.4%]   | 26    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 8     |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 3     |

- The largest regressions seem to be caused by [#152327](https://github.com/rust-lang/rust/pull/152327).
- That PR fixed some compiler bugs, so the regression on a secondary benchmarks seems justifiable.
- Marked as triaged.

Update mgca to use `type const` syntax instead of the `#[type_const]` attribute.  [#152324](https://github.com/rust-lang/rust/pull/152324) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=18d13b5332916ffca8eadb9106d54b5b434e9978&end=381e9ef09effbed5f1378a24dc6e461fea35a0e1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 0.7%]   | 18    |
| Regressions (secondary)  | 0.5%  | [0.0%, 1.7%]   | 13    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.0%] | 4     |
| All  (primary)                 | 0.4%  | [0.1%, 0.7%]   | 18    |

- It is unclear whether the regressions were expected or not.
- Asked the reviewer to follow up.
- Not marking as triaged yet.

Update to LLVM 22.1.0-rc3 [#152428](https://github.com/rust-lang/rust/pull/152428) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7dc2e92b83be02dc07f87be7e94266d6e48e5ca5&end=7057231bd78d6c7893f905ea1832365d4c5efe17&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.1%  | [0.0%, 0.2%]   | 4     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.1%] | 10    |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 1     |

- A few tiny changes that got over the noise threshold, but overall a wash.
- Marked as triaged.

Rollup of 7 pull requests [#152506](https://github.com/rust-lang/rust/pull/152506) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5fdff787e6ef7cd4458f81e69cbb4d2a39439a98&end=605f49b27444a738ea4032cb77e3bdc4eb811bab&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] | 2     |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 1     |

- Very small regressions across the board, but I don't think it's worth it to dig deeper.
- Marked as triaged.

Start using pattern types in libcore (NonZero and friends) [#148537](https://github.com/rust-lang/rust/pull/148537) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7ad4e69ad585d8ff214f7b42d01f1959eda08f40&end=bb8b30a5fce59f5d3d17a8f010601c59f0f19d79&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.9%  | [0.1%, 3.8%]   | 12    |
| Regressions (secondary)  | 2.2%  | [0.1%, 3.6%]   | 4     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 2     |
| All  (primary)                 | 1.9%  | [0.1%, 3.8%]   | 12    |

- The regression was deemed [acceptable](https://github.com/rust-lang/rust/pull/148537#issuecomment-3883425825) pre-merge, and the post-merge results correspond to the previous perf. runs.
- Marked as triaged.

Make operational semantics of pattern matching independent of crate and module [#150681](https://github.com/rust-lang/rust/pull/150681) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5d04477ea8118ba54d9ce402848dda19a41d61eb&end=f8463896a9b36a04899c013bd8825a7fd29dd7a4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.1%, 1.1%]   | 7     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 12    |
| Improvements (primary)   | -2.6% | [-2.6%, -2.6%] | 1     |
| Improvements (secondary) | -2.3% | [-2.3%, -2.3%] | 1     |
| All  (primary)                 | 0.2%  | [-2.6%, 1.1%]  | 8     |

- A few small regressions across the board, mainly in `doc` builds, the rest of the profiles are a wash. Given the change made here, I suppose the perf. regression is expected.
- Marked as triaged.

Rollup of 7 pull requests [#152632](https://github.com/rust-lang/rust/pull/152632) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a33907a7a5381473eec8bcfa0c56e05a856a911c&end=7bee525095c0872e87c038c412c781b9bbb3f5dc&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 0.8%]   | 6     |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.8%]   | 3     |
| Improvements (primary)   | -0.5% | [-1.0%, -0.2%] | 3     |
| Improvements (secondary) | -1.0% | [-2.0%, -0.5%] | 5     |
| All  (primary)                 | 0.1%  | [-1.0%, 0.8%]  | 9     |

- Performance-wise it's a wash.
- Marked as triaged.

Shallow resolve ty and const vars to their root vars [#151380](https://github.com/rust-lang/rust/pull/151380) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7bee525095c0872e87c038c412c781b9bbb3f5dc&end=75b9d89c68a4a92758349272aa4e35a8eb7a6708&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 4     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.1%] | 14    |
| Improvements (secondary) | -2.7% | [-7.1%, -0.1%] | 50    |
| All  (primary)                 | -0.3% | [-0.4%, -0.1%] | 14    |

- Many more wins than losses.
- Marked as triaged.

Big query system cleanups [#152636](https://github.com/rust-lang/rust/pull/152636) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=139651428df86cf88443295542c12ea617cbb587&end=fef627b1ebdc7369ddf8a4031a5d25733ac1fb34&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 10    |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.3%]   | 9     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.3%] | 4     |
| All  (primary)                 | 0.3%  | [0.2%, 0.4%]   | 10    |

- The small performance regressions were investigated and deemed to be caused mostly by inlining perturbations.
- Already marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add inline asm support for amdgpu" [rust#149793](https://github.com/rust-lang/rust/pull/149793) (last review activity: 2 months ago)
  - this has been bouncing around for a while and landed on @**Amanieu d'Antras**
- "Implement `-Z allow-partial-mitigations` (RFC 3855)" [rust#149357](https://github.com/rust-lang/rust/pull/149357) (last review activity: 2 months ago)
  - cc @**Ramon de C Valle**
- "Implement method signature suggestion for trait mismatches error" [rust#149027](https://github.com/rust-lang/rust/pull/149027) (last review activity: 2 months ago)
  - cc: @**Mads Marquart**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/PlVsh_eMSluYBCXJ-MDhiQ)
