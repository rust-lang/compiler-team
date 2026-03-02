---
tags: weekly, rustc
type: docs
note_id: jMDUHDugQf6qe0jgFPdzHQ
---

# T-compiler Meeting Agenda 2025-10-16

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-10-1625T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
- "Run main rust-analyzer tests in rust-lang/rust CI" [compiler-team#923](https://github.com/rust-lang/compiler-team/issues/923) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20main.20rust-analyzer.20tests.20in.20rust-lang.E2.80.A6.20compiler-team.23923))
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924))
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925))
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|124288** @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|116118** @_**|259697** @_**|444933**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Update bundled musl to 1.2.5 (rust#142682)](https://github.com/rust-lang/rust/pull/142682#issuecomment-3386987576)
    - @_**|123586** @_**|119031** @_**|259697** @_**|353056**
    - no pending concerns
  - merge: [Stabilize -Zno-jump-tables into -Cjump-tables=bool (rust#145974)](https://github.com/rust-lang/rust/pull/145974#issuecomment-3349582314)
    - @_**|124288** @_**|119031** @_**|426609**
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|116122** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Stabilize `-Zremap-path-scope` (rust#147611)](https://github.com/rust-lang/rust/pull/147611#issuecomment-3396899850)
    - @_**|123586** @_**|119031** @_**|248906** @_**|116122** @_**|123856** @_**|259697** @_**|444933** @_**|353056**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
  - "target tier 3 support for hexagon-unknown-qurt" [compiler-team#919](https://github.com/rust-lang/compiler-team/issues/919) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/target.20tier.203.20support.20for.20hexagon-unknown.E2.80.A6.20compiler-team.23919))
    - concern: [legal-review](https://github.com/rust-lang/compiler-team/issues/919#issuecomment-3386039553)
  - "Replace `rustc_target::specTarget::arch` string with enum" [compiler-team#926](https://github.com/rust-lang/compiler-team/issues/926) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Replace.20rustc_target.3A.3AspecTarget.3A.3Aarch.20st.E2.80.A6.20compiler-team.23926))
    - concern: [rust-gpu-use-case](https://github.com/rust-lang/compiler-team/issues/926#issuecomment-3403414340)
  - "Use `llvm-bitcode-linker` as the default linker for `nvptx64-nvidia-cuda`" [compiler-team#927](https://github.com/rust-lang/compiler-team/issues/927) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60llvm-bitcode-linker.60.20as.20the.20default.20.E2.80.A6.20compiler-team.23927))
  - "Impls and impl items inherit `dead_code` lint level of the corresponding traits and trait items" [rust#144113](https://github.com/rust-lang/rust/pull/144113)
  - "Remove current code for embedding command-line args in PDB" [rust#147022](https://github.com/rust-lang/rust/pull/147022)
  - "repr(transparent): do not consider repr(C) types to be 1-ZST" [rust#147185](https://github.com/rust-lang/rust/pull/147185)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
- Other teams finalized FCPs
  - "Forbid freely casting lifetime bounds of dyn-types" [rust#136776](https://github.com/rust-lang/rust/pull/136776)
  - "Fix accidental type inference in array coercion" [rust#140283](https://github.com/rust-lang/rust/pull/140283)
  - "Allow `&raw [mut | const]` for union field in safe code" [rust#141469](https://github.com/rust-lang/rust/pull/141469)
  - "prefer alias candidates for sizedness + auto trait goals " [rust#144064](https://github.com/rust-lang/rust/pull/144064)
  - "Do not materialise X in [X; 0] when X is unsizing a const" [rust#145277](https://github.com/rust-lang/rust/pull/145277)
  - "Allow borrowing array elements from packed structs with ABI align <= packed align" [rust#145419](https://github.com/rust-lang/rust/pull/145419)
  - "Reject invalid literal suffixes in tuple indexing, tuple struct indexing, and struct field name position" [rust#145463](https://github.com/rust-lang/rust/pull/145463)
  - "Opportunistically split `!=` to successfully parse never type" [rust#145536](https://github.com/rust-lang/rust/pull/145536)
  - "docs(style): Specify the frontmatter style" [rust#145617](https://github.com/rust-lang/rust/pull/145617)
  - "Stabilize `std::panic::Location::file_as_c_str`" [rust#145664](https://github.com/rust-lang/rust/pull/145664)
  - "the `#[track_caller]` shim should not inherit `#[no_mangle]`" [rust#145724](https://github.com/rust-lang/rust/pull/145724)
  - "Deny-by-default never type lints" [rust#146167](https://github.com/rust-lang/rust/pull/146167)
  - "Allow specifying multiple bounds for same associated item, except in trait objects" [rust#146593](https://github.com/rust-lang/rust/pull/146593)
  - "[beta-1.91] Warn on future errors from temporary lifetimes shortening in Rust 1.92" [rust#147056](https://github.com/rust-lang/rust/pull/147056)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix double warnings on `#[no_mangle]`" [rust#147467](https://github.com/rust-lang/rust/pull/147467)
  - Authored by JonathanBrouwer
  - Fixes 2 out of 3 cases in #147417 (P-high, confusing diagnostic)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23147467.3A.20beta-nominated/near/543977806), mostly declined. Low impact issue but also small, low risk PR, as per [comment](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23147467.3A.20beta-nominated/near/543981434)
- :beta: "Change int-to-ptr transmute lowering back to inttoptr" [rust#147541](https://github.com/rust-lang/rust/pull/147541)
  - Authored by saethlin
  - Fixes P-high rust#147265, LLVM wrong optimization causing a miscmpile
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23147541.3A.20beta-nominated/near/544252499), in favor
- :beta: "rewrite outlives placeholder constraints to outlives static when handling opaque types" [rust#147566](https://github.com/rust-lang/rust/pull/147566)
  - Authored by BoxyUwU
  - Fixes #147529, P-critical
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23147566.3A.20beta-nominated/near/544231340), few votes, in favor. Reverting the original PR is not easy
- :beta: "GVN: Invalidate derefs at loop headers" [rust#147607](https://github.com/rust-lang/rust/pull/147607)
  - Authored and nominated by dianqk
  - Fixes P-high miscompile introduced in #132527 (no issue reported, AFAIK)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23147607.3A.20beta-nominated/near/544396400), mixed opinions: on one hand this is broken since 1.88, original LLVM issue is [very old](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23147607.3A.20beta-nominated/near/544544163), on the other this is a miscompile and in general for optimizations bugs are less visible so it is good if this patch runs in crater runs sooner. Backport would produce conflicts but not insurmountable.
- :stable: "Change int-to-ptr transmute lowering back to inttoptr" [rust#147541](https://github.com/rust-lang/rust/pull/147541)
  - Authored by saethlin
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23147541.3A.20stable-nominated/near/544252497), vibe here is ok to backport but - alone - does not justifies a dot release. Though there is a report of this affecting [servo](https://github.com/servo/servo/pull/39471) (so at least one visible project in the ecosystem)

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- No PRs waiting on `T-compiler` this time.
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 30 P-high, 100 P-medium, 25 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "hidden type for `impl ...` captures lifetime that does not appear in bounds" [rust#147529](https://github.com/rust-lang/rust/issues/147529)
  - solved by #147566 (in backports)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Duplicate warning on some attributes with wrong targets" [rust#147417](https://github.com/rust-lang/rust/issues/147417)
  - solved by #147467 (in backports)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-10-13.md)

This week saw small wins across the board from some microoptimizations of the incremental query
system ([#147423](https://github.com/rust-lang/rust/pull/147423)). There have also been a couple of
regressions. [#142390](https://github.com/rust-lang/rust/pull/142390) introduced regressions of `check`
builds across the board. The largest regression (18%) is from an incremental opt build of a secondary
artificial stress test, so we deemed it acceptable.

Triage done by **@kobzol**.
Revision range: [1a3cdd34..956f47c3](https://perf.rust-lang.org/?start=1a3cdd34629306fa67624eaa60d73687e7fcf855&end=956f47c32f1bd97b22cd702d7ccf78f0f0d42c34&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.1%, 2.0%]   | 65    |
| Regressions (secondary)  | 0.8%  | [0.1%, 18.6%]  | 65    |
| Improvements (primary)   | -0.6% | [-1.6%, -0.1%] | 119   |
| Improvements (secondary) | -0.4% | [-1.6%, -0.1%] | 76    |
| All  (primary)           | -0.1% | [-1.6%, 2.0%]  | 184   |


2 Regressions, 7 Improvements, 3 Mixed; 3 of them in rollups
35 artifact comparisons made in total

#### Regressions

Rollup of 12 pull requests [#147512](https://github.com/rust-lang/rust/pull/147512) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bd3487101ff9397ca8a54dd83aa360d93342b82e&end=acf243778e6c54cb7d54bee4be88e510e4be123e&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.4% | [0.0%, 0.8%] | 10    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

- Noise, the secondary benchmarks have rebounded in [#147519](https://github.com/rust-lang/rust/pull/147519).
- Marked as triaged.

Fix normalization overflow ICEs in monomorphization [#146096](https://github.com/rust-lang/rust/pull/146096) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2300c2aef7dbc2a7bbbeaa9894d07d459abd9bc6&end=36e4f5d1fe1d63953a5bf1758ce2b64172623e2e&stat=instructions:u)

| (instructions:u)                   | mean | range         | count |
|:----------------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.6%]  | 5     |
| Regressions (secondary)  | 9.7% | [0.7%, 18.7%] | 2     |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)                 | 0.4% | [0.2%, 0.6%]  | 5     |

- The perf. hit was expected and deemed worth it, as this PR fixes a couple of issues.
- Apart from some tiny regressions, the single large regression is in a secondary stress test, and also in full incremental opt build.
- Marked as triaged.

#### Improvements

Rollup of 7 pull requests [#147449](https://github.com/rust-lang/rust/pull/147449) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fed46ffd5059e11669df1bd9406b02914c3fb73f&end=d62f33a7c684473bf6efa2f3ff57093bb8986141&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 8     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 1     |
| All  (primary)                 | -0.2% | [-0.3%, -0.1%] | 8     |


`DepNodeColor` tweaks [#147423](https://github.com/rust-lang/rust/pull/147423) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4fd31815524baba0bf368f151f757101f432e3de&end=5767910cbcc9d199bf261a468574d45aa3857599&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.5%, -0.2%] | 98    |
| Improvements (secondary) | -0.6% | [-1.2%, -0.1%] | 47    |
| All  (primary)                 | -0.6% | [-1.5%, -0.2%] | 98    |


[rustdoc] a small performance improvement: only allocate new string if there are DOS backlines in highlight.rs [#147443](https://github.com/rust-lang/rust/pull/147443) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=82224f6891c7e7aa0c6c865aa825100b3ea2d0fb&end=910617d84d611e9ba508fd57a058c59b8a767697&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 4     |
| Improvements (secondary) | -0.2% | [-0.5%, -0.0%] | 5     |
| All  (primary)                 | -0.2% | [-0.3%, -0.1%] | 4     |


Refactor AddCallGuards in two loops. [#147477](https://github.com/rust-lang/rust/pull/147477) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b6f0945e4681bc4d2faa7c22c5f61dc36abf7dd2&end=61efd190243db101d1e47c82c7ec543565c25f62&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 8     |
| Improvements (secondary) | -0.3% | [-0.6%, -0.1%] | 9     |
| All  (primary)                 | -0.2% | [-0.3%, -0.1%] | 8     |


Move more code to `RawVec::finish_grow` [#147124](https://github.com/rust-lang/rust/pull/147124) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=360a3a4e65cb70ea6e9da69cbb15f460dee516fd&end=be0ade2b602bdfe37a3cc259fcc79e8624dcba94&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 5     |
| Improvements (secondary) | -0.1% | [-0.2%, -0.0%] | 7     |
| All  (primary)                 | -0.2% | [-0.4%, -0.1%] | 5     |


Rollup of 8 pull requests [#147603](https://github.com/rust-lang/rust/pull/147603) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3be68033b67dfc2aa3ae4cfe735aa5805aebae43&end=89276493d3c3f85691e76b27a9dde7ec82e79cdb&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.0%  | [0.0%, 0.0%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 3     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.0%] | 13    |
| All  (primary)                 | -0.2% | [-0.2%, -0.1%] | 3     |


Split overlapping_{inherent,trait}_impls [#147502](https://github.com/rust-lang/rust/pull/147502) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=35456985fab3419baf4bf111b8bbbd5e8565615d&end=956f47c32f1bd97b22cd702d7ccf78f0f0d42c34&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 15    |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] | 4     |
| All  (primary)                 | -0.2% | [-0.4%, -0.1%] | 15    |


#### Mixed

Prevent downstream `impl DerefMut for Pin<LocalType>` [#145608](https://github.com/rust-lang/rust/pull/145608) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4a54b26d30dac43778afb0e503524b763fce0eee&end=fed46ffd5059e11669df1bd9406b02914c3fb73f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.0% | [-0.0%, -0.0%] | 1     |
| All  (primary)                 | 0.3%  | [0.3%, 0.3%]   | 2     |

- Tiny regression on hyper, otherwise netural. This PR fixes soundness anyway.
- Marked as triaged.

Perform InstSimplify before ReferencePropagation. [#147483](https://github.com/rust-lang/rust/pull/147483) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b57d8154a6a74d2514cd3a674c1f29a588f224a&end=0b278a539440be291466ea463a9b6310eaf4d7bb&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.7%]   | 6     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.1%] | 6     |
| Improvements (secondary) | -0.3% | [-0.6%, -0.1%] | 6     |
| All  (primary)                 | -0.3% | [-0.5%, -0.1%] | 6     |

- Some tiny wins on primary benchmarks, but overall it's a wash.
- Marked as triaged.

Perform unused assignment and unused variables lints on MIR. [#142390](https://github.com/rust-lang/rust/pull/142390) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=89276493d3c3f85691e76b27a9dde7ec82e79cdb&end=ff6dc928c5e33ce8e65c6911a790b9efcb5ef53a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.1%, 2.0%]   | 75    |
| Regressions (secondary)  | 0.7%  | [0.0%, 3.7%]   | 76    |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.4%] | 6     |
| All  (primary)                 | 0.6%  | [-0.3%, 2.0%]  | 76    |

- The regressions on the check builds are real, but they mostly didn't carry over to debug and opt builds. This is a big compiler change that took years to land, so I think that we just eat the cost.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add `overflow_checks` intrinsic" [rust#128666](https://github.com/rust-lang/rust/pull/128666) (last review activity: 10 months ago)
  - There's a conversation happening, unsure if the review is on someone else cc @**Boxy** (feel free to reassign to one of the commenters)
- "Add FileCheck annotations to mir-opt/copy-prop" [rust#135099](https://github.com/rust-lang/rust/pull/135099) (last review activity: 6 months ago)
  - cc @**Wesley Wiser** (feel free to re-assign)
- "Issue-125323: ICE non-ADT in struct pattern when long time constant evaluation is in for loop" [rust#138679](https://github.com/rust-lang/rust/pull/138679) (last review activity: 4 months ago)
  - cc @**oli** (if you have bandwidth, or maybe reassign?)
- "hir_analysis: add missing sizedness bounds" [rust#142712](https://github.com/rust-lang/rust/pull/142712) (last review activity: 3 months ago)
  - cc: @**lcnr**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/c20QdPAoSO-0oS4NgRAUSg)
