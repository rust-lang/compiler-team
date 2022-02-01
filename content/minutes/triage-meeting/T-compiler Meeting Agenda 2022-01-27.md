---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-01-27

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow (Friday at <time:2022-01-28T10:00:00-05:00>) we have our [Steering Meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)
  - [Meeting proposal](https://github.com/rust-lang/compiler-team/issues/479): Run down `P-high` issues list
  - Related blog post: https://blog.rust-lang.org/inside-rust/2022/01/18/jan-steering-cycle.html 
  - Document prepared by Felix: https://hackmd.io/YY3u0dkURtiQHDVX0hEImA?view
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- (TIP) strive to include a *reason* when you do `@bors retry`, even if you think its obvious from context. Why? Because the context absent on https://bors.rust-lang.org/retry_log/rust, but it *will* show your comment. ([related zulip discussion](https://zulip-archive.rust-lang.org/stream/131828-t-compiler/topic/bors.3A.20stop.20prioritizing.20old.20PRs.20over.20new.20PRs.html#267617921))

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 6 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 3 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: about 48 days ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: about 48 days ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: about 31 days ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Stabilize `-Z instrument-coverage` as `-C instrument-coverage`" [rust#90132](https://github.com/rust-lang/rust/pull/90132) 
- Accepted MCPs
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) 
  - "Adding known bugs to test cases" [compiler-team#476](https://github.com/rust-lang/compiler-team/issues/476) 
  - "Introduce a new linter for diagnostic meesages" [compiler-team#478](https://github.com/rust-lang/compiler-team/issues/478) 
- Finalized FCPs (disposition merge)
  - "Change location of where clause on GATs" [rust#90076](https://github.com/rust-lang/rust/pull/90076) 
  - "Stabilize `-Z print-link-args` as `--print link-args`" [rust#91606](https://github.com/rust-lang/rust/pull/91606)

### WG checkins

- @_*WG-rls2.0* by @**matklad** ([previous checkin](https://hackmd.io/N_WW5tZqTLWouaed6cCjxg#WG-checkins))
> Checkin text

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/HYT7NJFwS8q8Xp1h_CmfTQ#WG-checkins))
> Nothing to report this cycle.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Update LLVM submodule" [rust#93081](https://github.com/rust-lang/rust/pull/93081)
  - nominated by @**simulacrum** (see [comment](https://github.com/rust-lang/rust/pull/93081#issuecomment-1018684296)) as it fixes a mis-compilation on aarch64-unknown-linux-gnu introduced in 1.57 
  - also nominated for stable backport
- :beta: "Use error-on-mismatch policy for PAuth module flags." [rust#93269](https://github.com/rust-lang/rust/pull/93269) 
  - Fixes [rust#92885](https://github.com/rust-lang/rust/issues/92885), a `P-high` regression affecting building on arm64
  - Nominated by @**pnkfelix** since this fixes a beta-to-stable regression
- :stable: "Update LLVM submodule" [rust#93081](https://github.com/rust-lang/rust/pull/93081)

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

## Oldest PRs waiting for review

[List of PRs `s-waiting-for-review`](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "might_permit_raw_init: also check arrays (take two)" [rust#87041](https://github.com/rust-lang/rust/pull/87041) (last review activity: 6 months ago)
  - opened by @**Aaron Hill**
  - assigned to @**oli**
  - PR now seems ready again for review
  - seems interesting for [rust#66151](https://github.com/rust-lang/rust/issues/66151)
- "When encountering a binding that could be a const or unit variant, suggest the right path" [rust#90988](https://github.com/rust-lang/rust/pull/90988) (last review activity: 2 months ago)
  - PR author @**estebank**
  - rust-highfive assigned to @**Matthew Jasper**
  - PR now shows conflicts due to upstream changes
- "More informative error message for E0015" [rust#90532](https://github.com/rust-lang/rust/pull/90532) (last review activity: 2 months ago)
  - pr improves diagnostics (see [rust#92380](https://github.com/rust-lang/rust/issues/92380))
  - pr author @**fee1-dead**  
  - review assigned to @**oli** 
- "Try to normalize associated types before processing obligations" [rust#90887](https://github.com/rust-lang/rust/pull/90887) (last review activity: 2 months ago)
  - pr author @**Jack Huey** 
  - assigned to @**nikomatsakis** 
  - [last comment](https://github.com/rust-lang/rust/pull/90887#issuecomment-973164844) from author hints that perf regressions are triaged
- "Store hir_id_to_def_id in OwnerNodes." [rust#91112](https://github.com/rust-lang/rust/pull/91112) (last review activity: 2 months ago)
  - pr author @**cjgillot**
  - seems to be part of [rust#88186](https://github.com/rust-lang/rust/pull/88186)
  - no assignee to far
  - latest [perf run](https://github.com/rust-lang/rust/pull/91112#issuecomment-986269024) shows mixed results with significant increase in instruction count. Does this perf benchmark needs triaging?  

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [76 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [48 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 50 P-high, 81 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Miscompilation where binding only some fields leaks the others" [rust#90752](https://github.com/rust-lang/rust/issues/90752)
  - Should be fixed in 1.58.x (see following note)
- "Compile-time regression between 1.56.1 and 1.57.0 for deeply nested decorator types" [rust#91598](https://github.com/rust-lang/rust/issues/91598)
  - Should be fixed in 1.58.x (see following note), commenter reports to see it fixed in 1.59

- A note about #90752 and #91598: I (@_apiraino) tried to gather input from issue authors (and other people affected) if these issues are solved on their end, so we can move to closing them. Latest comments seems to indicate that in general people are happy, though not always clear if they can still reproduce the original situation. How to best handle this? Can we close them or should we wait for a little bit more?

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Regression in async generator and fmt internals: loss of `Send`" [rust#93274](https://github.com/rust-lang/rust/issues/93274)
  - opened by @**Daniel Henry-Mantilla|232018** 
  - @**lqd** provides some analysis (see [comment](https://github.com/rust-lang/rust/issues/93274#issuecomment-1020710662)), seems to have regressed in [rust#91359](https://github.com/rust-lang/rust/pull/91359)

## Performance logs

### [2022-01-26 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-01-25.md)

An awesome week. There was some bits of noise from PR [#91032](https://github.com/rust-lang/rust/issues/91032) that landed and then had to be backed out (and may soon land again), and we continue to wrestle with how to classify which things to include in rollup PR's. But overall there were some very real wins to the compiler's performance, and it is definitely reflected in the [total bootstrap time graph](https://perf.rust-lang.org/bootstrap.html). Great job!

Triage done by **@pnkfelix**.
Revision range: [7bc7be860f99f4a40d45b0f74e2d01b02e072357..c54dfee65126a0ac385d55389a316e89095a0713](https://perf.rust-lang.org/?start=7bc7be860f99f4a40d45b0f74e2d01b02e072357&end=c54dfee65126a0ac385d55389a316e89095a0713&absolute=false&stat=instructions%3Au)

4 Regressions, 5 Improvements, 4 Mixed; 3 of them in rollups

29 comparisons made in total
30 Untriaged Pull Requests

#### Regressions

Update some rustc dependencies to deduplicate them [#92896](https://github.com/rust-lang/rust/issues/92896)
- Average relevant regression: 0.5%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=0bcacb391b28460f5a50fd627f01f670dfcfc7cc&end=84e918971d643c6a33067d5125214ab800ce5307&stat=instructions:u): 0.6% on `full` builds of `match-stress-enum check`
- 6 of the 7 significant relevant regresions were to variants of `match-stress-enum`.
- PR author guesses that it could be noise injected via one of the dependency updates, specifically hashbrown 0.11.0 to 0.11.2.
- Left it untriaged for now (I would like to circle back and check whether there's any way to check that hypothesis; but if it goes untouched for a week, then we might just rubber-stamp it as triaged).

Disable drop range tracking in generators [#93165](https://github.com/rust-lang/rust/issues/93165)
- Average relevant regression: 284.5%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=10c4c4afec6dfc483af6efb7019941bab9a51a29&end=d13e8dd41d44a73664943169d5b7fe39b22c449f&stat=instructions:u): 879.2% on `full` builds of `deeply-nested-async check`
- This regression was expected; it is a result of backing out PR [#91032](https://github.com/rust-lang/rust/issues/91032), which was included in rollup PR [#93138](https://github.com/rust-lang/rust/issues/93138), but was reverted due to correctness concerns (discussed under "Mixed" section below).

Revert "Do not hash leading zero bytes of i64 numbers in Sip128 hasher" [#93014](https://github.com/rust-lang/rust/issues/93014)
- Average relevant regression: 1.5%
- Average relevant improvement: -0.7%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ef119d704d87a05435ea97ef4161529142313a9b&end=d2dc425721554348d4ed427f7eb89cdb49efefdb&stat=instructions:u): 7.9% on `incr-full` builds of `clap-rs check`
- This regression was expected; this PR reverts a perf optimization to restore correctness.

Store a `Symbol` instead of an `Ident` in `AssocItem` [#93095](https://github.com/rust-lang/rust/issues/93095)
- Average relevant regression: 0.8%
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=92ed8747f255b2695c33b64982e6959711a72cb9&end=8cdb3cd94efece1e17cbd8f6edb1dc1a482779a0&stat=instructions:u): 2.1% on `incr-patched: compile one` builds of `regex check`
- This PR was already triaged: it is a correctness fix for incremental compilation, and the lesser of two evils (when compared to PR [#92837](https://github.com/rust-lang/rust/pull/92837)).

#### Improvements

- Improve capacity estimation in Vec::from_iter [#92138](https://github.com/rust-lang/rust/issues/92138)
- Make `Decodable` and `Decoder` infallible. [#93066](https://github.com/rust-lang/rust/issues/93066)
- Use `indexmap` to avoid sorting `LocalDefId`s [#90842](https://github.com/rust-lang/rust/issues/90842)
- Rustdoc: remove ListAttributesIter and use impl Iterator instead [#92353](https://github.com/rust-lang/rust/issues/92353)
- Rollup of 10 pull requests [#93069](https://github.com/rust-lang/rust/issues/93069)

#### Mixed

Rollup of 17 pull requests [#93138](https://github.com/rust-lang/rust/issues/93138)
- Average relevant regression: 1.6%
- Average relevant improvement: -57.9%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=777bb86bcdbc568be7cff6eeeaaf81a89b4aa50b&end=523be2e05da322daaecf1ecc8f2c0d625f5f46e3&stat=instructions:u): -89.5% on `full` builds of `deeply-nested-async check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=777bb86bcdbc568be7cff6eeeaaf81a89b4aa50b&end=523be2e05da322daaecf1ecc8f2c0d625f5f46e3&stat=instructions:u): 2.6% on `full` builds of `await-call-tree check`
- The noted improvement from this roll-up was due to the inclusion of PR [#91032](https://github.com/rust-lang/rust/pull/91032), "Introduce drop range tracking to generator interior analysis".
- PR [#91032](https://github.com/rust-lang/rust/pull/91032) injected a family of ICEs, such as issue [#93161](https://github.com/rust-lang/rust/issues/93161), so the feature it added is being disabled.
- As for the improvement: The PR author, @**eholk**, made a [note](https://github.com/rust-lang/rust/pull/93138#issuecomment-1019567349) hypothesizing that the improvement to deeply-nested-async may be an artifact of how much is pruned from the generator type. (This may be a sign of a overly artificial benchmark; I wrote a [comment](https://github.com/rust-lang/rust/pull/93138#issuecomment-1021820785) asking for more clarification there.)

Emit simpler code from format_args [#91359](https://github.com/rust-lang/rust/issues/91359)
- Average relevant regression: 1.2%
- Average relevant improvement: -0.7%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=523be2e05da322daaecf1ecc8f2c0d625f5f46e3&end=0bcacb391b28460f5a50fd627f01f670dfcfc7cc&stat=instructions:u): -2.2% on `full` builds of `cranelift-codegen check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=523be2e05da322daaecf1ecc8f2c0d625f5f46e3&end=0bcacb391b28460f5a50fd627f01f670dfcfc7cc&stat=instructions:u): 3.0% on `full` builds of `html5ever opt`
- These performance differences were anticipated ahead of time. @**simulacrum** posted a [nice analysis](https://github.com/rust-lang/rust/pull/91359#issuecomment-1013525074) explaining the probable root cause.
- Notably, "with `-Csymbol-mangling-version=v0` the hashes (changes to which cause LLVM's workload to change) go away; [...] this patch is pretty much an improvement in terms of emitted IR (as roughly expected)."

Update hashbrown to 0.12.0 [#92998](https://github.com/rust-lang/rust/issues/92998)
- Average relevant regression: 1.0%
- Average relevant improvement: -0.9%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=bfe15646761a75f0259e204cab071565eed2b1e5&end=10c4c4afec6dfc483af6efb7019941bab9a51a29&stat=instructions:u): -9.4% on `incr-patched: println` builds of `webrender opt`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=bfe15646761a75f0259e204cab071565eed2b1e5&end=10c4c4afec6dfc483af6efb7019941bab9a51a29&stat=instructions:u): 2.5% on `incr-unchanged` builds of `externs debug`
- "an overall win but with a bit of noise since this code is extremely sensitive to inlining."

Rollup of 8 pull requests [#93288](https://github.com/rust-lang/rust/issues/93288)
- Average relevant regression: 1.5%
- Average relevant improvement: -0.7%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=e7825f2b690c9a0d21b6f6d84c404bb53b151b38&end=df368ae457c54fb95d3e64f9986a5f171a6370f0&stat=instructions:u): -0.8% on `incr-full` builds of `keccak check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e7825f2b690c9a0d21b6f6d84c404bb53b151b38&end=df368ae457c54fb95d3e64f9986a5f171a6370f0&stat=instructions:u): 2.0% on `incr-full` builds of `stm32f4 check`
- stm32f4 regressed on many axes (check/debug/opt/doc, full and incremental); inflate check for both full and incremental. keccak improved slightly.
- It is not obvious what caused the changes here in this rollup.
- stm32f4 was added in part to test compiler trait machinery.
- After looking at each of 8 PR's in the rollup, most likely causes are either PR [#93064](https://github.com/rust-lang/rust/pull/93064/) ("Properly track DepNodes in trait evaluation provisional cache") or PR [#93175](https://github.com/rust-lang/rust/pull/93175/) ("Implement stable overlap check considering negative traits"). Left comments on each PR asking if they should have had perf runs.
- I am leaving this unmarked (i.e. untriaged) for now.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
