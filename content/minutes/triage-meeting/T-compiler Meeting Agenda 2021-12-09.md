---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-12-09

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473)
- Old MCPs (not seconded, take a look)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: 3 months ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 5 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - "Tracking issue for RFC 2115: In-band lifetime bindings" [rust#44524](https://github.com/rust-lang/rust/issues/44524)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - "Unstable lints should be considered unknown" [compiler-team#469](https://github.com/rust-lang/compiler-team/issues/469)
- Finalized FCPs (disposition merge)
  - "Tracking Issue for cargo report future-incompat" [rust#71249](https://github.com/rust-lang/rust/issues/71249)
  - "Tracking Issue for inline assembly (`asm!`)" [rust#72016](https://github.com/rust-lang/rust/issues/72016)

### WG checkins

@_WG-mir-optimization_ checkin by @**oli** ([previous checkin](https://hackmd.io/0z3bxGHlQwSYrLNm5ap2Lg#WG-checkins))

> - @**Dylan MacKenzie (ecstatic-morse)** is working on the MIR pass manager #91386
> - there is a lot of unclarity around what dialects of MIR we have and what rules exist
>   - Not really a new thing, but it caused a bug (#90762) and almost caused a much bigger bug (in #73255), though we that caught that in time
>   - See [this discussion](https://rust-lang.zulipchat.com/#narrow/stream/189540-t-compiler.2Fwg-mir-opt/topic/SimplifyComparisonIntegral.20Assign.20lookup.20is.20overzealous/near/263280258) for some examples of the problems

@_WG-polymorphization_ checkin by @**davidtwco** ([previous checkin](https://hackmd.io/0z3bxGHlQwSYrLNm5ap2Lg#WG-checkins))

> we're making slow progress, @**lcnr** is working on a patch that removes our main blocker, there's not much else to do with polymorphization until that's complete.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "Sync portable-simd to remove autosplats" [rust#91484](https://github.com/rust-lang/rust/pull/91484)
  - @**simulacrum** suggests two strategies for backport: either backported in full or a targeted backport that excludes the submodule with a config setting (see [comment](https://github.com/rust-lang/rust/pull/91484#issuecomment-987523206))
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- :beta: "Make rustdoc headings black, and markdown blue" [rust#91534](https://github.com/rust-lang/rust/pull/91534)
  - seems [all fine](https://github.com/rust-lang/rust/pull/91534#issuecomment-986098864) to backport this small UI fix
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "Make specifying repr optional for fieldless enums" [rust#88203](https://github.com/rust-lang/rust/pull/88203)
    - waiting on `T-lang`
- "Make feature key optional for rustc_stable, rustc_const_stable attributes" [rust#88588](https://github.com/rust-lang/rust/pull/88588)
    - Waiting on `T-libs`
- "remove pref_align_of intrinsic" [rust#90877](https://github.com/rust-lang/rust/pull/90877)
    - Waiting on `T-lang`

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)

- [Introduce linter for diagnostic messages](https://github.com/rust-lang/rust/pull/89455) (last activity: about 30 days ago)
  - previously reviewed by @**Esteban Küber** and @**simulacrum**
  - (tests are failing after upstream changes)
- "Abort in panic_abort eh_personality" [rust#86801](https://github.com/rust-lang/rust/pull/86801) (last review activity: 4 months ago)
  - mentioned in T-compiler meeting about some time ago, no new activity
  - no reviewer assigned: who could own this PR?
- "Fix ICE with inferred type in `const` or `static` item" [rust#89161](https://github.com/rust-lang/rust/pull/89161) (last review activity: about 57 days ago)
  - last review from Niko
- [improve type abiguity error for functions and methods](https://github.com/rust-lang/rust/pull/89862) (last activity about 1 month ago)
  - PR author @**lcnr**
  - previously reviewed by @**Esteban Küber**
  - PR seems to need another round of review
- [Introduce MIR summary to avoid loading large bodies without inlining them](https://github.com/rust-lang/rust/pull/89708) (last activity about 1 month ago)
  - PR author @**cjgillot**
  - last review from @**wesley wiser**
  - perf. bench report large regression

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [77 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 3 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 49 P-high, 81 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)

- "Miscompilation where binding only some fields leaks the others" [rust#90752](https://github.com/rust-lang/rust/issues/90752)
  - Fixed in [rust#90788](https://github.com/rust-lang/rust/pull/90788) (stable 1.58)
- "Huge compile-time regression in beta/nightly" [rust#91128](https://github.com/rust-lang/rust/issues/91128)
  - issue author mentions that disabling the new LLVM pass manager makes the regression disappear
  - some public code to reproduce is [at this comment](https://github.com/rust-lang/rust/issues/91128#issuecomment-977154873)
  - @**nikic** followed up with some [great insights](https://github.com/rust-lang/rust/issues/91128#issuecomment-988968103)
  - discussed last week, linked to PR [#91190](https://github.com/rust-lang/rust/pull/91190), due to be evaluated again next week
- "Compile-time regression between 1.56.1 and 1.57.0 for deeply nested decorator types" [rust#91598](https://github.com/rust-lang/rust/issues/91598)

  - this affects production code on different scenarios
  - time needed for compilation seems to have abnormally regressed

- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "Where bounds with associated types equality cause overflow." [rust#89503](https://github.com/rust-lang/rust/issues/89503)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)

- "Undefined reference to `getauxval` in function `init_have_lse_atomics` when compiling to nightly `aarch64-unknown-linux-musl`" [rust#89626](https://github.com/rust-lang/rust/issues/89626)
- "nightly-2021-12-02 to nightly-2021-12-03 regression (PR #91354): auto-deref on `Cow` does not seem to work anymore in all circumstances" [rust#91489](https://github.com/rust-lang/rust/issues/91489)

## Performance logs

> [triage logs for 2021-12-07](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-12-07.md)

A week of mostly rather small changes with many regressions being hard to diagnose. The largest regression comes from the introduction of a new future (desugaring `.await` into a call to `IntoFuture::into_future`). This was deemed acceptable as it only seems to have a negative impact in stress test situations where async/await is used more than one would normally expect. Unfortunately this does mean regressions beat out improvements this week.

Triage done by **@rylev**.
Revision range: [1c0287830e0fb3c4007afea2819ba03766da6e9c..ecb65b0e170fc5275870c9d0fba7267a57cf35e5](https://perf.rust-lang.org/?start=1c0287830e0fb3c4007afea2819ba03766da6e9c&end=ecb65b0e170fc5275870c9d0fba7267a57cf35e5&absolute=false&stat=instructions%3Au)

3 Regressions, 5 Improvements, 5 Mixed; 3 of them in rollups, 29 Untriaged Pull Requests
31 comparisons made in total

#### Regressions

Implement version of normalize_erasing_regions that allows for normalization failure [#91255](https://github.com/rust-lang/rust/issues/91255)

- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=26b45573be204da2cc0db12828b7a03c41c73793&end=f04a2f4b8e89eac1119061ea2055d33c97e618b4&stat=instructions:u) (up to 0.9% on `incr-full` builds of `ctfe-stress-4`)
- Nothing immediately jumps out as an issue, so a run of cachegrind might be necessary.
- Left a [comment](https://github.com/rust-lang/rust/pull/91255#issuecomment-988266695) as such.

Rollup of 10 pull requests [#91486](https://github.com/rust-lang/rust/issues/91486)

- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=190367ba2ef1d279004b8372cf022b5fc96145dd&end=3e21768a0a3fc84befd1cbe825ae6849e9941b73&stat=instructions:u) (up to 1.1% on `full` builds of `match-stress-enum`)
- Seems to be impacting compilation of match expressions, but none of the sub PRs seem to be a likely culprit.
- Left a [comment](https://github.com/rust-lang/rust/pull/91486#issuecomment-988271162) as such.

Reintroduce `into_future` in `.await` desugaring [#90737](https://github.com/rust-lang/rust/issues/90737)

- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ff2439b7b9bafcfdff86b7847128014699df8442&end=532d2b14c05f9bc20b2d27cbb5f4550d28343a36&stat=instructions:u) (up to 9.3% on `incr-full` builds of `deeply-nested-async`)
- The regression was very much expected but only really appears in extremely `await`-heavy code. We'll have to wait to see how this impacts real world users, and see if we can work on performance of trait obligation resolution to improve the performance lost.
- A more detailed justification for taking the performance hit can be found [here](https://github.com/rust-lang/rust/pull/90737#issuecomment-985924986).

#### Improvements

- Lint elided lifetimes in path during lifetime resolution. [#90446](https://github.com/rust-lang/rust/issues/90446)
- Optimize `rustc_lexer` [#91393](https://github.com/rust-lang/rust/issues/91393)
- Revert "Auto merge of #91354 - fee1-dead:const_env, r=spastorino" [#91491](https://github.com/rust-lang/rust/issues/91491)
- Add a MIR pass manager (Taylor's Version) [#91475](https://github.com/rust-lang/rust/issues/91475)

#### Mixed

Introduce `RawVec::reserve_for_push`. [#91352](https://github.com/rust-lang/rust/issues/91352)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=1c0287830e0fb3c4007afea2819ba03766da6e9c&end=207c80f105282245d93024c95ac408c622f70114&stat=instructions:u) (up to -3.0% on `incr-patched: println` builds of `webrender-wrench`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1c0287830e0fb3c4007afea2819ba03766da6e9c&end=207c80f105282245d93024c95ac408c622f70114&stat=instructions:u) (up to 0.4% on `incr-patched: println` builds of `style-servo`)
- The improvements outweigh the regressions and are mostly found in real-world crates.
- Justification for the regressions can be found [here](https://github.com/rust-lang/rust/pull/91352#issuecomment-982986307).

Rollup of 4 pull requests [#91406](https://github.com/rust-lang/rust/issues/91406)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=207c80f105282245d93024c95ac408c622f70114&end=d384ff79308c4eb0a3679817cd0def0147ad8612&stat=instructions:u) (up to -2.7% on `incr-unchanged` builds of `deeply-nested-async`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=207c80f105282245d93024c95ac408c622f70114&end=d384ff79308c4eb0a3679817cd0def0147ad8612&stat=instructions:u) (up to 7.1% on `incr-unchanged` builds of `clap-rs`)
- A case where it's hard to tell where the regression is coming from, but it is a quite a large regression in a real-world crate (albeit one that is a tiny bit noisy).
- Both [](https://github.com/rust-lang/rust/pull/91366) and [](https://github.com/rust-lang/rust/pull/91397) only really touch rustdoc so that's unlikely the culprit.
- Left a comment for [follow up](https://github.com/rust-lang/rust/pull/91406#issuecomment-988258182)

Cleanup: Eliminate ConstnessAnd [#91354](https://github.com/rust-lang/rust/issues/91354)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=d9baa361902b172be716f96619b909f340802dea&end=18bb8c61a975fff6424cda831ace5b0404277145&stat=instructions:u) (up to -0.6% on `full` builds of `deeply-nested`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d9baa361902b172be716f96619b909f340802dea&end=18bb8c61a975fff6424cda831ace5b0404277145&stat=instructions:u) (up to 1.1% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo`)
- Reverted by [#91491](https://github.com/rust-lang/rust/issues/91491) which recovered the regression.

Rollup of 4 iffy pull requests [#91455](https://github.com/rust-lang/rust/issues/91455)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=18bb8c61a975fff6424cda831ace5b0404277145&end=e5038e20999eef35260b070189883edc2a8a34b2&stat=instructions:u) (up to -6.7% on `incr-unchanged` builds of `clap-rs`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=18bb8c61a975fff6424cda831ace5b0404277145&end=e5038e20999eef35260b070189883edc2a8a34b2&stat=instructions:u) (up to 3.4% on `incr-unchanged` builds of `clap-rs`)
- The improvements outweigh the regressions with the largest regression in a non-noisy benchmark being only 0.8%.
- Given the difficult nature of figuring out what caused regressions in a rollup of 4 iffy pull requests, we'll let this one slide.

Reduce boilerplate around infallible folders [#91318](https://github.com/rust-lang/rust/issues/91318)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=e5038e20999eef35260b070189883edc2a8a34b2&end=acbe4443cc4c9695c0b74a7b64b60333c990a400&stat=instructions:u) (up to -0.8% on `incr-unchanged` builds of `externs`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e5038e20999eef35260b070189883edc2a8a34b2&end=acbe4443cc4c9695c0b74a7b64b60333c990a400&stat=instructions:u) (up to 0.6% on `full` builds of `deeply-nested`)
- [cachegrind](https://github.com/rust-lang/rust/pull/91318#issuecomment-985506557) was already run, but there are no clear explanations for the regressions.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/labels/I-compiler-nominated)

- No `I-compiler-nominated` issues t this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.
