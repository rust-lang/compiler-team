---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-03-17

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow <time:2022-03-18T10:00:00-04:00> Meeting "backlog bonanza", [link](https://calendar.google.com/calendar/event?eid=NnJzMWo3MGIxYjJjaGFkZjI0MmJ2Nmg2c2QgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw&ctz=UTC)
  - Zulip chat from [previous meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/backlog.20bonanza.20prep)
  - [Backlog Bonanza 2022-03-16](https://hackmd.io/SlTjJLFLQA6JW6S43RVbzg?view)
  - [HackMD live document](https://hackmd.io/h_tyzNEKS_Kc2OY_rSm28g)
- Tomorrow <time:2022-03-18T14:00:00+01:00> Types Team: Planning/Deep-Dive meeting ([calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTQgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw&ctz=GMT+01:00))
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
  -  "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: about 55 days ago)
- Pending FCP requests (check your boxes!)
  -  "Tracking issue for Consistent no-prelude attribute (RFC 501)" [rust#20561](https://github.com/rust-lang/rust/issues/20561#issuecomment-1059258740)
  -  "Stabilize native library modifier syntax and the `whole-archive` modifier specifically" [rust#93901](https://github.com/rust-lang/rust/pull/93901#issuecomment-1043124526) 
- Things in FCP (make sure you're good with it)
  -  "Increase the minimum linux-gnu versions" [compiler-team#493](https://github.com/rust-lang/compiler-team/issues/493) 
- Accepted MCPs
  -  "allow arbitrary inherent impls in the standard library" [compiler-team#487](https://github.com/rust-lang/compiler-team/issues/487) 
- Finalized FCPs (disposition merge)
  -  "Tracking Issue for RFC #2972: Constrained Naked Functions " [rust#90957](https://github.com/rust-lang/rust/issues/90957) 
  -  "Stabilize ADX target feature" [rust#93745](https://github.com/rust-lang/rust/pull/93745) 
  -  "Stabilize const_fn_fn_ptr_basics, const_fn_trait_bound, and const_impl_trait" [rust#93827](https://github.com/rust-lang/rust/pull/93827)

### WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/KW_vTfxFS2Ci4aLcQlF0mA#WG-checkins))
> @**Esteban Küber** reports: Nothing notable, a bunch of smaller improvements as usual.

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/czhRhn0rSaib7Pnr5ZvDUg?view#WG-checkins))
> #### Most notable changes
>
>- Edit glossary [#1302](https://github.com/rust-lang/rustc-dev-guide/pull/1302)
>- Edit "Queries" chapter [#1301](https://github.com/rust-lang/rustc-dev-guide/pull/1301)
>
>#### Most notable WIPs
>
>- rewrite bootstrapping stages [#1327](https://github.com/rust-lang/rustc-dev-guide/pull/1327)
>- Document ErrorGuaranteed [#1316](https://github.com/rust-lang/rustc-dev-guide/pull/1316)
>- Edit "What the compiler does to your code" [#1306](https://github.com/rust-lang/rustc-dev-guide/pull/1306)
>- Describe Type Alias Impl Trait (TAIT) Inference Algorithm [#1297](https://github.com/rust-lang/rustc-dev-guide/pull/1297)
>- Extend debugging llvm section [#1290](https://github.com/rust-lang/rustc-dev-guide/pull/1290)
>- Added detail to codegen section [#1216](https://github.com/rust-lang/rustc-dev-guide/pull/1216)
>- Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)
>- Explain the new valtree system for type level constants. [#1097](https://github.com/rust-lang/rustc-dev-guide/pull/1097)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Revert accidental stabilization" [rust#94805](https://github.com/rust-lang/rust/pull/94805) 
  - nominated by @**oli**
  - Fixes `P-high` [rust#94804](https://github.com/rust-lang/rust/issues/94804)
  - r'ed by @**pnkfelix**
  - (@**apiraino** relabeled to `t-libs`, unsure if correct)
- :beta: "relax `suspicious_auto_trait_impls` lint wrt lifetimes" [rust#94925](https://github.com/rust-lang/rust/pull/94925)
  - PR authored by @**lcnr**
  - fixes this comment from issue [rust#93367](https://github.com/rust-lang/rust/issues/93367#issuecomment-1063993489)
- :stable: "Revert accidental stabilization" [rust#94805](https://github.com/rust-lang/rust/pull/94805) 
  - Same T-libs PR also nominated for beta backport

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on T-compiler

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Enforce that `closure: 'a` requires that `closure_ret_ty: 'a` holds" [rust#84385](https://github.com/rust-lang/rust/pull/84385) (last review activity: 10 months ago)
  - assigned to and reviewed by @**nikomatsakis**  
  - @**oli** flipped the flag to `s-waiting-on-review`
  - can remove label `s-waiting-on-author`, correct? (cc: @**Aaron Hill**)
- "Mir-Opt for copying enums with large discrepancies" [rust#85158](https://github.com/rust-lang/rust/pull/85158) (last review activity: 4 months ago)
  - cc: @**wesley wiser** to r+
- "Improve `unsafe` diagnostic" [rust#91133](https://github.com/rust-lang/rust/pull/91133) (last review activity: 3 months ago)
  - cc: @**Esteban Küber**
- "Add debug assertions to some unsafe functions" [rust#92686](https://github.com/rust-lang/rust/pull/92686) (last review activity: 2 months ago)
  - first round of review from @**Josh Triplett** and @**The 8472|239181** 

# Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-co
mpiler+label%3AP-critical+no%3Aassignee)
- [64 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [47 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from
-stable-to-nightly)
- [1 P-critical, 43 P-high, 82 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Binary crashes when statically linked with LTO turned on" [rust#94564](https://github.com/rust-lang/rust/issues/94564) 
  - Issue has been pinned to reduce duplicates
  - bisection pointing to commit ([comment](https://github.com/rust-lang/rust/issues/94998#issuecomment-1069332706))
  - assigned to @**pnkfelix**
- "assertion failed: !value.has_escaping_bound_vars(): ICE when compiling crate `tracing-subscriber v0.3.9`" [rust#94998](https://github.com/rust-lang/rust/issues/94998)
  - issue has been discussed [on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/crt-static.20.2B.20LTO.20yields.20crash.20.2394564) ([comments on github](https://github.com/rust-lang/rust/issues/94564#issuecomment-1064287368))
  - @**Michael Goulet (compiler-errors)** self-assigned

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "No more auto-unrolling starting with LLVM 14" [rust#94847](https://github.com/rust-lang/rust/issues/94847)
  - bisection at [this comment](https://github.com/rust-lang/rust/issues/94847#issuecomment-1065138620)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-03-15](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-03-15.md)

Largely a quiet week. The perf improvement highlight is the use of real world crates such as `syn`, `cargo`, and `serde` in the collecting of profile guided optimization (PGO) profiles for LLVM. Previously only `libcore` was used for LLVM, though rustc PGO had more crates involved. This led to some decent improvement in compilation of real world crates (upwards of 5.5%). 

On the regression side, the regressions were all largely small but contained inside of rollups making them hard to diagnose and correct. The perf team continues to work on process improvements that make changes to the compiler land through CI quickly while minimizing perf regressions that can sneak through.

Triage done by **@rylev**.
Revision range: [10dccdc7fcbdc64ee9efe2c1ed975ab8c1d61287..3ba1ebea122238d1a5c613deb1bf60ce24bd8fd8](https://perf.rust-lang.org/?start=10dccdc7fcbdc64ee9efe2c1ed975ab8c1d61287&end=3ba1ebea122238d1a5c613deb1bf60ce24bd8fd8&absolute=false&stat=instructions%3Au)

2 Regressions, 3 Improvements, 3 Mixed; 3 of them in rollups
27 Untriaged Pull Requests
42 comparisons made in total

#### Regressions

Rollup of 8 pull requests [#94814](https://github.com/rust-lang/rust/pull/94814)
- Arithmetic mean of relevant regressions: 2.1%
- Arithmetic mean of all relevant changes: 1.8%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ba14a836c7038da21f5e102aacc7e6d5964f79a6&end=5f4e0677190b82e61dc507e3e72caf89da8e5e28&stat=instructions:u): 16.8% on `incr-patched: println` builds of `cargo opt`
* Mostly an extremely large regression in compiling optimized builds of `cargo` in an incremental patch scenario.
* Looks like in the impacted test case the regression is largely in codegen
* [#94809](https://github.com/rust-lang/rust/pull/94809) is the only change that meaningful touches codegen and luckily testing whether reverting the change makes a difference should be trivial to do. Left a [comment](https://github.com/rust-lang/rust/pull/94814#issuecomment-1067945114) here.


Rollup of 7 pull requests [#94824](https://github.com/rust-lang/rust/pull/94824)
- Arithmetic mean of relevant regressions: 0.5%
- Arithmetic mean of relevant improvements: -0.3%
- Arithmetic mean of all relevant changes: 0.4%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5f4e0677190b82e61dc507e3e72caf89da8e5e28&end=352e621368c31d7b4a6362e081586cdb931ba020&stat=instructions:u): 1.5% on `incr-unchanged` builds of `unicode_normalization check`
* Unfortunately there are many PRs that could plausibly contribute to the performance change: 
	* [#93950](https://github.com/rust-lang/rust/pull/93950) (Use modern formatting for format! macros)
 	* [#94274](https://github.com/rust-lang/rust/pull/94274) (Treat unstable lints as unknown)
 	* [#94368](https://github.com/rust-lang/rust/pull/94368) ([1/2] Implement macro meta-variable expressions)
* The overall regression seems low enough that I don't think we need to consider reverting though. Unfortunately we don't have a good process for determining the culprit in cases like this where many PRs seem somewhat equally likely to be the cause. 
* Left a comment as such [here](https://github.com/rust-lang/rust/pull/94824#issuecomment-1067957978)


#### Improvements

- Improve `AdtDef` interning. [#94733](https://github.com/rust-lang/rust/pull/94733)
- Queryify `is_doc_hidden` [#94897](https://github.com/rust-lang/rust/pull/94897)
- Gather LLVM PGO profiles from `rustc-perf` suite on real-world crates 

#### Mixed

Treat constant values as mir::ConstantKind::Val [#94059](https://github.com/rust-lang/rust/pull/94059)
- Arithmetic mean of relevant regressions: 1.3%
- Arithmetic mean of relevant improvements: -1.0%
- Arithmetic mean of all relevant changes: -0.9%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=01ad0ad653d57a5ccecffb08aff3c5564012f133&end=d7b282b886472413a26ef22c848eda0499d12cd3&stat=instructions:u): -6.6% on `full` builds of `ctfe-stress-4 opt`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=01ad0ad653d57a5ccecffb08aff3c5564012f133&end=d7b282b886472413a26ef22c848eda0499d12cd3&stat=instructions:u): 1.6% on `full` builds of `keccak check`
* Since the regressions are all in secondary benchmarks and relatively small, we consider this to be an improvement rather than a mixed result.


Change several HashMaps to IndexMap to improve incremental hashing performance [#90253](https://github.com/rust-lang/rust/pull/90253)
- Arithmetic mean of relevant regressions: 0.3%
- Arithmetic mean of relevant improvements: -0.8%
- Arithmetic mean of all relevant changes: -0.2%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=af8604faddc44b27a59d1a719ff6ceca8bc145eb&end=c9b45e601065c3fb71a4f67481e912391d075621&stat=instructions:u): -7.5% on `incr-full` builds of `clap-rs check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=af8604faddc44b27a59d1a719ff6ceca8bc145eb&end=c9b45e601065c3fb71a4f67481e912391d075621&stat=instructions:u): 0.6% on `full` builds of `deep-vector check`
* Perf was run previously and it was found that there was a large improvements to clap-rs but otherwise an overall performance wash
* This story has not really changed, so the PR was marked [as triaged](https://github.com/rust-lang/rust/pull/90253#issuecomment-1067975046)


Use MaybeUninit in VecDeque to remove the undefined behavior of slice [#94472](https://github.com/rust-lang/rust/pull/94472)
- Arithmetic mean of relevant regressions: 0.9%
- Arithmetic mean of all relevant changes: -2.0%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=c9b45e601065c3fb71a4f67481e912391d075621&end=335ffbfa547df94ac236f5c56130cecf99c8d82b&stat=instructions:u): -10.7% on `incr-patched: println` builds of `tokio-webpush-simple opt`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c9b45e601065c3fb71a4f67481e912391d075621&end=335ffbfa547df94ac236f5c56130cecf99c8d82b&stat=instructions:u): 1.1% on `full` builds of `tokio-webpush-simple opt`
* Dominated by a large improvement in the `tokio-webpush-simple opt incremental patch` test case, the micro benchmarks indicate that this is largely a performance wash (most benchmarks don't seem to show statistical difference and those that do are a mix of small regressions and improvements)
* Given all this, the PR was marked [as triaged](https://github.com/rust-lang/rust/pull/94472#issuecomment-1067983132).


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "`no_mangle`/`used` static is only present in output when in reachable module" [rust#47384](https://github.com/rust-lang/rust/issues/47384) 
  - @**inquisitivecrystal**  suggested nomination (zulip [comment](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.2347384.20.60no_mangle.60.2F.60used.60.20static.20is.20only.20present.20in.20output.20.E2.80.A6/near/274092228))
  - pointing to @**Josh Triplett**  [github comment](https://github.com/rust-lang/rust/issues/47384#issuecomment-1032974536)
  - the Wg-prio zulip topic [has more context](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.2347384.20.60no_mangle.60.2F.60used.60.20static.20is.20only.20present.20in.20output.20.E2.80.A6)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
