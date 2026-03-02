---
tags: weekly, rustc
type: docs
note_id: 4ry9YKnPTqKIIK3-AMuHWQ
---

# T-compiler Meeting Agenda 2025-09-25

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Stable MIR weekly meeting <time:2025-09-26T17:00:00+02:00>
- WG-async design meeting <time:2025-09-25T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Adding cargo::no-new-rust-code to speed up compilation" [compiler-team#915](https://github.com/rust-lang/compiler-team/issues/915) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Adding.20cargo.3A.3Ano-new-rust-code.20to.20speed.20u.E2.80.A6.20compiler-team.23915))
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916))
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
  - "Add Wild linker as a preview component for x86_64 and AArch64 Linux GNU" [compiler-team#917](https://github.com/rust-lang/compiler-team/issues/917) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Wild.20linker.20as.20a.20preview.20component.20fo.E2.80.A6.20compiler-team.23917))
    - concern: [unofficial project](https://github.com/rust-lang/compiler-team/issues/917#issuecomment-3330378645)
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 6 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 47 days ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: 3 months ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 4 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 2 months ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|124288** @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|123856** @_**|116118** @_**|259697** @_**|444933** @_**|353056**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [Promote armv7a-none-eabihf to Tier 2 (compiler-team#913)](https://github.com/rust-lang/compiler-team/issues/913#issuecomment-3302409433)
    - @_**|124288** @_**|125250** @_**|116122** @_**|353056**
    - no pending concerns
  - merge: [Promote armv8r-none-eabihf to Tier 2 (compiler-team#914)](https://github.com/rust-lang/compiler-team/issues/914#issuecomment-3302407120)
    - @_**|124288** @_**|125250** @_**|116122**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|116122** @_**|123856** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Demote both armebv7r-none-* targets" [compiler-team#912](https://github.com/rust-lang/compiler-team/issues/912) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Demote.20both.20armebv7r-none-.2A.20targets.20compiler-team.23912))
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 2 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: 2 months ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 2 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 3 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 2 months ago)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
- Finalized FCPs (disposition merge)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
- Other teams finalized FCPs
  - "Allow `&raw [mut | const]` for union field in safe code" [rust#141469](https://github.com/rust-lang/rust/pull/141469)
  - "Do not materialise X in [X; 0] when X is unsizing a const" [rust#145277](https://github.com/rust-lang/rust/pull/145277)
  - "Reject invalid literal suffixes in tuple indexing, tuple struct indexing, and struct field name position" [rust#145463](https://github.com/rust-lang/rust/pull/145463)
  - "Opportunistically split `!=` to successfully parse never type" [rust#145536](https://github.com/rust-lang/rust/pull/145536)
  - "Stabilize `std::panic::Location::file_as_c_str`" [rust#145664](https://github.com/rust-lang/rust/pull/145664)
  - "Deny-by-default never type lints" [rust#146167](https://github.com/rust-lang/rust/pull/146167)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Add attributes for #[global_allocator] functions" [rust#146766](https://github.com/rust-lang/rust/pull/146766)
  - Authored by nikic
  - Should help with #145995 (P-high *nightly* regression)
  - Merge was blocked because ...
  - ... voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23146766.3A.20beta-nominated/near/540849899) prefers to revert #144086 in beta
- :beta: "remove incorrect fast path" [rust#146919](https://github.com/rust-lang/rust/pull/146919)
  - Authored by lcnr
  - Fixes #146813 (a P-high *stable* regression) and perf. run is neutral
  - Approved but not yet merged (so probably that's for the next week)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23146919.3A.20beta-nominated/near/541208929), in favor
- :beta: "Update LLVM to 21.1.2" [rust#146953](https://github.com/rust-lang/rust/pull/146953)
  - Authored by dianqk
  - Fixes a number of LLVM-related issues ([comment](https://github.com/rust-lang/rust/pull/146953#issuecomment-3327423029), almost fully mitigate a perf. regression #146512)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23146953.3A.20beta-nominated/near/541182424), in favor
- :stable: "remove incorrect fast path" [rust#146919](https://github.com/rust-lang/rust/pull/146919)
  - Authored by lcnr
  - Fixes #146813 (a P-high stable regression) and perf. run is neutral
  - Approved but not yet merged (so probably that's for the next week)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23146919.3A.20stable-nominated/near/540997501), "approve but does not justify a dot release"

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [56 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [42 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-critical, 2 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 26 P-high, 100 P-medium, 23 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Rustc failed to locate rc.exe on VS2022 Command Prompt, causing panic" [rust#146693](https://github.com/rust-lang/rust/issues/146693)
  - Resolved by #146784
  - reverted in beta with #146687, so nightly-only) for now

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "`alloc-variant-zeroed` causing issues with LTO" [rust#145995](https://github.com/rust-lang/rust/issues/145995)
  - handled by #146766 (thanks @**Nikita Popov**)

## Performance logs

> [triage logs 2025-09-23](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-09-23.md)

Moving command-line argument quoting from C++ to Rust ([#146700](https://github.com/rust-lang/rust/pull/146700)) resulted in a nice performance
win when dealing with many dependencies and large workspaces. A somewhat costly destination propagation
compiler pass was enabled by default ([#142915](https://github.com/rust-lang/rust/pull/142915)), which resulted in some build time regressions,
but should result in improved runtime performance. The rest of changes were small.

Triage done by **@kobzol**.
Revision range: [52618eb3..ce4beebe](https://perf.rust-lang.org/?start=52618eb338609df44978b0ca4451ab7941fd1c7a&end=ce4beebecb77821734079cff47d8af08f9f27f11&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 1.9%]    | 61    |
| Regressions (secondary)  | 0.6%  | [0.1%, 3.4%]    | 90    |
| Improvements (primary)   | -0.5% | [-1.9%, -0.2%]  | 29    |
| Improvements (secondary) | -1.3% | [-22.8%, -0.1%] | 71    |
| All  (primary)           | 0.0%  | [-1.9%, 1.9%]   | 90    |


1 Regression, 4 Improvements, 4 Mixed; 4 of them in rollups
37 artifact comparisons made in total

#### Regressions

Rollup of 5 pull requests [#146698](https://github.com/rust-lang/rust/pull/146698) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=93117677d857bb7c3f12c9dc500d77839f8fb13d&end=4793ef5cf527339f072c39d129477ad5bb678f9e&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 2     |
| Regressions (secondary)  | 0.2% | [0.1%, 0.2%] | 16    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.2%, 0.2%] | 2     |

- From the perf. runs it looks like the tiny regressions are distributed amongst multiple PRs. Given that most of them are in secondary benchmarks, and those benchmarks were going a bit up and down recently, I don't think it's worth to dig deeper here.
- Marked as triaged.

#### Improvements

Prevent ABI changes affect EnzymeAD [#142544](https://github.com/rust-lang/rust/pull/142544) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4793ef5cf527339f072c39d129477ad5bb678f9e&end=97a987f14c5bd948f7ee8dba75999f104a6f03a7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.0%, 0.3%]   | 2     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] | 18    |
| All  (primary)                 | -0.2% | [-0.2%, -0.2%] | 1     |


Clippy subtree update [#146728](https://github.com/rust-lang/rust/pull/146728) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0c0c58b8e453f552ebd7f3a1545acdd109de028c&end=7c275d09ea6b953d2cca169667184a7214bd14c7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -2.9% | [-2.9%, -2.9%] | 1     |


GVN: stop hashing opaque values [#145737](https://github.com/rust-lang/rust/pull/145737) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2f4dfc753fd86c672aa4145940db075a8a149f17&end=e10aa8891182378de002bd71bf4d04181fb8231d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.7% | [-1.9%, -1.5%] | 2     |
| Improvements (secondary) | -1.4% | [-1.4%, -1.4%] | 1     |
| All  (primary)                 | -1.7% | [-1.9%, -1.5%] | 2     |


cg_llvm: Move target machine command-line quoting from C++ to Rust [#146700](https://github.com/rust-lang/rust/pull/146700) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=59043567a5cf12800e1457c36ad6a6b0fa02c6b6&end=0be8e16088894483a7012c5026c3247c14a0c3c2&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%]  | 4     |
| Improvements (secondary) | -3.0% | [-23.4%, -0.2%] | 16    |
| All  (primary)                 | -0.4% | [-0.6%, -0.2%]  | 4     |


#### Mixed

Rollup of 9 pull requests [#146614](https://github.com/rust-lang/rust/pull/146614) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9d82de19dfae60e55c291f5f28e28cfc2c1b9630&end=8a1b39995e5b630c5872f5de5079f1f569bd5ac2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 2     |
| Regressions (secondary)  | 3.7%  | [3.0%, 4.2%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.0%] | 6     |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 2     |

- The regression in compile-time function evaluation was caused by [#146402](https://github.com/rust-lang/rust/pull/146402), which is a fix.
- Marked as triaged.

Enable DestinationPropagation by default [#142915](https://github.com/rust-lang/rust/pull/142915) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2ebb1263e3506412889410b567fa813ca3cb5c63&end=ce6daf3d5a5bffb2a00264197f92dc31608df0da&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 1.1%]   | 62    |
| Regressions (secondary)  | 0.4%  | [0.1%, 1.6%]   | 98    |
| Improvements (primary)   | -0.4% | [-1.7%, -0.1%] | 31    |
| Improvements (secondary) | -0.7% | [-2.5%, -0.1%] | 60    |
| All  (primary)                 | 0.0%  | [-1.7%, 1.1%]  | 93    |

- The compile-time effects seem to be a wash, while this nicely reduced the binary size of the compiler itself, and is expected to improve runtime performance.
- Marked as triaged.

Rollup of 8 pull requests [#146830](https://github.com/rust-lang/rust/pull/146830) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dd7fda570040e8a736f7d8bc28ddd1b444aabc82&end=dfa22235d858086511bedc4acde9db1c045ffbac&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 4     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 2     |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 1     |

- There's one tiny regression on a primary check benchmark, it doesn't seem worth it to investigate further.
- Marked as triaged.

Rollup of 9 pull requests [#146879](https://github.com/rust-lang/rust/pull/146879) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9f32ccf35fb877270bc44a86a126440f04d676d0&end=29005cb128e6d447e6bd9c110c9a684665f95985&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]   | 2     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 7     |
| All  (primary)                 | -0.2% | [-0.2%, -0.2%] | 1     |

- Seems like noise returning back, similar results to other rollups, just in the other direction.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Regression: geoarrow crate does not compile in release mode on 1.82" [rust#131960](https://github.com/rust-lang/rust/issues/131960)
  - Two questions:
  - 1) What do you think about tweaking the hack in #129714 to make the crate `geoarrow` compile?
    - issue is caused by the old trait solver (details at this [comment](https://github.com/rust-lang/rust/issues/128887#issuecomment-2326052768))
    - A few months ago, `geoarrow-rs` worked around this bug (they removed `-Zinline-mir=no` ([geoarrow-rs#956](https://github.com/geoarrow/geoarrow-rs/pull/956)))
    - The next trait solver is coming (it's in the [project goals 2H2025](https://rust-lang.github.io/rust-project-goals/2025h2/next-solver.html)) but not exactly behind the corner
    - It probably makes sense to fix the `geoarrow` issue as best as we can, even if with "hacks"
  - 2) Should we be devoting similar attention to the other crates encountering this issue?
    - At the time of #128887 the crater run reported 4 crates (one pinned Rust 1.89). The only active project affected (that we know of) seems to be `geoarrow-rs`
    - I (@_**apiraino**) could not find any other; seems the impact is quite low, see [comment](https://rust-lang.zulipchat.com/#narrow/channel/245100-t-compiler.2Fprioritization.2Falerts/topic/.23131960.20Regression.3A.20geoarrow.20crate.20does.20not.20compile.20in.20rele.E2.80.A6/near/540831552)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "[Debug Info] Generate typedef nodes for ptr/ref types (and msvc arrays)" [rust#144394](https://github.com/rust-lang/rust/pull/144394) (last review activity: 2 months ago)
  - cc @**Wesley Wiser** (was suggested by Michael) or reassign. maybe cc: @**Nikita Popov** since it's LLVM
- "Provide additional context to errors involving const traits" [rust#144194](https://github.com/rust-lang/rust/pull/144194) (last review activity: 2 months ago)
  - probably cc @**oli** or reassign (Michael is not reviewing AFAIK)
- "Impls and impl items inherit lint levels of the corresponding traits and trait items" [rust#144113](https://github.com/rust-lang/rust/pull/144113) (last review activity: 2 months ago)
  -  cc @**cjgillot** (unsure if they're reviewing rn)
- "Impls and impl items inherit lint levels of the corresponding traits and trait items" [rust#144113](https://github.com/rust-lang/rust/pull/144113) (last review activity: 2 months ago)
  -  cc @**cjgillot**
- "Make named asm_labels lint not trigger on hexagon register spans" [rust#143037](https://github.com/rust-lang/rust/pull/143037) (last review activity: 2 months ago)
  -  maybe @**Amanieu d'Antras** (have you LLVM review rights now?) or @**Nikita Popov** ?


Next meetings' agenda draft: [hackmd link](https://hackmd.io/M4ydIJGKTnupYyum5zqhOA)
