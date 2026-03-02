---
tags: weekly, rustc
type: docs
note_id: -qHRiHiXTsqak3NMhPs6Rg
---

# T-compiler Meeting Agenda 2026-02-05

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 2 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 6 months ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: 3 months ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: 3 months ago)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 3 months ago)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945)) (last review activity: 2 months ago)
  - "Introduce a tier-3 `wasm32-component` target" [compiler-team#948](https://github.com/rust-lang/compiler-team/issues/948) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20a.20tier-3.20.60wasm32-component.60.20tar.E2.80.A6.20compiler-team.23948)) (last review activity: about 6 days ago)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 6 days ago)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 6 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: about 6 days ago)
  - "Tier 3 targets proposal: LoongArch UEFI" [compiler-team#953](https://github.com/rust-lang/compiler-team/issues/953) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20targets.20proposal.3A.20LoongArch.20UEFI.20compiler-team.23953)) (last review activity: about 6 days ago)
  - "Emit retags in codegen" [compiler-team#958](https://github.com/rust-lang/compiler-team/issues/958) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20retags.20in.20codegen.20compiler-team.23958)) (last review activity: about 6 days ago)
  - "Promote aarch64-unknown-freebsd to Tier 2 with host tools" [compiler-team#961](https://github.com/rust-lang/compiler-team/issues/961) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20aarch64-unknown-freebsd.20to.20Tier.202.E2.80.A6.20compiler-team.23961)) (last review activity: about 0 days ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
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
  - merge: [rustc: Stop passing `--allow-undefined` on wasm targets (rust#149868)](https://github.com/rust-lang/rust/pull/149868#issuecomment-3775796653)
    - @_**|116266** @_**|124288** @_**|125250** @_**|116107** @_**|119031** @_**|353056**
    - no pending concerns
  - "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
  - merge: [switch to v0 mangling by default on stable (rust#151994)](https://github.com/rust-lang/rust/pull/151994#issuecomment-3838891427)
    - @_**|116266** @_**|123586** @_**|116107** @_**|119031** @_**|248906** @_**|116122** @_**|116118** @_**|353056**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Extend the ` x.py` policy for `TODO` and `FIXME` to other in-tree projects" [compiler-team#963](https://github.com/rust-lang/compiler-team/issues/963) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Extend.20the.20.60.20x.2Epy.60.20policy.20for.20.60TODO.60.20and.20.E2.80.A6.20compiler-team.23963))
  - "Create linker subteam/Working Group" [compiler-team#964](https://github.com/rust-lang/compiler-team/issues/964) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20linker.20subteam.2FWorking.20Group.20compiler-team.23964))
  - "For `nvptx64`, drop old CPUs and ISAs - drop support for `target-cpu` < SM 7.0 and PTX ISA < 7.0" [compiler-team#965](https://github.com/rust-lang/compiler-team/issues/965) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/For.20.60nvptx64.60.2C.20drop.20old.20CPUs.20and.20ISAs.20-.20d.E2.80.A6.20compiler-team.23965))
  - "Stabilize the `supertrait_item_shadowing` feature" [rust#148605](https://github.com/rust-lang/rust/pull/148605)
  - "Make operational semantics of pattern matching independent of crate and module" [rust#150681](https://github.com/rust-lang/rust/pull/150681)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 7 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 4 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 6 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 3 months ago)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 3 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943)) (last review activity: about 54 days ago)
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: about 6 days ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 3 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943)) (last review activity: about 54 days ago)
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)

- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Parse ident with allowing recovery when trying to diagnose" [rust#151249](https://github.com/rust-lang/rust/pull/151249)
  - Authored by mu001999
  - Fixes #151238, caused by #146978, an ICE on top of the compiler error. Repro comes from fuzzed code.
  - (voting on Zulip wasn't triggered because was not marked as regression nor as P-high)
  - Discussed last week ([comment](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202026-01-29/near/570828078)), rather than a stable backport, we might do a beta one - but doesn't appear to be super-priority
- :beta: "layout: handle rigid aliases without params" [rust#151814](https://github.com/rust-lang/rust/pull/151814)
  - Authored by lcnr
  - Fixes #151791, which could be a P-high. Patch is quite small and seems harmless.
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151814.3A.20beta-nominated/near/570762156) is in favor but PR is still waiting on a reviewer
- :beta: "Revert enabling `outline-atomics` on various platforms" [rust#151896](https://github.com/rust-lang/rust/pull/151896)
  - Authored by tgross35
  - Partially reverts #144938. Reverts #149633
  - Issue reported is Chromium not building on nightly when using a specific extension enabled (BTI):
    > platforms using a custom-built std with unstable `-Zbranch-protection=bti` may run into issues
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151896.3A.20beta-nominated/near/571171604), def. in favor
- :beta: "Revert doc attribute parsing errors to future warnings" [rust#151952](https://github.com/rust-lang/rust/pull/151952)
  - Authored by GuillaumeGomez
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151952.3A.20beta-nominated/near/571494422)
  - Fixes #151865, a high number of crates that regressed in a crater run
- :stable: "layout: handle rigid aliases without params" [rust#151814](https://github.com/rust-lang/rust/pull/151814)
  - Authored by lcnr
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23151814.3A.20stable-nominated/near/570762158), trend is in favor but not yet reviewed/merged and likely won't make it to a 1.93.1 (if T-release decides for that)

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
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [44 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 28 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [2026-02-02 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2026/2026-02-02.md)

Overall a positive week for instruction counts (~1% improvement on
check/debug/opt/doc builds). Cycle counts and memory usage remain broadly
unchanged across the week though.

Triage done by **@simulacrum**.
Revision range: [ebf13cca..a60d12cb](https://perf.rust-lang.org/?start=ebf13cca58b551b83133d4895e123f7d1e795111&end=a60d12cbccfbeaf153f3cecb90454aa696ea4b3b&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |      range      | count |
|:------------------------:|:-----:|:---------------:|:-----:|
|  Regressions (primary)   | 2.7%  |  [0.3%, 7.3%]   |   3   |
| Regressions (secondary)  | 3.2%  |  [0.3%, 6.0%]   |   2   |
|  Improvements (primary)  | -1.2% | [-3.2%, -0.2%]  |  243  |
| Improvements (secondary) | -1.4% | [-10.2%, -0.2%] |  301  |
|      All  (primary)      | -1.2% |  [-3.2%, 7.3%]  |  246  |

0 Regression, 6 Improvements, 3 Mixed; 3 of them in rollups
33 artifact comparisons made in total

#### Regressions

No regressions this week.

#### Improvements

Rollup of 8 pull requests [#151835](https://github.com/rust-lang/rust/pull/151835) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=370143facfb348ad3b29749c0393402d76b280c3&end=842bd5be253e17831e318fdbd9d01d716557cc75&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 4     |
| Improvements (secondary) | -0.7% | [-1.1%, -0.2%] | 6     |
| All  (primary)                 | -0.2% | [-0.3%, -0.2%] | 4     |

Small improvement on a number of benchmarks for non-incremental builds, likely
due to [#147387](https://github.com/rust-lang/rust/pull/147387) which tweaked
how `hir_owner_parent` interacts with the query system.

Pass `DepNode` by reference more places [#151881](https://github.com/rust-lang/rust/pull/151881) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1e9be1b77fe89d9757d6179973b2fc970c6e83b7&end=271951ba187953d39b1c66b062d83f558aa23856&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 45    |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 17    |
| All  (primary)                 | -0.3% | [-0.4%, -0.2%] | 45    |

resolve: Use `IdentKey` in `resolve_ident_in_scope_set` [#151820](https://github.com/rust-lang/rust/pull/151820) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a60d12cbccfbeaf153f3cecb90454aa696ea4b3b&end=f60a0f1bcc5a2a6dd8eb2d2021da79b40f5fbae9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 8     |
| Improvements (secondary) | -0.4% | [-0.9%, -0.1%] | 22    |
| All  (primary)                 | -0.3% | [-0.3%, -0.2%] | 8     |

resolve: Replace `Macros20NormalizedIdent` with `IdentKey` [#151550](https://github.com/rust-lang/rust/pull/151550) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1e5065a4d99e0e3ccf1a1719055308e7a20e8f36&end=de6d33c033441c5880b863f94d7a3ec8cad141bd&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.0%  | [0.0%, 0.0%]   | 3     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.1%] | 69    |
| Improvements (secondary) | -0.5% | [-1.7%, -0.0%] | 37    |
| All  (primary)                 | -0.3% | [-0.5%, -0.1%] | 69    |

Regressions in include-blob look likely to be just noise.

Tweak `VecCache` to improve performance [#138405](https://github.com/rust-lang/rust/pull/138405) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8340622e14324d0090a6edf42fce44fea3d7824f&end=57d2fb136650d05efb3ed3ea33b330bfc85844d5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.0%, 0.2%]   | 3     |
| Improvements (primary)   | -0.4% | [-1.2%, -0.2%] | 126   |
| Improvements (secondary) | -0.5% | [-1.3%, -0.0%] | 93    |
| All  (primary)                 | -0.4% | [-1.2%, -0.2%] | 126   |

Regressions in include-blob look likely to be just noise.

Rollup of 5 pull requests [#151816](https://github.com/rust-lang/rust/pull/151816) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=80b898258da78fdd1262438126aa0cf90e395f0c&end=370143facfb348ad3b29749c0393402d76b280c3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 2     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.7%, -0.2%] | 9     |
| Improvements (secondary) | -0.4% | [-0.7%, -0.1%] | 22    |
| All  (primary)                 | -0.2% | [-0.7%, 0.3%]  | 11    |

[Doc builds improved, likely due to the portable SIMD subtree update](https://github.com/rust-lang/rust/pull/151775#issuecomment-3821741947)

Regressions are (new) noise in typenum.

#### Mixed

Rollup of 4 pull requests [#151749](https://github.com/rust-lang/rust/pull/151749) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=94a0cd15f5976fa35e5e6784e621c04e9f958e57&end=e96bb7e44fbcc23c1e6009e8d0ee8ab208668fb4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | 0.1%  | [0.0%, 0.1%]   | 3     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 22    |
| Improvements (secondary) | -0.5% | [-1.9%, -0.1%] | 53    |
| All  (primary)                 | -0.2% | [-0.4%, 0.4%]  | 23    |

This is essentially an improvement, the regressions look spurious. The
improvements appear to be due to [#151711](https://github.com/rust-lang/rust/pull/151711) which updated stdarch.
Why that caused improvements is unclear at this time.

Update to LLVM 22 [#150722](https://github.com/rust-lang/rust/pull/150722) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e96bb7e44fbcc23c1e6009e8d0ee8ab208668fb4&end=466ea4e6c39f8a43727edcc726ca86b499e14d83&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 3.2%  | [0.9%, 7.4%]    | 3     |
| Regressions (secondary)  | 2.3%  | [0.4%, 6.0%]    | 3     |
| Improvements (primary)   | -0.7% | [-2.8%, -0.2%]  | 238   |
| Improvements (secondary) | -0.9% | [-10.1%, -0.1%] | 299   |
| All  (primary)                 | -0.6% | [-2.8%, 7.4%]   | 241   |

Lots of affected benchmarks (as normal), but overall a positive LLVM update by
instruction counts. As @nnethercote notes, the cycle counts are a little red
([comment](https://github.com/rust-lang/rust/pull/150722#issuecomment-3814373587))
as we've seen before with LLVM updates.

Tweak `SlicePartialEq` to allow MIR-inlining the `compare_bytes` call [#150945](https://github.com/rust-lang/rust/pull/150945) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a234ae6b6538d41de6886cb7742d062ad832b0e3&end=1e5065a4d99e0e3ccf1a1719055308e7a20e8f36&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.6%]   | 6     |
| Regressions (secondary)  | 0.7%  | [0.7%, 0.7%]   | 1     |
| Improvements (primary)   | -0.9% | [-2.3%, -0.1%] | 7     |
| Improvements (secondary) | -2.3% | [-2.3%, -2.3%] | 1     |
| All  (primary)                 | -0.3% | [-2.3%, 0.6%]  | 13    |

Expected mixed results from an inlining change. Overall positive.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "replace box_new with lower-level intrinsics" [rust#148190](https://github.com/rust-lang/rust/pull/148190) (last review activity: 2 months ago)
  - This has been waiting for a long time. Can anyone take it? :)
- "Add `String<A>` type with custom allocator parameter" [rust#149328](https://github.com/rust-lang/rust/pull/149328) (last review activity: 2 months ago)
  - cc @**Amanieu d'Antras** (but probably other people are involved)
- "implement error multi provider" [rust#149615](https://github.com/rust-lang/rust/pull/149615) (last review activity: 2 months ago)
  - cc @**The 8472|330154**

Next meeting's agenda draft: [hackmd link](https://hackmd.io/xeF9N-QUSIOOjKLA0E7MDQ)
