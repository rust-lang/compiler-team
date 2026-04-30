---
tags: weekly, rustc
type: docs
note_id: FhCBeSCpScGKeN1--PWP2A
---

# T-compiler Meeting Agenda 2026-04-16

## Announcements

- Today release of Rust stable 1.95, [blog post](https://github.com/rust-lang/blog.rust-lang.org/pull/1836).
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- None

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Promote riscv64gc-unknown-linux-musl to Tier 2 (with Tools)" [compiler-team#982](https://github.com/rust-lang/compiler-team/issues/982) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-musl.20to.20T.E2.80.A6.20compiler-team.23982))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 20 days ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 8 months ago)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 7 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: 2 months ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: 2 months ago)
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976)) (last review activity: about 19 days ago)
  - "Change the ABI of powerpc64-unknown-linux-gnu to ELFv2" [compiler-team#977](https://github.com/rust-lang/compiler-team/issues/977) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20the.20ABI.20of.20powerpc64-unknown-linux.E2.80.A6.20compiler-team.23977)) (last review activity: about 26 days ago)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: about 12 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote loongarch32-unknown-none* to Tier 2 (compiler-team#968)](https://github.com/rust-lang/compiler-team/issues/968#issuecomment-3907992097)
    - no pending concerns
  - merge: [Turn long-deprecated -C options into errors (compiler-team#978)](https://github.com/rust-lang/compiler-team/issues/978#issuecomment-4148637792)
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Resolver: Batched Import Resolution (rust#145108)](https://github.com/rust-lang/rust/pull/145108#issuecomment-4207942980)
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
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
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Verify that penultimate segment of enum variant path refers to enum if it has args" [rust#154971](https://github.com/rust-lang/rust/pull/154971)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 6 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 9 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 6 months ago)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 60 days ago)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 5 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 24 days ago)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 2 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 2 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - [T-types] "Do not use non-wf input expectations from fudge when checking function calls" [rust#150316](https://github.com/rust-lang/rust/pull/150316)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

- Note about [rust#155268](https://github.com/rust-lang/rust/issues/155268) "rust 1.95 pre-release windows-gnullvm: rust-size fails with missing libLLVM-22-rust-1.95.0-stable.dll when called via rustup proxy"
  - @**Jieyou Xu** coordinated with T-release and rapidly authored two revert PRs of commit [1d1280a](https://github.com/rust-lang/rust/commit/1d1280aae1e31b9ae9325fddc0c57ffc5074f434) on beta and stable (#155283 and #155285) to avoid this regression slip in the next stable (wasn't judged critical, see on [Zulip](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23155283.3A.20stable-nominated/near/585408776)

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "delegation: fix def path hash collision, add per parent disambiguators" [rust#153955](https://github.com/rust-lang/rust/pull/153955)
  - Just a FIY: Vadim is asking for a review from @_**oli** @_**cjgillot**
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [44 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
  - The `P-critical` regression is #154988 and was fixed #154994. Still open waiting on T-lib to decide the 1.96 beta backport
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 100 P-medium, 31 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-04-13 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week was negative, mainly caused by a type system fix and because we had to temporarily revert some attribute cleanups that previously improved performance.

Triage done by **@panstromek**.
Revision range: [e73c56ab..dab8d9d1](https://perf.rust-lang.org/?start=e73c56abd0baf3dbaafbdc3ce6072a416aade867&end=dab8d9d1066c4c95008163c7babf275106ce3f32&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.7%]   | 46    |
| Regressions (secondary)  | 0.5%  | [0.1%, 2.3%]   | 102   |
| Improvements (primary)   | -0.5% | [-0.6%, -0.4%] | 4     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 5     |
| All  (primary)                 | 0.4%  | [-0.6%, 0.7%]  | 50    |


4 Regressions, 1 Improvement, 5 Mixed; 6 of them in rollups
41 artifact comparisons made in total

#### Regressions

Rollup of 6 pull requests [#155011](https://github.com/rust-lang/rust/pull/155011) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=900485642855f4729d926ecf24680a791f9293cf&end=d0442e2800d356ae282ddcdbe0eff8798fe648b6&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

Already triaged by @JonathanBrouwer, pre-merge comment: Rollup=iffy because of the minor perf effect, which should be easy to pick out of a rollup since it's only one secondary test.

Rollup of 10 pull requests [#155024](https://github.com/rust-lang/rust/pull/155024) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d0442e2800d356ae282ddcdbe0eff8798fe648b6&end=1fe72d35998dea48aeecaf7fc07783b0b553f24f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.8%]   | 38    |
| Regressions (secondary)  | 0.6%  | [0.1%, 2.6%]   | 45    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.0% | [-0.0%, -0.0%] | 1     |
| All  (primary)                 | 0.5%  | [0.2%, 0.8%]   | 38    |

Regression in typeck. Caused by https://github.com/rust-lang/rust/pull/150316. Asked the author if we can do something about it.

Revert "Port lint attributes to attribute parser" [#155056](https://github.com/rust-lang/rust/pull/155056) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f5eca4fcfa908d1e038afd19c6e746f075859130&end=dd82fd2034e5c86c6f0f8070dc5679703cc4fe03&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.6%]   | 24    |
| Regressions (secondary)  | 0.4%  | [0.1%, 1.0%]   | 39    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.7%, -0.0%] | 4     |
| All  (primary)                 | 0.2%  | [0.1%, 0.6%]   | 24    |

Fixes regression. Reverts previous improvement from the original lint attribute port, the results seem to match up. This will re-land again, marking as triaged.

Rollup of 6 pull requests [#155115](https://github.com/rust-lang/rust/pull/155115) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b6100ccf71c092dd01e7a68930360892545ee4fb&end=02c7f9bec0fd583160f8bcccb830216023b07bee&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 1     |
| Regressions (secondary)  | 0.4% | [0.1%, 0.7%] | 13    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.3%, 0.3%] | 1     |

Caused by https://github.com/rust-lang/rust/pull/152901, already triaged by @JonathanBrouwer. The primary regresssion in unicode-normalization is addressed by https://github.com/rust-lang/rust/pull/155167. The other one in unused-warnings was supposed to be fixed by https://github.com/rust-lang/rust/pull/155155, but that run returned with no significant changes and it was closed. Based on the comments on these PRs, it looks like that ineffieciency will be addressed later when this code is ported to the new attribute parsing inftrastructure.

#### Improvements

Update cargo submodule [#154734](https://github.com/rust-lang/rust/pull/154734) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c3bd6289f65fa7210c50bdeeb0ed4541caa33d2d&end=ad4b9354009cb6bd5a9ff1b5f5a63a13ec98ebc9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.5% | [-0.5%, -0.5%] | 1     |


#### Mixed

`ty::Alias` refactor [#154758](https://github.com/rust-lang/rust/pull/154758) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=49b6ac01d6f4c3da812039ae846407a20961aa4c&end=c3bd6289f65fa7210c50bdeeb0ed4541caa33d2d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]   | 14    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 2     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 5     |
| All  (primary)                 | -0.2% | [-0.2%, -0.1%] | 2     |

Some regressions in secondary stress tests, but otherwise an improvement. This matches pre-merge results, so I assume this is deemed acceptable.

Store `chunk_domain_size` explicitly in `Chunk`. [#147802](https://github.com/rust-lang/rust/pull/147802) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c756124775121dea0e640652c5ee3c89e3dd0eb4&end=e5efd33d2df6bd128be197468b3c6119bf58fe66&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.8%  | [1.8%, 1.8%]   | 1     |
| Improvements (primary)   | -0.9% | [-1.2%, -0.4%] | 3     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 2     |
| All  (primary)                 | -0.9% | [-1.2%, -0.4%] | 3     |

`ctfe-stress-5` regression is a noise spike.

Rollup of 2 pull requests [#155052](https://github.com/rust-lang/rust/pull/155052) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a87c9b96031d4d8698bb0cd6533e83bc6d77ddaa&end=f5eca4fcfa908d1e038afd19c6e746f075859130&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 4     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 6     |
| All  (primary)                 | -0.2% | [-0.2%, -0.2%] | 4     |

`match-stress` looks like a noise spike. Otherwise, it's an improvement.

Rollup of 7 pull requests [#155175](https://github.com/rust-lang/rust/pull/155175) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bf4fbfb7a18d74e7cd8eef93af7329c58fbb5344&end=6ad4d1b0e7fdafb8b71ada0844571c955d7afd70&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.0%, 0.2%]   | 10    |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.4% | [-0.4%, -0.4%] | 1     |

These regressions seem a bit mysterious to me, but I guess it could be the SIMD update from https://github.com/rust-lang/rust/pull/155165, because it adds a bunch of stuff to std (IIUC) and I guess it can impact those doc benchmarks. `include-blob` is noise.

Either way, I don't see much actionable steps we could do with it, and the regressions are tiny, so I don't think it's worth too much investigation. The queue is empty, so I at least started a perf run on https://github.com/rust-lang/rust/pull/155165.

Rollup of 4 pull requests [#155185](https://github.com/rust-lang/rust/pull/155185) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d32e620a107b5b3dccd9ddb53fa124956a92b589&end=540f43a224317d894a9a0710a8d67704f179a33c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | 0.6%  | [0.1%, 2.3%]   | 7     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.0%  | [-0.2%, 0.3%]  | 2     |

Likely caused by https://github.com/rust-lang/rust/pull/153630, left a comment there.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add support for xray in aarch64 unknown none target" [rust#148666](https://github.com/rust-lang/rust/pull/148666) (last review activity: 2 months ago)
  - cc: @**Wesley Wiser** (feeel free to reassign)
- "mir-opt: Remove the workaround in UnreachableEnumBranching" [rust#146544](https://github.com/rust-lang/rust/pull/146544) (last review activity: 2 months ago)
  - cc @**Wesley Wiser**
- "tests/ui/union: add annotations for reference rules" [rust#152826](https://github.com/rust-lang/rust/pull/152826) (last review activity: about 55 days ago)
  - cc @**Eric Huss** (not strictly t-compiler I think, maybe someone can have a look)
- "Add inline asm support for amdgpu" [rust#149793](https://github.com/rust-lang/rust/pull/149793) (last review activity: about 52 days ago)
  - left a ping to the GPU target group
- "rustc_codegen_ssa: Make upstream monomorphizations representation sparse" [rust#149313](https://github.com/rust-lang/rust/pull/149313) (last review activity: about 51 days ago)
  - cc @**cjgillot** (unsure if the author has replied in full to the comments)
- "rustc_codegen_ssa: fix pre_link_args order" [rust#151165](https://github.com/rust-lang/rust/pull/151165) (last review activity: about 51 days ago)
  - According to this (https://github.com/rust-lang/rust/pull/151165#issuecomment-3942007505)[comment], this needs an MCP, correct? maybe leave another reminder for the author?

Next meetings' agenda draft: [hackmd link](https://hackmd.io/86EV5WWNTwuFxRs3N8tnHA)
