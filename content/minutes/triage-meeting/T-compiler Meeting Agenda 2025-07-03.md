---
tags: weekly, rustc
type: docs
note_id: mPODDOR8T2S4ol9Pje65og
---

# T-compiler Meeting Agenda 2025-07-03

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-07-03T19:00:00+02:00>
- Stable MIR weekly meeting <time:2025-07-04T17:00:00+02:00>
- WG-async planning meeting <time:2025-07-04T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 8 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 8 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 3 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 3 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 2 months ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 20 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 2 months ago)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 34 days ago)
  - "Upgrade `*-linux-musl` targets to musl 1.2.5" [compiler-team#887](https://github.com/rust-lang/compiler-team/issues/887) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Upgrade.20.60.2A-linux-musl.60.20targets.20to.20musl.201.2E.E2.80.A6.20compiler-team.23887)) (last review activity: about 6 days ago)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Add `target_env = "macabi"` and `target_env = "sim"` (rust#139451)](https://github.com/rust-lang/rust/pull/139451#issuecomment-2793613930)
    - @_**|116266** @_**|119031** @_**|353056**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Make the UI test suite more amenable to multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861))
    - concern: [edition-directive-meaning](https://github.com/rust-lang/compiler-team/issues/861#issuecomment-2796811016)
  - "Create `rustc_target::spec::Target` from a Builder" [compiler-team#890](https://github.com/rust-lang/compiler-team/issues/890) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20.60rustc_target.3A.3Aspec.3A.3ATarget.60.20from.20.E2.80.A6.20compiler-team.23890))
  - "Run more tests for rustc_codegen_gcc in the CI" [compiler-team#891](https://github.com/rust-lang/compiler-team/issues/891) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20more.20tests.20for.20rustc_codegen_gcc.20in.20t.E2.80.A6.20compiler-team.23891))
  - "Auto-create tracking issues for accepted MCPs" [compiler-team#892](https://github.com/rust-lang/compiler-team/issues/892) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Auto-create.20tracking.20issues.20for.20accepted.20.E2.80.A6.20compiler-team.23892))
  - "Policy: Empower reviewers to reject burdensome PRs" [compiler-team#893](https://github.com/rust-lang/compiler-team/issues/893) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Reject.20low-effort.20AI-generated.20PRs.20compiler-team.23893))
    - concern: [wait-for-some-discussions-to-settle](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3012233397)
- Accepted MCPs
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853))
  - "Constrain process required for some user-facing changes to lower support tier targets" [compiler-team#884](https://github.com/rust-lang/compiler-team/issues/884) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Constrain.20process.20required.20for.20some.20user-.E2.80.A6.20compiler-team.23884))
  - "Expose `target_abi = "elfv{1,2}"` on `powerpc64-any-unixy-elfy` targets" [compiler-team#885](https://github.com/rust-lang/compiler-team/issues/885) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Expose.20.60target_abi.20.3D.20.22elfv.7B1.2C2.7D.22.60.20on.20.60pow.E2.80.A6.20compiler-team.23885))
  - "use separate build directory for rust-analyzer to use" [compiler-team#889](https://github.com/rust-lang/compiler-team/issues/889) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/use.20separate.20build.20directory.20for.20rust-ana.E2.80.A6.20compiler-team.23889))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 15 days ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 1 days ago)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
- Finalized FCPs (disposition merge)
  - "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
- Other teams finalized FCPs
  - "Allow `#[must_use]` on associated types to warn on unused values in generic contexts" [rust#142590](https://github.com/rust-lang/rust/pull/142590)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Reduce mismatched-lifetime-syntaxes suggestions to MaybeIncorrect" [rust#142980](https://github.com/rust-lang/rust/pull/142980)
  - Authored by shepmaster
  - Fixes #142998, fixes an annoying multiple lint suggestion generated from cargo fix ([comment](https://github.com/rust-lang/rust/pull/142980#issuecomment-3013518031))
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23142980.3A.20beta-nominated/near/525704185), in favor
- :beta: "Fix hang in --print=file-names in bootstrap" [rust#142928](https://github.com/rust-lang/rust/pull/142928)
  - This is a bootstrap backport, nominated by @**Wesley Wiser** (do we approve their backports as well?)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/507486-t-infra.2Fbootstrap.2Fbackports/topic/.23142928.3A.20beta-nominated/near/525590742), in favor
- :stable: "Do not ICE when reassigning in GatherLocalsVisitor on the bad path" [rust#140827](https://github.com/rust-lang/rust/pull/140827)
  - Authored by compiler-errors
  - Nominated by @_**cyrgani** in [comment](https://github.com/rust-lang/rust/pull/140827#issuecomment-3017028820)
  - Fixes a bunch of reported ICEs (#140785 #140730 #143188 #143209) but they don't seem critical
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23140827.3A.20stable-nominated/near/526290626), generally not in favor

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 3 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 23 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2025-06-30](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-06-30.md)

Lots of changes this week with results dominated by the 1-5% improvements from
[#142941](https://github.com/rust-lang/rust/pull/142941) across lots of primary
benchmarks in the suite.

Triage done by **@simulacrum**.
Revision range: [42245d34..ad3b7257](https://perf.rust-lang.org/?start=42245d34d22ade32b3f276dcf74deb826841594c&end=ad3b7257615c28aaf8212a189ec032b8af75de51&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 2.9%  | [0.2%, 21.6%]   | 16    |
| Regressions (secondary)  | 1.5%  | [0.1%, 13.5%]   | 38    |
| Improvements (primary)   | -0.9% | [-4.5%, -0.1%]  | 99    |
| Improvements (secondary) | -6.2% | [-67.9%, -0.1%] | 100   |
| All  (primary)           | -0.4% | [-4.5%, 21.6%]  | 115   |

3 Regressions, 6 Improvements, 5 Mixed; 4 of them in rollups
39 artifact comparisons made in total

#### Regressions

Rollup of 10 pull requests [#143091](https://github.com/rust-lang/rust/pull/143091) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=13c46fd0b089360922a557d8e18a63a2c41dfbeb&end=fe5f3dedf7b4d6bea2cadb17343f747d70b4c66b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.1%  | [0.1%, 2.7%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | -     | -              | 0     |

Regressions in ctfe and match stress tests, trying to find the PR that
introduced them in case there's obvious tweaks, but not particularly
noteworthy given the limited impact.

Rollup of 9 pull requests [#143116](https://github.com/rust-lang/rust/pull/143116) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bdaba05a953eb5abeba0011cdda2560d157aed2e&end=d41e12f1f4e4884c356f319b881921aa37040de5&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 1.1% | [0.9%, 1.3%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

Regressions are in the `coercions` stress test, not clear which of the rolled
up PRs caused it. Started one candidate perf run.

Rollup of 11 pull requests [#143173](https://github.com/rust-lang/rust/pull/143173) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dddd7ab96229ea5f2ca96afcb5984a9831393a13&end=5ca574e85b67cec0a6fc3fddfe398cbe676c9c69&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.3%, 0.7%] | 2     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.5% | [0.3%, 0.7%] | 2     |

Likely due to [#142641](https://github.com/rust-lang/rust/pull/142641) which
added extra work to proc-macro crates, which are the benchmarks affected here.

#### Improvements

Encode hir attributes cross-crate properly [#142777](https://github.com/rust-lang/rust/pull/142777) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d14d202262d13df896b0c624b0cec6e4bfde631a&end=0fa4ec6cde46fa17ab07acb5531cfe0dc1349ffa&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-1.4%, -0.1%] | 16    |
| Improvements (secondary) | -0.6% | [-1.3%, -0.2%] | 20    |
| All  (primary)                 | -0.4% | [-1.4%, -0.1%] | 16    |


Rollup of 8 pull requests [#143057](https://github.com/rust-lang/rust/pull/143057) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b03b3a7ec92682be2917540b679478d41c95a30c&end=513999b936c37902120380f4171963d1f1d80347&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.3%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.4% | [-0.4%, -0.3%] | 3     |


Fast path for WF goals in new solver [#142223](https://github.com/rust-lang/rust/pull/142223) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e61dd437f33b5a640e67dc3628397689c664c17f&end=df32e15c56f582eb2bdde07711af6271f2ae660b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 8     |
| Improvements (secondary) | -1.5% | [-3.5%, -0.3%] | 13    |
| All  (primary)                 | -0.2% | [-0.4%, -0.1%] | 8     |


Collapse Analysis|Borrowck|PostBorrowckAnalysis when there are no opaques [#142802](https://github.com/rust-lang/rust/pull/142802) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ed2d759783dc9de134bbb3f01085b1e6dbf539f3&end=35f6036521777bdc0dcea1f980be4c192962a168&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.4% | [-7.5%, -0.5%] | 14    |
| All  (primary)                 | -     | -              | 0     |


Shallowly bail from `coerce_unsized` more [#142941](https://github.com/rust-lang/rust/pull/142941) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=35f6036521777bdc0dcea1f980be4c192962a168&end=f19142044f270760ce0ebc03b2c3a44217d8703d&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.8%  | [0.8%, 0.8%]    | 1     |
| Improvements (primary)   | -0.8% | [-4.6%, -0.2%]  | 84    |
| Improvements (secondary) | -5.6% | [-21.6%, -0.1%] | 71    |
| All  (primary)                 | -0.8% | [-4.6%, -0.2%]  | 84    |


#### Mixed

update to literal-escaper 0.0.4 for better API without `unreachable` and faster string parsing [#140999](https://github.com/rust-lang/rust/pull/140999) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3de5b08ef6b260277dd4c77f7472fe6904bd6002&end=2c2bb995af398383e3b93b859302bdc447ca7a7c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-1.2%, -0.4%] | 16    |
| All  (primary)                 | 0.2%  | [0.2%, 0.3%]   | 3     |

Regressions limited to stm32f4, some mild improvements, doesn't seem worth
further investigation.

Stop collecting unmentioned constants [#142893](https://github.com/rust-lang/rust/pull/142893) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d51b6f97122671c5de27cfc08cded235357e0d97&end=13c46fd0b089360922a557d8e18a63a2c41dfbeb&stat=instructions:u)

| (instructions:u)                   | mean   | range            | count |
|:----------------------------------:|:------:|:----------------:|:-----:|
| Regressions (primary)    | 19.2%  | [17.2%, 21.2%]   | 2     |
| Regressions (secondary)  | 9.1%   | [6.0%, 13.4%]    | 5     |
| Improvements (primary)   | -1.6%  | [-2.3%, -0.8%]   | 8     |
| Improvements (secondary) | -67.8% | [-67.9%, -67.8%] | 2     |
| All  (primary)                 | 2.6%   | [-2.3%, 21.2%]   | 10    |

Regressed benchmarks are incremental scenarios which have changed codegen units
-- overall, this is an improvement in the typical case.

Don't fold in Instantiate when there's nothing to fold [#142317](https://github.com/rust-lang/rust/pull/142317) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b63223c152212832ce37a109e26cc5f84c577532&end=7ba34c704529e7fcab80130c3fe40efe415d61b5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.3%]   | 9     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 3     |
| Improvements (secondary) | -2.6% | [-2.9%, -2.4%] | 6     |
| All  (primary)                 | 0.1%  | [-0.3%, 0.3%]  | 12    |

Some mixed results from this but improvements were deemed as outweighing the
regressions ([comment](https://github.com/rust-lang/rust/pull/142317#issuecomment-2964689882)).

Only compute recursive callees once. [#142625](https://github.com/rust-lang/rust/pull/142625) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7ba34c704529e7fcab80130c3fe40efe415d61b5&end=11ad40bb839ca16f74784b4ab72596ad85587298&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.6%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 2     |
| Improvements (primary)   | -1.3% | [-2.5%, -0.2%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.3% | [-2.5%, 0.6%]  | 5     |

Per the PR description makes some intentional tradeoffs between two variants of
implementation and is overall an improvement or neutral.

Stop backends from needing to support nullary intrinsics [#142839](https://github.com/rust-lang/rust/pull/142839) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f19142044f270760ce0ebc03b2c3a44217d8703d&end=ad3b7257615c28aaf8212a189ec032b8af75de51&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.7%  | [2.7%, 2.7%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.2%  | [-0.4%, 2.7%]  | 6     |

Some slight changes, no particularly significant changes.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "[Coverage][MCDC] Do not initialize mcdc parameters for instances containing no mcdc statements" [rust#129989](https://github.com/rust-lang/rust/pull/129989) (last review activity: 3 months ago)
  - Assigned reviewer @**Zalathar** last expressed concerns about the PR
  - I wonder if we should discuss this, there is a tracking issue for [MCDC coverage](https://github.com/rust-lang/rust/issues/124144)
- "Do not eagerly reject inference vars when trying to resolve method calls." [rust#126316](https://github.com/rust-lang/rust/pull/126316) (last review activity: 2 months ago)
  - cc @**lcnr** (just reminder, but it's something to work with Oli)
- "Do not run per-module late lints if they can be all skipped" [rust#139597](https://github.com/rust-lang/rust/pull/139597) (last review activity: 2 months ago)
  - cc: @**Boxy**
- "Suppress suggestions while span is in external library" [rust#139316](https://github.com/rust-lang/rust/pull/139316) (last review activity: 2 months ago)
  - unsure about this one, seems it needs some design first ([comment](https://github.com/rust-lang/rust/pull/139316#pullrequestreview-2809567076))
- "Don't lint against named labels in `naked_asm!`" [rust#140871](https://github.com/rust-lang/rust/pull/140871) (last review activity: about 53 days ago)
  - cc @**Michael (compiler-errors) Goulet**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/XCRrBw9CTCyurvEHtb7WnQ)
