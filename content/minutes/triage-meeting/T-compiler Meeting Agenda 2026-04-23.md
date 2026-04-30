---
tags: weekly, rustc
type: docs
note_id: 86EV5WWNTwuFxRs3N8tnHA
---

# T-compiler Meeting Agenda 2026-04-23

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- None

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 28 days ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 9 months ago)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 14 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: 2 months ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: 2 months ago)
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976)) (last review activity: about 26 days ago)
  - "Change the ABI of powerpc64-unknown-linux-gnu to ELFv2" [compiler-team#977](https://github.com/rust-lang/compiler-team/issues/977) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20the.20ABI.20of.20powerpc64-unknown-linux.E2.80.A6.20compiler-team.23977)) (last review activity: about 34 days ago)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: about 20 days ago)
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
    - no pending concerns
  - "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
  - merge: [WF checks on closure arguments. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [fix(resolve): Warn on Self-Type Lifetime Elision for Non-`Self` Types (rust#153692)](https://github.com/rust-lang/rust/pull/153692#issuecomment-4207518206)
    - concerns: [should-example-cases-without-lifetimes (by traviscross)](https://github.com/rust-lang/rust/pull/153692#issuecomment-4207522428)
  - merge: [Clean up crate type names to fix dylib vs staticlib confusion (rust#153863)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4061709608)
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
  - "Promote riscv64gc-unknown-linux-musl to Tier 2 (with Tools)" [compiler-team#982](https://github.com/rust-lang/compiler-team/issues/982) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-musl.20to.20T.E2.80.A6.20compiler-team.23982))
  - "Make stable hashing names consistent" [compiler-team#983](https://github.com/rust-lang/compiler-team/issues/983) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20stable.20hashing.20names.20consistent.20compiler-team.23983))
  - "Lint unused pub items in binary crates" [rust#149509](https://github.com/rust-lang/rust/pull/149509)
  - "switch to v0 mangling by default on stable" [rust#151994](https://github.com/rust-lang/rust/pull/151994)
  - "Error on invalid macho section specifier" [rust#155065](https://github.com/rust-lang/rust/pull/155065)
  - "Add FCW to disallow `$crate` in macro matcher" [rust#155121](https://github.com/rust-lang/rust/pull/155121)
  - "Allow trailing `self` in more contexts" [rust#155137](https://github.com/rust-lang/rust/pull/155137)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 9 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 6 months ago)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 2 months ago)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 5 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 31 days ago)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 2 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 2 months ago)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Truncated error messages with 1.95.0 · Issue #155414 · rust-lang/rust](https://github.com/rust-lang/rust/issues/155414)
  - In #149484 we changed how errors from `compile_error!()` are shown, suppressing some of them
  - triage question: this change was intentional but the issue shows a case where (according to the reporter) too little is shown. Author is open to a revert if we think it's better
  - What do we think?
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [44 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 31 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [2026-04-21 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week was a bit all over the place, but the largest regressions were either
already fixed or they are being investigated. There were also a couple of nice perf. wins.

Triage done by **@Kobzol**.
Revision range: [dab8d9d1..9ab01ae5](https://perf.rust-lang.org/?start=dab8d9d1066c4c95008163c7babf275106ce3f32&end=9ab01ae53c416f89fe256b79588a76dcbcdc9290&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 4.6%]   | 39    |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.4%]   | 31    |
| Improvements (primary)   | -0.6% | [-4.8%, -0.1%] | 70    |
| Improvements (secondary) | -0.7% | [-4.1%, -0.0%] | 93    |
| All  (primary)                 | -0.1% | [-4.8%, 4.6%]  | 109   |


3 Regressions, 4 Improvements, 6 Mixed; 4 of them in rollups
41 artifact comparisons made in total

#### Regressions

Fallback `{float}` to `f32` when `f32: From<{float}>` and add `impl From<f16> for f32` [#139087](https://github.com/rust-lang/rust/pull/139087) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9620eae30ab7614dcb72d44c4ce1dac497f6ae18&end=e8e4541ff19649d95afab52fdde2c2eaa6829965&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 1.1% | [0.3%, 2.2%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

- Introduced regressions with the new trait solver.
- Not marking as triaged yet.

delegation: fix def path hash collision, add per parent disambiguators [#153955](https://github.com/rust-lang/rust/pull/153955) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=27dbdb57a2f90b5c90247e6ef14f2657a03473da&end=4dbafc340b0f8e9ff9e95974d0ceef81ae2652c8&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 3     |
| Regressions (secondary)  | 0.3% | [0.0%, 0.4%] | 20    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.2%, 0.2%] | 3     |

- Small regressions primarily in secondary benchmarks.
- The regressions are being investigated in [#155547](https://github.com/rust-lang/rust/pull/155547).
- Not marking as triaged yet.

Remove `HashStable` impl for `[hir::Attribute]`. [#154924](https://github.com/rust-lang/rust/pull/154924) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d12e1e12ae6fb828df1b663a07c9191bc48c6d6d&end=91367b0f73196f0d133066e0e9363da339ed87b5&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 1.1%] | 42    |
| Regressions (secondary)  | 0.6% | [0.3%, 1.6%] | 15    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.2%, 1.1%] | 42    |

- Correctness fix, the compiler skipped work it should not have skipped before.
- Already marked as triaged.

#### Improvements

Rollup of 10 pull requests [#155239](https://github.com/rust-lang/rust/pull/155239) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=14196dbfa3eb7c30195251eac092b1b86c8a2d84&end=a72e2a71d8fbcbc46cdd18784e2ab2c32cbd9c93&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.4%  | [1.4%, 1.4%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.7%, -0.1%] | 23    |
| All  (primary)                 | -     | -              | 0     |


Don't hash `DelayedLints` [#155248](https://github.com/rust-lang/rust/pull/155248) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4dbafc340b0f8e9ff9e95974d0ceef81ae2652c8&end=f29256dd1420dc681bf4956e3012ffe9eccdc7e7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.1% | [-0.2%, -0.1%] | 3     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.1%] | 20    |
| All  (primary)                 | -0.1% | [-0.2%, -0.1%] | 3     |


Make region equality emits Eq constraints [#155258](https://github.com/rust-lang/rust/pull/155258) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3142beae24ddd6b7fd68e49e227bebf79181f9e4&end=b2f1ccf524a3a4cf9c34545167cc23b659cf1cbd&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 21    |
| Improvements (secondary) | -0.5% | [-1.2%, -0.1%] | 26    |
| All  (primary)                 | -0.3% | [-0.4%, -0.2%] | 21    |


Refactor FnDecl and FnSig non-type fields into a new wrapper type [#155223](https://github.com/rust-lang/rust/pull/155223) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0febdbab2720dc0360cd294c67db88d6d06580d4&end=6f109d8a2da2fe8d0fbfc52178300c033737b218&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.7%, -0.2%] | 33    |
| Improvements (secondary) | -0.6% | [-1.2%, -0.1%] | 47    |
| All  (primary)                 | -0.3% | [-0.7%, -0.2%] | 33    |


#### Mixed

Rollup of 18 pull requests [#155380](https://github.com/rust-lang/rust/pull/155380) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d227e48c560e915fe7c0b8b3e821680a3a0ba739&end=7af3402cda75aaead39f72516fd6cbb2f3ee0dbd&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 5     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.3%] | 2     |
| All  (primary)                 | -0.2% | [-0.2%, -0.2%] | 5     |

- More improvements than regressions, but all tiny anyway.
- Marked as triaged.

Rollup of 5 pull requests [#155432](https://github.com/rust-lang/rust/pull/155432) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f29256dd1420dc681bf4956e3012ffe9eccdc7e7&end=e9e32aca5a4ffd08cbc29547b039d64b92a2c03b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.0%, 0.2%]   | 9     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.0% | [-0.4%, 0.2%]  | 3     |

- Tiny regressions caused by [#153178](https://github.com/rust-lang/rust/pull/153178).
- Marked as triaged.

Remove fewer Storage calls in CopyProp and GVN [#142531](https://github.com/rust-lang/rust/pull/142531) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7a38981b365e4c3672053b910fce9a14c6555ab9&end=8da2d28cbd5a4e2b93e028e709afe09541671663&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.2%, 16.9%]  | 35    |
| Regressions (secondary)  | 0.7%  | [0.2%, 5.5%]   | 22    |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 2     |
| Improvements (secondary) | -0.4% | [-1.5%, -0.2%] | 24    |
| All  (primary)                 | 1.1%  | [-0.5%, 16.9%] | 37    |

- This PR introduced performance regressions caused by wrong CGU estimates.
- They were later fixed in [#155491](https://github.com/rust-lang/rust/pull/155491).
- Marked as triaged.

Rollup of 11 pull requests [#155552](https://github.com/rust-lang/rust/pull/155552) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=91367b0f73196f0d133066e0e9363da339ed87b5&end=c28e3037785af39226f5751294ed1c6cf4698e10&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.8%, -0.0%] | 9     |
| All  (primary)                 | 0.4%  | [0.4%, 0.4%]   | 1     |

- One tiny regression in `clap_derive`, but overall there were more green than red results.
- Marked as triaged.

Merge BuildReducedGraphVisitor into DefPathVisitor [#154945](https://github.com/rust-lang/rust/pull/154945) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=66da6cae1a6f12e9585493ab8f8f19cf753091fd&end=4fbae3e30923ca23262b696d54ddbd176c2c38b4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.3%, 1.0%]   | 14    |
| Improvements (primary)   | -0.4% | [-0.5%, -0.2%] | 6     |
| Improvements (secondary) | -0.4% | [-1.1%, -0.2%] | 13    |
| All  (primary)                 | -0.4% | [-0.5%, -0.2%] | 6     |

- The post-merge results are slightly worse than the pre-merge run, but overall it's a wash.
- Marked as triaged.

Fix performance regression introduced in #142531 by excluding `Storage{Live,Dead}` from CGU size estimation [#155491](https://github.com/rust-lang/rust/pull/155491) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=84c11900724736a2b9afac4822031d78a9ed8e86&end=9ab01ae53c416f89fe256b79588a76dcbcdc9290&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 2.1%  | [0.8%, 4.6%]    | 5     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -4.2% | [-14.1%, -0.2%] | 9     |
| Improvements (secondary) | -3.9% | [-9.2%, -1.2%]  | 3     |
| All  (primary)                 | -1.9% | [-14.1%, 4.6%]  | 14    |

- Fixed a previous regression from [#142531](https://github.com/rust-lang/rust/pull/142531).
- Marked as triaged.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Allow forbidden target features to be hard errors" [rust#152821](https://github.com/rust-lang/rust/pull/152821) (last review activity: 2 months ago)
  - cc @**dingxiangfei2009**
- "[DO NOT MERGE] Remove #[no_link] attribute" [rust#152856](https://github.com/rust-lang/rust/pull/152856) (last review activity: 2 months ago)
  - This was waiting on a crater run, here the [results](https://github.com/rust-lang/rust/pull/152856#issuecomment-3986875819)
  - @**bjorn3** do you need someone to comment the crater run and/or kick off the FCP? Or do you want to work on this further?
- "Port the `without_debuginfo` test from `backtrace-rs` to the testsuite" [rust#152860](https://github.com/rust-lang/rust/pull/152860) (last review activity: 2 months ago)
  - Jubilee is at capacity in the last weeks, we might want to reroll (maybe asking before)

Next meeting's agenda draft: [hackmd link](https://hackmd.io/0EpG9nx1S4a6Oq6PjFPBgg)
