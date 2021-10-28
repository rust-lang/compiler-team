---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-09-02

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :loudspeaker: Next week, September, 9th release Rust stable 1.55 :loudspeaker:

## MCPs/FCPs

Note: [2021-08-27 MCP review](https://hackmd.io/yQ8jefI0Q0mBwFMAjGKfQw)

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last comment: GH none, Zulip 2m ago)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last comment: GH +2m ago, Zulip yesterday)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last comment: GH none, Zulip +2m ago)
  - "Non exhaustive reachable patterns lint" [compiler-team#445](https://github.com/rust-lang/compiler-team/issues/445) (last comment: GH none, Zulip 40d ago)
  - "Add `TyKind::Const` and remove `GenericArgKind::Const`" [compiler-team#453](https://github.com/rust-lang/compiler-team/issues/453) (last comment: GH none, Zulip 15d ago)
  - "prefer-dynamic=subset" [compiler-team#455](https://github.com/rust-lang/compiler-team/issues/455) (last comment: GH none, Zulip today)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431) 
- Things in FCP (make sure you're good with it)
  - "Transfer `rustc-demangle` to the @rust-lang GitHub org." [compiler-team#456](https://github.com/rust-lang/compiler-team/issues/456) 
  - "Add the `-Z randomize-layout` flag" [compiler-team#457](https://github.com/rust-lang/compiler-team/issues/457) 
  - "Add `m68k-unknown-linux-gnu` as new Tier 3 backend" [compiler-team#458](https://github.com/rust-lang/compiler-team/issues/458) 
- Accepted MCPs
  - "Make `resolve_instance` fallible" [compiler-team#449](https://github.com/rust-lang/compiler-team/issues/449) 
  - "Reproducible command line + determinism" [compiler-team#450](https://github.com/rust-lang/compiler-team/issues/450) 
  - "Make AST->HIR lowering incremental" [compiler-team#452](https://github.com/rust-lang/compiler-team/issues/452) 
- Finalized FCPs (disposition merge)
  - "Extend `-Cdebuginfo` with new options and named aliases" [rust#83947](https://github.com/rust-lang/rust/pull/83947) 
  - "Stabilize "force warn" option " [rust#86516](https://github.com/rust-lang/rust/issues/86516)

### WG checkins

- @*WG-diagnostics* from @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/1NeIcqXERkug9KItmB1TwQ)):
> nothing major since last checkin: multiple small improvements and the landing of a new structured suggestion output that mimics diff patches with coloring

- @*WG-rustc-dev-guide* from @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/1NeIcqXERkug9KItmB1TwQ)):
>#### Most notable changes
>
>- Documenting diagnostic items with their usage and naming conventions [#1192](https://github.com/rust-lang/rustc-dev-guide/pull/1192)
>- Expand THIR section with more details [#1183](https://github.com/rust-lang/rustc-dev-guide/pull/1183)
>- Add description of -opt-bisect-limit LLVM option [#1182](https://github.com/rust-lang/rustc-dev-guide/pull/1182)
>
>#### Most notable WIPs
>
>- `ty::Unevaluated`: dealing with unused substs [#1190](https://github.com/rust-lang/rustc-dev-guide/pull/1190)
>- Update build instructions for rustdoc [#1117](https://github.com/rust-lang/rustc-dev-guide/pull/1117)
>- Move "ctags" section into "Suggested Workflow" [#1115](https://github.com/rust-lang/rustc-dev-guide/pull/1115)
>- Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)
>- Explain the new valtree system for type level constants. [#1097](https://github.com/rust-lang/rustc-dev-guide/pull/1097)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Always preserve sub-obligations in the projection cache" [rust#85868](https://github.com/rust-lang/rust/pull/85868) 
  - reviewed by @**Jack Huey**
  - [perf results](https://github.com/rust-lang/rust/pull/85868#issuecomment-907458600): large improvements and large regressions
  - still needs to land on nightly?
- :beta: "Tracking issue for `UNSUPPORTED_CALLING_CONVENTIONS`" [rust#88397](https://github.com/rust-lang/rust/pull/88397) 
  - opened by @**nagisa**
  - approved by @**simulacrum**
  - nominated to make this lint into stable 1.55
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- None at this time

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Make *const (), *mut () okay for FFI" [rust#84267](https://github.com/rust-lang/rust/pull/84267) (last comment: 4 months ago)
  - rust-five bot assigned to @**Matthew Jasper**
- "move obligation dedup from `impl_or_trait_obligations` to project caching" [rust#84944](https://github.com/rust-lang/rust/pull/84944) (last comment: now)
  - assigned to @**nikomatsakis**
  - discussed last week (see [Wesley's comment](https://github.com/rust-lang/rust/pull/84944#issuecomment-906810332))
- "Replace dominators algorithm with simple Lengauer-Tarjan" [rust#85013](https://github.com/rust-lang/rust/pull/85013) (last comment: 3 months ago)
rustc_query_impl compile time.
- "Refactor query forcing" [rust#78780](https://github.com/rust-lang/rust/pull/78780) (last comment: 8 days ago)
  - assigned to @**Wesley Wiser**
  - [Perf run results](https://github.com/rust-lang/rust/pull/78780#issuecomment-905701857): no runtime modification, and -8% on   - 
- "Replace Copy/Clone compiler magic on arrays with library impls" [rust#86041](https://github.com/rust-lang/rust/pull/86041) (last comment: about +2 months ago)
  - also labeled `T-libs`
  - assigned to @**Josh Triplett**

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [82 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [56 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 47 P-high, 82 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "LLVM crash: Basic Block does not have terminator!" [rust#88043](https://github.com/rust-lang/rust/issues/88043) 
  - Fix in PR [#88124](https://github.com/rust-lang/rust/pull/88124) is beta- and stable- backport accepted, PR is merged
  - tracking the stable-to-stable regression (Wesley's [comment](https://github.com/rust-lang/rust/issues/88043#issuecomment-902126551))

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "ICE: unexpected concrete region in borrowck: ReStatic" [rust#87455](https://github.com/rust-lang/rust/issues/87455) 
  - @**pnkfelix** provided backport in PR [rust#88190](https://github.com/rust-lang/rust/pull/88190) (approved by  @**simulacrum**)
  - Backport landing in 1.55

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Regression ICE - broken MIR under `-C opt-level=s` on `if let Some(v) = None as Option<...>`" [rust#88307](https://github.com/rust-lang/rust/issues/88307) 
  - should be resolved by PR [rust#88572](https://github.com/rust-lang/rust/pull/88572), PR is waiting for review (rust-high-five assigned to Wesley)

## Performance logs

> [triage logs for 2021-09-01](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-09-01.md)

A very busy week with relatively even amounts of regressions and improvements (albeit with improvements outweighing regressions). The largest win was the use of profile-guided optimization (PGO) builds on x86_64 linux builds which brings fairly large improvements in real-world crates. There were 2 regressions that caused fairly large (~3.5%) regressions in real-world crates which need to be investigated.

Triage done by **@rylev**. 5 Regressions, 4 Improvements, 5 Mixed; 0 of them in rollups
56 comparisons made in total

#### Regressions

Get piece unchecked in `write` [#83302](https://github.com/rust-lang/rust/issues/83302)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a49e38e672c60da788360e088f00ad12353e3913&end=de42550d0ac525f44ec79300a1cb349ade181c1a&stat=instructions:u) (up to 3.5% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo`)
- This is a largely a change in std lib code, and we don't really have a good process for dealing with how std lib changes effect performance.
- This seems to be primarily affecting debug and check builds, but there doesn't seem to be a query that is clearly to blame here. Given the motivation of this PR is primarily performance, I think it deserves a closer look.
- Added a comment on the PR [here](https://github.com/rust-lang/rust/pull/83302#issuecomment-910058149).


Warn about unreachable code following an expression with an uninhabited type [#85556](https://github.com/rust-lang/rust/issues/85556)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=de42550d0ac525f44ec79300a1cb349ade181c1a&end=5ca596f486707ac1362edad717ad0e9f5b71d0a3&stat=instructions:u) (up to 9.0% on `incr-unchanged` builds of `webrender-wrench`)
- This regression seems to only be happening in one benchmark `webrender-wrench` and is consistently affecting the `extern_crate`, 
`incr_comp_intern_dep_graph_node`, and `metadata_decode_entry_extern_crate` queries. 
- Given the nature of the change which only impacts liveness checking, I'm unsure why this might be the case. However, given that the regressions are fairly large, I do think additional investigation is worth looking into.
- Left a comment on the PR [here](https://github.com/rust-lang/rust/pull/85556#issuecomment-910064890).


lazily "compute" anon const default substs [#87280](https://github.com/rust-lang/rust/issues/87280)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ad02dc46badee510bd3a2c093edf80fcaade91b1&end=517c28e421b0d601c6f8eb07ea6aafb8e16975ad&stat=instructions:u) (up to 4.8% on `full` builds of `ctfe-stress-4`)
- This is an important change for const generics, and the const generics team discussed whether the performance hit seemed worth it, and they reached this conclusion [that it was](https://github.com/rust-lang/rust/pull/87280#issuecomment-906288243).

Treat types in unnormalized function signatures as well-formed [#88312](https://github.com/rust-lang/rust/issues/88312)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=66acdee9f7822ff2427f2b967e537215421eeb16&end=59ce76548484806ac4970c57c0bb6ad9e53b80f6&stat=instructions:u) (up to 3.4% on `full` builds of `serde`)
- This regression affects many real world crates in significant ways. The query affected by this seems to be additional calls to `implied_outlives_bounds` which I believe would be impacted by this change. 
- Left a comment on the PR [here](https://github.com/rust-lang/rust/pull/88312#issuecomment-910073037).


build llvm libunwind.a in rustbuild [#85600](https://github.com/rust-lang/rust/issues/85600)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=42a2a53ec13b0e6e915acd09a2a9a963e5fa3b92&end=926f069950d7211a87fbd81778b420de420daad7&stat=instructions:u) (up to 0.3% on `incr-patched: println` builds of `regression-31157`)
- The performance change is rather small, but quite surprising since the change is just in how linunwind is being build which (presumably?) should mean that this is a perf noop. 
- Left a comment on the PR [here](https://github.com/rust-lang/rust/pull/85600#issuecomment-910075406), but noted that it didn't seem strictly necessary to investigate due to the rather small impact of the performance change.


#### Improvements

- PGO for LLVM builds on x86_64-unknown-linux-gnu in CI [#88069](https://github.com/rust-lang/rust/issues/88069)
- Morph `layout_raw` query into `layout_of`. [#88308](https://github.com/rust-lang/rust/issues/88308)
- Introduce `~const` [#88328](https://github.com/rust-lang/rust/issues/88328)
- Cow'ify some pprust methods [#88262](https://github.com/rust-lang/rust/issues/88262)
- Don't use `guess_head_span` in `predicates_of` for foreign span [#88414](https://github.com/rust-lang/rust/issues/88414)

#### Mixed

Normalize projections under binders [#85499](https://github.com/rust-lang/rust/issues/85499)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=7b0e554ee2c94e9b3865a8c2d24d720224512dec&end=0afc20860eb98a29d9bbeea80f2acc5be38c6bf3&stat=instructions:u) (up to -36.8% on `incr-unchanged` builds of `deeply-nested-async`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=7b0e554ee2c94e9b3865a8c2d24d720224512dec&end=0afc20860eb98a29d9bbeea80f2acc5be38c6bf3&stat=instructions:u) (up to 1.4% on `incr-patched: add static arr item` builds of `coercions`)
- The large wins are in the `deeply-nested-async` benchmark which due to being a stress test can often have big swings in performance.
- A perf run was run on the PR, and it was not labeled as a mixed result because of slightly different thresholds that were used back then. 
- The PR is a pretty important one and the perf results are largely neutral so need to ping the authors here.


Use undef for uninitialized bytes in constants [#83698](https://github.com/rust-lang/rust/issues/83698)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3b3ce374d203445eb1d0dce50f4211f4aceb7db6&end=20997f6ad81721542e9ef97bb2f58190903a34d8&stat=instructions:u) (up to -10.3% on `full` builds of `ctfe-stress-4`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3b3ce374d203445eb1d0dce50f4211f4aceb7db6&end=20997f6ad81721542e9ef97bb2f58190903a34d8&stat=instructions:u) (up to 0.6% on `incr-patched: println` builds of `coercions`)
- Largely a performance win albeit in ctf-stress-test which being a stress test can yield large changes in certain cases. 
- The regressions here are all very small, and overall despite this being technically a mixed result, the improvements outweigh the regressions.


`#[inline]` non-generic `pub fn`s in `rustc_target::abi` and `ty::layout`. [#88326](https://github.com/rust-lang/rust/issues/88326)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=720a1b23c1eda3c78e28126362238a500eaa20d4&end=dfd6306d26af1a163aaaa1456b4594244ddd182f&stat=instructions:u) (up to -1.5% on `incr-patched: add static arr item` builds of `coercions`)
- Very small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=720a1b23c1eda3c78e28126362238a500eaa20d4&end=dfd6306d26af1a163aaaa1456b4594244ddd182f&stat=instructions:u) (up to 0.3% on `full` builds of `ripgrep`)
- The PR author already noticed that this ended up being a bit of a wash in terms of [performance](https://github.com/rust-lang/rust/pull/88326#issuecomment-907122343). Given that improvements still outweigh regressions, there's no need to look into this (though I imagine the author will continue to do so).


Treat macros as HIR items [#88019](https://github.com/rust-lang/rust/issues/88019)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=2031fd6e46fbe4da271bb23d55c211b2e16dd91f&end=05cccdc9b321e6565b3e62e8b52aec53d106ef2f&stat=instructions:u) (up to -3.2% on `incr-unchanged` builds of `tuple-stress`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2031fd6e46fbe4da271bb23d55c211b2e16dd91f&end=05cccdc9b321e6565b3e62e8b52aec53d106ef2f&stat=instructions:u) (up to 0.8% on `incr-unchanged` builds of `wg-grammar`)
- The improvements here outweigh the regressions considerably, and this is a fairly important bug fix. This PR has already had its performance [justified](https://github.com/rust-lang/rust/pull/88019#issuecomment-901585864).

#### Untriaged Pull Requests

- [#87815 encode `generics_of` for fields and ty params](https://github.com/rust-lang/rust/pull/87815)
- [#87781 Remove box syntax from compiler and tools](https://github.com/rust-lang/rust/pull/87781)
- [#87640 Rollup of 9 pull requests](https://github.com/rust-lang/rust/pull/87640)
- [#87587 Various refactorings of the TAIT infrastructure](https://github.com/rust-lang/rust/pull/87587)
- [#87570 Upgrade to LLVM 13](https://github.com/rust-lang/rust/pull/87570)
- [#87244 Better diagnostics with mismatched types due to implicit static lifetime](https://github.com/rust-lang/rust/pull/87244)
- [#86898 Add fast path for Path::cmp that skips over long shared prefixes](https://github.com/rust-lang/rust/pull/86898)
- [#86777 Include terminators in instance size estimate](https://github.com/rust-lang/rust/pull/86777)
- [#86698 Move OnDiskCache to rustc_query_impl.](https://github.com/rust-lang/rust/pull/86698)
- [#86588 Rollup of 8 pull requests](https://github.com/rust-lang/rust/pull/86588)
- [#86034 Change entry point to 🛡️ against 💥 💥-payloads](https://github.com/rust-lang/rust/pull/86034)
- [#84560 Inline Iterator as IntoIterator.](https://github.com/rust-lang/rust/pull/84560)
- [#80357 Introduce `hir::ExprKind::Let` - Take 2](https://github.com/rust-lang/rust/pull/80357)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
