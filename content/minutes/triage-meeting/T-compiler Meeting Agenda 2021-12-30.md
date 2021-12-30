---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-12-30

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 6 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 3 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: about 20 days ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: about 20 days ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: about 2 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Z instrument-coverage` as `-C instrument-coverage`" [rust#90132](https://github.com/rust-lang/rust/pull/90132#issuecomment-992952031)
  - "Stabilize `-Z print-link-args` as `-C print-link-args`" [rust#91606](https://github.com/rust-lang/rust/pull/91606#issuecomment-992960418)
- Things in FCP (make sure you're good with it)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @_WG-async-foundations_ by by @**nikomatsakis** and @**tmandry** ([previous checkin](https://hackmd.io/uQjEgFIiRpy04QXxKDnRjA#WG-checkins)

pnkfelix came up with this:

> since last checkin on October 7th, async foundtions has: posted an RFC for [static async fn in traits](https://github.com/rust-lang/rfcs/pull/3185) and for [return position impl trait in traits](https://github.com/rust-lang/rfcs/pull/3193), posted a doc on [async stack traces effort](https://hackmd.io/vnaFqT-5TFyN1iHevPGyQQ), helped the tokio team with shipping [tokio-console 0.1](https://tokio.rs/blog/2021-12-announcing-tokio-console).
> (there has also been effort on general purpose generators, and various bits of polish that I didn’t list.)

- @_WG-traits_ @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/uQjEgFIiRpy04QXxKDnRjA#WG-checkins))

> I think it can be summed up as "more of the same" of the previous checkins
> I am working in putting together a wg-traits retrospective blog post for the new year

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "Re-introduce concept of projection cache 'completion'" [rust#89831](https://github.com/rust-lang/rust/pull/89831)
  - Should close `P-high` [rust#89195](https://github.com/rust-lang/rust/issues/89195)
  - [discussion from last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-12-23.20.235481): based on @**Aaron Hill** concerns, decision for a backport was deferred
  - anything new to add?
- :beta: "Don't perform any new queries while reading a query result on disk" [rust#91919](https://github.com/rust-lang/rust/pull/91919)
  - [discussion from last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-12-23.20.2354818/near/265926571): this PR depends on [rust#91924](https://github.com/rust-lang/rust/pull/91924) and [rust#92163](https://github.com/rust-lang/rust/issues/92163) and seems to suffer from a significant perf. loss from them, so backporting this one doesn't look like a good option ([comment](https://github.com/rust-lang/rust/pull/91919#issuecomment-1000401622) from @**mw**)
- :stable: "Re-introduce concept of projection cache 'completion'" [rust#89831](https://github.com/rust-lang/rust/pull/89831)
  - Discussed last week, see beta backport

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- :beta: "Fix rustdoc::private_doc_tests lint for public re-exported items" [rust#92349](https://github.com/rust-lang/rust/pull/92349)
  - Fixes an old [rust#72081](https://github.com/rust-lang/rust/issues/72081) and low priority rustdoc issue
  - Fixes a lint that produced a wrong warning on exported items
  - Waiting on CI, still not merged
  - @**GuillaumeGomez** [suggests](https://github.com/rust-lang/rust/pull/92349#issuecomment-1002128431) that this being an old issue, maybe it can flow into the next release without backport.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "Fix invalid removal of backlines from doc comments" [rust#92357](https://github.com/rust-lang/rust/pull/92357)
  - fixes rustdoc issue ([rust#91201](https://github.com/rust-lang/rust/issues/91201))
  - PR introduces a small breaking change as it slightly changes the output of rustdoc
  - T-rustdoc seem to be ok with the change [see rustdoc discussion](https://rust-lang.zulipchat.com/#narrow/stream/266220-rustdoc/topic/stop.20trimming.20newlines.20from.20doc.20strings/near/266290666)

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)

- "Let qpath contain NtTy: <$:ty as $:ty>::…" [#91150](https://github.com/rust-lang/rust/pull/91150) (last activity: 1 month ago)
  - assigned to @**Wesley Wiser**
  - previously reviewed by @**Vadim Petrochenkov**
- "Extend check for UnsafeCell in consts to cover unions" [#90383](https://github.com/rust-lang/rust/pull/90383) (last activity: about 2 months ago)
  - Assigned to @**RalfJ**, perhaps needs a second round of review?
- [Remove `NullOp::Box` by nbdd0121 · Pull Request #90102 · rust-lang/rust](https://github.com/rust-lang/rust/pull/90102)
  - opened by @**Gary Guo**
  - reviewed by @**RalfJ**, approved by @**oli**
  - What's the actual status of this PR?

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [79 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 52 P-high, 82 P-medium, 13 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)

- "Compile-time regression between 1.56.1 and 1.57.0 for deeply nested decorator types" [rust#91598](https://github.com/rust-lang/rust/issues/91598)
  - Some of the compile time regression has been recovered in latest nightlies, though we're not back at the 1.56.1 level (see @**Aaron Hill** [comment](https://github.com/rust-lang/rust/issues/91598#issuecomment-997227640))
  - Relevant PR [rust#91186](https://github.com/rust-lang/rust/pull/91186) is progressing and being reviewed
  - #91186 discussed in meeting and maybe a candidate for a beta-backport (see [Zulip mention](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-12-23.20.2354818/near/265928597))
  - perhaps backport not as it is (see @**The 8472|330154** [comment](https://github.com/rust-lang/rust/pull/91186#issuecomment-1000535106))

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)

- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-12-28](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-12-28.md)

Relatively quiet week, mostly rustdoc improvements.

Triage done by **@simulacrum**.
Revision range: [3d57c61a9e04dcd3df633f41142009d6dcad4399..e91ad5fc62bdee4a29c18baa5fad2ca42fc91bf4](https://perf.rust-lang.org/?start=3d57c61a9e04dcd3df633f41142009d6dcad4399&end=e91ad5fc62bdee4a29c18baa5fad2ca42fc91bf4&absolute=false&stat=instructions%3Au)

2 Regressions, 1 Improvements, 6 Mixed; 0 of them in rollups
0 Untriaged PRs
26 comparisons made in total

#### Regressions

Fix bad caching of `~const Drop` bounds [#92149](https://github.com/rust-lang/rust/issues/92149)

- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3d57c61a9e04dcd3df633f41142009d6dcad4399&end=8ad3c1dd1d47f9ce7dfdf4a14c70c67e1790b0f5&stat=instructions:u) (up to 2.6% on `incr-patched: println` builds of `regression-31157`)
- Necessary fix for correctness.

Add `#[inline]` modifier to `TypeId::of` [#92135](https://github.com/rust-lang/rust/issues/92135)

- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=aad4f1039fd5d6bf961ed08eebc6eb69b577f1be&end=475b00aa4037461b506539a06d15ca6091b461a7&stat=instructions:u) (up to 4.4% on `full` builds of `keccak`)
- Reverted in a later pull request, unclear what the exact cause of the
  regression is.

#### Improvements

- :arrow_up: rust-analyzer [#92247](https://github.com/rust-lang/rust/issues/92247)
- Remove `PartialOrd`, `Ord` from `LocalDefId` [#90408](https://github.com/rust-lang/rust/issues/90408)
- Do not display `~const Drop` in rustdoc [#92229](https://github.com/rust-lang/rust/issues/92229)
- Rustdoc: use `is_doc_hidden` method on more places [#92227](https://github.com/rust-lang/rust/issues/92227)
- intra-doc: Use an enum to represent URL fragments [#92088](https://github.com/rust-lang/rust/issues/92088)
- rustc_metadata: Switch crate data iteration from a callback to iterator [#92159](https://github.com/rust-lang/rust/issues/92159)

#### Mixed

Backport LLVM changes to disable deferred inlining [#92110](https://github.com/rust-lang/rust/issues/92110)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=489296d82561f596c278e90edc10eb56168ab623&end=77497c74f9268ccf91d7b4c17f23bf07117d7433&stat=instructions:u) (up to -8.3% on `incr-patched: println` builds of `regression-31157`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=489296d82561f596c278e90edc10eb56168ab623&end=77497c74f9268ccf91d7b4c17f23bf07117d7433&stat=instructions:u) (up to 2.8% on `full` builds of `deeply-nested`)
- Avoids an extreme regression in LLVM, which was blocking migration onto the
  new pass manager (and so newer rustc versions) for some crates.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.
