---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-02-24

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :tada: Today, February 24th, release Rust stable 1.59 :tada: ([blog post](https://github.com/rust-lang/blog.rust-lang.org/blob/964c894c5ca71014501e2f4409b0cf1f38fe3417/posts/2022-02-24-Rust-1.59.0.md))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- pnkfelix note: the bootstrap process is probably *the* biggest tester of incremental compilation on beta channel (because beta otherwise is not commonly used for incremental development). If you are seeing any problem there *atop the beta compiler*, please do file a bug; it represents something that's on the path to hitting stable.

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 7 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 4 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 2 months ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 2 months ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: about 59 days ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: about 34 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize native library modifier syntax and the `whole-archive` modifier specifically" [rust#93901](https://github.com/rust-lang/rust/pull/93901#issuecomment-1043124526) 
- Things in FCP (make sure you're good with it)
  - "Round-tripping hygienic ident serialization" [compiler-team#485](https://github.com/rust-lang/compiler-team/issues/485) 
  - "Remove the everybody loops pass" [rust#93913](https://github.com/rust-lang/rust/pull/93913) 
- Accepted MCPs
  - "Simplify rustc_codegen_llvm::debuginfo::metadata" [compiler-team#482](https://github.com/rust-lang/compiler-team/issues/482) 
- Finalized FCPs (disposition merge)
  - "Check if enum from foreign crate has any non exhaustive variants when attempting a cast" [rust#92744](https://github.com/rust-lang/rust/pull/92744) 
  - "Stabilize `#[cfg(panic = "...")]`" [rust#93658](https://github.com/rust-lang/rust/pull/93658)

### WG checkins

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/PPMtXP7hSqmyqD30CUw_cQ#WG-checkins))
> No major updates since last time.

- @_*wg-polymorphization* by @**davidtwco** ([previous checkin](https://hackmd.io/PPMtXP7hSqmyqD30CUw_cQ#WG-checkins))
> No major updates since last time, lcnr is working on a fix for #75325, the primary remaining blocker for polymorphization, hopefully resolved after current issues related to higher-ranked lifetimes are resolved.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "No branch protection metadata unless enabled" [rust#93516](https://github.com/rust-lang/rust/pull/93516)
  - PR authored by @**nagisa** 
  - PR is open, reviewer is @**cjgillot**, didnt yet r+'d 
  - nominated by @**nagisa** since missed the beta cut-off
- :beta: "update auto trait lint for `PhantomData`" [rust#94315](https://github.com/rust-lang/rust/pull/94315)
  - PR authored by @**lcnr** 
  - PR is open, r+'d by @**oli** 
  - nominated by @**lcnr** [for backport](https://github.com/rust-lang/rust/pull/94315#issuecomment-1049576223), seems a small safe change

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Stabilize native library modifier syntax and the `whole-archive` modifier specifically" [rust#93901](https://github.com/rust-lang/rust/pull/93901)
  - perhaps waiting on more :heavy_check_mark: from T-compiler ([see comment](https://github.com/rust-lang/rust/pull/93901#issuecomment-1043124228)) 

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "When encountering a binding that could be a const or unit variant, suggest the right path" [rust#90988](https://github.com/rust-lang/rust/pull/90988) (last review activity: 3 months ago)
  - [previously discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-01-27.20.2354818/near/269591228), currenly assigned to @**Matthew Jasper** 
- "Fix exposing fields marked unstable or doc hidden" [rust#90358](https://github.com/rust-lang/rust/pull/90358) (last review activity: 2 months ago)
  - PR is now waiting for review
  - rustbot assigned to @**Esteban Küber** (but first round of review was done by others)
  - maybe reassign?
- "Improve suggestion when casting usize to (possibly) wide pointer" [rust#92150](https://github.com/rust-lang/rust/pull/92150) (last review activity: 2 months ago)
  - reviewer was assigned by the rustbot
  - PR author @**Michael Goulet (compiler-errors)** asks if assignee is confirmed or can be reassigned 
- "remove obligation dedup from `impl_or_trait_obligations`" [rust#84944](https://github.com/rust-lang/rust/pull/84944) (last review activity: 2 months ago)
  - cc: @**Aaron Hill**
- "Initial implementation of transmutability trait." [rust#92268](https://github.com/rust-lang/rust/pull/92268) (last review activity: about 60 days ago)
  - First round of review by @_**oli**
  - PR seems a bit in flux, perhaps the actual status is not ready for review?

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+lab
el%3AP-critical+no%3Aassignee)
- [69 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [47 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 44 P-high, 82 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Nested mutex guards with dropping and re-assigning confuse the borrow checker" [rust#93770](https://github.com/rust-lang/rust/issues/93770)
  - not a regression but probably worth mentioning in this meeting
- "optimized i686 fails primal-sieve tests" [#94032](https://github.com/rust-lang/rust/issues/94032)
  - @_**pnkfelix** [suggests](https://github.com/rust-lang/rust/issues/94032#issuecomment-1047878307) that it can be downgraded to `P-high`

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-02-24](https://github.com/rust-lang/rustc-perf/blob/c8b6238851526b7e8ebd86b3f1488f8949426bef/triage/2022-02-24.md)

A relatively quiet week with improvements largely outweighing regressions. On the regressions side, doc performance has worsened somewhat significantly most likely introduced by adding more docs to blanket impls. On the improvement side, LLVM 14 allowed for an optimization the significantly improves codegen performance.

Triage done by **@rylev**.
Revision range: [a240ccd81c74c105b6f5fe84c46f8d36edb7e306..1204400ab8da9830f6f77a5e40e7ad3ea459676a](https://perf.rust-lang.org/?start=a240ccd81c74c105b6f5fe84c46f8d36edb7e306&end=1204400ab8da9830f6f77a5e40e7ad3ea459676a&absolute=false&stat=instructions%3Au)

3 Regressions, 2 Improvements, 7 Mixed; 3 of them in rollups
27 Untriaged Pull Requests
38 comparisons made in total

#### Regressions

Rollup of 8 pull requests [#94072](https://github.com/rust-lang/rust/issues/94072)
- Average relevant regression: 11.3%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=930fc4f59ddeb9f26d554a2c75c5355989189540&end=582b6964a8868c9714881d9821d08415a8f4f13b&stat=instructions:u): 157.0% on `full` builds of `stm32f4 doc`
- The regressions are all in doc runs but the largest are quite severe.
- The most likely culprit is [#89869](https://github.com/rust-lang/rust/pull/89869) which adds documentation to many different blanket impls.
- Left a comment to [investigate](https://github.com/rust-lang/rust/pull/94072#issuecomment-1049807469).

Rollup of 9 pull requests [#94103](https://github.com/rust-lang/rust/issues/94103)
- Average relevant regression: 1.1%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=30b3f35c420694a4f24e5a4df00f06073f4f3a37&end=73a7423e77b49a99e270531fbadda5b8899df3f6&stat=instructions:u): 2.1% on `full` builds of `deeply-nested-async check`
- Almost all of the regressions are in stress tests so the actual impact on users is likely not that large
- None of the rolled up PRs seem to be suspicious so it's hard to know where to begin

Fix a layout possible miscalculation in `alloc::RawVec` [#83706](https://github.com/rust-lang/rust/issues/83706)
- Average relevant regression: 0.5%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=68369a041cea809a87e5bd80701da90e0e0a4799&end=5bd1ec3283874b97b27da4539b2950fbd01c4b0e&stat=instructions:u): 1.2% on `incr-unchanged` builds of `deeply-nested-async debug`
- A small regression would seem likely after this change since more work (e.g., checked multiplication) is being done in RawVec which is used quite a lot. I am, however, unsure whether the actual regression we're seeing here is expected
- Left a comment for [investigation](https://github.com/rust-lang/rust/pull/83706#issuecomment-1049820205).

#### Improvements

- Rollup of 7 pull requests [#94254](https://github.com/rust-lang/rust/issues/94254)
- Reapply cg_llvm: `fewer_names` in `uncached_llvm_type` [#94107](https://github.com/rust-lang/rust/issues/94107)

#### Mixed

Upgrade to LLVM 14 [#93577](https://github.com/rust-lang/rust/issues/93577)
- Average relevant regression: 0.7%
- Average relevant improvement: -1.3%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=582b6964a8868c9714881d9821d08415a8f4f13b&end=30b3f35c420694a4f24e5a4df00f06073f4f3a37&stat=instructions:u): -3.8% on `full` builds of `projection-caching check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=582b6964a8868c9714881d9821d08415a8f4f13b&end=30b3f35c420694a4f24e5a4df00f06073f4f3a37&stat=instructions:u): 3.0% on `incr-patched: add static arr item` builds of `coercions debug`
- Upgrading LLVM is always likely to produce performance changes. Luckily the perf improvements seem to outweigh the perf regressions considerably both in number and magnitude.


Revert #91403 [#94088](https://github.com/rust-lang/rust/issues/94088)
- Average relevant regression: 1.1%
- Average relevant improvement: -1.5%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=f838a425e3134d036a7d9632935111a569ac7446&end=feac2ecf1cae1dd0f56bed1cecc6e109c64b3d4f&stat=instructions:u): -1.7% on `full` builds of `issue-88862 check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f838a425e3134d036a7d9632935111a569ac7446&end=feac2ecf1cae1dd0f56bed1cecc6e109c64b3d4f&stat=instructions:u): 1.7% on `incr-unchanged` builds of `clap-rs check`
- The perf regressions here are relatively minor, and this change fixes a correctness issue, so I think it's fine to let it through.


Guard against unwinding in cleanup code [#92911](https://github.com/rust-lang/rust/issues/92911)
- Average relevant regression: 0.9%
- Average relevant improvement: -1.6%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3b348d932aa5c9884310d025cf7c516023fd0d9a&end=26904687275a55864f32f3a7ba87b7711d063fd5&stat=instructions:u): -3.4% on `incr-full` builds of `syn opt`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3b348d932aa5c9884310d025cf7c516023fd0d9a&end=26904687275a55864f32f3a7ba87b7711d063fd5&stat=instructions:u): 3.7% on `full` builds of `ripgrep opt`
- A relatively large regression considering the change is meant to protect against a rare occurrence (double unwind).
- Left a comment asking for [justification](https://github.com/rust-lang/rust/pull/92911#issuecomment-1049838729).


Allow inlining of `ensure_sufficient_stack()` [#93934](https://github.com/rust-lang/rust/issues/93934)
- Average relevant regression: 0.9%
- Average relevant improvement: -0.8%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3b186511f62b0ce20e72ede0e8e13f8787155f02&end=c1aa85475cf5623caf50f7ef3b62903bb084e518&stat=instructions:u): -1.0% on `incr-patched: add vec item` builds of `deep-vector opt`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3b186511f62b0ce20e72ede0e8e13f8787155f02&end=c1aa85475cf5623caf50f7ef3b62903bb084e518&stat=instructions:u): 0.9% on `incr-unchanged` builds of `ctfe-stress-4 check`
- This was an attempt at an optimization that proved fruitful before LLVM 14 was merged. [Now](https://github.com/rust-lang/rust/pull/93934#issuecomment-1048629651) the regressions and improvements weigh each other out.


safely `transmute<&List<Ty<'tcx>>, &List<GenericArg<'tcx>>>` [#93505](https://github.com/rust-lang/rust/issues/93505)
- Average relevant regression: 1.2%
- Average relevant improvement: -0.6%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=1103d2e914b67c18b0deb86073c26c6aefda761d&end=03a8cc7df1d65554a4d40825b0490c93ac0f0236&stat=instructions:u): -0.8% on `incr-full` builds of `ucd check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1103d2e914b67c18b0deb86073c26c6aefda761d&end=03a8cc7df1d65554a4d40825b0490c93ac0f0236&stat=instructions:u): 2.7% on `full` builds of `deeply-nested-async check`
- This led to a larger regression than was seen before the PR was merged. 
- The author is now [looking into the perf](https://github.com/rust-lang/rust/pull/93505#issuecomment-1047538798)


Simplify rustc_serialize by dropping support for decoding into JSON [#93839](https://github.com/rust-lang/rust/issues/93839)
- Average relevant regression: 0.8%
- Average relevant improvement: -0.5%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b8967b0d52a2ba5f0c9da0da03e78ccba5534e4a&end=58a721af9f818bdf57f86448557b45c5ae19a3ef&stat=instructions:u): -0.5% on `incr-unchanged` builds of `ctfe-stress-4 check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=b8967b0d52a2ba5f0c9da0da03e78ccba5534e4a&end=58a721af9f818bdf57f86448557b45c5ae19a3ef&stat=instructions:u): 1.0% on `full` builds of `externs opt`
- This change was [justified](https://github.com/rust-lang/rust/pull/93839#issuecomment-1035359841): The performance changes to the compiler are pretty much a wash, but this does have a good impact on compiler bootstrapping (~6 seconds).


Introduce `ChunkedBitSet` and use it for some dataflow analyses. [#93984](https://github.com/rust-lang/rust/issues/93984)
- Average relevant regression: 1.0%
- Average relevant improvement: -3.8%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5bd1ec3283874b97b27da4539b2950fbd01c4b0e&end=bafe8d06e015eb00724d3d497516191d6681943f&stat=instructions:u): -5.3% on `full` builds of `keccak debug`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5bd1ec3283874b97b27da4539b2950fbd01c4b0e&end=bafe8d06e015eb00724d3d497516191d6681943f&stat=instructions:u): 6.0% on `full` builds of `clap-rs check`
- While the regressions look minor they are likely even less of an issue due to this particular optimization likely helping wall-time and definitely helping max RSS while hurting instruction counts.
- For more detail see the [justification](https://github.com/rust-lang/rust/pull/93984#issuecomment-1043994374).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Stabilize guaranteed compile time evaluation of unnamed constant items" [rust#93838](https://github.com/rust-lang/rust/issues/93838) 
- "Stabilize native library modifier syntax and the `whole-archive` modifier specifically" [rust#93901](https://github.com/rust-lang/rust/pull/93901) 
  - nominated by @_**pnkfelix** [for review](https://github.com/rust-lang/rust/issues/93838#issuecomment-1048104622)
- "process: release procedure only runs crater on nightly->beta cut" [rust#94266](https://github.com/rust-lang/rust/issues/94266)
  - nominated by @_**pnkfelix** [for T-compiler discussion](https://github.com/rust-lang/rust/issues/94266)
  
[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
