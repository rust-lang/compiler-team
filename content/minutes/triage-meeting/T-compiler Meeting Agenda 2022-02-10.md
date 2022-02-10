---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-02-10

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow <time:2022-02-11T15:00:00+01:00>, monthly [Compiler Team Planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 7 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 4 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 2 months ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 2 months ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: about 44 days ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: about 20 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `let else`" (draft) [rust#93628](https://github.com/rust-lang/rust/pull/93628#issuecomment-1029383585) 
- Things in FCP (make sure you're good with it)
  - "Overhaul interning" [compiler-team#481](https://github.com/rust-lang/compiler-team/issues/481) 
  - "Simplify rustc_codegen_llvm::debuginfo::metadata" [compiler-team#482](https://github.com/rust-lang/compiler-team/issues/482) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking issue for #[cfg(target_has_atomic = ...)]" [rust#32976](https://github.com/rust-lang/rust/issues/32976) 
  - "Stabilize `-Z instrument-coverage` as `-C instrument-coverage`" [rust#90132](https://github.com/rust-lang/rust/pull/90132)

### WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/czhRhn0rSaib7Pnr5ZvDUg?view#WG-checkins))
> * [rust#92306](https://github.com/rust-lang/rust/issues/92306) fixed a major blocker (there are only diagnostic blockers left) for stabilizing nll

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/czhRhn0rSaib7Pnr5ZvDUg?view#WG-checkins))
>#### Most notable changes
>
>- Clean up section about FCPs [#1287](https://github.com/rust-lang/rustc-dev-guide/pull/1287)
>- Streamline "Getting Started" some more. [#1286](https://github.com/rust-lang/rustc-dev-guide/pull/1286)
>
>#### Most notable WIPs
>
>- Describe Type Alias Impl Trait (TAIT) Inference Algorithm [#1297](https://github.com/rust-lang/rustc-dev-guide/pull/1297)
>- method-lookup.md improvements [#1296](https://github.com/rust-lang/rustc-dev-guide/pull/1296)
>- Extend debugging llvm section [#1290](https://github.com/rust-lang/rustc-dev-guide/pull/1290)
>- Added detail to codegen section [#1216](https://github.com/rust-lang/rustc-dev-guide/pull/1216)
>- Update build instructions for rustdoc [#1117](https://github.com/rust-lang/rustc-dev-guide/pull/1117)
>- Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)
>- Explain the new valtree system for type level constants. [#1097](https://github.com/rust-lang/rustc-dev-guide/pull/1097)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix invalid special casing of the unreachable! macro" [rust#93179](https://github.com/rust-lang/rust/pull/93179) 
  - Fixes `T-libs` p-high issue [rust#92137](https://github.com/rust-lang/rust/issues/92137) about the `unreachable!()` macro behaviour in edition 2021
  - also nominated for stable backport
  - @**simulacrum** remarks that the [perf regression](https://github.com/rust-lang/rust/pull/93179#issuecomment-1031078607) is not due to this PR but to the codegen unit ([see comment](https://github.com/rust-lang/rust/pull/93179#issuecomment-1032828131)) 
- :beta: "backport llvm fix for issue 91671." [rust#93426](https://github.com/rust-lang/rust/pull/93426) 
  - opened by @**pnkfelix**, fixes [rust#91671](https://github.com/rust-lang/rust/issues/91671)
  - discussed last week ([Zulip archive link](https://zulip-archive.rust-lang.org/stream/238009-t-compiler/meetings/topic/.5Bweekly.5D.202022-02-03.20.2354818.html#270564721)), backport decision postponed ([comment](https://github.com/rust-lang/rust/pull/93426#issuecomment-1029235934))
- :beta: "Resolve lifetimes for const generic defaults" [rust#93669](https://github.com/rust-lang/rust/pull/93669) 
  - opened by @**Michael Goulet (compiler-errors)** 
  - fixes P-critical [rust#93647](https://github.com/rust-lang/rust/issues/93647)
- :beta: "Complete removal of #[main] attribute from compiler" [rust#93753](https://github.com/rust-lang/rust/pull/93753) 
  - Removes the old `#[main]` and prevents future crates using it by mistake (more context in this [comment](https://github.com/rust-lang/rust/pull/93753#issuecomment-1032576085))
  - a crater run should indicate if there are crate sin the wild still using this attribute
- :stable: "Fix invalid special casing of the unreachable! macro" [rust#93179](https://github.com/rust-lang/rust/pull/93179)
  - discussed in beta-backport

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)

- "Mir-Opt for copying enums with large discrepancies" [rust#85158](https://github.com/rust-lang/rust/pull/85158) (last review activity: 3 months ago)
  - [Last T-compiler review](compiler-team/content/minutes/triage-meeting/T-compiler)
  - PR turned to `s-waiting-on-review` 9 days ago
- "Switch to normalized triples for Fuchsia" [rust#90510](https://github.com/rust-lang/rust/pull/90510) (last review activity: 2 months ago)
  - PR assignee @**Esteban Küber**, reviewed also by @**tmandry** 
  - though [last comment](https://github.com/rust-lang/rust/pull/90510#issuecomment-991828845) seems to indicate it's a bit stale
- "Improve `unsafe` diagnostic" [rust#91133](https://github.com/rust-lang/rust/pull/91133) (last review activity: 2 months ago)
  - Seems PR author is asking a new review from @**Esteban Küber** (assigned reviewer)
- "Remove eval_always for privacy." [rust#90581](https://github.com/rust-lang/rust/pull/90581) (last review activity: 2 months ago)
  - PR author pushed after the last perf report ([with mixed results](https://github.com/rust-lang/rust/pull/90581#issuecomment-979669694))
  - Perhaps this is waiting on someone to trigger `@rust-timer` again?
- "Remove eval_always for privacy_access_levels." [rust#91295](https://github.com/rust-lang/rust/pull/91295) (last review activity: 2 months ago)
  - rust-highfive assigned to @**Aaron Hill** 
  - maybe waiting for a review after last perf run ([with regressions](https://github.com/rust-lang/rust/pull/91295#issuecomment-980796052))

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [69 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [46 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 44 P-high, 82 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Const generic defaults ICE: No bound vars found" [rust#93647](https://github.com/rust-lang/rust/issues/93647)
  - @**Michael Goulet (compiler-errors)**  provided a fix in PR [rust#93669](https://github.com/rust-lang/rust/pull/93669) (beta-backport nominated)
- "#92007 appears to break inference for previously compiling code" [rust#93821](https://github.com/rust-lang/rust/issues/93821) 
  - Caused by [rust#92007](https://github.com/rust-lang/rust/pull/92007)
  - **oli** submitted PR [rust#93783](https://github.com/rust-lang/rust/pull/93783) for review ([zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Review.20for.20.2393783))
- "Internal Compiler Error when compiling rocket = "0.5.0-rc.1"" [rust#93831](https://github.com/rust-lang/rust/issues/93831)
  - Caused by [rust#92007](https://github.com/rust-lang/rust/pull/92007)
  - should also be fixed by PR [rust#93783](https://github.com/rust-lang/rust/pull/93783) authored by **oli**
[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-02-02](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-02-02.md)

This was a relatively quiet week with regressions and improvements relatively equally each other out. The big exception is with a somewhat large regression in rustdoc which was needed for a large and important architectural change. This could lead to users see somewhat slower doc build times with more memory used especially in projects with large crate dependency graphs.

Triage done by **@rylev**.
Revision range: [c54dfee65126a0ac385d55389a316e89095a0713..1ea4851715893ee3f365a8ef09d47165e9a7864f](https://perf.rust-lang.org/?start=c54dfee65126a0ac385d55389a316e89095a0713&end=1ea4851715893ee3f365a8ef09d47165e9a7864f&absolute=false&stat=instructions%3Au)

2 Regressions, 4 Improvements, 2 Mixed; 1 of them in rollups
29 Untriaged Pull Requests
35 comparisons made in total

#### Regressions

rustdoc: Pre-calculate traits that are in scope for doc links [#88679](https://github.com/rust-lang/rust/issues/88679)
- Average relevant regression: 5.4%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d502eda250d0090f4990cc6880c88b95a92b4818&end=788b1fe5b79a8b74215022f9df49b0eae68a50b9&stat=instructions:u): 9.1% on `full` builds of `regression-31157 doc`
- All the regressions are localized to rustdoc and are quite substantial but exacerbated by an architectural issue which needs to be solved.
- The regressions are well known and extensively discussed in the PR with the [next steps](https://github.com/rust-lang/rust/pull/88679#issuecomment-1021810724) being tracked in an issue.


Store def_id_to_hir_id as variant in hir_owner. [#93373](https://github.com/rust-lang/rust/issues/93373)
- Average relevant regression: 1.2%
- Average relevant improvement: -0.3%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=86f5e177bca8121e1edc9864023a8ea61acf9034&end=24b8bb13bff98bb747cd403b86596af43aceee78&stat=instructions:u): 5.5% on `incr-unchanged` builds of `match-stress-enum check`
- This is the first commit (originally bundled with [#93301](https://github.com/rust-lang/rust/issues/93301)) of a larger PR ([#89278](https://github.com/rust-lang/rust/pull/89278)) which saw larger PR regressions than the two sub PRs combined.
- A more detailed justification for this can be [found here](https://github.com/rust-lang/rust/pull/93373#issuecomment-1027962065), but in general this allows for even more incremental compilation and is thus worth the small immediate compilation performance penalty. 


#### Improvements

- Fix the unsoundness in the `early_otherwise_branch` mir opt pass [#91840](https://github.com/rust-lang/rust/issues/91840)
- Only traverse attrs once while checking for coherence override attributes [#93343](https://github.com/rust-lang/rust/issues/93343)
- Rollup of 10 pull requests [#93427](https://github.com/rust-lang/rust/issues/93427)
- Disable drop range analysis [#93284](https://github.com/rust-lang/rust/issues/93284)

#### Mixed

Store hir_id_to_def_id in OwnerInfo. [#93301](https://github.com/rust-lang/rust/issues/93301)
- Average relevant regression: 0.6%
- Average relevant improvement: -0.5%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=a7f375789bab1a4e4a291c963081a8ca7d2b6bd7&end=6abb6385b2cb7249f67b9b3ce7522527767dd907&stat=instructions:u): -0.6% on `full` builds of `unused-warnings check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a7f375789bab1a4e4a291c963081a8ca7d2b6bd7&end=6abb6385b2cb7249f67b9b3ce7522527767dd907&stat=instructions:u): 2.2% on `incr-unchanged` builds of `match-stress-enum check`
- This is the first commit (originally bundled with [#93373](https://github.com/rust-lang/rust/issues/93373)) of a larger PR ([#89278](https://github.com/rust-lang/rust/pull/89278)) which saw larger PR regressions than the two sub PRs combined.


Create `core::fmt::ArgumentV1` with generics instead of fn pointer [#90891](https://github.com/rust-lang/rust/issues/90891)
- Average relevant regression: 1.2%
- Average relevant improvement: -1.2%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=08df8b81d6e723c66fee579d57d61dc60bc21fc1&end=e58e7b10e13595b4df1b105bfb9ad03c8dee7832&stat=instructions:u): -6.7% on `full` builds of `tokio-webpush-simple opt`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=08df8b81d6e723c66fee579d57d61dc60bc21fc1&end=e58e7b10e13595b4df1b105bfb9ad03c8dee7832&stat=instructions:u): 2.1% on `full` builds of `keccak check`
- The improvements outweigh the regressions considerably and this was [considered](https://github.com/rust-lang/rust/pull/90891#issuecomment-970851616) a fine trade off.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No `I-compiler-nominated` at this time

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
