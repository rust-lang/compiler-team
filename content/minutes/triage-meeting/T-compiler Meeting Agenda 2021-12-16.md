---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-12-16

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow <time:2021-12-17T15:00:00+01:00>, monthly [Compiler Team Planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copywrite/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: 3 months ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 5 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 2 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: about 6 days ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Z instrument-coverage` as `-C instrument-coverage`" [rust#90132](https://github.com/rust-lang/rust/pull/90132)
  - "Stabilize `-Z print-link-args` as `-C print-link-args`" [rust#91606](https://github.com/rust-lang/rust/pull/91606)
- Things in FCP (make sure you're good with it)
  - "Tracking issue for RFC 2115: In-band lifetime bindings" [rust#44524](https://github.com/rust-lang/rust/issues/44524)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Stabilise `feature(const_generics_defaults)`" [rust#90207](https://github.com/rust-lang/rust/pull/90207)
  - "rustdoc: accept `--out-dir` and soft-deprecate `--output`" [rust#91260](https://github.com/rust-lang/rust/issues/91260)

### WG checkins

- @_WG-rfc-2229_ by @**nikomatsakis** @**Matthew Jasper** ([previous checkin](https://hackmd.io/N_WW5tZqTLWouaed6cCjxg#WG-checkins))
  > Checkin text
- @_WG-rls2.0_ by @**matklad** ([previous checkin](https://hackmd.io/N_WW5tZqTLWouaed6cCjxg#WG-checkins))
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "Deduplicate projection sub-obligations" [rust#90423](https://github.com/rust-lang/rust/pull/90423)
  - fixes [rust#91598](https://github.com/rust-lang/rust/issues/91598), a `P-critical` compile-time regression
- :beta: "Sync portable-simd to remove autosplats" [rust#91484](https://github.com/rust-lang/rust/pull/91484)
  - PR provided by @**Jubilee**
  - fixes [rust#90904](https://github.com/rust-lang/rust/issues/90904), `P-high` regression in libs from stable
- :beta: "Revert setting a default for the MACOSX_DEPLOYMENT_TARGET env var for linking" [rust#91870](https://github.com/rust-lang/rust/pull/91870)
  - fixes [rust#91372](https://github.com/rust-lang/rust/issues/91372), a breaking change on macOS targets that prevented compiling against core crates
- :beta: "Fix HashStable implementation on InferTy" [rust#91892](https://github.com/rust-lang/rust/pull/91892)
  - opened by @**Michael Goulet**
  - fixes [rust#91807](https://github.com/rust-lang/rust/issues/91807) a regression from stable that prevents valid code to compile in Rust 1.57
- :stable: "Deduplicate projection sub-obligations" [rust#90423](https://github.com/rust-lang/rust/pull/90423)
  - fixes [rust#91598](https://github.com/rust-lang/rust/issues/91598), a `P-critical` compile-time regression

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "Stabilize `-Z print-link-args` as `-C print-link-args`" [rust#91606](https://github.com/rust-lang/rust/pull/91606)
  - @**Wesley Wiser** [proposed merge](https://github.com/rust-lang/rust/pull/91606#issuecomment-992960418) of the RFC (pending one comment from @**Vadim Petrochenkov**)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+sort%3Acreated-asc)

- "Fix ICE with inferred type in `const` or `static` item" [rust#89161](https://github.com/rust-lang/rust/pull/89161) (last review activity: about 57 days ago)
  - last review from Niko
- improve type abiguity error for functions and methods [rust#89862](https://github.com/rust-lang/rust/pull/89862) (last activity about 2 month ago)
  - PR author @**lcnr**
  - previously reviewed by @**Esteban Küber**
  - PR seems to need another round of review

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [76 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [51 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 51 P-high, 81 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)

- "Huge compile-time regression in beta/nightly" [rust#91128](https://github.com/rust-lang/rust/issues/91128)
  - issue author mentions that disabling the new LLVM pass manager makes the regression disappear
  - an MCVE is [at this comment](https://github.com/rust-lang/rust/issues/91128#issuecomment-977154873)
  - @**nikic** followed up with some [insights](https://github.com/rust-lang/rust/issues/91128#issuecomment-988968103) and an LLVM patch [#D115497](https://reviews.llvm.org/D115497)
- "Compile-time regression between 1.56.1 and 1.57.0 for deeply nested decorator types" [rust#91598](https://github.com/rust-lang/rust/issues/91598)
  - @**Aaron Hill** provided a fix in PR [rust#90423](https://github.com/rust-lang/rust/pull/90423)
  - patch is beta- and stable-backport nominated

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)

- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2021-12-14](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-12-14.md)

This week's report started with 6 regressions; after eliminating truly obvious noise, we are left with just 2 minor regressions. Of the cases that regressed, I think the only interesting one is keccak (regressed by 1.73% in PR #91549). But don't be too depressed: keccak was also improved up to 23% by PR [#85013](https://github.com/rust-lang/rust/pull/85013) (!); thanks to @**simulacrum** for that PR.

Triage done by **@pnkfelix**.
Revision range: [e2116acae59654bfab2a9729a024f3e2fd6d4b02..404c8471aba60c2d837fa728e7c729a0f52d5830](https://perf.rust-lang.org/?start=e2116acae59654bfab2a9729a024f3e2fd6d4b02&end=404c8471aba60c2d837fa728e7c729a0f52d5830&absolute=false&stat=instructions%3Au)

2 Regressions, 5 Improvements, 3 Mixed; 1 of them in rollups
30 Untriaged pull-requests
48 comparisons made in total

#### Regressions

"Support AVR for inline asm!" [#91224](https://github.com/rust-lang/rust/issues/91224)

- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c5c94945096265b6d675b2f55a247c4799de8d87&end=0b6f079e4987ded15c13a15b734e7cfb8176839f&stat=instructions:u) (up to 0.8% on `incr-unchanged` builds of `externs`)
- This regression is solely isolated to variants of the `externs` benchmark.
- It seems like a near certainty that the regression reported here is noise exacerbated by this pathological benchmark.
- Marked as triaged.

"Eliminate ConstnessAnd again" [#91549](https://github.com/rust-lang/rust/issues/91549)

- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=6bda5b331cfe7e04e1fe348c58a928fc2b650f4f&end=22f8bde876f2fa9c5c4e95be1bce29cc271f2b51&stat=instructions:u) (up to 3.1% on `full` builds of `inflate`)
- This PR went through many rounds of performance evaluation and tuning.
- The only "real" regressions are likely to be `inflate` and `keccak`, and I am suspicious of `inflate` based on its sensitivity in other PR's.
- I'm leaving this PR in this week's report largely just to draw attention to the problem we face in trying to evalute impact of cases like this.

#### Improvements

- "Avoid string validation in rustc_serialize, check a marker byte instead" [#91407](https://github.com/rust-lang/rust/issues/91407)
- "Sync portable-simd to remove autosplats" [#91484](https://github.com/rust-lang/rust/issues/91484)
- "replace vec::Drain drop loops with drop_in_place" [#85157](https://github.com/rust-lang/rust/issues/85157)
- "replace dynamic library module with libloading" [#90716](https://github.com/rust-lang/rust/issues/90716)
- "manually implement Hash for DefId" [#91660](https://github.com/rust-lang/rust/issues/91660)

#### Mixed

"Replace dominators algorithm with simple Lengauer-Tarjan" [#85013](https://github.com/rust-lang/rust/issues/85013)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=2af5c6562deed1878000e791f2cb21b981a53959&end=c67497a5da33eb3167a33e938920ce04d2b883a5&stat=instructions:u) (up to -23.6% on `full` builds of `keccak`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2af5c6562deed1878000e791f2cb21b981a53959&end=c67497a5da33eb3167a33e938920ce04d2b883a5&stat=instructions:u) (up to 0.4% on `incr-unchanged` builds of `helloworld`)

"Rollup of 6 pull requests" [#91799](https://github.com/rust-lang/rust/issues/91799)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b8dc6aa673317cf72a8abb9c421f573f2b34b47a&end=928783de663bd855a96f14b2d38c1061603587c6&stat=instructions:u) (up to -5.9% on `incr-unchanged` builds of `inflate`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=b8dc6aa673317cf72a8abb9c421f573f2b34b47a&end=928783de663bd855a96f14b2d38c1061603587c6&stat=instructions:u) (up to 0.8% on `incr-unchanged` builds of `issue-88862`)
- I don't yet now hat's up with the regression here to issue-88862.

"Deduplicate projection sub-obligations" [#90423](https://github.com/rust-lang/rust/issues/90423)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=a0a4c7d1e48c39a73119eb9107d402d60c83293b&end=4c9bdf4cbbf1deab0b5da398d4910558a66b332f&stat=instructions:u) (up to -6.2% on `full` builds of `deeply-nested`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a0a4c7d1e48c39a73119eb9107d402d60c83293b&end=4c9bdf4cbbf1deab0b5da398d4910558a66b332f&stat=instructions:u) (up to 0.5% on `full` builds of `regression-31157`)
- This is a targetted fix to address performance regressons that leaked into 1.57. It has been beta-nominated for backport.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)

- "Disable LLVM newPM by default" [rust#91190](https://github.com/rust-lang/rust/pull/91190)
  - mentioned in past meeting, scheduled to be re-evaluated again this week ([see comment](https://github.com/rust-lang/rust/pull/91190#issuecomment-984738762)) and relevant [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-12-02.20.2354818/near/263454357)
  - @**Nikita Popov** has a patch [for LLVM](https://reviews.llvm.org/D115497) (see relevant [comment with some context](https://github.com/rust-lang/rust/issues/91128#issuecomment-990064382))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.
