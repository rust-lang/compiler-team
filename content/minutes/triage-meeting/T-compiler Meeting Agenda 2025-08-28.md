---
tags: weekly, rustc
type: docs
note_id: _K2r3fHbSQiM6bMZvvp7qQ
---

# T-compiler Meeting Agenda 2025-08-28

## Announcements

- Project Director nominations 2025, see [Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/392734-council/topic/2025.20project.20director.20elections/near/535321402)
  - [Announcement blog post](https://blog.rust-lang.org/inside-rust/2025/08/20/electing-new-project-directors-2025/)
  - What does it mean to be [Project Director](https://github.com/rust-lang/leadership-council/blob/main/roles/rust-foundation-project-director.md)?
  - How does the [election process](https://github.com/rust-lang/leadership-council/blob/main/policies/project-directorship/election-process.md) work?
- Scheduled for <time:2025-08-29T16:00:00+02:00> a [steering meeting](https://github.com/rust-lang/compiler-team/issues?q=sort%3Aupdated-desc%20is%3Aissue%20is%3Aopen%20label%3Ameeting-proposal): any request or anything we want to discuss/talk about?
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Stable MIR weekly meeting <time:2025-08-29T17:00:00+02:00>
- WG-async design meeting <time:2025-08-28T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 2 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 54 days ago)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 5 months ago)
    - cc @**Waffle Lapkin** in case you have feedback about the comments
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 43 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 19 days ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: 2 months ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 3 months ago)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 41 days ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: about 42 days ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 34 days ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: about 34 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default (rust#143613)](https://github.com/rust-lang/rust/pull/143613#issuecomment-3070266003)
    - @**|116266** @**|426609** @**|353056**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - cc @**Wesley Wiser** can you please review the latest changes (cc: @**Sparrow Li** @**cezarbbb**) against the outstanding concerns? See [latest comments](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Proposal.20for.20Adapt.20Stack.20Protector.20for.20Ru.E2.80.A6.20compiler-team.23841/near/530097969). Thanks.
  - "Begin enforcing Tier 2 target maintainer requirements" [compiler-team#896](https://github.com/rust-lang/compiler-team/issues/896) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Begin.20enforcing.20Tier.202.20target.20maintainer.20.E2.80.A6.20compiler-team.23896))
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "fix drop scope for `super let` bindings within `if let`" [rust#145342](https://github.com/rust-lang/rust/pull/145342)
- Accepted MCPs
  - "Policy: Empower reviewers to reject burdensome PRs" [compiler-team#893](https://github.com/rust-lang/compiler-team/issues/893) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Reject.20low-effort.20AI-generated.20PRs.20compiler-team.23893))
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - "Reject relaxed bounds inside associated type bounds (ATB)" [rust#135331](https://github.com/rust-lang/rust/pull/135331)
  - "`apply_member_constraints`: fix placeholder check" [rust#142071](https://github.com/rust-lang/rust/pull/142071)
  - "Remove the `#[no_sanitize]` attribute in favor of `#[sanitize(xyz = "on|off")]`" [rust#142681](https://github.com/rust-lang/rust/pull/142681)
  - "Port `#[link]` to the new attribute parsing infrastructure " [rust#143193](https://github.com/rust-lang/rust/pull/143193)
  - "`c_variadic`: Add future-incompatibility warning for `...` arguments without a pattern outside of `extern` blocks" [rust#143619](https://github.com/rust-lang/rust/pull/143619)
  - "Stabilize const TypeId::of" [rust#144133](https://github.com/rust-lang/rust/pull/144133)
  - "Check coroutine upvars in dtorck constraint" [rust#144156](https://github.com/rust-lang/rust/pull/144156)
  - "Add lint against dangling pointers from local variables" [rust#144322](https://github.com/rust-lang/rust/pull/144322)
  - "Upgrade semicolon_in_expressions_from_macros from warn to deny" [rust#144369](https://github.com/rust-lang/rust/pull/144369)
  - "Extract TraitImplHeader in AST/HIR" [rust#144386](https://github.com/rust-lang/rust/pull/144386)
  - "Stabilize loongarch32 inline asm" [rust#144402](https://github.com/rust-lang/rust/pull/144402)
  - "Stabilize `sse4a` and `tbm` target features" [rust#144542](https://github.com/rust-lang/rust/pull/144542)
  - "Rewrite the new attribute argument parser" [rust#144689](https://github.com/rust-lang/rust/pull/144689)
  - "Don't warn on never to any `as` casts as unreachable" [rust#144804](https://github.com/rust-lang/rust/pull/144804)
  - "Require approval from t-infra instead of t-release on tier bumps" [rust#144906](https://github.com/rust-lang/rust/pull/144906)
  - "Make sure to treat only param where clauses as inherent" [rust#145262](https://github.com/rust-lang/rust/pull/145262)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "fix(debuginfo): handle false positives in overflow check" [rust#145297](https://github.com/rust-lang/rust/pull/145297)
  - Authored by adwinwhite
  - Fixes #144636 (P-medium, started as a nightly regression, then landed on beta), doesn't seem super-impacting
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145297.3A.20beta-nominated/near/535474117), undecided
  - EDIT(jieyouxu): I'm almost inclined to suggest a revert... In that incomplete debuginfo seems better than infinite recursion
    - I believe the chain was like:
      - Incomplete DWARF 1.88: [Incomplete DWARF debug info in Rust 1.88 #143241](https://github.com/rust-lang/rust/issues/143241)
      - [fx(debuginfo): disable overflow check for recursive non-enum types #144407](https://github.com/rust-lang/rust/pull/144407) to fix #143241
      - Unfortunately #144407 introduces [Infinite recursion when generating debuginfo #144636](https://github.com/rust-lang/rust/issues/144636)
      - (This PR) [fix(debuginfo): handle false positives in overflow check #145297](https://github.com/rust-lang/rust/pull/145297) to fix #144636
      - But #144636 is already known to be insufficient: [Expanding type recursion check in debug info generation has false positives #145912](https://github.com/rust-lang/rust/issues/145912)
- :beta: "fix drop scope for `super let` bindings within `if let`" [rust#145342](https://github.com/rust-lang/rust/pull/145342)
  - Authored by dianne
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145342.3A.20beta-nominated/near/534330643)
  - Discussed [last week](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202025-08-21/near/535512503), we wanted to wait it to be merged and see if it solved regressions A and B (from [list](https://github.com/rust-lang/rust/pull/145342#issuecomment-3193477003))
  - [Crater run results are out](https://github.com/rust-lang/rust/pull/145342#issuecomment-3221523226)
  - guess nothing changed in order to deliberate on the backport?
- :beta: "Revert suggestions for missing methods in tuples" [rust#145765](https://github.com/rust-lang/rust/pull/145765)
  - Authored by lqd
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145765.3A.20beta-nominated/near/535755210), in favor
  - Fixes an ICE now hitting stable and being widely reported (see [comment](https://github.com/rust-lang/rust/issues/142488#issuecomment-3215721736)). Reverts #142034.
- :stable: "Revert suggestions for missing methods in tuples" [rust#145765](https://github.com/rust-lang/rust/pull/145765)
  - Authored by lqd
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145765.3A.20stable-nominated/near/535756672), seems we agree to backport only in case of a dot release (which is not mentioned for now)

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Add new `function_casts_as_integer` lint" [rust#141470](https://github.com/rust-lang/rust/pull/141470)
  - cc: @_**Guillaume Gomez (imperio)** for current status
  - EDIT(jieyouxu): T-lang [wants to add a "recommended API" so users can "do the right thing"](https://github.com/rust-lang/rust/pull/141470#issuecomment-3053351344) instead of only having a lint to say "don't do this" without offering a workable alternative.
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [55 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 4 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 26 P-high, 100 P-medium, 22 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "`pin!()` has incorrect/unexpected drop order inside if-let." [rust#145328](https://github.com/rust-lang/rust/issues/145328)
  - fixed by #145342
- "SIGSEGV without `unsafe` when passing `&dyn Trait` to `&dyn ParentTrait`" [rust#145752](https://github.com/rust-lang/rust/issues/145752)
  - Should be solved by #145807 (being reviewed)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "SIGSEGV without `unsafe` when passing `&dyn Trait` to `&dyn ParentTrait`" [rust#145752](https://github.com/rust-lang/rust/issues/145752)

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-08-25.md)

Lot of regressions this week, mostly in rustdoc benchmarks from newly added features. The rest of the suite saw mostly small regressions in small benchmarks and also some improvements, notably from token tree parsing optimization in macro code, span optimization and ongoing work on new solver, which is not fully enabled, yet.

Triage done by **@panstromek**.
Revision range: [239e8b1b..ee361e8f](https://perf.rust-lang.org/?start=239e8b1b47b34120287ec36b33228c1e177f0c38&end=ee361e8fca1c30e13e7a31cc82b64c045339d3a8&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.7%  | [0.3%, 34.5%]  | 42    |
| Regressions (secondary)  | 2.3%  | [0.0%, 53.3%]  | 79    |
| Improvements (primary)   | -0.5% | [-0.7%, -0.3%] | 9     |
| Improvements (secondary) | -0.9% | [-2.8%, -0.0%] | 30    |
| All  (primary)           | 3.0%  | [-0.7%, 34.5%] | 51    |


5 Regressions, 1 Improvement, 7 Mixed; 6 of them in rollups
38 artifact comparisons made in total

#### Regressions

Rollup of 19 pull requests [#145589](https://github.com/rust-lang/rust/pull/145589) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b96868fa2ef174b0a5aeb3bf041b3a5b517f11f8&end=8365fcb2b840c95eeb0bc377af8bd498fad22245&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 6.2%  | [0.2%, 33.1%]  | 18    |
| Regressions (secondary)  | 3.4%  | [0.3%, 50.8%]  | 24    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.0% | [-0.0%, -0.0%] | 1     |
| All  (primary)                 | 6.2%  | [0.2%, 33.1%]  | 18    |

`doc` regressions were expected, but not as big. Pinged @zalathar, who investigated some of the regressions.

Rollup of 15 pull requests [#145600](https://github.com/rust-lang/rust/pull/145600) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=16ad385579cebb6f7d53367c552661b6b51a4a02&end=05f5a58e84a9c3a68586d70bf3d7442c571e379e&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 4.6% | [4.6%, 4.6%] | 1     |
| Regressions (secondary)  | 4.4% | [4.4%, 4.4%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 4.6% | [4.6%, 4.6%] | 1     |

Looks like noise, syn is just coming back from a spike from previous rollup.

Split transmute check from HIR typeck [#145469](https://github.com/rust-lang/rust/pull/145469) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6545b056388a727c2ac4a4e70fb01d60a11398b1&end=78b89ebb6b20cf50370335e14c5357a4388ac760&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.6%, 0.6%] | 1     |
| Regressions (secondary)  | 0.8% | [0.6%, 1.0%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.6% | [0.6%, 0.6%] | 1     |

Regression looks real, but small and affect mostly secondary stress test. Asked on the PR whether that's justified.

Rollup of 28 pull requests [#145773](https://github.com/rust-lang/rust/pull/145773) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=78b89ebb6b20cf50370335e14c5357a4388ac760&end=8df154bffddcb6bbb543ad69aff971795c5adbc2&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.5%, 0.5%] | 1     |
| Regressions (secondary)  | 2.1% | [0.1%, 4.2%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.5% | [0.5%, 0.5%] | 1     |

`include-blob` regression looks like noise (similar bump we occasinaly see on it). Smaller doc regression was identified by @zalathar as [#145731](https://github.com/rust-lang/rust/pull/145731) and is somewhat expected as there's more work to do when generating search index.

Add support for macro expansion in rustdoc source code pages [#137229](https://github.com/rust-lang/rust/pull/137229) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3776358beb5747d938bdefaf47a1c76723e6a372&end=809200ec956983fce4ae178b87dada69f01d0820&stat=instructions:u)

| (instructions:u)                   | mean | range         | count |
|:----------------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 1.5% | [0.4%, 6.6%]  | 16    |
| Regressions (secondary)  | 5.8% | [0.6%, 16.5%] | 10    |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)                 | 1.5% | [0.4%, 6.6%]  | 16    |

`doc` regression, triaged by @GuillaumeGomez: "Sadly the perf impact was to be expected since it adds more code." Some performance improvement is likely possible by future improvements based on another commment in the thread.

#### Improvements

Sometimes skip over tokens in `parse_token_tree`. [#145348](https://github.com/rust-lang/rust/pull/145348) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=22a86f8280becb12c34ee3efd952baf5cf086fa0&end=bec747418c9955de4c3fd0aac4acb99206f00aa2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.0% | [-2.1%, -0.3%] | 16    |
| All  (primary)                 | -     | -              | 0     |


#### Mixed

Update cargo [#145478](https://github.com/rust-lang/rust/pull/145478) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=239e8b1b47b34120287ec36b33228c1e177f0c38&end=aaf87a6d289053246d19f94fbc9972582816e93d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [1.0%, 1.2%]   | 2     |
| Regressions (secondary)  | 1.1%  | [1.1%, 1.1%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.3%] | 7     |
| All  (primary)                 | 1.1%  | [1.0%, 1.2%]   | 2     |

Regressions in `syn` look like noise, returning to previous state. Cargo update should have no effect on this. Already triaged by Mark.

library: Migrate from `cfg_if` to `cfg_select` [#145489](https://github.com/rust-lang/rust/pull/145489) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aaf87a6d289053246d19f94fbc9972582816e93d&end=9eb4a2652031ed5ba97c29ef21c79db1645f7883&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 9     |
| Improvements (primary)   | -1.2% | [-1.2%, -1.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -1.2% | [-1.2%, -1.2%] | 1     |

`include-blob` regersion is noise (bimodality, returning to the default state).

Rollup of 15 pull requests [#145599](https://github.com/rust-lang/rust/pull/145599) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c32e313cccf7df531e2d49ffb8227bb92304aee&end=16ad385579cebb6f7d53367c552661b6b51a4a02&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.5%]   | 11    |
| Improvements (primary)   | -4.8% | [-4.8%, -4.8%] | 1     |
| Improvements (secondary) | -4.6% | [-4.6%, -4.6%] | 1     |
| All  (primary)                 | -2.3% | [-4.8%, 0.2%]  | 2     |

Non doc results are noise. For `doc` regressions, seems like https://github.com/rust-lang/rust/pull/139345 is the most likely (based on [these results](https://github.com/rust-lang/rust/pull/145599#issuecomment-3208161337)? It seems plausible as it changes FxHashMap to FxIndexMap, which is bigger I believe. I'm inclined to say that it's ok, since that's a correctness change, too and the regressions are small (also seem a bit overshooting and slightly reduced in next PR).

Tell LLVM about read-only captures [#145259](https://github.com/rust-lang/rust/pull/145259) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=040a98af70f0a7da03f3d5356531b28a2a7a77e4&end=125ff8a788c5d6a66917f499abdc00051afe6886&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.8%, 0.8%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 7     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -1.3% | [-1.7%, -0.2%] | 8     |
| All  (primary)                 | 0.3%  | [-0.2%, 0.8%]  | 2     |

`include-blob` regressions are noise. `serde_derive` looks real but it's tiny (adding a println statement). Seems like the biggest query differences are in LLVM, that seems to match the PR area.


Rollup of 16 pull requests [#145728](https://github.com/rust-lang/rust/pull/145728) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6ba0ce40941eee1ca02e9ba49c791ada5158747a&end=8e3710ef31a0b2cdf5a1c2f3929b7735d1e28c20&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.8% | [-1.2%, -0.4%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.8% | [-1.2%, -0.4%] | 5     |

Single regression is in new solver, which is not finished and not enabled by default.

Only unpack span data once to compute end_point and next_point. [#145494](https://github.com/rust-lang/rust/pull/145494) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=46c219bd24862c0a87f0299570bb37f2d5ecf6ce&end=6545b056388a727c2ac4a4e70fb01d60a11398b1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.7%  | [0.4%, 0.8%]   | 6     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 2     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.4%] | 9     |
| All  (primary)                 | -0.3% | [-0.3%, -0.2%] | 2     |

`tt-muncher` regression is noise (bimodality, returning back to previous state)


Rollup of 14 pull requests [#145796](https://github.com/rust-lang/rust/pull/145796) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=69b76df90c7ea63b5350d1865f92902a0b27c9a2&end=f6d23413c399fb530be362ebcf25a4e788e16137&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.8%, 0.9%]   | 2     |
| Regressions (secondary)  | 1.5%  | [1.5%, 1.5%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.3%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.2%  | [-0.4%, 0.9%]  | 4     |

`tt-muncher` regression is noise. The other two I'm not sure. They could also be noise because they have symetrical improvements from https://github.com/rust-lang/rust/pull/145728. All of this is in the backend, I don't see anything related in the PR list, so I guess it might be codegen unit shuffling?

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add FileCheck annotations to mir-opt/copy-prop" [rust#135099](https://github.com/rust-lang/rust/pull/135099) (last review activity: 4 months ago)
  - cc @**Wesley Wiser**
- "error out when `repr(align)` exceeds COFF limit" [rust#142638](https://github.com/rust-lang/rust/pull/142638) (last review activity: 2 months ago)
  - cc @**Jubilee**
- "Fix passing/returning structs with the 64-bit SPARC ABI" [rust#142680](https://github.com/rust-lang/rust/pull/142680) (last review activity: 2 months ago)
  - cc: @**Jubilee**
- "Offload host2" [rust#142696](https://github.com/rust-lang/rust/pull/142696) (last review activity: 2 months ago)
  - cc @**oli**
- "Fix unuseful span in type error in some format_args!() invocations" [rust#140916](https://github.com/rust-lang/rust/pull/140916) (last review activity: 2 months ago)
  - cc @**Michael Goulet (compiler-errors)**
- "RDR: avoid rebuilding dependent crates after comment changes" [rust#143249](https://github.com/rust-lang/rust/pull/143249) (last review activity: about 58 days ago)
  - cc @**Vadim Petrochenkov**
- "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682) (last review activity: about 49 days ago)
  - cc @**Wesley Wiser**
  - For context [mcp#887](https://github.com/rust-lang/compiler-team/issues/887) and [blog post](https://github.com/rust-lang/blog.rust-lang.org/pull/1641) when this lands


Next meetings' agenda draft: [hackmd link](https://hackmd.io/W9ogAl3gSc-m6y6R0oZJvA)
