---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-03-31

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow <time:2022-04-01T12:00:00-04:00> (*non-standard time*) meeting robust incr-comp [calendar link](https://calendar.google.com/calendar/event?eid=NDdvYzM1aGlwMDh0azJkMjJmNjE1djkyOGggNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw&ctz=GMT+01:00)
  - [compiler-team#490](https://www.google.com/url?q=https%3A%2F%2Fgithub.com%2Frust-lang%2Fcompiler-team%2Fissues%2F490&sa=D&ust=1648138437659000&usg=AOvVaw2CMvohRMydwg3ZcX_Fscxb)
- Tomorrow <time:2022-04-01T09:00:00-04:00> Types Team: Planning/Deep-Dive meeting [calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA0MDFUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00)
- :loudspeaker: Next Thursday, April 7th, New Rust Release: 1.60 stable is out :loudspeaker: ([blog post](https://github.com/rust-lang/blog.rust-lang.org/blob/5f778be1d744787933faa9bf44d9d97d06b78c04/posts/2022-04-07-Rust-1.60.0.md))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "Add `yeet` experimentally" [compiler-team#501](https://github.com/rust-lang/compiler-team/issues/501) 
- Old MCPs (not seconded, take a look)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 9 months ago)
  -  "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 6 months ago)
  -  "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 3 months ago)
  -  "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 3 months ago)
  -  "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: 3 months ago)
  -  "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 2 months ago)
  -  "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  -  "Tracking issue for Consistent no-prelude attribute (RFC 501)" [rust#20561](https://github.com/rust-lang/rust/issues/20561) 
  -  "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026) 
- Things in FCP (make sure you're good with it)
  -  "Promote `x86_64-unknown-none` to Tier 2" [compiler-team#499](https://github.com/rust-lang/compiler-team/issues/499) 
  -  "Add support for MIR opt unit tests via a new `-Z` flag" [compiler-team#502](https://github.com/rust-lang/compiler-team/issues/502) 
- Accepted MCPs
  -  "Implement `Clone` for generators" [compiler-team#494](https://github.com/rust-lang/compiler-team/issues/494) 
- Finalized FCPs (disposition merge)
  -  "Stabilize native library modifier syntax and the `whole-archive` modifier specifically" [rust#93901](https://github.com/rust-lang/rust/pull/93901) 
  -  "Lazy type-alias-impl-trait take two" [rust#94081](https://github.com/rust-lang/rust/pull/94081)
  
### WG checkins

- @_*WG-traits* (generic work of the WG) by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/fS5Qiyo3Ta6F8S7QNxg5xA#WG-checkins)):
> Checkin text

- @_*wg-incr-comp* by @**pnkfelix** @**Wesley Wiser** ([previous checkin](https://hackmd.io/MDQRCqHWSCG1HuHgHC847g#WG-checkins)):
> Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix ice when error reporting recursion errors" [rust#94391](https://github.com/rust-lang/rust/pull/94391)
  - Fixes [#90319](https://github.com/rust-lang/rust/issues/90319), [#92148](https://github.com/rust-lang/rust/issues/92148) and [#93955](https://github.com/rust-lang/rust/issues/93955)
  - @**Esteban Küber** reviewed and nominated for beta-backport (regression is affecting a couple of past stable releases)
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No new PRs waiting on T-compiler

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Support #[global_allocator] without the allocator shim" [rust#86844](https://github.com/rust-lang/rust/pull/86844) (last review activity: 5 months ago)
  - cc: @**pnkfelix**
- "Specialize infinite-type "insert some indirection" suggestion for Option" [rust#91416](https://github.com/rust-lang/rust/pull/91416) (last review activity: about 41 days ago)
  - cc: @**Esteban Küber** 
- "[perf only] Test Rust with opaque pointers" [rust#94214](https://github.com/rust-lang/rust/pull/94214) (last review activity: about 35 days ago)
  - cc: @**eddyb** 
- "Remove all json handling from rustc_serialize" [rust#85993](https://github.com/rust-lang/rust/pull/85993) (last review activity: about 33 days ago)
  - assigned to @**Aaron Hill** 
  - (a few comments also from various people)
- "Add `special_module_name` lint" [rust#94467](https://github.com/rust-lang/rust/pull/94467) (last review activity: about 29 days ago)
  - highfive bot assigned to @**Matthew Jasper** 
  - probably needs a reviewer
- "Create 2024 edition" [rust#94461](https://github.com/rust-lang/rust/pull/94461) (last review activity: about 29 days ago)
  - @**mw** assigned to @**pnkfelix** :-)
- "create `-Z force-allocator-shim` codegen option" [rust#94389](https://github.com/rust-lang/rust/pull/94389) (last review activity: about 29 days ago)
  - @**pnkfelix** self-assigned to figure out to push #94389 or [#86844](https://github.com/rust-lang/rust/pull/86844) forward
- "Handle generic bounds in a uniform way in HIR" [rust#93803](https://github.com/rust-lang/rust/pull/93803) (last review activity: about 37 days ago)
  - cc: @**Esteban Küber** 
- "Also cache the stable hash of interned Predicates" [rust#94487](https://github.com/rust-lang/rust/pull/94487) (last review activity: about 29 days ago)
  - @**oli** is it waiting for review? do you need a reviewer?
  - @**mw**  added self to cc ([see comment](https://github.com/rust-lang/rust/pull/94487#issuecomment-1058152662=))

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [45 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 1 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 38 P-high, 82 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No new `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "No more auto-unrolling starting with LLVM 14" [rust#94847](https://github.com/rust-lang/rust/issues/94847)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2022-03-30](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-03-30.md)

A mixed week: some minor regressions, but things overall improved for instruction counts.

Max RSS has gone up slightly over the past
[month](https://perf.rust-lang.org/?start=2022-03-01&end=2022-03-30&kind=percentfromfirst&stat=max-rss),
on the order of 0.5% regression according to benchmark summary. pnkfelix is
following up on that with rustc-perf team on
[zulip](https://rust-lang.zulipchat.com/#narrow/stream/247081-t-compiler.2Fperformance/topic/max-rss.20over.202022-03/near/277194155)

Triage done by **@pnkfelix**.
Revision range: [3ea44938e21f0de8ae7d4f6399a8a30f97867c70..3e7514670db841a7f0d7656f3b13b1c8b2c11599](https://perf.rust-lang.org/?start=3ea44938e21f0de8ae7d4f6399a8a30f97867c70&end=3e7514670db841a7f0d7656f3b13b1c8b2c11599&absolute=false&stat=instructions%3Au)

4 Regressions, 5 Improvements, 4 Mixed; 3 of them in rollups
30 Untriaged Pull Requests
63 comparisons made in total

#### Regressions

Rollup of 5 pull requests [#95250](https://github.com/rust-lang/rust/pull/95250)
- Arithmetic mean of relevant regressions: 2.2%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=9f4dc0b4db892271cd0dada6e072775b5b5d6b1e&end=37b55c8a0cafdb60b9168da34f904acc70157df8&stat=instructions:u): 11.1% on `full` builds of `cargo-0.60.0 doc`
- [Already triaged](https://github.com/rust-lang/rust/pull/95250#issuecomment-1077821698) by oli-obk.
- it is solely in rustdoc, and oli-obk has a plan to address it in the long term.

Properly track `ImplObligations` [#91030](https://github.com/rust-lang/rust/pull/91030)
- Arithmetic mean of relevant regressions: 1.9%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=600a80dedf71ce02e778e59f4884866c3030c819&end=d2df372bca13bb60979c909660e69f2451630e81&stat=instructions:u): 3.8% on `full` builds of `projection-caching check`
- [triaged](https://github.com/rust-lang/rust/pull/91030#issuecomment-1083360210); this was anticipated.
- The only primary regression was to diesel doc, and the regressions are justified by the improvement to the diagnostics.

Separate const prop lints from optimizations [#94934](https://github.com/rust-lang/rust/pull/94934)
- Arithmetic mean of relevant regressions: 1.2%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=4b133a7e27c32e822e9ff774e4436f184f5a9752&end=63b8f01bb5ca277e7df8d7efe094ed4244c1790c&stat=instructions:u): 2.1% on `incr-full` builds of `unicode_normalization opt`
- [Already triaged](https://github.com/rust-lang/rust/pull/94934#issuecomment-1078950067) by oli-obk.
- In short: this was expected, becaused we are doing const-prop twice now.
- (The end-goal is stop optimizations from changing diagnostics. This PR is a step towards that goal.)

Rollup of 4 pull requests [#95448](https://github.com/rust-lang/rust/pull/95448)
- Arithmetic mean of relevant regressions: 1.5%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5e1d19d30723c287f049662474021f2b9a9894ce&end=9c06e1ba47e1077725a950e0b5d1870a89c8b536&stat=instructions:u): 2.5% on `incr-patched: io error 6144` builds of `issue-46449 debug`
- [triaged](https://github.com/rust-lang/rust/pull/95448#issuecomment-1083461959)
- The only primary benchmark impacted by this was `unicode-normalization-0.1.19`, and that only saw a 0.50% regression on incr-patched: println and a 0.36% regression on full build. We can ignore that.
- The only secondary benchmark impacted was issue-46449, which is trying to catch regression of quadratic blowup, not minor regressions.

#### Improvements

- Introduce `TtParser` [#95159](https://github.com/rust-lang/rust/pull/95159)
- Overlap inherent impls [#95082](https://github.com/rust-lang/rust/pull/95082)
- resolve: Do not build expensive suggestions if they are not actually used [#95255](https://github.com/rust-lang/rust/pull/95255)
- Fix perf issue for auto trait selection [#95333](https://github.com/rust-lang/rust/pull/95333)
- Remove header field from clean::Function [#95096](https://github.com/rust-lang/rust/pull/95096)


#### Mixed

Change Thir to lazily create constants [#94876](https://github.com/rust-lang/rust/pull/94876)
- Arithmetic mean of relevant regressions: 1.6%
- Arithmetic mean of relevant improvements: -1.0%
- Arithmetic mean of all relevant changes: -0.3%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=d2df372bca13bb60979c909660e69f2451630e81&end=8d8135f003b35c3e109d013b2bed9ee9496da615&stat=instructions:u): -2.8% on `full` builds of `keccak check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d2df372bca13bb60979c909660e69f2451630e81&end=8d8135f003b35c3e109d013b2bed9ee9496da615&stat=instructions:u): 3.5% on `full` builds of `tuple-stress check`
- [Triaged](https://github.com/rust-lang/rust/pull/94876#issuecomment-1083486520).
- The changes to the primary benchmarks are almost universally green here.
- The secondary benchmarks are more of a mixed bag, but I think we can accept a 3.5% regression on tuple-stress given the overall benefits.

More macro expansion optimizations [#95259](https://github.com/rust-lang/rust/pull/95259)
- Arithmetic mean of relevant improvements: -1.5%
- Arithmetic mean of all relevant changes: -1.1%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=4ce257ff198d23bdf14e956fbf2fe0fed297201f&end=8a0c55046c7092d9e019dad03729e8d32e38df72&stat=instructions:u): -2.0% on `incr-unchanged` builds of `diesel check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=4ce257ff198d23bdf14e956fbf2fe0fed297201f&end=8a0c55046c7092d9e019dad03729e8d32e38df72&stat=instructions:u): 0.4% on `incr-full` builds of `unicode-normalization-0.1.19 opt`
- [Already triaged](https://github.com/rust-lang/rust/pull/95259#issuecomment-1079476641) by nnethercote
- The perf wins clearly outweigh the losses here.

Rollup of 5 pull requests [#95382](https://github.com/rust-lang/rust/pull/95382)
- Arithmetic mean of relevant regressions: 2.2%
- Arithmetic mean of relevant improvements: -0.4%
- Arithmetic mean of all relevant changes: 1.2%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=ab0c2e18dceb7140626a158affb983ae81039bd0&end=62523045ec681ee8c2ecb8d395fbcaccf336284b&stat=instructions:u): -0.4% on `incr-unchanged` builds of `deeply-nested-multi check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ab0c2e18dceb7140626a158affb983ae81039bd0&end=62523045ec681ee8c2ecb8d395fbcaccf336284b&stat=instructions:u): 3.2% on `full` builds of `await-call-tree check`
- [Left comment](https://github.com/rust-lang/rust/pull/95382#issuecomment-1083505358)
- Changes to the primary benchmarks seem like a wash and probably ignorable (0.33% worse for unicode-normalization-0.1.19, 0.33% better for ripgrep-13.0.0).
- Re secondary benchmarks: 3% worse for await-call-tree (on six scenarios), which is more concerning. I assume PR #95120 is cause.
- Leaving as untriaged.

Lazy type-alias-impl-trait take two [#94081](https://github.com/rust-lang/rust/pull/94081)
- Arithmetic mean of relevant regressions: 0.5%
- Arithmetic mean of relevant improvements: -0.5%
- Arithmetic mean of all relevant changes: -0.3%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=1446d17b8f4bd3ff8dbfb129a7674165e06f9f4c&end=f132bcf3bdf6d3ff9be7d02e8d0088b99007cd5e&stat=instructions:u): -1.0% on `incr-full` builds of `wg-grammar check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1446d17b8f4bd3ff8dbfb129a7674165e06f9f4c&end=f132bcf3bdf6d3ff9be7d02e8d0088b99007cd5e&stat=instructions:u): 0.8% on `full` builds of `projection-caching check`
- [triaged](https://github.com/rust-lang/rust/pull/94081#issuecomment-1083519743)
- The actual performance changes indicate this ended up a win overall, based on the amount of green.

#### Nags requiring follow up

None

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
