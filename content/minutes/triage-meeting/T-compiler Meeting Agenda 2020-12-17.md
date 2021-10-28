---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-12-17

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow (friday 18th) at the same time as this meeting, we have the "Compiler Team Foundation Q&A"
- Following meetings are on 24th and 31st (note for @pnkfelix: unsure if we will have these meetings and who will be around)
- We will be releasing 1.49 on December 31st
- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
- Pending FCP requests (check your boxes!)
  - "Drop official support for Windows XP" [compiler-team#378](https://github.com/rust-lang/compiler-team/issues/378)
  - "rustc: Stabilize `-Zrun-dsymutil` as `-Csplit-debuginfo`" [rust#79570](https://github.com/rust-lang/rust/pull/79570)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - [T-lang] "Use true previous lint level when detecting overriden forbids" [rust#78864](https://github.com/rust-lang/rust/pull/78864)
  - [T-rustdoc] "rustdoc: stabilise --default-theme command line option" [rust#79642](https://github.com/rust-lang/rust/pull/79642)


### WG checkins

@*WG-llvm* checkin by @**nagisa**:

> * Subjectively it seems like there has been an uptick of soundness issues/miscompilations related to LLVM (or perhaps people are now trying to use more obscure features of it, new targets?)
> * Besides a regular submodule bump ([#79861](https://github.com/rust-lang/rust/issues/79861)), there hasn't been much development, notable outstanding and related stuff is: [#77885](https://github.com/rust-lang/rust/issues/77885) using inline-asm stack probes which is blocked on 11.0.1 and a couple of changes as part of work to enable split dwarf support ([#80087](https://github.com/rust-lang/rust/issues/80087), [#77117](https://github.com/rust-lang/rust/issues/77117))

@*T-compiler/WG-meta* checkin by @**nikomatsakis**:
> * wesleywiser is now the new compiler team co-lead!
> * nikomatsakis floated a proposal around "compiler team officers", the idea being to identify various special roles within compiler team that get elected to fixed terms (including a set of folks who decide on RFCs), and to generally "flatten" the team structure so that contribuors/members both elect these officers
> * The core team roadmap draft is going to focus on governance, such as defining team charters and other work, so nikomatsakis expects next year that meta will take on some of that work
> * One question is whether nikomatsakis should continue as lead of the working group, or whether wesleywiser/pnkfelix (or someone else) would be better! nikomatsakis is open to stepping back from that role, if others are pscyched to fill it, and eager to contribute help and thoughts either way.
> * Enjoy the upcoming holidays and take care of yourselves, folks! :heart_eyes: 

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Resolve enum field visibility correctly" [rust#79956](https://github.com/rust-lang/rust/pull/79956)
  - Fixes [rust#79593](https://github.com/rust-lang/rust/issues/79593)
  - opened by @**Camelid** 
  - nominates for beta backport since error [comes up fairly frequently](https://github.com/rust-lang/rust/pull/79956#issuecomment-744091095)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No stable nominations for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "MIR-OPT: Pass to deduplicate blocks" [rust#77551](https://github.com/rust-lang/rust/pull/77551)
  - opened by @**Simon Vandel Sillesen** 
  - assigned to @**oli**
  - The performance gain seems to be not very clear. Relevant comments [from here](https://github.com/rust-lang/rust/pull/77551#issuecomment-713417158). 
- "BPF target support" [rust#79608](https://github.com/rust-lang/rust/pull/79608)
  - opened by @**Alessandro Decina**, suggests a Tier 2 for this target
  - assigned to @**simulacrum** 
  - Adds targets `bpfel-unknown-none` and `bpfeb-unknown-none` (more info [here](https://github.com/alessandrod/bpf-linker))
  - @_*simulacrum* suggests waiting to have a policy for that
  - @**Josh Triplett** [is working on it](https://github.com/rust-lang/rust/pull/79608#issuecomment-744211807)

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [6 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [51 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [32 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 1 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 8 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 28 P-high, 70 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Switching to opt-level=z on i686-windows-msvc triggers STATUS_ACCESS_VIOLATION" [rust#67497](https://github.com/rust-lang/rust/issues/67497)
  - Discussed last week
  - Opened by @**dignifiedquire** 
  - Assigned to @**pnkfelix**
  - [Rust 1.36.0 through 1.48.0](https://github.com/rust-lang/rust/issues/67497#issuecomment-733699197) all have broken builds on Windows i686-windows-msvc 
- "missing_fragment_specifier hard error" [rust#76605](https://github.com/rust-lang/rust/issues/76605)
  - opened by @**Pietro Albini** 
  - assigned to @**Esteban Küber** 
  - A deprecation warning since 2017 becomes hard error and breakes many packages (catched by the release team)
  - @**simulacrum** ~~05#issuecomment-702811192) for the beta,~~ suggests to create a patch for nightly also [to make it a hard warning](https://github.com/rust-lang/rust/issues/76605#issuecomment-742711664)
- "Upgrade to LLVM11 caused a codegen regression on Windows" [rust#78283](https://github.com/rust-lang/rust/issues/78283)
  - [Previously discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-11-12.20.2354818/near/216482008)
  - opened by @**Jeff Muizelaar**
  - assigned to  @**pnkfelix** 
  - Firefox code that used to work on Rust 1.46 started to fail after upgrading to LLVM 11
  - Affects only MSVC
  - @**Nikita Popov** suggests could be related to [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - @**Jeff Muizelaar** suggests to be related to LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943), provides a [minimal repro](https://github.com/rust-lang/rust/issues/78283#issuecomment-720156273)
  - @_**pnkfelix** has patch in progress for LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943) (got feedback recently from @_**Nikita Popov**)
- "No error reported when a generic parameter doesn't meet the requirement of an associated type" [rust#78893](https://github.com/rust-lang/rust/issues/78893)
  - [Previously discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-11-12.20.2354818/near/216482210), and [a topic was created to discuss it on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/213817-t-lang/topic/.2378893.20no.20err.20when.20genrc.20param.20doesnt.20meet.20req.20of.20assoc.20type)
  - Nightly regression
  - Regressed on [rust#73905](https://github.com/rust-lang/rust/pull/73905)
  - @**Matthew Jasper** provides a fix in PR [rust#79543](https://github.com/rust-lang/rust/pull/79543)
- "Miscompilation of AVX2 code under --release" [rust#79865](https://github.com/rust-lang/rust/issues/79865)
  - Discussed last week
  - opened by @**Tony Arcieri** 
  - not yet assigned
  - unsoundness that impacts cryptographic code
  - reporter mentions a workaround ([pulling code out of a lamba](https://github.com/rust-lang/rust/issues/79865#issuecomment-742039745)) to fix the error 
  - shortest [mcve so far](https://github.com/rust-lang/rust/issues/79865#issuecomment-742861255) provided by @**lqd**
- "Miscompilation in webrender on aarch64-apple-darwin" [rust#80111](https://github.com/rust-lang/rust/issues/80111)
  - opened by @**Mike Hommey** 
  - Firefox nightly would crash on startup on arm64 macos 
  - seems that different LTO parameters trigger the issue

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "regression 1.49: macro_rules unexpected tokens" [rust#79908](https://github.com/rust-lang/rust/issues/79908)
  - opened by @**simulacrum**
  - assigned to @**Camelid**
  - A crater test run find a regression. There are two crates involved (`fourier` and `tiger`), the latter is relevant to this regression
  - we have an [mcve](https://github.com/rust-lang/rust/issues/79908#issuecomment-747085341)
  - @_**Camelid** is working on a patch
  
[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

A week dominated by small regressions with only 1 modest yet clear performance gain. None of the regressions are large enough to cause concern, but there should be a followup to some to ensure that those regressions are at least examined.

Triage done by **@rylevick**.
Revision range: [4fd4a98d4788bc987d7f7add9df5f5ead6a1c15e..e1cce06e4ff5206daf397e1dcf91ed53653be171](https://perf.rust-lang.org/?start=4fd4a98d4788bc987d7f7add9df5f5ead6a1c15e&end=e1cce06e4ff5206daf397e1dcf91ed53653be171&absolute=false&stat=instructions%3Au)

6 Regressions, 1 Improvements, 2 Mixed
0 of them in rollups

### Regressions

Also generate `StorageDead` in constants[#78679](https://github.com/rust-lang/rust/issues/78679)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c0bfe3485f97f267cc8adec724f109c56dab5526&end=cc03ee6702053ded253c3656cbd02f0bfdf25c73&stat=instructions:u) (up to 5.7% on `incr-patched: new row` builds of `tuple-stress-check`)
- A removal of special casing of not marking statics and constants as `StorageDead` inside rustc_mir. 
- This was regression was [deemed as acceptable](https://github.com/rust-lang/rust/pull/78679#issuecomment-729030782) due to being more correct than the previous implementation. 

Properly re-use def path hash in incremental mode[#79721](https://github.com/rust-lang/rust/issues/79721)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=cc03ee6702053ded253c3656cbd02f0bfdf25c73&end=fa55f668e5ea5388ec98b9340969527252239151&stat=instructions:u) (up to 1.5% on `incr-unchanged` builds of `deeply-nested-opt`)
- Fixes a p-high [ICE issue](https://github.com/rust-lang/rust/issues/79661), and so the perf regressions were deemed acceptable.
- This is a fix for [#74967](https://github.com/rust-lang/rust/pull/74967) which saw [large perf gains](https://perf.rust-lang.org/compare.html?start=db79d2f63780613e700cb58b4339c48287555ae0&end=bf8e95436e60effbeb46a32e17df8ab7fcb0c6ad).

Accept arbitrary expressions in key-value attributes at parse time[#78837](https://github.com/rust-lang/rust/issues/78837)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1cc410710993d036730c11556039e40109f6ab41&end=58d2bad9f7ab0971495247b6c94978848760ca9d&stat=instructions:u) (up to 1.4% on `incr-unchanged` builds of `match-stress-exhaustive_patterns-check`)
- [Pinged in the PR about this issue](https://github.com/rust-lang/rust/pull/78837#issuecomment-745380762)

Capture precise paths in THIR and MIR[#79553](https://github.com/rust-lang/rust/issues/79553)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=9eb3a7ceafd1e2c1924177caa18c7cc0c25b413e&end=5bd9b60333b3dc0a51e7a5607cd1e0d537a9f718&stat=instructions:u) (up to 4.5% on `incr-unchanged` builds of `clap-rs-check`)
- While this change powers a feature behind a feature flag (`capture_disjoint_fields`), it looks like it's still causing perf regressions in workloads not using this feature.
- This is a known issue with [a plan](https://github.com/rust-lang/rust/pull/79553#issuecomment-745437806) for how to recover the performance loss.

Create `rustc_type_ir`[#79169](https://github.com/rust-lang/rust/issues/79169)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c3ed6681ff8d446e68ce272be4bf66f4145f6e29&end=3f2088aa603d2cd3f43c20795872de9cd6ec7735&stat=instructions:u) (up to 3.1% on `full` builds of `ctfe-stress-4-check`)
* This mainly seems to be moving code around so it might be an inlining issue. 
* [Pinged in the PR about this issue](https://github.com/rust-lang/rust/pull/79169#issuecomment-745388674)

Update stdarch submodule[#79938](https://github.com/rust-lang/rust/issues/79938)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=fa416394275d2468d104b8f72ac31b1ddf7ee52e&end=8b3ee82eb68cb35030bb745c23f8aa76d9de5bee&stat=instructions:u) (up to 1.4% on `incr-unchanged` builds of `deeply-nested-debug`)
- This was a wholesale update of the stdarch submodule. 
- stdarch is using const arguments that would benefit from const generics. This might explain why compilation suffers.
* [Pinged in the PR about this issue](https://github.com/rust-lang/rust/pull/79938#issuecomment-745393740)

### Improvements

Compress RWU from at least 32 bits to 4 bits[#79727](https://github.com/rust-lang/rust/issues/79727)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5e6e1e33a11d140a4d70f946730137f241224eb3&end=1700ca07c6dd7becff85678409a5df6ad4cf4f47&stat=instructions:u) (up to -4.8% on `full` builds of `clap-rs-check`)
- This was explicitly an experiment to gain performance, and it seems to worked fairly well. Other bit representations were tested but the one chosen was the most efficient. 

### Mixed

Use `def_path_hash_to_def_id` when re-using a `RawDefId`[#79915](https://github.com/rust-lang/rust/issues/79915)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=a2e29d67c26bdf8f278c98ee02d6cc77a279ed2e&end=19eb1c4c526071c430c05fffc64da71ac057a3d5&stat=instructions:u) (up to -3.5% on `incr-unchanged` builds of `clap-rs-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a2e29d67c26bdf8f278c98ee02d6cc77a279ed2e&end=19eb1c4c526071c430c05fffc64da71ac057a3d5&stat=instructions:u) (up to 2.7% on `incr-patched: dummy fn` builds of `unused-warnings-check`)
- The amount of regressions outweighs the improvements (which were just in the clap benchmark).
- This is a followup fix to [#79721](https://github.com/rust-lang/rust/issues/79721). Overall these regressions still represent a perf gain when compared to before the changes introduced in [#74967](https://github.com/rust-lang/rust/pull/74967).

Lower `discriminant_value` intrinsic[#79922](https://github.com/rust-lang/rust/issues/79922)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=8b3ee82eb68cb35030bb745c23f8aa76d9de5bee&end=5d77fc8d0db3b69f3a3691d86eba23e4cdc390e1&stat=instructions:u) (up to -3.9% on `full` builds of `match-stress-enum-check`)
- Smaller regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=8b3ee82eb68cb35030bb745c23f8aa76d9de5bee&end=5d77fc8d0db3b69f3a3691d86eba23e4cdc390e1&stat=instructions:u) (up to 1.3% on `incr-unchanged` builds of `clap-rs-check`)
- The improvement outweighs the regression.

### Nags requiring follow up

- Several regressions need followup investigations. See their respective entries above for the issue.
- As mentioned last week, stdarch expansion causing a 40% libcore compile time regression is still not resolved, and resolution is unclear. This is likely a related issue to the stdarch regression listed above.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

Preamble: there are 3 issues below (#76213, #79246, #79564) somehow all pointing to the same PR [rust#76030](https://github.com/rust-lang/rust/pull/76030) which exposed an existing [bug in loop vectorize in LLVM](https://bugs.llvm.org/show_bug.cgi?id=48340). We (as in: me @**apiraino**) are not 100% sure if they are all correlated, but thought to nominate them all to reason about their priority and (if any) find a common theme.

- "llvm segfaults during bootstrap of rustc_middle in stage 1" [rust#76213](https://github.com/rust-lang/rust/issues/76213)
  - opened by @**matthiaskrgr**
  - not yet assigned
  - `P-high` regression, might be related to [rust#79564](https://github.com/rust-lang/rust/issues/79564)
  - still crashes after upgrade to [LLVM 11.0.0-rc3](https://github.com/rust-lang/rust/issues/76213#issuecomment-697361038)
- "Performance regression in `1.48.0`" [rust#79246](https://github.com/rust-lang/rust/issues/79246)
  - opened by @**marmeladema** 
  - regression from stable to stable not yet assigned
  - issue reporter suggests bisection seems to point to [rust#70793](https://github.com/rust-lang/rust/pull/70793)
  - issue reporter comments that reverting PR [rust#76030](https://github.com/rust-lang/rust/issues/79246#issuecomment-731836309) fixes the regression
- "Segfault in 1.48.0 while release-building with `pango` crate with `target-cpu=native`" [rust#79564](https://github.com/rust-lang/rust/issues/79564)
  - opened by [twistedfall](https://github.com/twistedfall)
  - not yet assigned, unsure about the priority
  - @**matthiaskrgr** comments it could be related to [rust#76213](https://github.com/rust-lang/rust/issues/79564#issuecomment-735842549) and this issue provides a smaller reproducible sample
  - [tmiasko](https://github.com/tmiasko) comments that is could related to PR [rust#76030](https://github.com/rust-lang/rust/issues/79564#issuecomment-736102763) which exposes an [LLVM bug](https://bugs.llvm.org/show_bug.cgi?id=48340)
  - nominating to discuss if this issue is related to the same LLVM issue as issue #76213
- "Miscompilation root-caused to llvm bug" [rust#79708](https://github.com/rust-lang/rust/issues/79708)
    - Reported by @_**Jeremy Fitzhardinge**
    - LLVM alias analysis bug that is causing soundness issues for production users
    - Apparently appeared in Rust 1.47.0, but the LLVM bug is present since 2015 ([relevant comment](https://github.com/rust-lang/rust/issues/79708#issuecomment-738993565))
    - Fixed in LLVM upstream on December 3rd ([review](https://reviews.llvm.org/D91576), [commit](https://github.com/llvm/llvm-project/commit/18603319321a6c1b158800bcc60035ee01549516))
    - Nominated to discuss if a cherry-pick [of the fix](https://github.com/rust-lang/rust/issues/79708#issuecomment-740982542) is warranted
- "Unsafe checking skips pointer dereferences in unused places" [rust#80059](https://github.com/rust-lang/rust/issues/80059)
  - Opened by @**scottmcm**
  - `P-medium` issue has been this way for over 3 years
  - Nominated for further discussion after T-lang meeting of 2020-12-15 
  - Linking a [comment](https://github.com/rust-lang/rust/issues/79735#issuecomment-745506187) from @**nikomatsakis** on issue [rust#79735](https://github.com/rust-lang/rust/issues/79735) which at least partly applies here too
- regression 1.49: trait bound no longer inferred for associated type [rust#79904](https://github.com/rust-lang/rust/issues/79904)
  - opened by @**Ryan Levick**
  - `crater` run fails compiling a number of crates with different errors on trait bounds
  - might be related to [rust#78893](https://github.com/rust-lang/rust/issues/78893)
  - Here's the [tracking issue](https://github.com/rust-lang/rust/issues/79501) for crater runs for 1.49

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "RFC: Checking conditional compilation at compile time" [rfcs#3013](https://github.com/rust-lang/rfcs/pull/3013)