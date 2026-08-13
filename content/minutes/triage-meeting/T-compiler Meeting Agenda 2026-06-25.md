---
tags: weekly, rustc
type: docs
note_id: _Gjq6oJRSFOLMJduuQh89w
---

# T-compiler Meeting Agenda 2026-06-25

## Announcements

- Rust dot release 1.96.1 (#158331) to close issue #158214 (see [discussion](https://rust-lang.zulipchat.com/#narrow/channel/241545-t-release/topic/1.2E96.2E1.20release/near/605544446))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours <time:2026-06-29T16:15:00+02:00> and <time:2026-06-29T16:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add testing for lint machinery at runtime" [compiler-team#1004](https://github.com/rust-lang/compiler-team/issues/1004) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20testing.20for.20lint.20machinery.20at.20runtime.20compiler-team.231004/with/605447442))
  - "MCP: Stabilization strategy for rustc parallel frontend" [compiler-team#1005](https://github.com/rust-lang/compiler-team/issues/1005) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Stabilization.20strategy.20for.20rustc.20pa.E2.80.A6.20compiler-team.231005/with/606039999))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: about 2 weeks ago)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60.7Bcwd.7D.60.20placeholder.20in.20--remap-path-prefix.20compiler-team.23998)) (last review activity: about 12 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `wasm32-wasip3` to Tier 2 (compiler-team#1001)](https://github.com/rust-lang/compiler-team/issues/1001#issuecomment-4694741738)
    - no pending concerns
  - merge: [Stabilize `-Zprofile-sample-use` (rust#155942)](https://github.com/rust-lang/rust/pull/155942#issuecomment-4603443003)
    - no pending concerns
    - cc: @**|116266** @**|125250** @**|119031** @**|370197** @**|343125** (if you can get a look at that)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - triage: Left a comment because I cannot make head or tail of its status
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
    - triage: Left a comment almost 2 months ago asking for an update. Author(s) did not reply
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Desugar async blocks in HIR instead of MIR" [compiler-team#997](https://github.com/rust-lang/compiler-team/issues/997) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Desugar.20async.20blocks.20in.20HIR.20instead.20of.20MIR.20compiler-team.23997))
  - "Single-byte counter support in coverage instrumentation" [compiler-team#1002](https://github.com/rust-lang/compiler-team/issues/1002) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Single-byte.20counter.20support.20in.20coverage.20.E2.80.A6.20compiler-team.231002))
  - "Rename the compiler files containing struct diagnostics to `diagnostics.rs`" [compiler-team#1003](https://github.com/rust-lang/compiler-team/issues/1003) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20the.20compiler.20files.20containing.20str.E2.80.A6.20compiler-team.231003))
  - "enable eager `param_env` norm in new solver" [rust#156976](https://github.com/rust-lang/rust/pull/156976)
  - "infra: add policy covering mfa with hardware keys" [rust-forge#1051](https://github.com/rust-lang/rust-forge/pull/1051)
- Accepted MCPs
  - "Create new Tier 3 targets: `powerpc64le-unknown-none-softfloat`, `powerpc64-unknown-none-softfloat`, `powerpc-unknown-none-softfloat`" [compiler-team#988](https://github.com/rust-lang/compiler-team/issues/988) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988))
  - "Create a new Tier 3 target: `s390x-ibm-zos`" [compiler-team#992](https://github.com/rust-lang/compiler-team/issues/992) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60s390x-ibm-zo.E2.80.A6.20compiler-team.23992))
  - "Deny `todo!()` in tidy" [compiler-team#999](https://github.com/rust-lang/compiler-team/issues/999) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Deny.20.60todo.21.28.29.60.20in.20tidy.20compiler-team.23999))
- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 8 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 11 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 20 days ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 8 months ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 4 months ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 7 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 3 months ago)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 4 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 4 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
- Finalized FCPs (disposition merge)
  - [T-types] "Fix trait method resolution on an adjusted never type" [rust#156047](https://github.com/rust-lang/rust/pull/156047)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "library: core: document layout guarantee of `TypeId`" [rust#148265](https://github.com/rust-lang/rust/pull/148265)
- "Removability of unused imports for traits seemingly conditional to markdown in docs" [rust#155098](https://github.com/rust-lang/rust/issues/155098)
  - T-compiler-nominated, opened a [thread on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Removability.20of.20unused.20imports.20for.20traits/near/606423051)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [45 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 33 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Suspected miscompilation with `bool as u32`" [rust#158206](https://github.com/rust-lang/rust/issues/158206)
  - Fixed by #158214 (Rust dot release 1.96.1 going out today)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "1.97 beta regression: "conflicting implementations of trait"" [rust#157407](https://github.com/rust-lang/rust/issues/157407)
  - (T-types) Fixed by #157617

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-06-21 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week had a lot of big swings, with two significant perf regressions that are accepted
because they unlock future features and perf improvements.
We also saw large improvements in the next trait solver due to the performance optimization work happening there.

Triage done by **@JonathanBrouwer** with help from **@Kobzol**.
Revision range: [b5d46ecb..8b6558a0](https://perf.rust-lang.org/?start=b5d46ecb51c3e4134b82570cfe718f093daa6390&end=8b6558a02b2774acfb25cf15e199467c37ba7490&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 0.9%   | [0.2%, 2.7%]    | 184   |
| Regressions (secondary)  | 1.0%   | [0.1%, 4.2%]    | 160   |
| Improvements (primary)   | -0.3%  | [-0.3%, -0.2%]  | 2     |
| Improvements (secondary) | -11.8% | [-69.9%, -0.2%] | 25    |
| All  (primary)                 | 0.8%   | [-0.3%, 2.7%]   | 186   |


5 Regressions, 3 Improvements, 2 Mixed; 4 of them in rollups
30 artifact comparisons made in total

#### Regressions

Add unstable loop unrolling hint attributes [#156816](https://github.com/rust-lang/rust/pull/156816) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9d862dd2c17b2dc90e9f623bb9279a8c4090b311&end=b998449636a48e2c4a362809085b600a0174e1f2&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.3%] | 17    |
| Regressions (secondary)  | 0.2% | [0.0%, 0.5%] | 22    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.1%, 0.3%] | 17    |

Regression caused by adding attribute information to `Terminator`, as this new information is needed to implement the `#[unroll]` attribute.
There doesn't seem to be a way to get around this without seriously decreasing code quality.

Make lowering incremental, take 3/N [#142830](https://github.com/rust-lang/rust/pull/142830) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b998449636a48e2c4a362809085b600a0174e1f2&end=89a99936d9e76a50e8df622e7242190841fd871b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.1%, 2.7%]   | 172   |
| Regressions (secondary)  | 1.1%  | [0.1%, 4.2%]   | 105   |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)                 | 0.8%  | [0.1%, 2.7%]   | 172   |

A perf regression caused adding more queries to the resolver.
This has the potential to unlock new features and incremental perf improvements in the future.
The perf regression is unavoidable without making this PR bitrot for a long time and much more complex.
A lot of work has already gone into making the regression smaller.

Rollup of 13 pull requests [#157991](https://github.com/rust-lang/rust/pull/157991) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c712ea94628bbc7b9cd3030d4a79324c13bbc842&end=9e2abe0c6ab27fcbb95c30695188a75776e2feb1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 3.0%]   | 85    |
| Regressions (secondary)  | 0.7%  | [0.2%, 2.0%]   | 72    |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 2     |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] | 4     |
| All  (primary)                 | 0.7%  | [-0.5%, 3.0%]  | 87    |

Caused by #157702 which was immediately reverted because of this and other problems.

Rollup of 8 pull requests [#158145](https://github.com/rust-lang/rust/pull/158145) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d80660864fab37b060d052e01fd3ec40e4d33d11&end=f428d123ab0ea5431ec4256ff8838b9342866446&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.6%]   | 10    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.1% | [-1.1%, -1.1%] | 1     |
| All  (primary)                 | -     | -              | 0     |

Caused by #158075, the author has been pinged but no reply yet.

Rollup of 3 pull requests [#158162](https://github.com/rust-lang/rust/pull/158162) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=32ea3615cc027bcb8fd720c7511ffb484f6223a3&end=8c75e93c5c7671c29f3e8c096b7acf56822ed23a&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.3%, 0.8%] | 6     |
| Regressions (secondary)  | 0.6% | [0.1%, 1.1%] | 21    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.3%, 0.8%] | 6     |

Caused by #157976, the author has been made aware and seems to be looking into it.

#### Improvements

- Outline part of `evaluate_goal_raw` into its own `#[cold]` function [#158042](https://github.com/rust-lang/rust/pull/158042) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3768ec06c826ef667b65a7d084610a11baf10776&end=9639eefc07db282b25e9c83cdfebb10688ed5114&stat=instructions:u)
- Rollup of 2 pull requests [#158104](https://github.com/rust-lang/rust/pull/158104) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bc2112ed56c99fa649e09ab3ab286afab3d9059a&end=8c3f16724631ab8ed640567c0353687f85ad05f9&stat=instructions:u)
- Revert "Add expansion info to implied bounds" [#158122](https://github.com/rust-lang/rust/pull/158122) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0c1748ce7c56091b659757e488dbaf782b814137&end=d80660864fab37b060d052e01fd3ec40e4d33d11&stat=instructions:u)

#### Mixed

`-Znext-solver` Less normalizes-to janks [#156619](https://github.com/rust-lang/rust/pull/156619) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=89a99936d9e76a50e8df622e7242190841fd871b&end=c712ea94628bbc7b9cd3030d4a79324c13bbc842&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.8%  | [0.8%, 0.9%]   | 3     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.1%] | 16    |
| Improvements (secondary) | -1.2% | [-3.6%, -0.1%] | 20    |
| All  (primary)                 | -0.3% | [-0.6%, -0.1%] | 16    |

This is mostly improvement and the regression only happens with wg-grammar with the second benchmark, with the next-solver.
With this PR, we need relatively lesser depth in nested goals when normalizing things,
which is usually a good thing but for `wg-grammar` this causes more goals to be visited.
More details in the PR.

Dont rerun stalled goals if erased runs succeeded* [#157910](https://github.com/rust-lang/rust/pull/157910) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9e2abe0c6ab27fcbb95c30695188a75776e2feb1&end=1c0f17520a62ebdb757b5015633e0fab2df553a4&stat=instructions:u)

| (instructions:u)                   | mean   | range            | count |
|:----------------------------------:|:------:|:----------------:|:-----:|
| Regressions (primary)    | -      | -                | 0     |
| Regressions (secondary)  | 0.2%   | [0.1%, 0.3%]     | 4     |
| Improvements (primary)   | -      | -                | 0     |
| Improvements (secondary) | -40.8% | [-69.6%, -10.5%] | 6     |
| All  (primary)                 | -      | -                | 0     |

Perf improvements seriously outweigh regressions.
If I understand the change correctly, this is caused by adding new fast paths to the trait solver,
which usually seriously improve performance but might sometimes be missed and minorly regress performance.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Removability of unused imports for traits seemingly conditional to markdown in docs" [rust#155098](https://github.com/rust-lang/rust/issues/155098)
  - (IIUC) seems more a generic question for the t-compiler, so opened a [Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Removability.20of.20unused.20imports.20for.20traits/near/606423051)


[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Use `horde`'s `SyncTable` for default query caches and `CtxtInterners`" [rust#153826](https://github.com/rust-lang/rust/pull/153826) (last review activity: 2 months ago)
  - cc @**tako8ki**
- "Support `u128`/`i128` c-variadic arguments" [rust#155429](https://github.com/rust-lang/rust/pull/155429) (last review activity: 2 months ago)
  - cc @**Trevor Gross**
- "Move checking placeholder types in return types to `typeck`" [rust#153243](https://github.com/rust-lang/rust/pull/153243) (last review activity: 2 months ago)
  - This PR design and motivation seems to have raised some concerns cc @**fmease** . How do you feel about it now?

Next meetings' agenda draft: [hackmd link](https://hackmd.io/75nJ8Lc2QyCiGJogY2Yz4Q)
