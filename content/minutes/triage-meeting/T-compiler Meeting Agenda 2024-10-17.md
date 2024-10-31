---
tags: weekly, rustc
type: docs
note_id: SM8ZkqI7Q26ZMuJ67YXC-A
---

# T-compiler Meeting Agenda 2024-10-17

## Announcements

- Today, Rust 1.82 stable is out ([blog post](https://github.com/cuviper/blog.rust-lang.org/blob/rust-1.82.0/posts/2024-10-17-Rust-1.82.0.md))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-10-17T22:00:00+01:00>
- wg-rust-analyzer steering meeting on Zulip (https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/Steering.20meeting) <time:2024-10-18T17:00:00+01:00>
- wg-macros triage meeting Zulip (https://rust-lang.zulipchat.com/#narrow/stream/410876-wg-macros.2Ftriage) <time:2024-10-18T18:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785))
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787))
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789))
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790))
  - "Promote tier 3 `arm64e-apple-ios` target to tier 2" [compiler-team#793](https://github.com/rust-lang/compiler-team/issues/793) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20.60arm64e-apple-ios.60.20target.20.E2.80.A6.20compiler-team.23793))
  - "Attribute handling reworks" [compiler-team#796](https://github.com/rust-lang/compiler-team/issues/796) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Attribute.20handling.20reworks.20compiler-team.23796))
  - "Support for a new `wasm32-linux-musl` Tier-3 target" [compiler-team#797](https://github.com/rust-lang/compiler-team/issues/797) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20for.20a.20new.20.60wasm32-linux-musl.60.20Tie.E2.80.A6.20compiler-team.23797))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 27 days ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 6 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 41 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Add `--print host-triple` to print host target triple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
- Things in FCP (make sure you're good with it)
  - "Wasm minimal features target" [compiler-team#791](https://github.com/rust-lang/compiler-team/issues/791) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Wasm.20minimal.20features.20target.20compiler-team.23791))
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
- Accepted MCPs
  - "Add a new `--orchestrator-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716))
  - "Don't track `--emit=` options as part of crate SVH" [compiler-team#769](https://github.com/rust-lang/compiler-team/issues/769) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Don.27t.20track.20.60--emit.3D.60.20options.20as.20part.20of.20.E2.80.A6.20compiler-team.23769))
  - "`--hint-msrv=version` option so the compiler can take MSRV into account when linting" [compiler-team#772](https://github.com/rust-lang/compiler-team/issues/772) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-C.20msrv.3Dversion.60.20option.20so.20the.20compiler.20.E2.80.A6.20compiler-team.23772))
  - "mark some target features as 'forbidden' so they cannot be (un)set with -Ctarget-feature" [compiler-team#780](https://github.com/rust-lang/compiler-team/issues/780) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/mark.20some.20target.20features.20as.20.27forbidden.27.20.E2.80.A6.20compiler-team.23780))
  - "-Z default-visibility option" [compiler-team#782](https://github.com/rust-lang/compiler-team/issues/782) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/-Z.20default-visibility.20option.20compiler-team.23782))
  - "Test rule annotations" [compiler-team#783](https://github.com/rust-lang/compiler-team/issues/783) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Test.20rule.20annotations.20compiler-team.23783))
  - "New Tier-3 target for OpenHarmony on LoongArch64" [compiler-team#784](https://github.com/rust-lang/compiler-team/issues/784) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.20for.20OpenHarmony.20on.20Loon.E2.80.A6.20compiler-team.23784))
  - "Support tests to use `minicore` std/core prelude stubs" [compiler-team#786](https://github.com/rust-lang/compiler-team/issues/786) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20tests.20to.20use.20.60minicore.60.20std.2Fcore.20.E2.80.A6.20compiler-team.23786))
  - "Remove the `run-pass-valgrind` test suite" [compiler-team#792](https://github.com/rust-lang/compiler-team/issues/792) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20the.20.60run-pass-valgrind.60.20test.20suite.20compiler-team.23792))
  - "Create a notification group for WASM" [compiler-team#794](https://github.com/rust-lang/compiler-team/issues/794) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20notification.20group.20for.20WASM.20compiler-team.23794))
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - "Fixup Windows verbatim paths when used with the `include!` macro" [rust#125205](https://github.com/rust-lang/rust/pull/125205)
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "atomics: allow atomic and non-atomic reads to race" [rust#128778](https://github.com/rust-lang/rust/pull/128778)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "Make deprecated_cfg_attr_crate_type_name a hard error" [rust#129670](https://github.com/rust-lang/rust/pull/129670)
  - "Stabilize expr_2021 fragment specifier in all editions" [rust#129972](https://github.com/rust-lang/rust/pull/129972)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)
  - "Stabilize const `ptr::write*` and `mem::replace`" [rust#130954](https://github.com/rust-lang/rust/pull/130954)
  - "Proposal: stabilize `if_let_rescope` for Edition 2024" [rust#131154](https://github.com/rust-lang/rust/issues/131154)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Also use outermost const-anon for impl items in `non_local_defs` lint" [rust#131660](https://github.com/rust-lang/rust/pull/131660)
  - Authored by Urgau
  - Fixes #131643 (does not affect the upcoming stable 1.82, it's a nightly regression, "promoted" to beta today)
<!--
/poll Approve beta backport of #131660?
approve
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Add x86 specific hotpatch flag to rustc" [rust#124966](https://github.com/rust-lang/rust/pull/124966)
  - This is waiting on [MCP#745](https://github.com/rust-lang/compiler-team/issues/745), in case anyone has time to look at that (Zulip discussion<https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Add.20Hotpatch.20flag.20compiler-team.23745>)
- "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - @_*petrochenkov* opened RFC to merge this ([link](https://github.com/rust-lang/rust/pull/131080#issuecomment-2403261016))
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [69 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [42 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 3 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "non-pub function no longer compiled in debug profile, causing link errors on thumbv7em-none-eabihf with defmt" [rust#131164](https://github.com/rust-lang/rust/issues/131164)
  - Affects "just" a Tier 2 target but real-world impact seems to be serious (see [comment](https://github.com/rust-lang/rust/issues/131164#issuecomment-2404970102))
  - @_**Quentin Dian (dianqk)** fixed this in LLVM 19 ([llvm-project#111478](https://github.com/llvm/llvm-project/issues/111478)) and is backported to beta in #131448 (just in time for the stable release)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/pull/1996/files?short_path=c0d1c1c#diff-c0d1c1c71a8dd0a532994446beb4a197dcfb048bcdb68a22ac4a1bc603e2e92e)

No major changes this week.

Triage done by **@simulacrum**.
Revision range: [e6c46db4..5ceb623a](https://perf.rust-lang.org/?start=e6c46db4e9fd11e3183c397a59d946731034ede6&end=5ceb623a4abd66e91e7959d25caaf0523f1a7f7c&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.5%  | [0.2%, 2.9%]   | 16    |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 14    |
| Improvements (secondary) | -0.6% | [-1.7%, -0.1%] | 32    |
| All  (primary)           | -0.2% | [-0.4%, 0.2%]  | 15    |


1 Regression, 1 Improvement, 2 Mixed; 2 of them in rollups
36 artifact comparisons made in total

#### Regressions

Introduce SolverRelating type relation to the new solver [#131263](https://github.com/rust-lang/rust/pull/131263) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4cc494bbfe9911d24f3ee521f98d5c6bb7e3ffe8&end=8d94e06ec9758b5c03ea77bb5dab22a1a76bc261&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 1     |
| Regressions (secondary)  | 0.5% | [0.2%, 2.7%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.2%] | 1     |

Genuine, if small, regressions on a number of benchmarks. Likely required as
part of the broader move to the new solver.

#### Improvements

Rollup of 8 pull requests [#131628](https://github.com/rust-lang/rust/pull/131628) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6b9676b45431a1e531b9c5f7bd289fc36a312749&end=ef4e8259b5016d85e261587b605028b2ff06c13d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.6%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 8     |
| Improvements (secondary) | -0.6% | [-1.8%, -0.1%] | 31    |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 8     |

Seems most likely to be due to "Shallowly match opaque key in storage
[#131599](https://github.com/rust-lang/rust/pull/131599)" but not confirming
since this is an improvement.

#### Mixed

Rollup of 7 pull requests [#131581](https://github.com/rust-lang/rust/pull/131581) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fb20e4d3b96d1de459d086980a8b99d5060ad9fe&end=8f8bee4f60d9d3769f75c70d558c27a95761c554&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.6%]   | 6     |
| Improvements (primary)   | -0.3% | [-1.0%, -0.2%] | 7     |
| Improvements (secondary) | -2.5% | [-2.5%, -2.5%] | 1     |
| All  (primary)           | -0.3% | [-1.0%, -0.2%] | 7     |

Possibly spurious (and/or bi-modality) regression confined to tt-muncher
(though across multiple scenarios). No need for further investigation,
particular given a rollup.

Add `#[track_caller]` to allocating methods of `Vec` & `VecDeque` [#126557](https://github.com/rust-lang/rust/pull/126557) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5ceb623a4abd66e91e7959d25caaf0523f1a7f7c&end=f6648f252a05a0a46c865d7ec836b46290613bf9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.0%, 0.5%]   | 26    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] | 4     |
| All  (primary)           | 0.3%  | [0.0%, 0.5%]   | 26    |

Seems to be accepted by T-libs
(https://github.com/rust-lang/rust/pull/126557#issuecomment-2329482185).
An expected regression pre-merge.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Add `minicore` test auxiliary and support `//@ use-minicore` directive in ui/assembly/codegen tests" [rust#130693](https://github.com/rust-lang/rust/pull/130693)
  - @**RalfJ** nominated to evaluate the best directive syntax to use, see [comment](https://github.com/rust-lang/rust/pull/130693#issuecomment-2408470640) (and following)
  - More context and [candidates suggestions](https://github.com/rust-lang/rust/pull/130693#issuecomment-2418431995) from @**Jieyou Xu**

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733)
  - cc: @**Esteban Küber**
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784)
  - cc: @**León Orell Liehr (fmease)** but also author cc @**Esteban Küber**
  - A pretty big diff, needs a rebase. Unsure about the best way to proceed.
- "Improve parse item fallback" [rust#125388](https://github.com/rust-lang/rust/pull/125388) (last review activity: 4 months ago)
  - cc: @**Wesley Wiser**
- "Do not eagerly reject inference vars when trying to resolve method calls." [rust#126316](https://github.com/rust-lang/rust/pull/126316) (last review activity: about 53 days ago)
   - cc @**lcnr** still interested in revieweing this?
- Since @_**mw** recently left the project (💔), there are still a few [pull requests assigned to him](https://github.com/rust-lang/rust/pulls?q=sort%3Aupdated-desc+is%3Apr+is%3Aopen+assignee%3Amichaelwoerister). Maybe find another assignee? Any taker? 🙏

## Next week's WG checkins

- None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/mIm_VIaQRRK6IXrcDcz7-w)
