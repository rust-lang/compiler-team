---
tags: weekly, rustc
type: docs
note_id: MorXHfyhRMifZxvrZ6l39A
---

# T-compiler Meeting Agenda 2026-04-09

## Announcements

- Rust 1.95 release next week
- T-infra is running a short survey to learn more about peoples' thoughts about the Rust Infrastructure (pain points, how can it improve our work, etc.). Please take a minute to leave an opinion️️ 🙂: https://www.surveyhero.com/c/rust-project-infra-feedback-2026
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Stable MIR Weekly Meeting <time:2025-04-10T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 14 days ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 8 months ago)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 0 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: 2 months ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: 2 months ago)
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976)) (last review activity: about 12 days ago)
  - "Change the ABI of powerpc64-unknown-linux-gnu to ELFv2" [compiler-team#977](https://github.com/rust-lang/compiler-team/issues/977) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20the.20ABI.20of.20powerpc64-unknown-linux.E2.80.A6.20compiler-team.23977)) (last review activity: about 20 days ago)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote loongarch32-unknown-none* to Tier 2 (compiler-team#968)](https://github.com/rust-lang/compiler-team/issues/968#issuecomment-3907992097)
    - no pending concerns
  - merge: [Turn long-deprecated -C options into errors (compiler-team#978)](https://github.com/rust-lang/compiler-team/issues/978#issuecomment-4148637792)
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Make trait refs & assoc ty paths properly induce trait object lifetime defaults (rust#129543)](https://github.com/rust-lang/rust/pull/129543#issuecomment-2862410551)
    - no pending concerns
    - @**lcnr** do you want to start the FCP again? :)
  - merge: [Resolver: Batched Import Resolution (rust#145108)](https://github.com/rust-lang/rust/pull/145108#issuecomment-4207942980)
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
    - @**noratrieb**: can you check if the concern can be lifted? rfcs#3855 was merged (see [comment](https://github.com/rust-lang/rust/pull/146369#issuecomment-4111075797))
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - concerns: [implementation-confidence (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853046997) [inconsistent-name-res-semantics (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853051038)
  - merge: [resolve: Partially convert `ambiguous_glob_imports` lint into a hard error (rust#149195)](https://github.com/rust-lang/rust/pull/149195#issuecomment-4207900582)
    - no pending concerns
  - merge: [Reduce `unreachable-code` churn after `todo!()` (rust#149543)](https://github.com/rust-lang/rust/pull/149543#issuecomment-4171057149)
    - concerns: [please-rename-lint (by traviscross)](https://github.com/rust-lang/rust/pull/149543#issuecomment-4171059182)
  - "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
  - merge: [WF checks on closure arguments. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [switch to v0 mangling by default on stable (rust#151994)](https://github.com/rust-lang/rust/pull/151994#issuecomment-3838891427)
    - concerns: [late-anon-const (by petrochenkov)](https://github.com/rust-lang/rust/pull/151994#issuecomment-4135046238)
  - merge: [fix(resolve): Warn on Self-Type Lifetime Elision for Non-`Self` Types (rust#153692)](https://github.com/rust-lang/rust/pull/153692#issuecomment-4207518206)
    - concerns: [should-example-cases-without-lifetimes (by traviscross)](https://github.com/rust-lang/rust/pull/153692#issuecomment-4207522428)
  - merge: [Clean up crate type names to fix dylib vs staticlib confusion (rust#153863)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4061709608)
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
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "report the `varargs_without_pattern` lint in deps" [rust#154599](https://github.com/rust-lang/rust/pull/154599)
  - "Verify that penultimate segment of enum variant path refers to enum if it has args" [rust#154971](https://github.com/rust-lang/rust/pull/154971)
- Accepted MCPs
  - "Emit retags in codegen" [compiler-team#958](https://github.com/rust-lang/compiler-team/issues/958) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20retags.20in.20codegen.20compiler-team.23958))

- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 6 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 8 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 6 months ago)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 54 days ago)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 5 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 17 days ago)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 2 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: about 55 days ago)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)

- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - [T-types] "Do not use non-wf input expectations from fudge when checking function calls" [rust#150316](https://github.com/rust-lang/rust/pull/150316)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Revert `-Znext-solver` Remove the forced ambiguity hack from search graph" [rust#154712](https://github.com/rust-lang/rust/pull/154712)
  - Authored by lqd
  - Mostly reverting because of #153910 (substancial Bevy compile time regression)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23154712.3A.20beta-nominated/near/583249405), in favor
  - Actually T-types voted the backport, [see other thread](https://rust-lang.zulipchat.com/#narrow/channel/326866-t-types.2Fnominated/topic/.23153910.3A.20Significant.20compilation.20time.20regression.20starting.20i.E2.80.A6/near/583209758), seems safe to backport
<!--
@**triagebot** backport beta accept 154712
@**triagebot** backport beta decline 154712
-->
- :beta: "Revert performing basic const checks in typeck on stable" [rust#154930](https://github.com/rust-lang/rust/pull/154930)
  - Authored by oli-obk
  - Note: T-release is also waiting for this (see comment)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23154930.3A.20beta-nominated/near/583931680), in favor
  - Also this one mirroring T-types approval (see on [Zulip](https://rust-lang.zulipchat.com/#narrow/channel/326866-t-types.2Fnominated/topic/.23153765.3A.201.2E95.20beta.20regression.3A.20trait.20method.20calls.20in.20dead.20c.E2.80.A6/near/583069893))
<!--
@**triagebot** backport beta accept 154930
@**triagebot** backport beta decline 154930
-->
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "Remove redundant information in `rustc_abi::Variants`" [rust#151742](https://github.com/rust-lang/rust/pull/151742)
  - The review bounced for a while, can anyone with ABI/codegen knowledge have a look?
  - @_**RalfJ** in case volunteered, see [comment on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/244344-t-compiler.2Fcontrib-private/topic/Hot.20potato.20PRs/near/584389121), but not in the short time
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [46 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 31 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

- [Port lint attributes to attribute parser by Bryntet · Pull Request #152369 · rust-lang/rust](https://github.com/rust-lang/rust/pull/152369)
  - landed on nightly last week and is causing a number of regressions. A potential fix is #154906 but for tomorrow it won't make to the beta cut (prioritization thread on [Zulip](https://rust-lang.zulipchat.com/#narrow/channel/245100-t-compiler.2Fprioritization.2Falerts/topic/.23155008.20.60.23.5Bexpect.5D.60.20doesn.27t.20work.20anymore.20with.20early.20lints/near/584311900)). So, either:
  - try to revert #152369 fast
  - or wait for the beta and see how many regressions (and backports) we will have to deal with
  - asked for an opinion from PR author+reviewers: https://github.com/rust-lang/rust/pull/152369#issuecomment-4212746162

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "Significant compilation time regression starting in v1.95.0-nightly (bevy)" [rust#153910](https://github.com/rust-lang/rust/issues/153910)
  - Fixed by revert #154712
- "Complex EH flow miscompiled on wasm" [rust#153948](https://github.com/rust-lang/rust/issues/153948)
  - fixed by revert #154700 (thanks Wesley!), upstream patch also merged https://github.com/llvm/llvm-project/pull/187484
  - I think can we close this?

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-04-05 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

A shorter week than normal (probably due to later perf triage last week).
Overall fairly small changes scattered across various PRs, though the net
effect was slightly positive (-0.5% avg change). All changed ended up either
mixed or improvements this week.

Triage done by **@simulacrum**.
Revision range: [cf7da0b7..e73c56ab](https://perf.rust-lang.org/?start=cf7da0b7277cad05b79f91b60c290aa08a17a6f0&end=e73c56abd0baf3dbaafbdc3ce6072a416aade867&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.4%  |  [0.4%, 0.4%]  |   2   |
| Regressions (secondary)  | 2.7%  |  [0.2%, 7.9%]  |  47   |
|  Improvements (primary)  | -0.5% | [-1.6%, -0.1%] |  164  |
| Improvements (secondary) | -0.5% | [-1.9%, -0.1%] |  115  |
|      All  (primary)      | -0.5% | [-1.6%, 0.4%]  |  166  |

0 Regressions, 3 Improvements, 8 Mixed; 5 of them in rollups
26 artifact comparisons made in total

#### Regressions

No regressions this week.

#### Improvements

Rollup of 4 pull requests [#154638](https://github.com/rust-lang/rust/pull/154638) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0e95a0f4c677002a5d4ac5bc59d97885e6f51f71&end=48cc71ee88cd0f11217eced958b9930970da998b&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  | -0.2% | [-0.3%, -0.2%] |   3   |
| Improvements (secondary) |   -   |       -        |   0   |
|      All  (primary)      | -0.2% | [-0.3%, -0.2%] |   3   |


Rollup of 5 pull requests [#154659](https://github.com/rust-lang/rust/pull/154659) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=12ab1cf1fd3dc925a846b0eb8a4b39393140fdd3&end=3ebe60c8c30d1175019dcbdb957441cd84aa1220&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  | -0.7% | [-1.1%, -0.2%] |  10   |
| Improvements (secondary) |   -   |       -        |   0   |
|      All  (primary)      | -0.7% | [-1.1%, -0.2%] |  10   |


Streamline `CachingSourceMapView` [#154614](https://github.com/rust-lang/rust/pull/154614) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=009a6c1e8b559de780be565937d83e8f4a36d58d&end=8931f23941cf9ec0093f86a81337873b288344c9&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  | -0.4% | [-0.7%, -0.1%] |  135  |
| Improvements (secondary) | -0.4% | [-1.4%, -0.1%] |  95   |
|      All  (primary)      | -0.4% | [-0.7%, -0.1%] |  135  |


#### Mixed

Properly generalize unevaluated consts [#154053](https://github.com/rust-lang/rust/pull/154053) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=08cd08fbef8c6663b052d8d9e4930d5696cbb8a7&end=37cfa179be19cec2236736521bed3ea3c4a1ec97&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.2%  |  [0.2%, 0.2%]  |   3   |
|  Improvements (primary)  | -0.3% | [-0.3%, -0.3%] |   1   |
| Improvements (secondary) | -0.1% | [-0.2%, -0.0%] |   7   |
|      All  (primary)      | -0.3% | [-0.3%, -0.3%] |   1   |

Regressions are limited to new solver, and fairly small. Most likely no need to
investigate deeper, especially as this also fixes a few bugs.

Rollup of 4 pull requests [#154668](https://github.com/rust-lang/rust/pull/154668) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3ebe60c8c30d1175019dcbdb957441cd84aa1220&end=2bd7a97871a74d4333bd3edb6564136167ac604b&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.1%, 0.4%]  |   4   |
| Regressions (secondary)  | 0.2%  |  [0.0%, 0.3%]  |  14   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.4% | [-1.1%, -0.0%] |   5   |
|      All  (primary)      | 0.2%  |  [0.1%, 0.4%]  |   4   |

Most likely caused by extending integers with new methods in
[#154356](https://github.com/rust-lang/rust/pull/154356). Enqueued a build to
confirm that theory, see [comment](https://github.com/rust-lang/rust/pull/154356#issuecomment-4191902607).

Don't use disk-cache for query `def_kind` [#154292](https://github.com/rust-lang/rust/pull/154292) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2bd7a97871a74d4333bd3edb6564136167ac604b&end=7e46c5f6fb87f8cf4353e058479cef15d1d952b4&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.3%  |  [0.0%, 1.1%]  |   5   |
|  Improvements (primary)  | -0.3% | [-0.4%, -0.1%] |  62   |
| Improvements (secondary) | -0.4% | [-0.7%, -0.1%] |  28   |
|      All  (primary)      | -0.3% | [-0.4%, -0.1%] |  62   |

Not entirely clear but the instruction count regressions look like they may be
within noise threshold in practice. Improvements also clearly outweigh the
small regressions, so marking as triaged.

Revert #151380 and #153869 [#154308](https://github.com/rust-lang/rust/pull/154308) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7e46c5f6fb87f8cf4353e058479cef15d1d952b4&end=009a6c1e8b559de780be565937d83e8f4a36d58d&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.1%, 0.5%]  |  16   |
| Regressions (secondary)  | 3.6%  |  [0.0%, 8.6%]  |  36   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.3% | [-1.1%, -0.0%] |  16   |
|      All  (primary)      | 0.3%  |  [0.1%, 0.5%]  |  16   |

This reverts two improvements that landed in a previous week, so regressions are expected. This is ultimately a correctness fix.

Revert "Fix: On wasm targets, call panic_in_cleanup if panic occurs in cleanup #151771" [#154700](https://github.com/rust-lang/rust/pull/154700) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8931f23941cf9ec0093f86a81337873b288344c9&end=e6b64a2f4c696b840f8a384ec28690eed6a5d267&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.2%  |  [0.0%, 0.3%]  |   7   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.1% | [-0.1%, -0.0%] |   2   |
|      All  (primary)      |   -   |       -        |   0   |

> revert, tiny changes, could be noise, the original PR didn't have these as
> positive results, marking as triaged as there's nothing much to do or
> investigate (until it relands and shows perf changes)

(see https://github.com/rust-lang/rust/pull/154700#issuecomment-4176873246)

Rollup of 20 pull requests [#154727](https://github.com/rust-lang/rust/pull/154727) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e6b64a2f4c696b840f8a384ec28690eed6a5d267&end=55e86c996809902e8bbad512cfb4d2c18be446d9&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.1%  |  [0.1%, 0.1%]  |   1   |
|  Improvements (primary)  | -0.3% | [-0.3%, -0.1%] |   5   |
| Improvements (secondary) |   -   |       -        |   0   |
|      All  (primary)      | -0.3% | [-0.3%, -0.1%] |   5   |

Probably noise (at least the regression), either way not worth investigating further.

Port lint attributes to attribute parser [#152369](https://github.com/rust-lang/rust/pull/152369) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f908263775fa86408d0d529dec82baa9ae350529&end=2972b5e59f1c5529b6ba770437812fd83ab4ebd4&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.2%, 0.2%]  |   1   |
| Regressions (secondary)  | 0.3%  |  [0.2%, 0.5%]  |   7   |
|  Improvements (primary)  | -0.3% | [-0.6%, -0.2%] |  20   |
| Improvements (secondary) | -0.4% | [-0.6%, -0.0%] |  37   |
|      All  (primary)      | -0.3% | [-0.6%, 0.2%]  |  21   |

Perf wins significantly outweigh the regressions.

Rollup of 5 pull requests [#154802](https://github.com/rust-lang/rust/pull/154802) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=981cf69479ded5e2de0cf9e16111c19d65be0369&end=0312a55fe4200208170b94bf287ca3cc7ea499ae&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.2%  |  [0.0%, 0.4%]  |  10   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.6% | [-1.6%, -0.0%] |   3   |
|      All  (primary)      |   -   |       -        |   0   |

Regression almost certainly due to
<https://github.com/rust-lang/rust/pull/154376#issuecomment-4130882120>, that
perf run matches pretty closely what we see here. I don't think further
investigation is warranted, the affected benchmark intentionally stresses the
lint system (unused-warnings).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- Remove fewer Storage calls in CopyProp and GVN" [rust#142531](https://github.com/rust-lang/rust/pull/142531)
  - cc @**cjgillot**
- "Skipping borrowck because of trivial const" [rust#149468](https://github.com/rust-lang/rust/pull/149468) (last review activity: about 55 days ago)
  - cc @**lcnr*** question for [you](https://github.com/rust-lang/rust/pull/149468#issuecomment-3899451907)
- "HIR typeck: use correct expectations for negation operators" [rust#151539](https://github.com/rust-lang/rust/pull/151539) (last review activity: about 53 days ago)
  - cc @**Boxy** this one needs an FCP but before I think the author left a comment asking for an opinion

Next meeting agenda draft: [hackmd link](https://hackmd.io/FhCBeSCpScGKeN1--PWP2A)
