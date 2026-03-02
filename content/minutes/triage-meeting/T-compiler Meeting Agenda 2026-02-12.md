---
tags: weekly, rustc
type: docs
note_id: xeF9N-QUSIOOjKLA0E7MDQ
---

# T-compiler Meeting Agenda 2026-02-12

## Announcements

- Today we release 1.93.1 to fix a few regressions on stable (not compiler related), see [blog post](https://github.com/cuviper/blog.rust-lang.org/blob/rust-1.93.1/content/Rust-1.93.1.md)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- (TIP) get them from https://github.com/rust-lang/calendar

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966))
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 3 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 6 months ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: 3 months ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: 3 months ago)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 3 months ago)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945)) (last review activity: 2 months ago)
  - "Introduce a tier-3 `wasm32-component` target" [compiler-team#948](https://github.com/rust-lang/compiler-team/issues/948) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20a.20tier-3.20.60wasm32-component.60.20tar.E2.80.A6.20compiler-team.23948)) (last review activity: about 13 days ago)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 13 days ago)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 13 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: about 13 days ago)
  - "Tier 3 targets proposal: LoongArch UEFI" [compiler-team#953](https://github.com/rust-lang/compiler-team/issues/953) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20targets.20proposal.3A.20LoongArch.20UEFI.20compiler-team.23953)) (last review activity: about 13 days ago)
  - "Emit retags in codegen" [compiler-team#958](https://github.com/rust-lang/compiler-team/issues/958) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20retags.20in.20codegen.20compiler-team.23958)) (last review activity: about 13 days ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote aarch64-unknown-freebsd to Tier 2 with host tools (compiler-team#961)](https://github.com/rust-lang/compiler-team/issues/961#issuecomment-3854207173)
    - @_**|116266** @_**|124288** @_**|119031** @_**|116122** @_**|353056**
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
  - merge: [Revert "Do not check privacy for RPITIT." (rust#146470)](https://github.com/rust-lang/rust/pull/146470#issuecomment-3553748437)
    - no pending checkboxes
    - concerns: [crater run results (by tmandry)](https://github.com/rust-lang/rust/pull/146470#issuecomment-3637982255)
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|124288** @_**|326176**
    - concerns: [implementation-confidence (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853046997) [inconsistent-name-res-semantics (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853051038)
  - merge: [rustc: Stop passing `--allow-undefined` on wasm targets (rust#149868)](https://github.com/rust-lang/rust/pull/149868#issuecomment-3775796653)
    - @_**|116266** @_**|124288** @_**|125250** @_**|119031** @_**|353056**
    - no pending concerns
  - "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
  - merge: [switch to v0 mangling by default on stable (rust#151994)](https://github.com/rust-lang/rust/pull/151994#issuecomment-3838891427)
    - @_**|116266** @_**|123586** @_**|119031** @_**|116122** @_**|116118** @_**|353056**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "For `nvptx64`, drop old CPUs and ISAs - drop support for `target-cpu` < SM 7.0 and PTX ISA < 7.0" [compiler-team#965](https://github.com/rust-lang/compiler-team/issues/965) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/For.20.60nvptx64.60.2C.20drop.20old.20CPUs.20and.20ISAs.20-.20d.E2.80.A6.20compiler-team.23965))
  - "Remove the translation `-Z` options" [compiler-team#967](https://github.com/rust-lang/compiler-team/issues/967) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20the.20translation.20infrastructure.20compiler-team.23967))
  - "Support importing path-segment keyword with renaming" [rust#146972](https://github.com/rust-lang/rust/pull/146972)
  - "Inhibit all-absent-variant optimization for all enum reprs that inhibit layout optimization, not just repr(C)." [rust#146989](https://github.com/rust-lang/rust/pull/146989)
  - "`-Znext-solver` Remove the forced ambiguity hack from search graph" [rust#149904](https://github.com/rust-lang/rust/pull/149904)
- Accepted MCPs
  - "Extend the ` x.py` policy for `TODO` and `FIXME` to other in-tree projects" [compiler-team#963](https://github.com/rust-lang/compiler-team/issues/963) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Extend.20the.20.60.20x.2Epy.60.20policy.20for.20.60TODO.60.20and.20.E2.80.A6.20compiler-team.23963))
  - "Create linker subteam/Working Group" [compiler-team#964](https://github.com/rust-lang/compiler-team/issues/964) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20linker.20subteam.2FWorking.20Group.20compiler-team.23964))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 7 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 4 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 7 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 4 months ago)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 3 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943)) (last review activity: 2 months ago)
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: about 13 days ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
 Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.
- Other teams finalized FCPs
  - "Stabilize Frontmatter" [rust#148051](https://github.com/rust-lang/rust/pull/148051)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix suppression of `unused_assignment` in binding of `unused_variable`" [rust#151556](https://github.com/rust-lang/rust/pull/151556)
  - Authored by eggyal
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151556.3A.20beta-nominated/near/572510164), green light
  - Fixes #151514 (another one stemming from #142390)
- :beta: "layout: handle rigid aliases without params" [rust#151814](https://github.com/rust-lang/rust/pull/151814)
  - Authored by lcnr
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151814.3A.20beta-nominated/near/570762156), in favor
  - Fixes #151791, a P-high (discussed during past meetings, we were waiting for it to be merged)
- :beta: "Fix missing unused_variables lint when using a match guard" [rust#151990](https://github.com/rust-lang/rust/pull/151990)
  - Authored by eggyal
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151990.3A.20beta-nominated/near/572510139)
  - Fixes #151983 (another one stemming from #142390)
- :beta: "[BETA]: parse array lengths without stripping const blocks" [rust#152237](https://github.com/rust-lang/rust/pull/152237)
  - Authored by BoxyUwU
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23152237.3A.20beta-nominated/near/572418989), in favor
  - Flaky rustdoc tests are blocking merging, see [comment](https://github.com/rust-lang/rust/pull/152237#issuecomment-3872917973) and canary PR #152393
- :beta: "Partially revert "resolve: Update `NameBindingData::vis` in place"" [rust#152498](https://github.com/rust-lang/rust/pull/152498)
  - Authored by petrochenkov
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23152498.3A.20beta-nominated/near/573372073), in favor
  - By partially reverting [227e7bd](https://github.com/rust-lang/rust/commit/227e7bd48b5a7f3479bc4b231cf042e092fadd89) we fix #152004, #151124 and #152347
- :beta: "Fix feature gating for new `try bikeshed` expressions" [rust#152519](https://github.com/rust-lang/rust/pull/152519)
  - Authored by scottmcm
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23152519.3A.20beta-nominated/near/573442826)
  - Nice little fix for #152519 that is leaking the experimental `try {}`
- :stable: "layout: handle rigid aliases without params" [rust#151814](https://github.com/rust-lang/rust/pull/151814)
  - Authored by lcnr
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151814.3A.20stable-nominated/near/570762158), in favor but the backport couldn't make it in time

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
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [44 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 4 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 32 P-high, 100 P-medium, 28 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "`try bikeshed $ty { … }` is not pre-expansion gated (affects beta+nightly)" [rust#152501](https://github.com/rust-lang/rust/issues/152501)
  - will be fixed by #152519

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-02-09 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2026/2026-02-09.md)

This week we saw quite a few improvements. Largest one comes from adding two targeted `with_capacity` calls in [#151929](https://github.com/rust-lang/rust/pull/151929).
Another source of multiple improvements is the ongoing migration away from using external files to store diagnostic messages.

Triage done by **@panstromek**.
Revision range: [a60d12cb..39219ceb](https://perf.rust-lang.org/?start=a60d12cbccfbeaf153f3cecb90454aa696ea4b3b&end=39219ceb97d1b37dda72517daa9ebe8364ffe186&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 2.0%  | [2.0%, 2.0%]    | 1     |
| Regressions ❌ <br /> (secondary)  | 0.6%  | [0.0%, 2.0%]    | 22    |
| Improvements ✅ <br /> (primary)   | -0.8% | [-2.8%, -0.2%]  | 179   |
| Improvements ✅ <br /> (secondary) | -3.1% | [-31.1%, -0.0%] | 211   |
| All ❌✅ (primary)                 | -0.7% | [-2.8%, 2.0%]   | 180   |


1 Regression, 6 Improvements, 7 Mixed; 9 of them in rollups
36 artifact comparisons made in total

#### Regressions

Pass on the `feedable` query modifier to macros [#151546](https://github.com/rust-lang/rust/pull/151546) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d05e3c131d7181eb3df1a8c261f43135c99200d&end=794495e2b4a1353cf7b66ffc55f0e755490af2cc&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.4%  | [0.2%, 0.9%]   | 20    |
| Regressions ❌ <br /> (secondary)  | 0.5%  | [0.0%, 1.0%]   | 47    |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -0.0% | [-0.0%, -0.0%] | 2     |
| All ❌✅ (primary)                 | 0.4%  | [0.2%, 0.9%]   | 20    |

Regressions coming from enabling assertions that were previously disabled by accident. Already triaged by @lqd.

#### Improvements

resolve: Use `IdentKey` in `resolve_ident_in_scope_set` [#151820](https://github.com/rust-lang/rust/pull/151820) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a60d12cbccfbeaf153f3cecb90454aa696ea4b3b&end=f60a0f1bcc5a2a6dd8eb2d2021da79b40f5fbae9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.3% | [-0.3%, -0.2%] | 8     |
| Improvements ✅ <br /> (secondary) | -0.4% | [-0.9%, -0.1%] | 22    |
| All ❌✅ (primary)                 | -0.3% | [-0.3%, -0.2%] | 8     |


Use with_capacity in query_key_hash_verify and PlaceholderExpander [#151929](https://github.com/rust-lang/rust/pull/151929) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=366a1b93e7f466ebe559477add05f064873d0c71&end=0c40f5be0c8eb04d206e928c5d8c133a9142143a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.6% | [-3.3%, -0.2%] | 166   |
| Improvements ✅ <br /> (secondary) | -0.9% | [-3.4%, -0.1%] | 161   |
| All ❌✅ (primary)                 | -0.6% | [-3.3%, -0.2%] | 166   |


Rollup of 12 pull requests [#152104](https://github.com/rust-lang/rust/pull/152104) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=930ecbcdf8905c5c8549056c73fcabdd8d6e1b3d&end=8bccf1224deab49b54694c9090e577bfe90a94e6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -0.7% | [-1.5%, -0.2%] | 29    |
| All ❌✅ (primary)                 | -     | -              | 0     |


skip codegen for intrinsics with big fallback bodies if the backend does not need them [#150605](https://github.com/rust-lang/rust/pull/150605) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8bccf1224deab49b54694c9090e577bfe90a94e6&end=db3e99bbab28c6ca778b13222becdea54533d908&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -1.3% | [-2.3%, -0.4%] | 2     |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | -1.3% | [-2.3%, -0.4%] | 2     |

Note: This PR addresses a regression from November.

Rollup of 9 pull requests [#152163](https://github.com/rust-lang/rust/pull/152163) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0a13b4361264236cb40afebea97973e6dc366de3&end=66daca1a85c459b1da49dc0ef1ba027b53e4ac2c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -1.3% | [-3.6%, -0.2%] | 38    |
| All ❌✅ (primary)                 | -     | -              | 0     |


Rollup of 13 pull requests [#152213](https://github.com/rust-lang/rust/pull/152213) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cf16cd9b751f6e13caec393cef4f6f67de2f3da8&end=035b01b794602d5861daa43ac792f372f8981ed7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements ✅ <br /> (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements ✅ <br /> (secondary) | -1.8% | [-5.5%, -0.1%] | 42    |
| All ❌✅ (primary)                 | -0.2% | [-0.2%, -0.2%] | 1     |


#### Mixed

Rollup of 12 pull requests [#152063](https://github.com/rust-lang/rust/pull/152063) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=55407b8cdb1457c62e0c852f5b53a9cf63ec4e1b&end=366a1b93e7f466ebe559477add05f064873d0c71&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 0.3%  | [0.2%, 0.7%]   | 12    |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -0.4% | [-0.7%, -0.2%] | 14    |
| All ❌✅ (primary)                 | -     | -              | 0     |

Caused by https://github.com/rust-lang/rust/pull/151944. Already triaged by @JonathanBrouwer.

Rollup of 7 pull requests [#152075](https://github.com/rust-lang/rust/pull/152075) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0c40f5be0c8eb04d206e928c5d8c133a9142143a&end=1d05e3c131d7181eb3df1a8c261f43135c99200d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 0.8%  | [0.2%, 1.4%]   | 10    |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -0.3% | [-0.4%, -0.2%] | 15    |
| All ❌✅ (primary)                 | -     | -              | 0     |

Caused by https://github.com/rust-lang/rust/pull/148967. @JonathanBrouwer proposes to accept it in https://github.com/rust-lang/rust/pull/148967#issuecomment-3846276431.
The perf impact was assesed before the merge, final results are only slightly different from the last per-merge results.
All regressions are secondary stress tests, often related to CTFE.

Rollup of 18 pull requests [#152156](https://github.com/rust-lang/rust/pull/152156) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9f4b56a5aed81e8c36cc26b3c1b4666ead6b71fc&end=0a13b4361264236cb40afebea97973e6dc366de3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 1.1%  | [1.1%, 1.1%]   | 1     |
| Improvements ✅ <br /> (primary)   | -0.3% | [-0.5%, -0.2%] | 9     |
| Improvements ✅ <br /> (secondary) | -1.8% | [-7.0%, -0.1%] | 64    |
| All ❌✅ (primary)                 | -0.3% | [-0.5%, -0.2%] | 9     |

Already triaged by @JonathanBrouwer. Improvements from inline diagnostics change. One regression in UCD is noise.

Rollup of 3 pull requests [#152239](https://github.com/rust-lang/rust/pull/152239) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bce89b6a56fecd6f1a150c9657e4b50dea994f83&end=efc9e1b50cbf2cede7ebe25f0a1fc64fd8b3e942&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -               | 0     |
| Regressions ❌ <br /> (secondary)  | 0.9%  | [0.5%, 1.4%]    | 9     |
| Improvements ✅ <br /> (primary)   | -     | -               | 0     |
| Improvements ✅ <br /> (secondary) | -4.7% | [-15.6%, -0.4%] | 32    |
| All ❌✅ (primary)                 | -     | -               | 0     |

Impact caused by https://github.com/rust-lang/rust/pull/152189, Improvements outweigh regressions. Already triaged by @JonathanBrouwer.

Rollup of 4 pull requests [#152264](https://github.com/rust-lang/rust/pull/152264) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=efc9e1b50cbf2cede7ebe25f0a1fc64fd8b3e942&end=c58d9f9f82ead734d73d99a64e910718f5f464d3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 0.2%  | [0.1%, 0.2%]   | 4     |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -1.0% | [-3.2%, -0.4%] | 17    |
| All ❌✅ (primary)                 | -     | -              | 0     |

Already triaged by @JonathanBrouwer. Caused by inline diagnostics changes in https://github.com/rust-lang/rust/pull/152126 and https://github.com/rust-lang/rust/pull/152186.

Rollup of 7 pull requests [#152308](https://github.com/rust-lang/rust/pull/152308) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c7f5f3e0d5defe632d44743cbaed56272e2b67f0&end=c69e1a04db484db8974904e6f8eb1e8df21a39ba&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.8%  | [0.4%, 1.1%]   | 12    |
| Regressions ❌ <br /> (secondary)  | 0.1%  | [0.0%, 0.1%]   | 2     |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -2.1% | [-3.8%, -1.1%] | 4     |
| All ❌✅ (primary)                 | 0.8%  | [0.4%, 1.1%]   | 12    |

Caused by https://github.com/rust-lang/rust/pull/152217, already triaged by @JonathanBrouwer in https://github.com/rust-lang/rust/pull/152308#issuecomment-3867053365.

Another inline diagnostic migration change. Regressed benchmark generates a lot of diagnostics.
There's a plan to address regressions from this diagnostic migration later.

GVN: Only propagate borrows from SSA locals [#150485](https://github.com/rust-lang/rust/pull/150485) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=08a4ce529f4ea17ad1c0fa2e39ca1f5e7cd047b6&end=13c38730d981289cc7ae4cc109fd7756bf83ee67&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 1.0%  | [0.3%, 2.0%]   | 3     |
| Regressions ❌ <br /> (secondary)  | 0.7%  | [0.3%, 1.9%]   | 4     |
| Improvements ✅ <br /> (primary)   | -1.0% | [-1.0%, -1.0%] | 2     |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | 0.2%  | [-1.0%, 2.0%]  | 5     |


Results match pre-merge results, which was accepted in https://github.com/rust-lang/rust/pull/150485#issuecomment-3853373696.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Do not use dlltool to create DLL Import Libraries for Windows" [rust#147274](https://github.com/rust-lang/rust/pull/147274)
  - previously [discussed](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151814.3A.20stable-nominated/near/570762158)
  - now the binutils part is not blocking anymore but @**Mateusz Mikuła (mati865)** [points out](https://github.com/rust-lang/rust/pull/147274#issuecomment-3891144683) that we don't have a binutils minimal supported version policy
  - So how can we introduce such breaking change?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add support for xray in aarch64 unknown none target" [rust#148666](https://github.com/rust-lang/rust/pull/148666) (last review activity: 3 months ago)
  - cc @**Wesley Wiser**
- "Do not use dlltool to create DLL Import Libraries for Windows" [rust#147274](https://github.com/rust-lang/rust/pull/147274) (last review activity: about 55 days ago)
  - @**Wesley Wiser**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/xoboY9dBQTOY-_Ocpechug)
