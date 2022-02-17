---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-02-17

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :loudspeaker: Next Thursday, February 24th, release Rust stable 1.59 :loudspeaker:
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 7 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 4 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 2 months ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 2 months ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: about 52 days ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: about 27 days ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Simplify rustc_codegen_llvm::debuginfo::metadata" [compiler-team#482](https://github.com/rust-lang/compiler-team/issues/482) 
  - "Round-tripping hygienic ident serialization" [compiler-team#485](https://github.com/rust-lang/compiler-team/issues/485) 
  - "Stabilize `#[cfg(panic = "...")]`" [rust#93658](https://github.com/rust-lang/rust/pull/93658) 
  - "Remove the everybody loops pass" [rust#93913](https://github.com/rust-lang/rust/pull/93913) 
- Accepted MCPs
  - "Overhaul interning" [compiler-team#481](https://github.com/rust-lang/compiler-team/issues/481)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @_*wg-incr-comp* by @**pnkfelix** @**Wesley Wiser** ([previous checkin](https://hackmd.io/c-I7gxx4SK2eudQgwruuJw#WG-checkins), goes back to Sept. 2021, I think no more recent updates were filed)
> Nothing to report from the Working Group. Wesley and Felix are looking into moving ownership of this working group to the people who are actively owning it, so to speak.

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/R_-u5cmyQtmcPSL8sNtbuw?view#WG-checkins))
> * There is an ongoing upgrade to LLVM 14 which is going to land soon (https://github.com/rust-lang/rust/pull/93577). Don't think there is anything especially noteworthy about this release as far as rust is concerned, but expect the usual mix of things getting fixed and other things getting broken :)
> * We now apply `noundef` to some function parameters and returns (https://github.com/rust-lang/rust/pull/93670). A resolution of https://github.com/rust-lang/unsafe-code-guidelines/issues/71 towards "uninitialized outside MaybeUninitialized is always UB, no ifs or buts" would be appreciated.
> * @**durin42** has been working on upstream patches to encode allocator information via attributes. This will eliminate the main "functional" patch to LLVM we carry (the rest is mostly build fixes and backports).
> * I've been focused on [opaque pointers](https://llvm.org/docs/OpaquePointers.html) work upstream, which reached a milestone last week: We can now do end-to-end optimized compiles of most C/C++ code. Plan to test this with rust soonishly.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No backport nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `t-compiler`

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Introduce linter for diagnostic messages" [rust#89455](https://github.com/rust-lang/rust/pull/89455) (last review activity: 4 months ago)
  - @**estebank** would contact author (see [prev. discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-12-09.20.2354818/near/264317963)) for an MCP proposal
- "Specialize infinite-type "insert some indirection" suggestion for Option" [rust#91416](https://github.com/rust-lang/rust/pull/91416) (last review activity: 2 months ago)
  - seems to be waiting on @**estebank**
  - perhaps also an update due to upstream changes making this unmergeable
- "Fold aarch64 feature +fp into +neon" [rust#91608](https://github.com/rust-lang/rust/pull/91608) (last review activity: 2 months ago)
  - [latest comment](https://github.com/rust-lang/rust/pull/91608#issuecomment-1038413097) from PR author seems to indicate some disagreement on the motivation (cc: @**Amanieu** @**Adam Gemmell**)
  - (maybe leave some more time to review and go over this again later)
- "Update to fix regression 90319 and correctly emit overflow errors when not inside an error reporting context" [rust#91238](https://github.com/rust-lang/rust/pull/91238) (last review activity: 2 months ago)
  - seems to be waiting on @**estebank**
- "Implementation of the `expect` attribute (RFC 2383)" [rust#87835](https://github.com/rust-lang/rust/pull/87835) (last review activity: 2 months ago)
  - seems to be waiting on @**Wesley Wiser**

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [70 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [47 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 45 P-high, 82 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Const generic defaults ICE: No bound vars found" [rust#93647](https://github.com/rust-lang/rust/issues/93647) 
  - Fixed by PR [rust#93669](https://github.com/rust-lang/rust/pull/93669) authored by @**Michael Goulet (compiler-errors)** 
  - seems under control
- "optimized i686 fails primal-sieve tests" [rust#94032](https://github.com/rust-lang/rust/issues/94032)
  - [This comment](https://github.com/rust-lang/rust/issues/94032#issuecomment-1040973713) from @**cuviper** suggests that disabling the new LLVM Pass Manager fixes the issue
  - @**Nikita Popov** [adds that](https://github.com/rust-lang/rust/issues/94032#issuecomment-1042853244) it also happens with LLVM 14

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "Nightly compiler bug: "lifetime mismatch"" [rust#94004](https://github.com/rust-lang/rust/issues/94004)

## Performance logs

> [triage logs for 2022-02-16](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-02-16.md)

Only one outright regression this week. We had some very cool work from cjgillot
to prevent queries from doing expensive clones, by just forcing them all to be
`Copy`! Also, nnethercote's overhaul of interning yielded massive improvements
across many crates. Also, a slew of benchmarks were unexpectedly improved
[quite a lot][] by some changes to way we invoke the linker when building LLVM itself.

[quite a lot]: https://perf.rust-lang.org/compare.html?start=8d163e66211c529465868a22686f46c5956342a4&end=6655109f58b7d0f4cae7e04eab476e389c9b9a0f

Triage done by **@pnkfelix**.
Revision range: [775e480722c7aba6ff4ff3ccec8c1f4639ae7889..a240ccd81c74c105b6f5fe84c46f8d36edb7e306](https://perf.rust-lang.org/?start=775e480722c7aba6ff4ff3ccec8c1f4639ae7889&end=a240ccd81c74c105b6f5fe84c46f8d36edb7e306&absolute=false&stat=instructions%3Au)

2 Regressions, 2 Improvements, 4 Mixed; 0 of them in rollups
47 comparisons made in total
30 Untriaged Pull Requests

#### Regressions

Inherit lifetimes for async fn instead of duplicating them. [#91403](https://github.com/rust-lang/rust/issues/91403)
  - Average relevant regression: 1.7%
  - Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5d8767cb229b097fedb1dd4bd9420d463c37774f&end=3cfa4def7c87d571bd46d92fed608edf8fad236e&stat=instructions:u): 2.0% on `full` builds of `issue-88862 check`
  - This regression was predicted by a rust-timer build when PR was first proposed, ...
  - ... but there was no follow-up on those results at that time; left comment on PR.

Apply noundef attribute to &T, &mut T, Box<T>, bool [#93670](https://github.com/rust-lang/rust/issues/93670)
  - Average relevant regression: 0.7%
  - Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3cfa4def7c87d571bd46d92fed608edf8fad236e&end=5c30d6568383916ce97cdf20ceb61a8b9e5bb5a8&stat=instructions:u): 1.1% on `full` builds of `regression-31157 debug`
  - PR author [says](https://github.com/rust-lang/rust/pull/93670#issuecomment-1038347581) that Cachegrind indicates this is due to overhead of inserting attribute itself.
  - PR author also says there is related work in LLVM 14 that may help ease the performance impact here, so stay tuned for when that lands in PR [#93577](https://github.com/rust-lang/rust/pull/93577)

#### Improvements

- Ensure that queries only return Copy types. [#93511](https://github.com/rust-lang/rust/issues/93511)
- bootstrap: tidy up flag handling for llvm build [#93918](https://github.com/rust-lang/rust/issues/93918)
- Inline a few trivial conversion functions [#94021](https://github.com/rust-lang/rust/issues/94021)

#### Mixed

Revert lazy TAIT PR [#93893](https://github.com/rust-lang/rust/issues/93893)
- Average relevant regression: 1.0%
- Average relevant improvement: -1.2%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=78450d2d602b06d9b94349aaf8cece1a4acaf3a8&end=6499c5e7fc173a3f55b7a3bd1e6a50e9edef782d&stat=instructions:u): -1.8% on `full` builds of `deeply-nested-async check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=78450d2d602b06d9b94349aaf8cece1a4acaf3a8&end=6499c5e7fc173a3f55b7a3bd1e6a50e9edef782d&stat=instructions:u): 1.6% on `full` builds of `wg-grammar check`
- Left comment: we had to revert the TAIT PR, the fallout from it was too high. Marked as triaged.

Implement `tainted_by_errors` in MIR borrowck, use it to skip CTFE [#93691](https://github.com/rust-lang/rust/issues/93691)
- Average relevant regression: 1.7%
- Average relevant improvement: -0.4%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=fc323035ac49b8d834fc2a0f580af8fd45e90b30&end=9cdefd763b910ffd1d42233a8c752ab5fd84ca4d&stat=instructions:u): -0.6% on `incr-unchanged` builds of `keccak check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=fc323035ac49b8d834fc2a0f580af8fd45e90b30&end=9cdefd763b910ffd1d42233a8c752ab5fd84ca4d&stat=instructions:u): 2.4% on `incr-patched: u8 3072` builds of `issue-46449 debug`
- There were three experiments done for this PR, with distinct commits: [first run](https://github.com/rust-lang/rust/pull/93691#issuecomment-1031790883), [second run](https://github.com/rust-lang/rust/pull/93691#issuecomment-1032982905), [third run](https://github.com/rust-lang/rust/pull/93691#issuecomment-1033577005).
- The second experiment is what landed; the first experiment had smaller max and average values in its summary, but it regressed far more crates overall, while the second experiment regressed only a few crates, each by slightly more than the first experiment.
- In any case, this was expected fallout from this PR.

make `find_similar_impl_candidates` even fuzzier [#93298](https://github.com/rust-lang/rust/issues/93298)
- Average relevant regression: 0.7%
- Average relevant improvement: -0.3%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b321742c6c27494897a88cd5ac17ac20aa3469a1&end=52dd59ed2154f4158ae37e6994b678a6249a7bb0&stat=instructions:u): -0.3% on `full` builds of `inflate check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=b321742c6c27494897a88cd5ac17ac20aa3469a1&end=52dd59ed2154f4158ae37e6994b678a6249a7bb0&stat=instructions:u): 0.8% on `full` builds of `keccak check`
- Not clear why this had a performance impact at all, as it should have only affected error reporting.

Overhaul interning. [#93148](https://github.com/rust-lang/rust/issues/93148)
- Average relevant regression: 1.0%
- Average relevant improvement: -1.1%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=6421a499a50adbaa7b5d0234bdd4817d970f0933&end=55697574915ca58c3fcd7b1c854c1c93e002dc85&stat=instructions:u): -4.5% on `full` builds of `projection-caching check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=6421a499a50adbaa7b5d0234bdd4817d970f0933&end=55697574915ca58c3fcd7b1c854c1c93e002dc85&stat=instructions:u): 1.8% on `full` builds of `match-stress-enum check`
- This was a massive improvement, full stop.

#### Nags requiring follow up

- None 

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Stabilize native library modifier syntax and the `whole-archive` modifier specifically" [rust#93901](https://github.com/rust-lang/rust/pull/93901)
  - opened and nominated by @**Vadim Petrochenkov** 
  - Stabilization report for RFC 2951 [at this comment](https://github.com/rust-lang/rust/pull/93901#issuecomment-1041325522)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
