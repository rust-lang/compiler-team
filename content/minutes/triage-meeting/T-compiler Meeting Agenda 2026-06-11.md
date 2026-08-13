---
tags: weekly, rustc
type: docs
note_id: EMdqzvKwTga744deYVpMgg
---

# T-compiler Meeting Agenda 2026-06-11

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours <time:2026-06-11T16:15:00+02:00> and <time:2026-06-15T16:00:00+02:00>
- P-high review (compiler-team#900), tentative scheduling
  - <time:2026-06-19T16:00:00+02:00>
  - <time:2026-06-26T16:00:00+02:00>
  - (who wants to participate? Send an invite also in #t-compiler?)

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add `-Zglobal-target-cpu`" [compiler-team#991](https://github.com/rust-lang/compiler-team/issues/991) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zglobal-target-cpu.60.20compiler-team.23991))
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 7 days ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 7 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 2 months ago)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 4 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 3 months ago)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Stabilize `-Zprofile-sample-use` (rust#155942)](https://github.com/rust-lang/rust/pull/155942#issuecomment-4603443003)
    - @_**|116266** @_**|125250** @_**|116107** @_**|119031** @_**|116122** @_**|370197** @_**|343125**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Create new Tier 3 targets: `powerpc64le-unknown-none-softfloat`, `powerpc64-unknown-none-softfloat`, `powerpc-unknown-none-softfloat`" [compiler-team#988](https://github.com/rust-lang/compiler-team/issues/988) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988))
  - "Create a new Tier 3 target: `s390x-ibm-zos`" [compiler-team#992](https://github.com/rust-lang/compiler-team/issues/992) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60s390x-ibm-zo.E2.80.A6.20compiler-team.23992))
  - "Set requirements for windows-gnu" [compiler-team#993](https://github.com/rust-lang/compiler-team/issues/993) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20requirements.20for.20windows-gnu.20compiler-team.23993))
  - "Add `-Zllvm-target-feature` target *modifier* to directly set LLVM-level target features, and deprecate doing that with `-Ctarget-feature`" [compiler-team#994](https://github.com/rust-lang/compiler-team/issues/994) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zllvm-target-feature.60.20target.20.2Amodif.E2.80.A6.20compiler-team.23994))
  - "Test new solver and polonius alpha on CI" [compiler-team#996](https://github.com/rust-lang/compiler-team/issues/996) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Test.20new.20solver.20and.20polonius.20alpha.20on.20CI.20compiler-team.23996))
  - "Desugar async blocks in HIR instead of MIR" [compiler-team#997](https://github.com/rust-lang/compiler-team/issues/997) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Desugar.20async.20blocks.20in.20HIR.20instead.20of.20MIR.20compiler-team.23997))
    - concern: [back-to-the-future](https://github.com/rust-lang/compiler-team/issues/997#issuecomment-4643474187)
  - "Deny `todo!()` in tidy" [compiler-team#999](https://github.com/rust-lang/compiler-team/issues/999) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Deny.20.60todo.21.28.29.60.20in.20tidy.20compiler-team.23999))
  - "Clean up crate type names to fix dylib vs staticlib confusion" [rust#153863](https://github.com/rust-lang/rust/issues/153863)
- Accepted MCPs
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950))
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976))
  - "Removing the unstable ptx linker flavor" [compiler-team#990](https://github.com/rust-lang/compiler-team/issues/990) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Removing.20the.20unstable.20ptx.20linker.20flavor.20compiler-team.23990))
- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 8 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
    - Author will close it ([comment](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Basic.20target.20naming.20rules.20compiler-team.23850/near/546742986)) after posting an RFC about target alias
    - Did anyone encounter that yet?
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 10 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
    - pinged author ([comment](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876/near/590425048)), they didn't respond
    - maybe close?
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 8 months ago)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - Some concerns were raised, unsure if the author could address them directly.
    - @_**Trevor Gross** left a [comment](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916/near/540612015) suggesting a more lightweight approach
    - Maybe leave a ping to check for an update? I think I don't see a clear agreement, is there anything I am missing?
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 3 months ago)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - Concerns are still unresolved, there is a general opposition to the proposal
    - Feel candidate for closing
- Finalized FCPs (disposition merge)
  - None

### Beta regressions (being triaged, unprioritized)

(Maybe we can have a short look at these)

- [1.97 beta regression involving backtraces · Issue #157432 · rust-lang/rust](https://github.com/rust-lang/rust/issues/157432)
  - can close this as accepted breaking of #151994 (maybe adding a `rel-notes` label, cc @**davidtwo** as author), see [comment](https://github.com/rust-lang/rust/issues/157432#issuecomment-4623440580)
- [1.97 beta rustdoc regression: "queries overflow the depth limit!" · Issue #157411 · rust-lang/rust](https://github.com/rust-lang/rust/issues/157411)
  - suspect dupe, cannot repro (ext. deps)
  - maybe candidate for closing?

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "resolve: Partially revert "Remove a special case for dummy imports"" [rust#157719](https://github.com/rust-lang/rust/pull/157719)
  - Authored by petrochenkov, nominated by @_**Jack Huey**
  - Partial revert to fix #157406
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23157719.3A.20beta-nominated/near/601860482), the patch looks pretty small so probably no harm in backporting
<!--
@**triagebot** backport beta accept 157719
@**triagebot** backport beta decline 157719
-->
- :beta: "resolve: Remove exported imports from `maybe_unused_trait_imports`" [rust#157713](https://github.com/rust-lang/rust/pull/157713)
  - Authored and nominated by petrochenkov
  - Very small fix for #157420 (fixes a miscompile due to a misleading unused warning)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23157719.3A.20beta-nominated/near/601860482), the patch looks pretty small so probably no harm in backporting
<!--
@**triagebot** backport beta accept 157713
@**triagebot** backport beta decline 157713
-->

- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- :beta: "Do not eagerly normalize alias during coherence" [rust#157617](https://github.com/rust-lang/rust/pull/157617)
  - Authored by Shourya742
  - Fix beta regression #157407 (P-high beta regression)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23157617.3A.20beta-nominated/near/601180776) @_**lcnr** agrees, this would backport a fix to the coherence checking, discussed [here](https://rust-lang.zulipchat.com/#narrow/channel/326866-t-types.2Fnominated/topic/.23157407.3A.201.2E97.20beta.20regression.3A.20.22conflicting.20implementations.E2.80.A6/near/601113797)
<!--
@**triagebot** backport beta accept 157617
@**triagebot** backport beta decline 157617
-->
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "Stabilize `-Zprofile-sample-use`" [rust#155942](https://github.com/rust-lang/rust/pull/155942)
  - In FCP since last week ([comment](https://github.com/rust-lang/rust/pull/155942#issuecomment-4603443003)), needs a look from T-compiler
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)
  - (Sent a few pings around to check for updates)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [43 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 32 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "1.97 beta regression: "conflicting implementations of trait"" [rust#157407](https://github.com/rust-lang/rust/issues/157407)
  - PR #157617 opened (being being reviewed)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-06-09 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

A fairly noisy week, with a bunch of small regressions contained within,
leading to a slight increase on average in instruction counts. This week had a
lot of large rollups, likely due to some CI problems, but thankfully many of
those came with pre-triaged perf results by the time (thank you to those
triagers!). Roughly similar slight regressions for cycles and wall times across
the week.

Triage done by **@simulacrum**.
Revision range: [4804ad7e..f3ef3bd8](https://perf.rust-lang.org/?start=4804ad7e93e1b31f4605b7083871d0d3d85a2afe&end=f3ef3bd882dd24a275a60701a67c3bb330edd8c1&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.5%  |  [0.1%, 2.0%]  |  124  |
| Regressions (secondary)  | 1.2%  |  [0.1%, 9.9%]  |  116  |
|  Improvements (primary)  | -0.5% | [-0.8%, -0.3%] |   4   |
| Improvements (secondary) | -1.7% | [-9.9%, -0.1%] |  41   |
|      All  (primary)      | 0.4%  | [-0.8%, 2.0%]  |  128  |

2 Regressions, 0 Improvements, 10 Mixed; 5 of them in rollups
32 artifact comparisons made in total

#### Regressions

Rollup of 25 pull requests [#157558](https://github.com/rust-lang/rust/pull/157558) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=61d7280f3c4c63fa24c56bdaa9a446151b5a30dc&end=43a4909ee98ed4d006d9d773f5d94dc58e34f846&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   | 0.2% | [0.1%, 0.2%] |   3   |
| Regressions (secondary)  | 0.1% | [0.1%, 0.1%] |   3   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      | 0.2% | [0.1%, 0.2%] |   3   |

"mir_build: Add an extra intermediate step in MIR building for patterns"
    appears to be the root cause of small regressions. Regressions are fairly small
in magnitude and only affect two benchmarks, so not investigating further.

Optimize `checked_ilog` and `pow` when `base` is a power of two [#147250](https://github.com/rust-lang/rust/pull/147250) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=43a4909ee98ed4d006d9d773f5d94dc58e34f846&end=f20a92ec01483dc5c58e90e246f266bdad822d86&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   | 0.6% | [0.3%, 0.7%] |   4   |
| Regressions (secondary)  | 0.4% | [0.4%, 0.4%] |   1   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      | 0.6% | [0.3%, 0.7%] |   4   |

It's not clear what the root cause for the regressions is, though they seem
repeatable across multiple perf runs. It seems likely that there is some
additional inlining or similar happening into the affected benchmarks, as the
new code *is* more complicated.

Marking as triaged as the regressions are fairly small and debugging seems
fairly painful, though potentially worthwhile in terms of identifying an
opportunity for optimization.

#### Mixed

rustdoc: Fix trait impl ordering [#157233](https://github.com/rust-lang/rust/pull/157233) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4f84d9fac456d973d592cf3fb48db958ecf22506&end=0f41b4afb13b15888958eaf98a43d078a2f2b20b&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   | 0.2% | [0.1%, 0.3%] |   2   |
| Regressions (secondary)  |  -   |      -       |   0   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      | 0.2% | [0.1%, 0.3%] |   2   |

> The regressions are very small and only on two benchmarks. The code is doing
slightly more work now: a little more printing and an extra collect. I tried a
few variations on the sorting and collecting but couldn't improve things. I
think it's worth accepting this tiny regression for the improved behaviour.

Quoting `@nnethercote`'s [comment](https://github.com/rust-lang/rust/pull/157233#issuecomment-4618421664).

Rollup of 12 pull requests [#157398](https://github.com/rust-lang/rust/pull/157398) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9c963eecaaa5e9ef270e235a8b35f05e33b597ed&end=b354133fb126352871bea4b40795a45739adff2b&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.1%, 0.3%]  |   7   |
| Regressions (secondary)  | 0.3%  |  [0.1%, 0.6%]  |  41   |
|  Improvements (primary)  | -0.2% | [-0.4%, -0.2%] |   5   |
| Improvements (secondary) | -0.3% | [-0.6%, -0.0%] |   8   |
|      All  (primary)      | -0.0% | [-0.4%, 0.3%]  |  12   |

Suspecting rustdoc correctness fix in "rustdoc: IXCRE: Preserve sizedness
bounds on type params belonging to the parent item"
[#157262](https://github.com/rust-lang/rust/pull/157262) to be the root cause
for majority of regressions based on the [perf
run](https://github.com/rust-lang/rust/pull/157262#issuecomment-4655449309)
from the unrolled build.

Introduce `TypingMode::Codegen` to avoid layout cycles on coroutines [#145477](https://github.com/rust-lang/rust/pull/145477) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b354133fb126352871bea4b40795a45739adff2b&end=76dfce2cb2d3f7b7f34d62e6ffe044f7e7d76948&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.5%  |  [0.1%, 1.1%]  |  51   |
| Regressions (secondary)  | 1.5%  |  [0.1%, 9.9%]  |  43   |
|  Improvements (primary)  | -0.5% | [-0.5%, -0.5%] |   1   |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] |   1   |
|      All  (primary)      | 0.4%  | [-0.5%, 1.1%]  |  52   |

This is a correctness/unblocking change so regressions are somewhat expected.
There was already some work done on trying to get perf as reasonable as we can,
so marking as triaged.

Fix an ICE in the vtable iteration for a trait reference in const eval when a supertrait is not implemented [#156417](https://github.com/rust-lang/rust/pull/156417) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b3f7e3204640c7458c9f5096f3e9c5ad9971a51c&end=0465a9f9bb1b3eb2aabaeccb2c073cdda6dd1839&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.8%  |  [0.3%, 1.2%]  |  19   |
|  Improvements (primary)  | -0.7% | [-0.7%, -0.7%] |   1   |
| Improvements (secondary) | -0.2% | [-0.6%, -0.1%] |   6   |
|      All  (primary)      | -0.7% | [-0.7%, -0.7%] |   1   |

Correctness fix, so slight regressions are likely acceptable. Majority of the
19 regressions are concentrated in issue-46449 benchmark too (so not distinct
kinds of code getting affected).

Avoid loading HIR for check_well_formed on type declarations [#143328](https://github.com/rust-lang/rust/pull/143328) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=39ec825c441918a4ae623a9b8840d1ccd446dcff&end=ac6f3a3e778a586854bdbf8f15202e11e2348d9f&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.2%, 0.4%]  |   6   |
| Regressions (secondary)  | 0.6%  |  [0.2%, 2.2%]  |   9   |
|  Improvements (primary)  | -0.1% | [-0.1%, -0.1%] |   1   |
| Improvements (secondary) | -0.4% | [-0.4%, -0.3%] |   3   |
|      All  (primary)      | 0.3%  | [-0.1%, 0.4%]  |   7   |

Marking as triaged as an intentionally roughly neutral change in preparation
for larger refactoring, see
[this comment](https://github.com/rust-lang/rust/pull/143328#issuecomment-4576386068)
for more details.

interpret: add per-interpreter layout cache [#157275](https://github.com/rust-lang/rust/pull/157275) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8954863c81df429ebf96ea38a16c76f209995833&end=61d7280f3c4c63fa24c56bdaa9a446151b5a30dc&stat=instructions:u)

|     (instructions:u)     | mean  |      range      | count |
|:------------------------:|:-----:|:---------------:|:-----:|
|  Regressions (primary)   |   -   |        -        |   0   |
| Regressions (secondary)  | 0.1%  |  [0.1%, 0.1%]   |   3   |
|  Improvements (primary)  |   -   |        -        |   0   |
| Improvements (secondary) | -4.9% | [-11.7%, -0.5%] |  12   |
|      All  (primary)      |   -   |        -        |   0   |

Perf results are a bit hard to interpret here, but mixed seems not entirely
inaccurate. Note that this is expected to have more of an effect on cycles/wall
times (though confusingly in practice we measure effect in opposite
directions). See
[comment](https://github.com/rust-lang/rust/pull/157275#issuecomment-4654035904)
for some more investigation.

Rollup of 25 pull requests [#157586](https://github.com/rust-lang/rust/pull/157586) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f20a92ec01483dc5c58e90e246f266bdad822d86&end=029c9e18dd1f4668e1d42bb187c1c263dfe20093&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.3%  |  [0.3%, 0.3%]  |   3   |
|  Improvements (primary)  | -0.3% | [-0.7%, -0.1%] |   8   |
| Improvements (secondary) | -0.2% | [-0.4%, -0.0%] |   3   |
|      All  (primary)      | -0.3% | [-0.7%, -0.1%] |   8   |

Regressions are limited to incr-unchanged on unused-warnings. This is a huge
rollup so it's hard to say what's causing it precisely, but I think it's
probably not worth digging further, especially if this is slower emitted
diagnostics code (as seems not entirely implausible).

perf: use `get_unchecked` for `TwoWaySearcher` [#155607](https://github.com/rust-lang/rust/pull/155607) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=029c9e18dd1f4668e1d42bb187c1c263dfe20093&end=06293ff2b120aecfc29f84b90a22a743a5b90fef&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.4%  |  [0.2%, 0.7%]  |   4   |
| Regressions (secondary)  | 0.4%  |  [0.1%, 0.9%]  |   9   |
|  Improvements (primary)  | -1.6% | [-1.6%, -1.6%] |   1   |
| Improvements (secondary) |   -   |       -        |   0   |
|      All  (primary)      | 0.0%  | [-1.6%, 0.7%]  |   5   |

Pre-merge (with no changes) results were a [slight
improvement](https://github.com/rust-lang/rust/pull/155607#issuecomment-4643360268),
and the regressions look like noise. Unclear what caused them but marking as triaged.

Rollup of 9 pull requests [#157600](https://github.com/rust-lang/rust/pull/157600) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=06293ff2b120aecfc29f84b90a22a743a5b90fef&end=877a13169d4cc9f943ae776d84a5c80aa77e0096&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.6%  |  [0.3%, 1.6%]  |  15   |
| Regressions (secondary)  | 1.1%  |  [0.3%, 1.8%]  |  24   |
|  Improvements (primary)  | -0.4% | [-0.7%, -0.2%] |   5   |
| Improvements (secondary) | -0.4% | [-1.0%, -0.2%] |  11   |
|      All  (primary)      | 0.4%  | [-0.7%, 1.6%]  |  20   |

[Enqueued](https://github.com/rust-lang/rust/pull/157402#issuecomment-4655352984)
a perf build on the contained PR implementing the unstable `integer_casts`
feature in std. My guess is that is causing the regressions which are
concentrated in doc scenarios; all non-doc results are small improvements and
look more like noise. We somewhat expect doc regressions when the standard
library gets larger, even if there's no usage of the new functionality in
downstream crates.

Rollup of 13 pull requests [#157616](https://github.com/rust-lang/rust/pull/157616) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f3ef3bd882dd24a275a60701a67c3bb330edd8c1&end=cb46fbb8c6ea799c6fba9188ed889275c35a8c28&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.2%, 0.2%]  |   1   |
| Regressions (secondary)  | 0.3%  |  [0.3%, 0.5%]  |   4   |
|  Improvements (primary)  | -0.3% | [-0.3%, -0.3%] |   1   |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] |   5   |
|      All  (primary)      | -0.0% | [-0.3%, 0.2%]  |   2   |

[Enqueued](https://github.com/rust-lang/rust/pull/148820#issuecomment-4655430811)
perf run on contained PR with "comptime" implementation. The regressed
benchmarks appear to all have more executions of the `constness` query which
strongly hints at this PR being responsible. This just landed, so it's hard to
say how much of the regression is noise (of which we've had a lot in the last
week).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Suggest only Span without source changes when source code is unavailable" [rust#144585](https://github.com/rust-lang/rust/pull/144585) (last review activity: 6 months ago)
  - ripe for a review cc @**Esteban Küber**
- "Address redundant errors for missing crate for nested imports and later uses of crate" [rust#153956](https://github.com/rust-lang/rust/pull/153956) (last review activity: 2 months ago)
  - [2026-06-11 Thu] cc @**Ding Xiang Fei (wieDasDing)**
- "Remove the empty variant of `VerifyBound`" [rust#152438](https://github.com/rust-lang/rust/pull/152438) (last review activity: 2 months ago)
  - [2026-06-11 Thu] Unsure but I think this is waiting on the author
- "Fix check_expr_if to point to a more accurate location of the compilation error in some cases" [rust#147484](https://github.com/rust-lang/rust/pull/147484) (last review activity: 2 months ago)
  -  Thu] (for T-types) cc @_**Jack Huey**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/Fie7NWHOR4qGTeVfeVgwew)
