---
tags: weekly, rustc
type: docs
note_id: qk6pLRaLSS2_MnVFtHUGqQ
---

# T-compiler Meeting Agenda 2026-04-02

## Announcements

- FIY blog post to be published: [Changes to WebAssembly targets and handling undefined symbols](https://github.com/alexcrichton/blog.rust-lang.org/blob/wasm-undefined-symbols/content/changes-to-webassembly-targets-and-handling-undefined-symbols.md)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- None

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 7 days ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 8 months ago)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: 2 months ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: 2 months ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: 2 months ago)
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976)) (last review activity: about 5 days ago)
  - "Change the ABI of powerpc64-unknown-linux-gnu to ELFv2" [compiler-team#977](https://github.com/rust-lang/compiler-team/issues/977) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20the.20ABI.20of.20powerpc64-unknown-linux.E2.80.A6.20compiler-team.23977)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote loongarch32-unknown-none* to Tier 2 (compiler-team#968)](https://github.com/rust-lang/compiler-team/issues/968#issuecomment-3907992097)
    - @**|124288** @**|125250** @**|119031** @**|353056**
    - no pending concerns
  - merge: [Turn long-deprecated -C options into errors (compiler-team#978)](https://github.com/rust-lang/compiler-team/issues/978#issuecomment-4148637792)
    - @_**|116266** @_**|125250** @_**|116107** @_**|119031** @_**|248906** @_**|123856** @_**|116118** @_**|343125** @_**|353056**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Make trait refs & assoc ty paths properly induce trait object lifetime defaults (rust#129543)](https://github.com/rust-lang/rust/pull/129543#issuecomment-2862410551)
    - @**|116009** @**|326176** @**|216206** @**|232957**
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|124288** @_**|326176**
    - concerns: [implementation-confidence (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853046997) [inconsistent-name-res-semantics (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853051038)
  - merge: [Reduce `unreachable-code` churn after `todo!()` (rust#149543)](https://github.com/rust-lang/rust/pull/149543#issuecomment-4171057149)
    - @_**|116009** @_**|116883** @_**|125270**
    - concerns: [please-rename-lint (by traviscross)](https://github.com/rust-lang/rust/pull/149543#issuecomment-4171059182)
  -  "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
  - merge: [WF checks on closure arguments. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|124288** @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [switch to v0 mangling by default on stable (rust#151994)](https://github.com/rust-lang/rust/pull/151994#issuecomment-3838891427)
    - @_**|123586** @_**|353056**
    - concerns: [late-anon-const (by petrochenkov)](https://github.com/rust-lang/rust/pull/151994#issuecomment-4135046238)
  - merge: [Clean up crate type names to fix dylib vs staticlib confusion (rust#153863)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4061709608)
    - @_**|120518** @_**|116266** @_**|424212** @_**|124288** @_**|270929** @_**|125250** @_**|248906** @_**|120179** @_**|245964** @_**|116118** @_**|415544** @_**|296292** @_**|353056**
    - concerns: [cargo-impact (by epage)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4070064048)
- Things in FCP (make sure you're good with it)
  -  "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Emit retags in codegen" [compiler-team#958](https://github.com/rust-lang/compiler-team/issues/958) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20retags.20in.20codegen.20compiler-team.23958))
  - "Syntactically reject equality predicates" [rust#153513](https://github.com/rust-lang/rust/pull/153513)
  - "stabilize s390x vector registers" [rust#154184](https://github.com/rust-lang/rust/pull/154184)
  - "report the `varargs_without_pattern` lint in deps" [rust#154599](https://github.com/rust-lang/rust/pull/154599)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 5 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 8 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 5 months ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 47 days ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 4 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 10 days ago)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 2 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: about 48 days ago)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - [T-style] "Improvements to match formatting" [rust#152763](https://github.com/rust-lang/rust/issues/152763)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "[perf] Revert FastISel patch" [rust#154511](https://github.com/rust-lang/rust/pull/154511)
  - Authored by nikic
  - Fixes a perf regression in the other approved #154344 (LLVM upgrade to 22.1.2)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23154511.3A.20beta-nominated/near/582624155)
<!--
@**triagebot** backport beta accept 154511
@**triagebot** backport beta decline 154511
-->
- :beta: "Revert "Fix: On wasm targets, call panic_in_cleanup if panic occurs in cleanup #151771"" [rust#154700](https://github.com/rust-lang/rust/pull/154700)
  - Authored by wesleywiser
  - For #153948, reverts #151771 until the LLVM patch gets to us. Discussed last week: https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202026-03-26/near/581957759
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23154700.3A.20beta-nominated/near/583170989)
<!--
@**triagebot** backport beta accept 154700
@**triagebot** backport beta decline 154700
-->
- :beta: "Revert "`-Znext-solver` Remove the forced ambiguity hack from search graph"" [rust#154712](https://github.com/rust-lang/rust/pull/154712)
  - Authored by lqd
  - This revert should restore a cospicous compile-time regression in Bevy (#153910)
  - Has been just r'ed and release is in ~2 weeks. This revert should be rather innocuous
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23154712.3A.20beta-nominated/near/583249405)
<!--
@**triagebot** backport beta accept 154712
@**triagebot** backport beta decline 154712
-->

- No stable nominations for `T-compiler` this time.

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
  - [46 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 32 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "Significant compilation time regression starting in v1.95.0-nightly (bevy)" [rust#153910](https://github.com/rust-lang/rust/issues/153910)
  - T-types will have a look into it
- "Complex EH flow miscompiled on wasm" [rust#153948](https://github.com/rust-lang/rust/issues/153948)
  - Wesley authored a revert (thanks!) in #154700 until we get the fix from the LLVM project

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-03-31 Triage Log](https://github.com/Kobzol/rustc-perf/blob/23c7a57ddd710830f9ae14d2676718587e9dc412/triage/2026/2026-03-31.md)

We had some infrastructure troubles this week which prevented some rollup PRs from generating their
"unrolled" builds, which made rollup regression investigation more complicated, although we were
able to locate and revert the largest rollup regressions in the end. [#154304](https://github.com/rust-lang/rust/pull/154304) brought some nice improvements by optimizing the query system.

Triage done by **@kobzol**.
Revision range: [6f22f613..cf7da0b7](https://perf.rust-lang.org/?start=6f22f61305478df09f9a4523743f85d9f558c3d7&end=cf7da0b7277cad05b79f91b60c290aa08a17a6f0&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.4%  |  [0.1%, 1.2%]  |   4   |
| Regressions (secondary)  | 0.3%  |  [0.1%, 0.5%]  |  12   |
|  Improvements (primary)  | -0.8% | [-6.2%, -0.2%] |  58   |
| Improvements (secondary) | -0.4% | [-1.9%, -0.1%] |  28   |
|      All  (primary)      | -0.8% | [-6.2%, 1.2%]  |  62   |

3 Regressions, 4 Improvements, 2 Mixed; 2 of them in rollups
35 artifact comparisons made in total

#### Regressions

Rollup of 10 pull requests [#154289](https://github.com/rust-lang/rust/pull/154289) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=212b0d480f337082bbe1132d2b62be20e7e61f8a&end=9df83179a4fd7ddee7532e72abb23c76b8426f9a&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 3     |
| Regressions (secondary)  | 0.5% | [0.5%, 0.5%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.2%, 0.2%] | 3     |

- The unicode normalization blip was noise. The rest looks real, but the regressions are tiny and only on `doc` builds, and since we don't have unrolled builds here, I don't think it's worth it to go revert the individual PRs.
- Marked as triaged.

Rollup of 22 pull requests [#154384](https://github.com/rust-lang/rust/pull/154384) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=212ef7770dfad656782207fda799bdae28fc5b7b&end=80d0e4be6f15899649ba31669077c59a986f96cc&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.2% | [0.1%, 3.8%] | 53    |
| Regressions (secondary)  | 0.9% | [0.2%, 6.2%] | 45    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 1.2% | [0.1%, 3.8%] | 53    |

- The regressions came from several pull requests.
- [#154200](https://github.com/rust-lang/rust/pull/154200) caused compilation time and binary size regressions.
  It was reverted in [#154468](https://github.com/rust-lang/rust/pull/154468), and there is now an
  open PR ([#154532](https://github.com/rust-lang/rust/pull/154532)) to reapply it with some modifications.
- [#154344](https://github.com/rust-lang/rust/pull/154344), an LLVM version update, caused the rest of the major compilation time regressions. It was reverted in [#154511](https://github.com/rust-lang/rust/pull/154511).
- Marked as triaged.

constify `Step` trait and all of its `impl`ementations [#153821](https://github.com/rust-lang/rust/pull/153821) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=79531c53ded6316bd4973f60bc992954255b8b10&end=7e28c7438a7b0c79a09724ba799d32ed461beb72&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.4%, 1.2%] | 2     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.8% | [0.4%, 1.2%] | 2     |

- Some tiny regressions in debug and opt builds.
- Asked for a follow-up.
- Not marking as triaged yet.

#### Improvements

`DepNode` use improvements [#154076](https://github.com/rust-lang/rust/pull/154076) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6f22f61305478df09f9a4523743f85d9f558c3d7&end=212b0d480f337082bbe1132d2b62be20e7e61f8a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.0%] | 12    |
| All  (primary)                 | -     | -              | 0     |


Revert "Rollup merge of #154200 - resrever:enable-dwarf-call-sites, r=dingxiangfei2009" [#154468](https://github.com/rust-lang/rust/pull/154468) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0d4eb09831046687ccd28e8a570735e90f22004c&end=fb27476aaf1012f1f6ace6306f9b990e0d989c31&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.0%, -0.2%] | 34    |
| Improvements (secondary) | -0.6% | [-1.0%, -0.1%] | 25    |
| All  (primary)                 | -0.5% | [-1.0%, -0.2%] | 34    |


resolve: Never lookup glob names in modules from other crates [#154472](https://github.com/rust-lang/rust/pull/154472) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fb27476aaf1012f1f6ace6306f9b990e0d989c31&end=3f3c6f45dc68eb71d1e01ae716bad4da164dfbf1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.2%, -0.1%] | 2     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.0%] | 11    |
| All  (primary)                 | -0.1% | [-0.2%, -0.1%] | 2     |


[perf] Revert FastISel patch [#154511](https://github.com/rust-lang/rust/pull/154511) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=80ad55752e5ae6c2d1bc143b819eb8d1c00167d1&end=116458d0a5ae01cd517cabd2d1aee7f5457018ab&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.3% | [-3.2%, -0.1%] | 26    |
| Improvements (secondary) | -1.2% | [-5.1%, -0.2%] | 13    |
| All  (primary)                 | -1.3% | [-3.2%, -0.1%] | 26    |


#### Mixed

rustc_expand: improve diagnostics for non-repeatable metavars [#154014](https://github.com/rust-lang/rust/pull/154014) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=80d0e4be6f15899649ba31669077c59a986f96cc&end=1174f784096deb8e4ba93f7e4b5ccb7bb4ba2c55&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.3%]   | 7     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 1     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)                 | 0.2%  | [-0.1%, 0.3%]  | 8     |

- Small regression on html5ever, it was deemed to be acceptable prior to merging.
- Marked as triaged.

Make typeck a tcx method which calls typeck_root query [#154304](https://github.com/rust-lang/rust/pull/154304) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cd14b73b4a41542d921f59e362a5b5005fa4f2ef&end=a25435bcf7cfc9b953d356eda3a51db8da9e3386&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 6     |
| Improvements (primary)   | -1.1% | [-6.1%, -0.2%] | 41    |
| Improvements (secondary) | -0.7% | [-2.0%, -0.2%] | 11    |
| All  (primary)                 | -1.0% | [-6.1%, 0.2%]  | 44    |

- Many more improvements than regressions.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Clean up crate type names to fix dylib vs staticlib confusion" [rust#153863](https://github.com/rust-lang/rust/issues/153863)
  - cargo team raised [some points](https://github.com/rust-lang/rust/issues/153863#issuecomment-4130129323), I think we can wait for them to settle first (unless someone has opinions and wants to share them)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Remove redundant information in `rustc_abi::Variants`" [rust#151742](https://github.com/rust-lang/rust/pull/151742)
  - It's a cleanup PR, partially addresses 113988
  - ABI/codegen reviewer likely needed, can anyone have a look?
- "Store `chunk_domain_size` explicitly in `Chunk`." [rust#147802](https://github.com/rust-lang/rust/pull/147802) (last review activity: 5 months ago)
  - cc @**cjgillot**
-  "Fix ICE when ABI computation fails for unreachable/no-codegen instances" [rust#152306](https://github.com/rust-lang/rust/pull/152306) (last review activity: about 53 days ago)
  - cc @**Jubilee** (self-assigned)
-  "Use edition ranges in `tests/ui` (Batch 1)" [rust#151464](https://github.com/rust-lang/rust/pull/151464) (last review activity: about 53 days ago)
  - cc @**León Orell Liehr (fmease)** (unsure if the reviewer agrees with the implementation, left a comment)
Next meetings' agenda draft: [hackmd link](https://hackmd.io/MorXHfyhRMifZxvrZ6l39A)
