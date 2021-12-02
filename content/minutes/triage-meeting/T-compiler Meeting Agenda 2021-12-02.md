---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-12-02

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :loudspeaker: today release of Rust stable 1.57 (the last for 2021 `:)`)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copywrite/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) 
  -  "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) 
- Old MCPs (not seconded, take a look)
  -  "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: 3 months ago)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 5 months ago)
  -  "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  -  "Unstable lints should be considered unknown" [compiler-team#469](https://github.com/rust-lang/compiler-team/issues/469) 
- Finalized FCPs (disposition merge)
  -  "Tracking Issue for cargo report future-incompat" [rust#71249](https://github.com/rust-lang/rust/issues/71249) 
  -  "Tracking Issue for inline assembly (`asm!`)" [rust#72016](https://github.com/rust-lang/rust/issues/72016)

### WG checkins

@_wg-incr-comp_ by @**pnkfelix** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/t04YVEwTRJWwTej-kLvDsw#WG-checkins)):
> nothing to report at this time

@_WG-llvm_ by @**nagisa** ([previous checkin](https://hackmd.io/t04YVEwTRJWwTej-kLvDsw#WG-checkins)):
> * pretty disappointing that our hand is forced to turn off newPM for the time being; LLVM project is undergoing migration of their issue tracker from bugzilla to github, which may serve for a more straightforward experience in contributing issues to the LLVM project.
> * LLVM 13.0.1-rc1 release candidate out

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- no PR waiting on T-compiler

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- [Postpone the evaluation of constant expressions that depend on inference variables](https://github.com/rust-lang/rust/pull/90023) (last activity: about 17 days ago)
  - review from @**lcnr**, [left some comments](https://github.com/rust-lang/rust/pull/90023#issuecomment-953497106) about merging this PR later after some more thoughts
- [Introduce linter for diagnostic messages](https://github.com/rust-lang/rust/pull/89455) (last activity: about 30 days ago)
  - previously reviewed by @**Esteban Küber** and @**simulacrum** 
- "Abort in panic_abort eh_personality" [rust#86801](https://github.com/rust-lang/rust/pull/86801) (last review activity: 4 months ago)
  - mentioned in T-compiler meeting about one month ago, no activity since then
  - no reviewer assigned: who could own this PR?
- "Fix ICE with inferred type in `const` or `static` item" [rust#89161](https://github.com/rust-lang/rust/pull/89161) (last review activity: about 57 days ago)
  - last review from Niko
- [improve type abiguity error for functions and methods](https://github.com/rust-lang/rust/pull/89862) (last activity about 1 month ago)
  - PR author @**lcnr**
  - is it waiting for another review or feedback from author?
- [Introduce MIR summary to avoid loading large bodies without inlining them](https://github.com/rust-lang/rust/pull/89708) (last activity about 1 month ago)
  - PR author @**cjgillot**?
  - last review from @**wesley wiser**
- [Fix false positive for typoed crate or module suggestion](https://github.com/rust-lang/rust/pull/90125) (last activity: none)
  - opened 1 month ago, needs a reviewer
  - highfive bot assigned to @**Esteban Küber** 
  - changed to s-waiting-on-author to fix the CI 
  - author has [left a question](https://github.com/rust-lang/rust/pull/90125#issuecomment-948491831) (maybe not yet answered)

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [77 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 5 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [4 P-critical, 46 P-high, 81 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Miscompilation where binding only some fields leaks the others" [rust#90752](https://github.com/rust-lang/rust/issues/90752) 
  - @**Dylan MacKenzie (ecstatic-morse)** authored PR [rust#90788](https://github.com/rust-lang/rust/pull/90788) which backport on beta [was declined](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-11-24.20.2354818/near/262604287)
- "Unsound drop due to imperfect lifetime checks" [rust#90838](https://github.com/rust-lang/rust/issues/90838)
  - @**pnkfelix** fixed this in PR [#90840](https://github.com/rust-lang/rust/pull/90840) which was beta backported
  - next steps for this issue? perhaps close it?
- "Implied bounds by associated types as function parameters are inconsistent in an unsound way." [rust#91068](https://github.com/rust-lang/rust/issues/91068)
  - handled by PRs [rust#91243](https://github.com/rust-lang/rust/pull/91243) and [rust#91242](https://github.com/rust-lang/rust/pull/91242) which partially reverts [rust#88312](https://github.com/rust-lang/rust/pull/88312)
- "Huge compile-time regression in beta/nightly" [rust#91128](https://github.com/rust-lang/rust/issues/91128)
  - @**Nikita Popov** [points out](https://github.com/rust-lang/rust/issues/91128#issuecomment-978072653) the problematic IR generated by `opt -03`
  - [previously discussion](https://github.com/rust-lang/rust/issues/91128#issuecomment-978072653): the new pass-manager has been disabled in beta pre-1.57 with PR [rust#91189](https://github.com/rust-lang/rust/pull/91189) from @**nagisa**
  - Next steps for this issue? (still critical)?

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Compilation appears to loop indefinitely " [rust#89195](https://github.com/rust-lang/rust/issues/89195) 
  - already discussed
  - assigned to Felix
- "regression: rustc suggests `.as_ref()` at incorrect location and other spans have regressed" [rust#90286](https://github.com/rust-lang/rust/issues/90286)
  - assigned to Felix
  - @**Esteban Küber** [commented](https://github.com/rust-lang/rust/issues/90286#issuecomment-974534925) about the possibility of authoring a PR
- "DWARF info for `static` vars in lib crates has stopped being produced reliably in LTO builds" [rust#90357](https://github.com/rust-lang/rust/issues/90357)
  - assigned to Felix
  - [already discussed](https://github.com/rust-lang/rust/issues/90286#issuecomment-974534925), Felix did some investigation on this

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "Undefined reference to `getauxval` in function `init_have_lse_atomics`  when compiling to nightly `aarch64-unknown-linux-musl`" [rust#89626](https://github.com/rust-lang/rust/issues/89626)
  - [Already discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-11-24.20.2354818/near/262607266)
  - Issue is fixed by [rust#90527](https://github.com/rust-lang/rust/pull/90527) + [libc#2272](https://github.com/rust-lang/libc/pull/2272) and as soon as the fixed `libc 0.2.107` is merged, see [rust#90681](https://github.com/rust-lang/rust/pull/90681)
  - Can this be closed?

## Performance logs

> [triage logs for 2021-11-30](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-11-30.md)

Overall, many changes this week, but overall an improvement on multiple benchmarks over
the week from a number of pull requests dedicated to optimizations of certain
patterns. We are still seeing a large number of spurious changes due to
[rustc-perf#1105](https://github.com/rust-lang/rustc-perf/issues/1105), which has yet to be addressed.

Triage done by **@simulacrum**.
Revision range: [22c2d9ddbf356bcdb718e88ca6ee3665e1e42690..1c0287830e0fb3c4007afea2819ba03766da6e9c](https://perf.rust-lang.org/?start=22c2d9ddbf356bcdb718e88ca6ee3665e1e42690&end=1c0287830e0fb3c4007afea2819ba03766da6e9c&absolute=false&stat=instructions%3Au)

4 Regressions, 4 Improvements, 9 Mixed; 5 of them in rollups
41 comparisons made in total

#### Regressions

Mark places as initialized when mutably borrowed [#90788](https://github.com/rust-lang/rust/issues/90788)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=311fa1f14dd8ffbbe83b229a94b17f7f1ecaf33b&end=7b3cd075bbe309031b418650a9c32baf0b4a3276&stat=instructions:u) (up to 0.6% on `full` builds of `match-stress-enum`)
- Fix for a miscompilation, so necessary regression.

Visit `param_env` field in Obligation's `TypeFoldable` impl [#91205](https://github.com/rust-lang/rust/issues/91205)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a7836bf885e70aaf1a2e0d4669406b183a79acaa&end=1e79d79dac11ce121b972fbaa0db9b0d1756b991&stat=instructions:u) (up to 6.6% on `full` builds of `hyper-2`)
- Fix for incorrect code, regressions unfortunately unavoidable.

#### Improvements

- Rollup of 6 pull requests [#91159](https://github.com/rust-lang/rust/issues/91159)
- Optimize live point computation [#90491](https://github.com/rust-lang/rust/issues/90491)
- Remove eval_always from upvars. [#90580](https://github.com/rust-lang/rust/issues/90580)
- Rollup of 8 pull requests [#91388](https://github.com/rust-lang/rust/issues/91388)

#### Mixed

Avoid generating empty closures for fieldless enum variants [#89881](https://github.com/rust-lang/rust/issues/89881)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=22c2d9ddbf356bcdb718e88ca6ee3665e1e42690&end=311fa1f14dd8ffbbe83b229a94b17f7f1ecaf33b&stat=instructions:u) (up to -1.6% on `incr-patched: add static arr item` builds of `coercions`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=22c2d9ddbf356bcdb718e88ca6ee3665e1e42690&end=311fa1f14dd8ffbbe83b229a94b17f7f1ecaf33b&stat=instructions:u) (up to 0.6% on `incr-unchanged` builds of `clap-rs`)
- Primarily benefits bootstrap time (-5.4 seconds, -0.7%), instruction count
  changes largely real but not avoidable (differences in LLVM decision making).

Remove eval_always for inherent_impls. [#90579](https://github.com/rust-lang/rust/issues/90579)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=982c552c908d179eaa38b6ef152ad3fa30268778&end=c6a7ca196a707acd65e6cce1d337cd11786c59a5&stat=instructions:u) (up to -5.6% on `incr-unchanged` builds of `stm32f4`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=982c552c908d179eaa38b6ef152ad3fa30268778&end=c6a7ca196a707acd65e6cce1d337cd11786c59a5&stat=instructions:u) (up to 0.2% on `incr-full` builds of `stm32f4`)

Faster `Layout::array` [#91246](https://github.com/rust-lang/rust/issues/91246)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=6d246f0c8d3063fea86abbb65a824362709541ba&end=ccce98535bd51687554be8a209b3a529ef84f7e1&stat=instructions:u) (up to -4.2% on `incr-unchanged` builds of `deep-vector`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=6d246f0c8d3063fea86abbb65a824362709541ba&end=ccce98535bd51687554be8a209b3a529ef84f7e1&stat=instructions:u) (up to 5.0% on `incr-unchanged` builds of `inflate`)
- Most prominent regression is spurious, and overall this looks like
  improvements outweighing regressions.

Rollup of 7 pull requests [#91269](https://github.com/rust-lang/rust/issues/91269)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=ccce98535bd51687554be8a209b3a529ef84f7e1&end=bbad745a688c933a43d1bd977756bd6fc7f034f2&stat=instructions:u) (up to -5.1% on `incr-unchanged` builds of `inflate`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ccce98535bd51687554be8a209b3a529ef84f7e1&end=bbad745a688c933a43d1bd977756bd6fc7f034f2&stat=instructions:u) (up to 18.3% on `incr-unchanged` builds of `clap-rs`)
- Regressions seem potentially real, but may also be related to
  [rustc-perf#1105](https://github.com/rust-lang/rustc-perf/issues/1105).
  Locally this seems to not be the case, though, so it seems probable that the
  regression is real.

Rollup of 6 pull requests [#91288](https://github.com/rust-lang/rust/issues/91288)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5fd3a5c7c175f228afaf5fc6ff00c177b83d8055&end=686e313a9aa14107c8631ffe48fa09110a7692db&stat=instructions:u) (up to -1.0% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5fd3a5c7c175f228afaf5fc6ff00c177b83d8055&end=686e313a9aa14107c8631ffe48fa09110a7692db&stat=instructions:u) (up to 1.7% on `full` builds of `externs`)
- Seems to be a genuine regression. Unclear what the cause is.

Make `TypeFolder::fold_*` return `Result` [#91230](https://github.com/rust-lang/rust/issues/91230)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=58f9efd36de5669ab731ec7ebf565999ff17b159&end=e6d2de9483a27f846f003fc745713339a9122473&stat=instructions:u) (up to -1.0% on `incr-full` builds of `deeply-nested-async`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=58f9efd36de5669ab731ec7ebf565999ff17b159&end=e6d2de9483a27f846f003fc745713339a9122473&stat=instructions:u) (up to 4.0% on `incr-unchanged` builds of `deep-vector`)
- Regressions seem genuine, but are likely to be shuffling of instruction
  sequences rather than something directly addressable.

Update libc to 0.2.108 [#90681](https://github.com/rust-lang/rust/issues/90681)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=db9d361a4731ca0bb48533fab6297a8fea75696f&end=350158dd6d7ba840666999efa9a19c6ae403eed1&stat=instructions:u) (up to -15.3% on `incr-unchanged` builds of `clap-rs`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=db9d361a4731ca0bb48533fab6297a8fea75696f&end=350158dd6d7ba840666999efa9a19c6ae403eed1&stat=instructions:u) (up to 3.0% on `incr-unchanged` builds of `deeply-nested-async`)
- Looks like a genuine regression, potentially slightly more work at crate loading time.

Tokenize emoji as if they were valid identifiers  [#88781](https://github.com/rust-lang/rust/issues/88781)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=c6eda7d8a7af3ef51311d3106874a7d8de994edc&end=23a436606b118bd2fbb12f64fce21e7f9d355349&stat=instructions:u) (up to -0.8% on `full` builds of `deeply-nested`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c6eda7d8a7af3ef51311d3106874a7d8de994edc&end=23a436606b118bd2fbb12f64fce21e7f9d355349&stat=instructions:u) (up to 0.3% on `incr-full` builds of `deeply-nested-async`)
- Genuine regression; more expensive logic in tokenization.

Rollup of 6 pull requests [#91221](https://github.com/rust-lang/rust/issues/91221)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=862962b90e59c5c1e217df74de80d3a81eee42f4&end=37a49713cb256f4033a3c2fab4810c5a61e89dd9&stat=instructions:u) (up to -1.3% on `incr-unchanged` builds of `wg-grammar`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=862962b90e59c5c1e217df74de80d3a81eee42f4&end=37a49713cb256f4033a3c2fab4810c5a61e89dd9&stat=instructions:u) (up to 0.6% on `full` builds of `ctfe-stress-4`)
- Regression seems genuine, though cause is unclear.

#### Untriaged Pull Requests

[60 untriaged pull requests](https://github.com/rust-lang/rust/issues?q=is%3Amerged+label%3Aperf-regression+-label%3Aperf-regression-triaged+sort%3Acreated-asc).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/labels/I-compiler-nominated)
- "Change `char` type in debuginfo to DW_ATE_UTF" [rust#89887](https://github.com/rust-lang/rust/pull/89887) 
- "sess: default to v0 symbol mangling" [rust#89917](https://github.com/rust-lang/rust/pull/89917) 
    - this is `s-blocked` ([see comment](https://github.com/rust-lang/rust/pull/89917#issuecomment-946731268))
- "Stabilize `-Z instrument-coverage` as `-C instrument-coverage`" [rust#90132](https://github.com/rust-lang/rust/pull/90132) 
    - @**tmandry** nominated
- "implement aspect-oriented programming (AOP) for Rust" [rust#90721](https://github.com/rust-lang/rust/pull/90721) 
    - nominated by @**mw** ([see comment](https://github.com/rust-lang/rust/pull/90721#issuecomment-966078438))
    - suggested to open an RFC
- "Miscompilation where binding only some fields leaks the others" [rust#90752](https://github.com/rust-lang/rust/issues/90752)
    - discussed in [P-critical](https://hackmd.io/R_-u5cmyQtmcPSL8sNtbuw?view#P-critical)
    - perhaps nomination can be removed?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
