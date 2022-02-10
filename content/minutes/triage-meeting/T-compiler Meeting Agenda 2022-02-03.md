---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-02-03

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 7 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 4 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: about 55 days ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: about 55 days ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: about 38 days ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking issue for #[cfg(target_has_atomic = ...)]" [rust#32976](https://github.com/rust-lang/rust/issues/32976) 
  - "Change location of where clause on GATs" [rust#90076](https://github.com/rust-lang/rust/pull/90076) 
  - "Stabilize `-Z instrument-coverage` as `-C instrument-coverage`" [rust#90132](https://github.com/rust-lang/rust/pull/90132)

### WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry** ([previous checkin](https://hackmd.io/WU5tkvweQR2rc1JfUmvnlQ?view#WG-checkins))
> Niko comments: nothing major to report - there is ongoing polish work as well as refactorings to support RPIT etc.

- @_*WG-traits* by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/WU5tkvweQR2rc1JfUmvnlQ?view#WG-checkins))
> Still haven't published the retrospective blog post (Niko was going to write some paragraphs but hasn't gotten to it yet).
> 
> **Generic associated types**
> - A few more bug fix PRs have landed; there a couple PRs waiting for Jack to update
> - GAT where clause position question (#90076) has been resolved by lang team: we will accept both positions, but deprecate where clauses before the equals
> - Would like to think about and consider the design of std APIs with GATs prior to stabilization
>   - generic-associated-types-initiative#1 covers `Iterator`/`LendingIterator` split; would love thoughts on use cases
> - Where clause question was the final "blocking" issue for GATs
>   - A few more issues to triage, a documentation writeup, and library design considerations are precursors to stabilization
> 
> **TAITs**
> - Lazy TAIT PR is open by Oli: #92007
>   - It's being coreviewed by Niko and @lcnr
>
> **async fn in traits**
> - @spastorino is working on some ast lowering refactoring that's a precursor to this
> 
> **negative impls in coherence**
> - @spastorino has done some more work here in #93175

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Add links to the reference and rust by example for asm! docs and lints" [rust#92611](https://github.com/rust-lang/rust/pull/92611) 
  - This PR adds links that where removed in [rust#91728](https://github.com/rust-lang/rust/pull/91728)
  - @**Amanieu** authored the PR and nominated for beta-backport
  - PR approved by @**Mara** 
- :beta: "backport llvm fix for issue 91671." [rust#93426](https://github.com/rust-lang/rust/pull/93426)
  - PR fixes P-high [rust#91671](https://github.com/rust-lang/rust/issues/91671), a crash on compiling on aarch64 + LTO enabled
  - PR authored by Felix, also nominated for stable backport 
  - Approved by @**Nikita Popov**
- :stable: "backport llvm fix for issue 91671." [rust#93426](https://github.com/rust-lang/rust/pull/93426)
  - previous PR, also nominated for stable backport
- :stable: "riscv32i: `__atomic_load_4` is referenced in libcompiler_builtins" [rust#92897](https://github.com/rust-lang/rust/issues/92897)
  - Note: #92897 is an issue, not a PR
  - @**Amanieu** comments that this is fixed in beta by [rust-lang/compiler-builtins@e0187f1](https://github.com/rust-lang/rust/issues/92897#issuecomment-1013447487)
  - suggests if this warrants a backport on stable, too (see [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.2392897.20riscv32i.3A.20.60__atomic_load_4.60.20is.20referenced.20in.20libcomp.E2.80.A6))

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on T-compiler

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)

- "Mir-Opt for copying enums with large discrepancies" [rust#85158](https://github.com/rust-lang/rust/pull/85158) (last review activity: 3 months ago)
  - [Last T-compiler review](compiler-team/content/minutes/triage-meeting/T-compiler)
  - PR turned to `s-waiting-on-team` 2 days ago
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
  - [47 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 44 P-high, 80 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Named format arguments introduce implicit positional arguments" [rust#93378](https://github.com/rust-lang/rust/issues/93378)
- "rustdoc ICE: 'no entry found for key'" [rust#93476](https://github.com/rust-lang/rust/issues/93476)
  - Assigned P-critical based on a similar issue (#93428)
  - Anyway, it should be fixed by [rust#93539](https://github.com/rust-lang/rust/pull/93539)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Some mixes of Rust with C/C++ are broken for arm64 mac and windows" [rust#92885](https://github.com/rust-lang/rust/issues/92885) 

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2022-02-02 triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-02-02.md)

This was a relatively quiet week with regressions and improvements relatively equally each other out. The big exception is with a somewhat large regression in rustdoc which was needed for a large and important architectural change. This could lead to users see somewhat slower doc build times with more memory used especially in projects with large crate dependency graphs.

Triage done by **@rylev**.
Revision range: [c54dfee65126a0ac385d55389a316e89095a0713..1ea4851715893ee3f365a8ef09d47165e9a7864f](https://perf.rust-lang.org/?start=c54dfee65126a0ac385d55389a316e89095a0713&end=1ea4851715893ee3f365a8ef09d47165e9a7864f&absolute=false&stat=instructions%3Au)

2 Regressions, 4 Improvements, 2 Mixed; 1 of them in rollups
35 comparisons made in total
29 Untriaged Pull Requests

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

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "`no_mangle`/`used` static is only present in output when in reachable module" [rust#47384](https://github.com/rust-lang/rust/issues/47384)
  - Both lang and compiler teams nominated by @**inquisitivecrystal**, see relevant comments ([here](https://github.com/rust-lang/rust/issues/47384#issuecomment-1019079178) and [here](https://github.com/rust-lang/rust/issues/47384#issuecomment-1019085500))
  - WG-prioritization discussion [on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.2347384.20.60no_mangle.60.2F.60used.60.20static.20is.20only.20present.20in.20output.20.E2.80.A6)
  - Various comments indicate users' confusion and differently reporting this as a [bug](https://github.com/rust-lang/rust/issues/47384#issuecomment-940940116) or [works as intended](https://github.com/rust-lang/rust/issues/47384#issuecomment-1019061686) 

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
