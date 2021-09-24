---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-06-10

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :warning: next week June, 17th, release of Rust stable 1.53
- pnkfelix seeking review with quick turnaround (in time for cutting 1.54-beta tomorrow) on [PR 85193](https://github.com/rust-lang/rust/pull/85193)
 
### MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437)
- Old MCPs (not seconded, take a look)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  - "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
  - "Promote `aarch64-apple-ios-sim` to Tier 2" [compiler-team#428](https://github.com/rust-lang/compiler-team/issues/428)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Allow changing the bug report url for the ice hook" [compiler-team#436](https://github.com/rust-lang/compiler-team/issues/436)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking issue for WebAssembly SIMD support" [rust#74372](https://github.com/rust-lang/rust/issues/74372)
  - "Tracking Issue for VecDeque binary search functions" [rust#78021](https://github.com/rust-lang/rust/issues/78021)
  - "Use try_reserve and panic in Vec's io::Write" [rust#84612](https://github.com/rust-lang/rust/pull/84612)
  - "Show test type during prints" [rust#84863](https://github.com/rust-lang/rust/pull/84863)
  - "rustc: Allow safe #[target_feature] on wasm" [rust#84988](https://github.com/rust-lang/rust/pull/84988)

### WG checkins

- @*WG-diagnostics*  by @**Esteban Küber** and @**oli**
> (both leads are on leave at the moment)

- @*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Joshua Nelson**
>### Most notable changes
>
>- explain Miri engine vs Miri-the-tool [#1134](https://github.com/rust-lang/rustc-dev-guide/pull/1134)
>- Add more information about no_hash query modifier. [#1133](https://github.com/rust-lang/rustc-dev-guide/pull/1133)
>- Describe the difference of rustc_lint vs rustc_lint_defs. [#1131](https://github.com/rust-lang/rustc-dev-guide/pull/1131)
>- Document -Zunpretty=thir-tree [#1128](https://github.com/rust-lang/rustc-dev-guide/pull/1128)
>- Update coverage docs [#1122](https://github.com/rust-lang/rustc-dev-guide/pull/1122)
>
>### Most notable WIPs
>
>- Update for merge of CrateDisambiguator into StableCrateId [#1135](https://github.com/rust-lang/rustc-dev-guide/pull/1135)
>- Document lang items [#1119](https://github.com/rust-lang/rustc-dev-guide/pull/1119)
>- Move "ctags" section into "Suggested Workflow" [#1115](https://github.com/rust-lang/rustc-dev-guide/pull/1115)
>- Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)
>- Explain the new valtree system for type level constants. [#1097](https://github.com/rust-lang/rustc-dev-guide/pull/1097)
>- rewrite ty.md [#1057](https://github.com/rust-lang/rustc-dev-guide/pull/1057)
>- improve glossary page [#1053](https://github.com/rust-lang/rustc-dev-guide/pull/1053)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Reachable statics have reachable initializers" [rust#84549](https://github.com/rust-lang/rust/pull/84549)
  - opened by @**tm|352985**
  - reviewed by @**varkor**
  - patch is already merged, fixes [#84455](https://github.com/rust-lang/rust/issues/84455), a `P-medium` ICE when crosscompiling
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-06-03.20.2354818/near/241395829)
  - decision postponed (possibly decline the backport and let this patch land on next stable)
- :beta: "Make copy/copy_nonoverlapping fn's again" [rust#86003](https://github.com/rust-lang/rust/pull/86003)
  - opened and nominated for backport by @**pnkfelix** 
  - addresses issue [#84297](https://github.com/rust-lang/rust/issues/84297), reverts PRs [#81167](https://github.com/rust-lang/rust/issues/81167) [#81238](https://github.com/rust-lang/rust/issues/81238), part of [#82967](https://github.com/rust-lang/rust/issues/82967), [#83091](https://github.com/rust-lang/rust/issues/83091) and parts of [#79684](https://github.com/rust-lang/rust/issues/79684).
- :beta: "Disable the machine outliner by default" [rust#86020](https://github.com/rust-lang/rust/pull/86020)
  - opened by @**nagisa** 
  - assigned to @**Matthew Jasper**
  - no r'ed yet
  - Fixes [#85351](https://github.com/rust-lang/rust/issues/85351), a `P-critical` micompilation on ARM-M arch
  - Fixing this involves a patch on LLVM, possibly [will make it into LLVM 12.0.1](https://github.com/rust-lang/rust/issues/85351#issuecomment-848813102)
- No stable nominations for `T-compiler` this time.

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No beta nominations for `T-libs-impl` this time.
- No stable nominations for `T-libs-impl` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [6 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [3 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [77 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [50 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [6 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 47 P-high, 87 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE when reifying function pointers to copy / copy_nonoverlapping using an if" [rust#84297](https://github.com/rust-lang/rust/issues/84297)
  - discussed in [this Zulip thread](https://zulip-archive.rust-lang.org/131828tcompiler/18251reifyingfunctionptrsforintrinsics84297.html) 
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - Steering meeting lays plan to disable incr-comp on 1.53 ([Zulip link from last week](https://zulip-archive.rust-lang.org/131828tcompiler/18251reifyingfunctionptrsforintrinsics84297.html)) 
- "Miscompilation on ARM-M with nightly-2021-04-23" [rust#85351](https://github.com/rust-lang/rust/issues/85351)
  - @**nagisa** authored patch [#86020](https://github.com/rust-lang/rust/pull/86020)
  - [LLVM patch](https://github.com/rust-lang/rust/issues/85351#issuecomment-848813102) in the pipeline, too
- "iter::Fuse is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85863](https://github.com/rust-lang/rust/issues/85863)
  - mentioned [last week](https://github.com/rust-lang/rust/issues/85863#issuecomment-856958496)
  - opened by @**Frank Steffahn**
  - reporter suggests possible fixes, on Zulip [some more thoughts](https://rust-lang.zulipchat.com/#narrow/stream/227806-t-compiler.2Fwg-prioritization/topic/Issues.20.2385863.20and.20.2385873)
  - @**Josh Triplett** comments this issue will be discussed [in a follow-up T-lang meeting](https://github.com/rust-lang/rust/issues/85863#issuecomment-856958496)
- "TrustedRandomAccess optimization for Zip containing vec::IntoIter is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85873](https://github.com/rust-lang/rust/issues/85873)
  - same as above: issue will be discussed [in a follow-up T-lang meeting](https://github.com/rust-lang/rust/issues/85863#issuecomment-856958496)
- "For 1.53, must fwd-port RUSTC_FORCE_INCREMENTAL from 1.52.1" [rust#86004](https://github.com/rust-lang/rust/issues/86004)
  - Part of [#84970](https://github.com/rust-lang/rust/issues/84970) (Unstable fingerprints)
  - Tracking issue for the forward-port to 1.53

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- "iter::Fuse is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85863](https://github.com/rust-lang/rust/issues/85863)
  - see above
- "TrustedRandomAccess optimization for Zip containing vec::IntoIter is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85873](https://github.com/rust-lang/rust/issues/85873)
  - see above
- "`lang_start` in std/src/rt.rs is unsound in presence of panic payload that panics on drop" [rust#86030](https://github.com/rust-lang/rust/issues/86030)
  - Unsoundness issue, @**nagisa** opened PR [#86034](https://github.com/rust-lang/rust/pull/86034), waiting for review

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-06-08](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-06-08.md)

Some good improvements, and a few regressions. No large changes.

Triage done by **@simulacrum**.

3 Regressions, 3 Improvements, 1 Mixed
1 of them in rollups

#### Regressions

Always go through the expn_that_defined query. [#86002](https://github.com/rust-lang/rust/issues/86002)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ac3e680193a3e11e60b07840ffb1db12793de110&end=6c2dd251bbff03c7a3092d43fb5b637eca0810e3&stat=instructions:u) (up to 1.6% on `incr-patched: println` builds of `webrender-check`)
- Necessary for correctness, regresions largely limited to incremental.

Add variance-related information to lifetime error messages [#85343](https://github.com/rust-lang/rust/issues/85343)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5b638c1d3751b7ab31cac9739add516bdf39e10a&end=35fff69d043b1c0f5c29894e7f4b0da8b039c131&stat=instructions:u) (up to 4.3% on `full` builds of `wg-grammar-check`)
- Seems to potentially be necessary, but difference from PR run suggests more
  can possibly be done to avoid some of the losses noted on the final merge.

Revert "Merge CrateDisambiguator into StableCrateId" [#85891](https://github.com/rust-lang/rust/issues/85891)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=022720bfccd46400e69def42f4647fe4059ad951&end=2312ff1a850db449b79fd3c4b215395cd2598c25&stat=instructions:u) (up to 4.9% on `full` builds of `html5ever-opt`)
- Reverted due to performance concerns on the original PR ([#85804]), but does
  not seem to have recovered performance. Suggested path is to re-land but with
  measurements the original PR; potentially there are some performance
  improvements that can be done there as well.

[#85804]: https://github.com/rust-lang/rust/pull/85804

#### Improvements

- Remove CrateNum::ReservedForIncrCompCache [#85829](https://github.com/rust-lang/rust/issues/85829)
- Only compute the trait map once [#85905](https://github.com/rust-lang/rust/issues/85905)
- Miscellaneous inlining improvements [#85892](https://github.com/rust-lang/rust/issues/85892)

#### Mixed

Rollup of 13 pull requests [#85952](https://github.com/rust-lang/rust/issues/85952)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=016e9b5e33ef1407bffb575ec63d24241912556d&end=a93699f20a433797a4b84787b9652300dd7b2ad2&stat=instructions:u) (up to -4.8% on `full` builds of `html5ever-opt`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=016e9b5e33ef1407bffb575ec63d24241912556d&end=a93699f20a433797a4b84787b9652300dd7b2ad2&stat=instructions:u) (up to 2.9% on `incr-patched: println` builds of `cargo-opt`)
- Predominantly an improvement, some incremental regressions; does not appear
  worthwhile to investigate in depth the exact cause.

#### Nags requiring follow up

* Follow up on regression in [#85343](https://github.com/rust-lang/rust/pull/85343#issuecomment-856819536)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Generate links to definition in rustdoc source code pages" [rust#84176](https://github.com/rust-lang/rust/pull/84176)
  - opened by @**GuillaumeGomez** 
  - Adds hyperlinks to navigate code in rustdoc
  - no known blockers
  - feature is [nightly-only and disabled by default](https://github.com/rust-lang/rust/pull/84176#issuecomment-821026882)
  - possibly a follow-up RFC to stabilize and enable it by default  
  - PR has been reviewed by rustdoc team though final review won't happen soon; PR author asks if `T-compiler` can greenlight merge
- "Emscripten wasm32 compilation broken" [rust#85821](https://github.com/rust-lang/rust/issues/85821)
  - Compiling an Hello world with the new emscripten SDK version 2.0.10 trips into a removed stubbed function (`__gxx_personality_v0`) and dies.
  - With emscripten SDK version 2.0.9 still works because the stub is there
  - Nominated to find an owner: who has recently their hands in the wasm target (@__**Alex Crichton** ? maybe a WG?) 
- "Re-add support for parsing (and pretty-printing) inner-attributes in match body" [rust#85193](https://github.com/rust-lang/rust/pull/85193)
    - see announcements
    - opened by @**pnkfelix**
    - re-adds support for `match EXPR { #![inner] ARM_1 ARM_2 ... }` to sidestep breakage from [PR 83312 ](https://github.com/rust-lang/rust/pull/83312)
    - lang team FCP in process; not end of world if review+landing doesn't happen before 1.54-beta is cut on Friday (tomorrow), but it is nice to avoid backports

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
