---
tags: weekly, rustc
type: docs
note_id: 9jpzIPVMRlCSiV9ELJWoXw
---

# T-compiler Meeting Agenda 2026-03-12

## Announcements

- Discussion about a possible [1.94.1](https://rust-lang.zulipchat.com/#narrow/channel/241545-t-release/topic/1.2E94.2E1/near/578158700) (but nothing from T-compiler)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Stable MIR weekly <time:2026-03-13T16:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  -  "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 3 months ago)
  -  "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 7 months ago)
  -  "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: 4 months ago)
  -  "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 41 days ago)
  -  "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 41 days ago)
  -  "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: about 41 days ago)
  -  "Tier 3 targets proposal: LoongArch UEFI" [compiler-team#953](https://github.com/rust-lang/compiler-team/issues/953) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20targets.20proposal.3A.20LoongArch.20UEFI.20compiler-team.23953)) (last review activity: about 41 days ago)
  -  "Emit retags in codegen" [compiler-team#958](https://github.com/rust-lang/compiler-team/issues/958) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20retags.20in.20codegen.20compiler-team.23958)) (last review activity: about 41 days ago)
  -  "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: about 41 days ago)
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
  -  "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
  - merge: [WF checks on closure arguments. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|124288** @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
- Things in FCP (make sure you're good with it)
  -  "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  -  "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  -  "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  -  "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  -  "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945))
  -  "Promote aarch64-unknown-freebsd to Tier 2 with host tools" [compiler-team#961](https://github.com/rust-lang/compiler-team/issues/961) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20aarch64-unknown-freebsd.20to.20Tier.202.E2.80.A6.20compiler-team.23961))
  -  "Remove -Csoft-float" [compiler-team#971](https://github.com/rust-lang/compiler-team/issues/971) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20-Csoft-float.20compiler-team.23971))
  -  "allow `incomplete_features` in UI tests" [compiler-team#974](https://github.com/rust-lang/compiler-team/issues/974) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/allow.20.60incomplete_features.60.20in.20UI.20tests.20compiler-team.23974))
  -  "Add `-Zsanitizer=kernel-hwaddress`" [compiler-team#975](https://github.com/rust-lang/compiler-team/issues/975) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zsanitizer.3Dkernel-hwaddress.60.20compiler-team.23975))
  -  "rustc: Stop passing `--allow-undefined` on wasm targets" [rust#149868](https://github.com/rust-lang/rust/pull/149868)
  -  "switch to v0 mangling by default on stable" [rust#151994](https://github.com/rust-lang/rust/pull/151994)
  -  "privacy: Fix type privacy holes when it doesn't cause too much breakage" [rust#152543](https://github.com/rust-lang/rust/pull/152543)
  -  "Remove `ATTRIBUTE_ORDER`" [rust#153041](https://github.com/rust-lang/rust/pull/153041)
- Accepted MCPs
  -  "Remove soft_unstable" [compiler-team#972](https://github.com/rust-lang/compiler-team/issues/972) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20soft_unstable.20compiler-team.23972))

- MCPs blocked on unresolved concerns
  -  "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 8 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  -  "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 5 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  -  "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 7 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  -  "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 5 months ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
  -  "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 26 days ago)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
  -  "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 4 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  -  "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: about 41 days ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  -  "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: about 27 days ago)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - "Always make tuple elements a coercion site" [rust#147834](https://github.com/rust-lang/rust/pull/147834)
  - "Stabilize Frontmatter" [rust#148051](https://github.com/rust-lang/rust/pull/148051)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta:  "Don't look for non-type-level assoc consts when checking trait object types" [rust#153738](https://github.com/rust-lang/rust/pull/153738)
  - Authored by fmease
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23153738.3A.20beta-nominated/near/578760179)
  - both issue and PR just opened, we can review next week
<!--
Triagebot commands for handling backports on GitHub
If approved: @triagebot backport :beta:  accept 153738
If declined: @triagebot backport :beta:  decline 153738
-->
- :beta:  "Don't add empty target features for target-cpu=native on macOS" [rust#153763](https://github.com/rust-lang/rust/pull/153763)
  - Authored by nikic
  - Fixes #153397 (P-critical, in beta), miscompile on mac M5/M4 (and with different flags on M1 as well)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23153763.3A.20beta-nominated/near/578867766), PR just opened but seems to be a good backport candidate
<!--
Triagebot commands for handling backports on GitHub
If approved: @triagebot backport :beta:  accept 153763
If declined: @triagebot backport :beta:  decline 153763
-->
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- None
  - [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [43 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 100 P-medium, 29 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "[ICE]: LLVM ERROR "Broken module" with -C target-cpu=native on aarch64-apple-darwin (Apple M5, LLVM 22.1.0)" [rust#153397](https://github.com/rust-lang/rust/issues/153397)
   - Fixed by #153763 (see backports)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "1.95 beta regression affecting old versions of `bitvec`: "... is not dyn compatible"" [rust#153731](https://github.com/rust-lang/rust/issues/153731)
  - Just opened, waiting for feedback

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-03-10 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2026/2026-03-10.md)

Almost no regressions this week, while there was a handful of performance improvements
caused by the ongoing refactoring of the compiler query system. The largest one was from
[#153521](https://github.com/rust-lang/rust/pull/153521).

Triage done by **@kobzol**.
Revision range: [ddd36bd5..3945997a](https://perf.rust-lang.org/?start=ddd36bd57051f796850345b76c17e9402e28a9e4&end=3945997aabf6165261ef3419534c1ad59d9dc5c6&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.4%  |  [0.4%, 0.5%]  |   3   |
| Regressions (secondary)  | 0.6%  |  [0.1%, 1.2%]  |   8   |
|  Improvements (primary)  | -0.9% | [-2.5%, -0.1%] |  110  |
| Improvements (secondary) | -0.8% | [-2.7%, -0.1%] |  77   |
|      All  (primary)      | -0.9% | [-2.5%, 0.5%]  |  113  |


0 Regressions, 6 Improvements, 3 Mixed; 5 of them in rollups
31 artifact comparisons made in total

#### Improvements

Remove `tls::with_related_context`. [#153316](https://github.com/rust-lang/rust/pull/153316) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f82485388963286763f8c8a9261ac227627f6a18&end=ff086354c9fc93e1da1d2f4d255456624fbcd099&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 5     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.0%] | 21    |
| All  (primary)                 | -0.2% | [-0.2%, -0.1%] | 5     |


Get rid of `QueryVTable::call_query_method_fn` [#153387](https://github.com/rust-lang/rust/pull/153387) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ea5573a6c6e5e932f917ec4a8e6d8efdeb9f394d&end=085c58f2c0c7db692a2eaf2b8970ff474eed9183&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 15    |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 5     |
| All  (primary)                 | -0.3% | [-0.3%, -0.2%] | 15    |


Rollup of 2 pull requests [#153541](https://github.com/rust-lang/rust/pull/153541) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=085c58f2c0c7db692a2eaf2b8970ff474eed9183&end=e3d66fe39ae70380fa2365c008e2927479114844&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 9     |
| All  (primary)                 | -     | -              | 0     |


Don't use incremental disk-cache for query `predicates_of` [#153521](https://github.com/rust-lang/rust/pull/153521) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e370b60cf2b0d3e4b55923ec1558c5b5f8970cfb&end=052b9c23daccef254010e43d6c4d0a5459caec5b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-2.0%, -0.1%] | 92    |
| Improvements (secondary) | -1.0% | [-2.6%, -0.2%] | 40    |
| All  (primary)                 | -0.8% | [-2.0%, -0.1%] | 92    |


Rollup of 6 pull requests [#153579](https://github.com/rust-lang/rust/pull/153579) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b41f22de2a13a0babd28771e96feef4c309f54aa&end=eda4fc7733ee89e484d7120cafbd80dcb2fce66e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 3     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)                 | -0.2% | [-0.4%, -0.1%] | 3     |


core: respect precision in `ByteStr` `Display` [#153025](https://github.com/rust-lang/rust/pull/153025) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eda4fc7733ee89e484d7120cafbd80dcb2fce66e&end=98e7077b903559d7a4fafb775cd5292cc9427b67&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.8%, -0.2%] | 4     |
| Improvements (secondary) | -0.8% | [-0.8%, -0.8%] | 1     |
| All  (primary)                 | -0.4% | [-0.8%, -0.2%] | 4     |


#### Mixed

Rollup of 10 pull requests [#153304](https://github.com/rust-lang/rust/pull/153304) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8ddf4ef064fb702fed0f3d239ec8d0bac607484e&end=ec818fda361ca216eb186f5cf45131bd9c776bb4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 0.6%]   | 5     |
| Regressions (secondary)  | 0.3%  | [0.0%, 0.5%]   | 3     |
| Improvements (primary)   | -0.7% | [-1.0%, -0.4%] | 2     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.1%  | [-1.0%, 0.6%]  | 7     |

- Only tiny perf. changes and it was overall a wash.
- Marked as triaged.

Rollup of 8 pull requests [#153377](https://github.com/rust-lang/rust/pull/153377) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d9563937fa3b030c5845811113505070109414d2&end=d933cf483edf1605142ac6899ff32536c0ad8b22&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.3%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.8% | [-0.8%, -0.7%] | 2     |
| All  (primary)                 | 0.1%  | [0.1%, 0.1%]   | 1     |

- The deep-vector tiny regression was likely https://github.com/rust-lang/rust/pull/153258, but it doesn't seem worth it to deal with that.
- Marked as triaged.

Rollup of 4 pull requests [#153552](https://github.com/rust-lang/rust/pull/153552) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=052b9c23daccef254010e43d6c4d0a5459caec5b&end=c3d014032f39a252387ca7c4fe4039c1b7c01eb4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -2.3% | [-2.5%, -2.2%] | 4     |
| Improvements (secondary) | -0.8% | [-0.8%, -0.8%] | 1     |
| All  (primary)                 | -2.3% | [-2.5%, -2.2%] | 4     |

- The coercions tiny loss swung back in the next PR.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Convert `-Ctarget-cpu` into a target-modifier for AVR, AMDGCN and NVPTX " [rust#150732](https://github.com/rust-lang/rust/pull/150732) (last review activity: about 59 days ago)
  - Unsure who should review next (@_**RalfJ** and @_**Alice Ryhl** already gave a first pass)
- "Fix Hexagon ABI calling convention for small aggregates" [rust#151572](https://github.com/rust-lang/rust/pull/151572) (last review activity: about 47 days ago)
  - cc @**Jack Huey** bot assigned so feel free to reroll. PR has been bouncing for a while - any taker?
- "Fix wrong suggestion for returning async closure" [rust#151194](https://github.com/rust-lang/rust/pull/151194) (last review activity: about 40 days ago)
  - This is reviewed by someone else - maybe just merge?

Next meetings' agenda draft: [hackmd link](https://hackmd.io/_lpHCix1Qf2qPUzfKPUliQ)
