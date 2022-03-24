---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-03-10

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow <time:2022-03-10T10:00:00-05:00> monthly Compiler Team Planning meeting ( [link](https://forge.rust-lang.org/compiler/steering-meeting.html))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "Implement `Clone` for generators" [compiler-team#494](https://github.com/rust-lang/compiler-team/issues/494) 
  -  "Add `import_name_type` parameter to `#[link]`" [compiler-team#495](https://github.com/rust-lang/compiler-team/issues/495) 
  -  "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) 
- Old MCPs (not seconded, take a look)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 8 months ago)
  -  "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 5 months ago)
  -  "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 3 months ago)
  -  "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 3 months ago)
  -  "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: 2 months ago)
  -  "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: about 48 days ago)
- Pending FCP requests (check your boxes!)
  -  "Tracking issue for Consistent no-prelude attribute (RFC 501)" [rust#20561](https://github.com/rust-lang/rust/issues/20561#issuecomment-1059258740) 
  -  "Stabilize native library modifier syntax and the `whole-archive` modifier specifically" [rust#93901](https://github.com/rust-lang/rust/pull/93901#issuecomment-1043124526)
- Things in FCP (make sure you're good with it)
  -  "allow arbitrary inherent impls in the standard library" [compiler-team#487](https://github.com/rust-lang/compiler-team/issues/487) 
  -  "Increase the minimum linux-gnu versions" [compiler-team#493](https://github.com/rust-lang/compiler-team/issues/493) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  -  "Stabilize const_fn_fn_ptr_basics, const_fn_trait_bound, and const_impl_trait" [rust#93827](https://github.com/rust-lang/rust/pull/93827)

### WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry** ([previous checkin](https://hackmd.io/fS5Qiyo3Ta6F8S7QNxg5xA#WG-checkins))
> wg-async has started an ["async reading club"](https://hackmd.io/6kSbmyggT6eAy5uvdB6srA?view), every 2 weeks on Mondays. Check out the link to learn more.

- @_*WG-traits* (generic associated types) by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/fS5Qiyo3Ta6F8S7QNxg5xA#WG-checkins))
> A few PRs have landed
> - Associated type where clause move [rust#90076](https://github.com/rust-lang/rust/pull/90076)
> - Normalization in fulfill [rust#90887](https://github.com/rust-lang/rust/pull/90887)
> - Normalize all obligation and expected trait refs in the same place [rust#94108](https://github.com/rust-lang/rust/pull/94108)
> - GATs in rustdoc [rust#94009](https://github.com/rust-lang/rust/pull/94009)
>
> Road to stabilization
> - Only 3 untriaged GATs issues remain (but Jack's taken a look at all, just need a look from Niko)
> - Still working on a "shiny future" design for a GATified Iterator (and maybe other traits)
> - Need to go through current tests and issues, in order to document current behavior, what works, what doesn't
> - Finally, need to write stabilization report and related docs

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Check method input expressions once" [rust#94438](https://github.com/rust-lang/rust/pull/94438) 
  - pr by @**Michael Goulet (compiler-errors)** , already merged
  - beta-backport decision was waiting on [rust#94596](https://github.com/rust-lang/rust/pull/94596), which is now merged
- :beta: "Do not recover from `Ty?` in macro parsing" [rust#94593](https://github.com/rust-lang/rust/pull/94593) 
  - pr author @**Esteban Küber**, already merged
  - pr fixes [rust#94510](https://github.com/rust-lang/rust/issues/94510), follow up for [rust#92746](https://github.com/rust-lang/rust/pull/92746)
- :beta: "Delay bug in expr adjustment when check_expr is called multiple times" [rust#94596](https://github.com/rust-lang/rust/pull/94596)
  - pr author @**Michael Goulet (compiler-errors)**, already merged
  - fixes [rust#94516](https://github.com/rust-lang/rust/pull/94516)
  - beta-backport nominated by  @**Esteban Küber**
- :beta: "Downgrade `#[test]` on macro call to warning" [rust#94624](https://github.com/rust-lang/rust/pull/94624)
  - pr author @**Esteban Küber**, already merged
  - fixes [rust#94508](https://github.com/rust-lang/rust/issues/94508), (regression discovered in crater run)
- :beta: "Update LLVM submodule" [rust#94764](https://github.com/rust-lang/rust/pull/94764)
  - pr author @**Nikita Popov**
  - assigned to @**nagisa**  for review
  - fixes a number of issues from LLVM 14: [rust#89609](https://github.com/rust-lang/rust/issues/89609), [rust#93923](https://github.com/rust-lang/rust/issues/93923), [rust#94032](https://github.com/rust-lang/rust/issues/94032)
  - relevant [Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/187780-t-compiler.2Fwg-llvm/topic/NewPM.20compile-time.20issues/near/274264531)
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Allow struct and enum to contain inner attrs" [rust#84414](https://github.com/rust-lang/rust/pull/84414)
  - assigned to @**Vadim Petrochenkov** 
  - PR discussion progress seemed to stop [last year](https://github.com/rust-lang/rust/pull/84414#issuecomment-892884864)
  - is this waiting on `T-lang`?
- "Make specifying repr optional for fieldless enums" [rust#88203](https://github.com/rust-lang/rust/pull/88203)
  - Felix mentioned this PR for [a t-lang mtg proposal](https://github.com/rust-lang/lang-team/issues/134)
  - also waiting on `t-lang`?
- "Stabilize native library modifier syntax and the `whole-archive` modifier specifically" [rust#93901](https://github.com/rust-lang/rust/pull/93901)
  - @**Vadim Petrochenkov** nominated for T-compiler discussion 
  - PR is pending FCP request

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Make AST->HIR lowering incremental" [rust#88186](https://github.com/rust-lang/rust/pull/88186) (last review activity: 6 months ago)
  - pr author @**cjgillot** pushed changes and resolved conflicts
  - cc: assignee @**mw** 
- "RFC-2841: add codegen flag export symbols from executable" [rust#85673](https://github.com/rust-lang/rust/pull/85673) (last review activity: 6 months ago)]
  - pr seems to be ready for review (latest comments from last year)
  - review assigned to @**nikomatsakis** and @**bjorn3** 
- "Allow use of AddressSanitizer on Windows by linking to existing libraries" [rust#89369](https://github.com/rust-lang/rust/pull/89369) (last review activity: 4 months ago)
  - assigned to @**Wesley Wiser** 
  - latest discussion in T-compiler led to the conclusion that a Windows / ASAN expert was better suited to have a look here
  - [github comment](https://github.com/rust-lang/rust/pull/89369#issuecomment-1003001945) and ([zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-10-28.20.2354818/near/259397383))
  - checking if there's anything new since then
- "Improve `unsafe` diagnostic" [rust#91133](https://github.com/rust-lang/rust/pull/91133) (last review activity: 3 months ago)
  - cc: assigned reviewer @**Esteban Küber**
- "Change several HashMaps to IndexMap to improve incremental hashing performance" [rust#90253](https://github.com/rust-lang/rust/pull/90253) (last review activity: 2 months ago)
  - author replied to comments, pr now has updated perf results
  - cc: assigned reviewer @**cjgillot** 

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [67 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3A
T-compiler+label%3AP-high)
  - [47 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 43 P-high, 83 P-medium, 11 P-low regression-from-stabl
e-to-stable](https://github.com/rust-lang/rust/labels/regressi
on-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Binary crashes when statically linked with LTO turned on" [rust#94564](https://github.com/rust-lang/rust/issues/94564)
  - @**Hans Kratz** suggested maximum alert since LTO and static linking seems to be broken (zulip [topic](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.2394564.20Binary.20crashes.20when.20statically.20linked.20with.20LTO.20turne.E2.80.A6))
  - provides bisection pointing to `nightly-2021-02-14`. (see [comment](https://github.com/rust-lang/rust/issues/94564#issuecomment-1059915365)).

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-03-09](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-03-09.md)

A pretty smooth week. All three regressions were small, and two were isolated to rustdoc alone.

Triage done by **@pnkfelix**.
Revision range: [f0c4da49983aa699f715caf681e3154b445fb60b..10dccdc7fcbdc64ee9efe2c1ed975ab8c1d61287](https://perf.rust-lang.org/?start=f0c4da49983aa699f715caf681e3154b445fb60b&end=10dccdc7fcbdc64ee9efe2c1ed975ab8c1d61287&absolute=false&stat=instructions%3Au)

3 Regressions, 3 Improvements, 1 Mixed; 2 of them in rollups
30 Untriaged Pull Requests
53 comparisons made in total

#### Regressions

Rollup of 9 pull requests [#94541](https://github.com/rust-lang/rust/pull/94541)
- Arithmetic mean of relevant regressions: 1.5%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=8769f4ef2fe1efddd1f072485f97f568e7328f79&end=2f8d1a835b4e7feaf625f74d0d5cb9b84dbc845a&stat=instructions:u): 3.9% on `full` builds of `deeply-nested-async check`
- After looking at the performance data, it seems like the regressions to `deeply-nested-async` are isolated to some [slowdown in `check_mod_privacy`](https://perf.rust-lang.org/detailed-query.html?sort_idx=-11&commit=2f8d1a835b4e7feaf625f74d0d5cb9b84dbc845a&base_commit=8769f4ef2fe1efddd1f072485f97f568e7328f79&benchmark=deeply-nested-async-check&scenario=full).
- But AFAICT nothing in this rollup should have affected `check_mod_privacy`.
- Chalking this up to optimization noise; marked as triaged.

Support GATs in Rustdoc [#94009](https://github.com/rust-lang/rust/pull/94009)
- Arithmetic mean of relevant regressions: 0.8%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=40d3040ae19b8c43c0027bc6d3e9805e5ee5e0ee&end=6d7684101a51f1c375ec84aef5d2fbdeb214bbc2&stat=instructions:u): 1.1% on `full` builds of `ctfe-stress-4 doc`
- Already marked as triaged by rustdoc team; this change makes rustdoc track more data, which inevitably leads to perf regressions.

rustdoc: Stop textually replacing `Self` in doc links before resolving them [#93805](https://github.com/rust-lang/rust/pull/93805)
- Arithmetic mean of relevant regressions: 0.3%
- Arithmetic mean of all relevant changes: 0.3%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=0cbef1c6a7f4ee33cd41d91778544c5399f10f39&end=1661e4c7e0e68b4297aec095064d80566d4ea2b1&stat=instructions:u): 1.0% on `full` builds of `serde doc`
- rustdoc team did not expect a regression here.
- it looks like collect-intra-doc-links got slower. not clear why, though.
- slowdown was solely observed in `serde doc`. posted some theories and marked as triaged.

#### Improvements

- remove obligation dedup from `impl_or_trait_obligations` [#84944](https://github.com/rust-lang/rust/pull/84944)
- Introduce `ConstAllocation`. [#94597](https://github.com/rust-lang/rust/pull/94597)
- Rollup of 6 pull requests [#94761](https://github.com/rust-lang/rust/pull/94761)

#### Mixed

Reopen 91719 [#94570](https://github.com/rust-lang/rust/pull/94570)
- Arithmetic mean of relevant regressions: 0.5%
- Arithmetic mean of relevant improvements: -1.4%
- Arithmetic mean of all relevant changes: -1.0%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=047f9c4bc4e26df4f54c3c76af3e963782ed05e4&end=b4bf56cd66ca83e908fd43bde4c627f94b2a8a9f&stat=instructions:u): -6.9% on `full` builds of `deeply-nested-async check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=047f9c4bc4e26df4f54c3c76af3e963782ed05e4&end=b4bf56cd66ca83e908fd43bde4c627f94b2a8a9f&stat=instructions:u): 1.3% on `incr-full` builds of `piston-image opt`
- Already [triaged by workingjubilee](https://github.com/rust-lang/rust/pull/94570#issuecomment-1058879131) when they r+'ed it.

#### Nags requiring follow up

No nags requiring follow up

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- `no_mangle`/`used` static is only present in output when in reachable module" [rust#47384](https://github.com/rust-lang/rust/issues/47384)
  - @**inquisitivecrystal**  suggested nomination (zulip [comment](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.2347384.20.60no_mangle.60.2F.60used.60.20static.20is.20only.20present.20in.20output.20.E2.80.A6/near/274092228))
  - pointing to @**Josh Triplett**  [github comment](https://github.com/rust-lang/rust/issues/47384#issuecomment-1032974536)
  - the Wg-prio zulip topic [has more context](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.2347384.20.60no_mangle.60.2F.60used.60.20static.20is.20only.20present.20in.20output.20.E2.80.A6)
- "rustc hangs and takes increasing amounts of memory when compiling `json` crate as dependency" [rust#89647](https://github.com/rust-lang/rust/issues/89647) 
  - @**Nikita Popov**  self-assigned issue
  - ... and just closed it now as fixed by [rust#94764](https://github.com/rust-lang/rust/pull/94764)
- "rustc_apfloat: Double::mul_add_r panic with specific values" [rust#93225](https://github.com/rust-lang/rust/pull/93225) 
  - nominated by @**wesley wiser** for discussion ([comment](https://github.com/rust-lang/rust/pull/93225#issuecomment-1059211687))
- "Stabilize native library modifier syntax and the `whole-archive` modifier specifically" [rust#93901](https://github.com/rust-lang/rust/pull/93901)
  - @**Vadim Petrochenkov** nominated for T-compiler discussion 
  - PR is pending FCP request
  - (discussed in present meeting)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
