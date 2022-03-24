---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-03-24

## Announcements

- Tomorrow <time:2022-03-25T10:00:00-04:00> Meeting formal methods + stable MIR [meeting link](https://calendar.google.com/calendar/event?eid=M2VuZDZoN3VodHFxczk2Ymt2YjM3YTdlamQgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw&ctz=GMT+01:00)
  - See issues [compiler-team#488](https://github.com/rust-lang/compiler-team/issues/488) and [compiler-team#498](https://github.com/rust-lang/compiler-team/issues/498)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 8 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 5 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 3 months ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 3 months ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: 2 months ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 2 months ago)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking issue for Consistent no-prelude attribute (RFC 501)" [rust#20561](https://github.com/rust-lang/rust/issues/20561#issuecomment-1059258740) 
- Things in FCP (make sure you're good with it)
  - "Implement `Clone` for generators" [compiler-team#494](https://github.com/rust-lang/compiler-team/issues/494) 
  - "Stabilize native library modifier syntax and the `whole-archive` modifier specifically" [rust#93901](https://github.com/rust-lang/rust/pull/93901) 
- Accepted MCPs
  - "Increase the minimum linux-gnu versions" [compiler-team#493](https://github.com/rust-lang/compiler-team/issues/493) 
- Finalized FCPs (disposition merge)
  - "Tracking issue for `const extern fn` and `const unsafe extern fn`" [rust#64926](https://github.com/rust-lang/rust/issues/64926) 
  - "Always evaluate all cfg predicate in all() and any()" [rust#94295](https://github.com/rust-lang/rust/pull/94295)
  
### WG checkins

- @_*WG-traits* (impl trait) by @**nikomatsakis** (no previous checkin):
> Checkin text

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/MDQRCqHWSCG1HuHgHC847g#WG-checkins)):
> @**nikita popov** writes: From the LLVM side (though possibly I'm du):
> * Rust (including the beta branch) is on LLVM 14 now. I don't think we had any interesting problems with this release.
> * The large increases in compile-time with the new pass manager due to catastrophic inlining have been fixed (part of the final LLVM 14 release).
> * noundef metadata is now applied to loads as well (for types with invalid values -- the larger question of whether we can make everything apart from MaybeUninit undef remains open)
> * I'm mostly doing opaque pointers work upstream, and we're close to enabling them by default. https://github.com/rust-lang/rust/pull/94214#issuecomment-1051946207 has some promising initial numbers for rust + opaque pointers.
> * The allocalign attribute has landed, but the allocator attribute patches are still outstanding. Once everything is in place we can switch rust allocator functions to use the new attributes and drop the LLVM patch we carry for this.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "relax `suspicious_auto_trait_impls` lint wrt lifetimes" [rust#94925](https://github.com/rust-lang/rust/pull/94925) 
  - PR authored by @**lcnr**, (pr is merged)
  - fixes a warning caused by [rust#84857](https://github.com/rust-lang/rust/issues/84857)
  - nominated by @_lcnr to remove all incorrect warnings before [rust#93367](https://github.com/rust-lang/rust/issues/93367) lands on stable ([comment](https://github.com/rust-lang/rust/pull/94925#issuecomment-1066490399))
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on t-compiler

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Fix stack overflows when compiling high-`recursion_limit` programs" [rust#93056](https://github.com/rust-lang/rust/pull/93056) (last review activity: 2 months ago)
  - PR author has been keeping up with upstream changes
  - Seems a reviewer is needed
- "Better method call error messages" [rust#92364](https://github.com/rust-lang/rust/pull/92364) (last review activity: about 57 days ago)
  - PR author @**Jack Huey** suggests a review from @**Esteban Küber** 
- "Add `[f32]::sort_floats` and `[f64]::sort_floats`" [rust#93397](https://github.com/rust-lang/rust/pull/93397) (last review activity: about 54 days ago)
  - left a comment for @**Josh Triplett** to be sure PR is actually ready for review
- "parallel_compiler: hide dependencies behind feature" [rust#93787](https://github.com/rust-lang/rust/pull/93787) (last review activity: about 39 days ago)
  - bot assigned to @**Wesley Wiser** 
  - some comments left by @__**cuviper** and @__**cjgillot**
  - PR needs a rebase (maybe not blocking review)
- "Only add codegen backend to dep info if -Zbinary-dep-depinfo is used" [rust#93969](https://github.com/rust-lang/rust/pull/93969) (last review activity: about 38 days ago)
  - rustbot rolled the dice a few times but PR probably needs a reviewer, maybe re-assign?
- "Fix incorrect suggestion for trait bounds involving binary operators" [rust#94034](https://github.com/rust-lang/rust/pull/94034) (last review activity: about 35 days ago)
  - first round of review by @**oli** and @**Esteban Küber** 
  - PR needs a rebase (maybe not blocking review?)
- "Only compile #[used] as llvm.compiler.used for ELF targets" [rust#93718](https://github.com/rust-lang/rust/pull/93718) (last review activity: about 34 days ago)
  - can now be reviewed from `T-compiler`
- "Introduce enhanced_binary_op feature" [rust#93049](https://github.com/rust-lang/rust/pull/93049)
  - assigned to @**Matthew Jasper**, comments indicate a conversation [here](https://github.com/rust-lang/rust/pull/88642#pullrequestreview-853617564)
  - (author also suggests closing it)

# Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [64 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [47 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 43 P-high, 82 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No new `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No new unassigned `P-high`

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-03-22](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-03-22.md)

Very quiet week for performance, with just one statistically significant change
landing in the last week. This change was a regression, though primarily in
stress tests, and was a result of a soundness fix.

Triage done by **@simulacrum**.
Revision range: [3ba1ebea122238d1a5c613deb1bf60ce24bd8fd8..3ea44938e21f0de8ae7d4f6399a8a30f97867c70](https://perf.rust-lang.org/?start=3ba1ebea122238d1a5c613deb1bf60ce24bd8fd8&end=3ea44938e21f0de8ae7d4f6399a8a30f97867c70&absolute=false&stat=instructions%3Au)

1 Regressions, 0 Improvements, 0 Mixed; 0 of them in rollups
37 comparisons made in total

#### Regressions

Disable almost certainly unsound early otherwise branch MIR opt [#95161](https://github.com/rust-lang/rust/pull/95161)
- Arithmetic mean of relevant regressions: 3.1%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3c17c84a386e7badf6b2c6018d172496b3a28a04&end=cf8531064e44a335c7da75c745279457f42660c5&stat=instructions:u): 8.5% on `full` builds of `deeply-nested-multi check`
- Minimal impact on primary benchmarks, and as a soundness fix naturally pretty justified.
  
#### Improvements

- No improvements.

#### Mixed

- No mixed results.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
