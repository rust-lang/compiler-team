---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-10-22

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Rust Compiler + Dev Tools Jobs
    - Microsoft has a [Senior Software Engineer role](https://careers.microsoft.com/us/en/job/917051/Senior-Software-Engineer): "We are looking for engineers to work on Rust compilers and tools to support the usage of the Rust programming language."
    - Facebook is also hiring compiler and library engineers (US only), according to [Nadav Rotem tweet](https://twitter.com/nadavrot/status/1319003839018614784?s=20); (if anyone finds an actual job listing, feel free to share it)
- Tomorrow Friday 23rd at <time:2020-10-23T14:00:00+00:00> we have a [Compiler Team Planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)
- New MCPs (take a look, see if you like them!)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
- Old MCPs (not seconded, take a look)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
- Pending FCP requests (check your boxes!)
  - "inherit stable annotations in enum variants and field items" [compiler-team#370](https://github.com/rust-lang/compiler-team/issues/370)
- Things in FCP (make sure you're good with it)
  - "Accept RFC 2951 "Linking modifiers for native libraries"" [compiler-team#356](https://github.com/rust-lang/compiler-team/issues/356)
  - "`ty.kind()` -> `ty.data()`" [compiler-team#359](https://github.com/rust-lang/compiler-team/issues/359)
  - "Change type folding to take self by value" [compiler-team#371](https://github.com/rust-lang/compiler-team/issues/371)
  - "TypeVisitor: use ops::ControlFlow instead of bool" [compiler-team#374](https://github.com/rust-lang/compiler-team/issues/374)
  - "Allow making `RUSTC_BOOTSTRAP` conditional on the crate name" [rust#77802](https://github.com/rust-lang/rust/pull/77802)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - [T-lang] "resolve: Do not put nonexistent crate `meta` into prelude" [rust#75802](https://github.com/rust-lang/rust/pull/75802)
  - [T-lang] "stabilize union with 'ManuallyDrop' fields and 'impl Drop for Union'" [rust#77547](https://github.com/rust-lang/rust/pull/77547)

### WG checkins

@*WG-rustc-dev-guide* checkin by @**Santiago Pastorino** and @**Joshua Nelson**:
>- [75 merged PRs!](https://github.com/rust-lang/rustc-dev-guide/pulls?q=is%3Apr+sort%3Aupdated-desc+updated%3A%3E2020-09-03+)
>- Joshua Nelson is now a co-lead of the rustc-dev-guide working group! [team#449](https://github.com/rust-lang/team/pull/449)
>
>### Authors

>**@1c3t3a**, **@arora-aman**, **@bugadani**, **@caass**, **@camelid**, **@ecstatic-morse**, **@follower**, **@guswynn**, **@JakobDegen**, **@JOE1994**, **@JohnTitor**, **@Julian-Wollersberger**, **@jyn514**, **@LeSeulArtichaut**, **@macdonaldo**, **@mark-i-m**, **@matklad**, **@mautamu**, **@mightyiam**, **@Monadic-Cat**, **@Nadrieril**, **@pickfire**, **@r-52**, **@richkadel**, **@spastorino**, **@Stupremee**
>
>### Major Changes
>
>Some minor changes are omitted for brevity.
>
>#### Contributor-facing changes
>
>- New content
>    - Explain stages in terms of the compiler currently running (take N+1) [#857](https://github.com/rust-lang/rustc-dev-guide/pull/857)
>    - Explain pattern exhaustiveness checking [#923](https://github.com/rust-lang/rustc-dev-guide/pull/923)
>    - Added description of word Scrutinee to the glossary [#921](https://github.com/rust-lang/rustc-dev-guide/pull/921)
>    - Add a paragraph about reviewers and review latency in Getting Started chapter [#907](https://github.com/rust-lang/rustc-dev-guide/pull/907)
>    - Document the usage of cargo-llvm-lines and -Ztimings. [#905](https://github.com/rust-lang/rustc-dev-guide/pull/905)
>    - Add docs for `x.py setup` [#899](https://github.com/rust-lang/rustc-dev-guide/pull/899)
>    - Add section on using git [#890](https://github.com/rust-lang/rustc-dev-guide/pull/890)
>    - add suggested workflow to setup nightly rustup for rust/ [#883](https://github.com/rust-lang/rustc-dev-guide/pull/883)
>    - Describe how to generate graphviz diagrams for dataflow [#882](https://github.com/rust-lang/rustc-dev-guide/pull/882)
>    - Add Salsa In More Depth lecture [#879](https://github.com/rust-lang/rustc-dev-guide/pull/879)
>    - Document new way to not build LLVM [#878](https://github.com/rust-lang/rustc-dev-guide/pull/878)
>    - Add a chapter on useful `@rustbot` commands [#874](https://github.com/rust-lang/rustc-dev-guide/pull/874)
>    - Add a chapter on all the identifiers used through `rustc` [#872](https://github.com/rust-lang/rustc-dev-guide/pull/872)
>    - Add information about default stages for x.py [#865](https://github.com/rust-lang/rustc-dev-guide/pull/865)
>    - Document how to promote a target from cross-compiled to hosted [#860](https://github.com/rust-lang/rustc-dev-guide/pull/860)
>    - Add section describing git hook functionality [#848](https://github.com/rust-lang/rustc-dev-guide/pull/848)
>    - Document CGU partioning in case of generic and inline functions [#847](https://github.com/rust-lang/rustc-dev-guide/pull/847)
>    
>- Improvements and fixes
>    - Recommend debug-logging instead of debug [#917](https://github.com/rust--lang/rustc-dev-guide/pull/917)
>    - Link to the -Zmir-opt-level proposal [#888](https://github.com/rust-lang/rustc-dev-guide/pull/888)
>    - Don't recommend building the compiler for running tests on the standard library [#887](https://github.com/rust-lang/rustc-dev-guide/pull/887)
>    - Improve instructions for adding a new test [#881](https://github.com/rust-lang/rustc-dev-guide/pull/881)
>    - Improve MIR sections in appendix [#880](https://github.com/rust-lang/rustc-dev-guide/pull/880)
>    - Update prerequisites, with an eye towards windows [#863](https://github.com/rust-lang/rustc-dev-guide/pull/863)
>    - update docs to refer to the `compiler/` move [#846](https://github.com/rust-lang/rustc-dev-guide/pull/846)
>
>#### Internal changes
>
>- Linkcheck only changed files (except for cron jobs) [#913](https://github.com/rust-lang/rustc-dev-guide/pull/913). This fixes persistent issues with CI spuriously failing.
>- Allow anyone to change the status of a PR [#910](https://github.com/rust-lang/rustc-dev-guide/pull/910)
>
>### Changes in progress
>
>- Add a `check-in.sh` script to automate writing markdown links for weekly check-in [#930](https://github.com/rust-lang/rustc-dev-guide/pull/930)

@*WG-llvm* checkin by @**Nikita Popov** :
>The first parts of the mustprogress attribute have landed (https://reviews.llvm.org/D86233, https://reviews.llvm.org/D85393). This means that forward progress is now opt-in. Once this work is complete, this will resolve current bugs around infinite loops being optimized away. There isn't a patch for that yet, but I dare say the hardest part (convincing people that this is the right thing to do) is done now...
>
>MemorySSA-based DSE has been enabled by default (https://reviews.llvm.org/D87163), which means dead stores are eliminated across based blocks. Expect some compile-time regression... More importantly for rust, I've ported MemCpyOpt to MSSA (https://reviews.llvm.org/D89207), which will allow memcpy's to be eliminated across blocks as well, a long-standing optimization problem. It's not the first attempt to do this, but I'm optimistic :)
>
>Some older changes that I probably have not mentioned before. I've finally managed to make correlated value propagation optimize conditions based on local value ranges (https://reviews.llvm.org/D69686), which will resolve various missing bounds check optimizations where constant operands are involved. There is also a new constraint elimination pass (https://reviews.llvm.org/D84547) which is able to reason about complex implications symbolically. However, it is not enabled by default, and there's no roadmap to enable it at present.
>
>Also been a while ago, but someone took over my work for introducing saturating float to int casts (https://reviews.llvm.org/D54749). There's been some slow progress, and maybe there's a chance that this will land before the heat death of the universe... Rust has worked around this in the meantime, but once/if it lands we can improve codegen.

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Tweak `if let` suggestion to be more liberal with suggestion and to not ICE" [rust#77283](https://github.com/rust-lang/rust/pull/77283)
  - Opened by @**Esteban Küber** 
  - Should fix [rust#77218](https://github.com/rust-lang/rust/issues/77218) (`P-high` beta regression) and [rust#77238](https://github.com/rust-lang/rust/issues/77238)
- "Revert "Allow dynamic linking for iOS/tvOS targets."" [rust#77716](https://github.com/rust-lang/rust/pull/77716)
  - (has not landed in nightly) 
  - Opened by `@francesca64`
  - Assigned to @**Jonas Schievink** 
  - This patch reverts [rust#73516](https://github.com/rust-lang/rust/pull/73516) and **disallows** compiling against dynamic libs (Apple does not allow that and your App won't be published)
  - Previous patch however **allowed** dynamic linking
  - Reverting now the patch breaks code in production (as pointed out by `@aspenluxxxy`, previous patch author)
  - @**Jonas Schievink** [suggests as last resort](https://github.com/rust-lang/rust/pull/77716#issuecomment-709364682) to revert the previous patch (although not the ideal solution) since this can now be considered a regression from stable
  - `@cutsoy` implements a patch [adding a new parameter to cargo](https://github.com/rust-lang/rust/pull/77716#issuecomment-709410444)
  - Issue reporter [suggests](https://github.com/rust-lang/rust/pull/77716#issuecomment-712492125) that the above patch works just fine
  - Question: from the T-compiler point of view, anything else that can be done/investigated or the case is closed?
- "Disable MatchBranchSimplification" [rust#78151](https://github.com/rust-lang/rust/pull/78151)
  - Opened by `@tmiasko` 
  - Mentions that this optimization can result in unsoundness, because it introduces additional uses of a place holding the discriminant value without ensuring that it is valid
  - Patch found after adding the [-Zvalidate-mir](https://github.com/rust-lang/rust/pull/77369) validation
- "Disable "optimization to avoid load of address" in InstCombine" [rust#78195](https://github.com/rust-lang/rust/pull/78195)
    - Opened by `@tmiasko`
    - Assigned to @**oli** 
    - This fixes `P-critical` issue [rust#78192](https://github.com/rust-lang/rust/issues/78192) 

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Revert "Allow dynamic linking for iOS/tvOS targets."" [rust#77716](https://github.com/rust-lang/rust/pull/77716)
  - This was also beta nominated
- "Disable MatchBranchSimplification" [rust#78151](https://github.com/rust-lang/rust/pull/78151)
  - This was also beta nominated

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Tracking issue for renaming crates inside compiler directory" [rust#76425](https://github.com/rust-lang/rust/issues/76425)
  - References this [MCP](https://github.com/rust-lang/compiler-team/issues/336)
  - The goal is to have all crates under `./compiler` have a consistent name
  - @**nikomatsakis**  summarized the discussion in this [HackMD file](https://hackmd.io/1FgS1fZGSOyWrwhDMq98pw)
  - cc @**DPC** @**Joshua Nelson** @**Eric Huss** @**mark-i-m** @**Vadim Petrochenkov**

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [6 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [3 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [48 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [29 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 4 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-critical, 2 P-high, 4 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 18 P-high, 63 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Increasingly slow compilation as more levels of `async` are added in Rust 1.46" [rust#75992](https://github.com/rust-lang/rust/issues/75992)
  - Opened by @**Nicholas Bishop** 
  - Unassigned, not easy to reproduce
  - [@kellerkindt](https://github.com/rust-lang/rust/issues/75992#issuecomment-683270098) and [@algesten](https://github.com/rust-lang/rust/issues/75992#issuecomment-683274620) did some bisecting 
  - @**Noah Kennedy** is trying to build a minimal repro 
  - @**lcnr** suggests instead of reverting important patches a possible way forward could be implementing some caching like in [PR #76928](https://github.com/rust-lang/rust/issues/75992#issuecomment-713100226)
- "Optimisation-caused UB during cross-crate compilation" [rust#76387](https://github.com/rust-lang/rust/issues/76387)
  - This one was already discussed
  - Assigned to @**Aaron Hill**
  - [A different LLVM patch has been accepted](https://reviews.llvm.org/D88529) and will be included in LLVM 12
  - The accepted patch is pretty small and self-contained, so we could cherry-pick it if we wanted to
- "[ICE] Encountered errors resolving bounds after type-checking" [rust#77653](https://github.com/rust-lang/rust/issues/77653)
  - This one was already discussed
  - Nightly regression
  - Opened by @**lzutao** to highlight comment from issue above :point_up: [rust#77638](https://github.com/rust-lang/rust/issues/77638#issuecomment-704892157)
  - Bisected to commit [08e2d46](https://github.com/rust-lang/rust/commit/08e2d4616613716362b4b49980ff303f2b9ae654)
  - [PR by @**Matthew Jasper** that fixes the issue is up and r+ed](https://github.com/rust-lang/rust/pull/77720) but with issues to go through
- "ICE: Projection bound ... was applicable to ... but now is not" [rust#77656](https://github.com/rust-lang/rust/issues/77656)
  - This one was already discussed
  - Nightly regression that impacts code in a crate
  - Bisected to commit [08e2d46](https://github.com/rust-lang/rust/commit/08e2d4616613716362b4b49980ff303f2b9ae654), merged in [rust#73905](https://github.com/rust-lang/rust/pull/73905)
  - [PR by @**Matthew Jasper** that fixes the issue is up and r+ed](https://github.com/rust-lang/rust/pull/77720) but with issues to go through
- "InstCombine introduces an incorrect use of a local after its storage has ended" [rust#78192](https://github.com/rust-lang/rust/issues/78192)
    - Opened by `tmiasko`
    - MIR opt causes unsoundness
    - Found by MIR validator PR [rust#77369](https://github.com/rust-lang/rust/pull/77369) & [rust#78147](https://github.com/rust-lang/rust/pull/78147)
    - Bugs' origin [rust#76683](https://github.com/rust-lang/rust/pull/76683)
    - Already merged PR [rust#78195](https://github.com/rust-lang/rust/pull/78195) to disable problematic parts of InstCombine optimization, waiting for beta backport

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- "regression: could not fully normalize type" [rust#78139](https://github.com/rust-lang/rust/issues/78139)
    - Opened by @**simulacrum** 
    - Regression seems to be in PR [rust#70793](https://github.com/rust-lang/rust/pull/70793)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "ICE: Expected module, found DefId" [rust#75982](https://github.com/rust-lang/rust/issues/75982)
  - Reported by @**Daniel Henry-Mantilla|232018**
  - Assigned to @**Aaron Hill** 
  - Issue priority raised to `P-high`: issue reporter [mentions there was a test shadowing the ICE](https://github.com/rust-lang/rust/issues/75982#issuecomment-706100003) behind a compiler error. ICE persists after removing this test. 
- "Build hang on Linux with nightly and beta toolchains" [rust#76980](https://github.com/rust-lang/rust/issues/76980)
  - Unassigned
  - Build hangs on beta
  - @**Eric Huss** bisected it to [rust#73526](https://github.com/rust-lang/rust/pull/73526)
  - @**cuviper** [is not aware of any LLVM 11 issue like that ](https://github.com/rust-lang/rust/issues/76980#issuecomment-695805807)
  - A [possible workaround was added](https://github.com/rust-lang/rust/pull/77642) by @**Pietro Albini** but it doesn't seem to be confirmation if works or not.
  - @**cuviper** believes the real issue stems in PR [rustc#74163](https://github.com/rust-lang/rust/pull/74163)
  - There's a long technical analysis in the [last comment](https://github.com/rust-lang/rust/issues/76980#issuecomment-705800997)
  - @**simulacrum** asked `jethrogb` and @**cuviper** if they could open a PR about it
- "ICE on `if let Some() = ...` expression in loop with variable shadowing and missing let keyword" [rust#77218](https://github.com/rust-lang/rust/issues/77218)
  - Opened by `zdenek-crha`
  - Regression in PR [rust#75931](https://github.com/rust-lang/rust/pull/75931)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- "ICE:  tuple_fields called on non-tuple:  async fn with unknown macro" [rust#77993](https://github.com/rust-lang/rust/issues/77993)
  - opened by @**NeoRaider** 
  - reviewed by @**Vadim Petrochenkov** and @**LeSeulArtichaut** 
  - This should fix an issue emerged in [#69274](https://github.com/rust-lang/rust/pull/69274) and [#70307](https://github.com/rust-lang/rust/issues/70307)
    
## Performance logs

A variety of changes, nothing particularly notable from a performance
perspective. [#77792](https://github.com/rust-lang/rust/issues/77792) is an
interesting win on migrating to tracing values rather than the older log
formatting. [#76859](https://github.com/rust-lang/rust/issues/76859) is also
interesting, starting out as a functional fix but appears to have been a
performance win for incremental benchmarks in some cases as well.

[Triage](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs) done by **@simulacrum**.
Revision range: [06a079c43efb062e335e6e6c9dabd3c750619980..22e6b9c68941996daa45786b4145e6196e51f0f4](https://perf.rust-lang.org/?start=06a079c43efb062e335e6e6c9dabd3c750619980&end=22e6b9c68941996daa45786b4145e6196e51f0f4&absolute=false&stat=instructions%3Au)

4 Regressions, 7 Improvements, 0 Mixed
2 of them in rollups

### Regressions

[#77755](https://github.com/rust-lang/rust/issues/77755)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e8529c79cce76b47b7b61060db36cf8201c688a3&end=2d6eccdb67aef48d0804cb473536b925f61a7f18&stat=instructions:u) (up to 1.3% on `full` builds of `deeply-nested-async-check`)
- [Nag](https://github.com/rust-lang/rust/pull/77755#issuecomment-714086526)

[#77873](https://github.com/rust-lang/rust/issues/77873)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=19e1aac6ea9879c6d10eed7106b3bc883e5bf9a5&end=93deabce03dc10a80244f5da3e3819452744da2a&stat=instructions:u) (up to 2.7% on `full` builds of `wg-grammar-check`)
- Functional change. Regression not significantly major to warrant a revert.

[#78060](https://github.com/rust-lang/rust/issues/78060)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ffeeb20398bb9a25c1f75599b942f57c85a2140d&end=043eca7f0b34d12e61c44206beca740628647080&stat=instructions:u) (up to 1.2% on `incr-unchanged` builds of `clap-rs-check`)
- Rollup; likely due to BTreeMap or meta-prelude changes. Not worth deep
  investigation: regression is minor and interesting changes are likely not
  readily changeable.

[#77250](https://github.com/rust-lang/rust/issues/77250)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=19356453cbfb734bc60a1853c10e3095d05e0342&end=22e6b9c68941996daa45786b4145e6196e51f0f4&stat=instructions:u) (up to 3.1% on `incr-unchanged` builds of `packed-simd-check`)
- Functional change that we definitely want, performance regression is not too
  significant.

### Improvements

[#76859](https://github.com/rust-lang/rust/issues/76859)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=06a079c43efb062e335e6e6c9dabd3c750619980&end=c71248b70870960af9993de4f31d3cba9bbce7e8&stat=instructions:u) (up to -58.0% on `incr-patched: Compiler new` builds of `regex-opt`)
- Correctness is the key here, but it seems like our hand-rolled incremental
  tracking was (at least on the perf benchmarks) worse anyway.

[#77792](https://github.com/rust-lang/rust/issues/77792)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=8dae8cdcc8fa879cea6a4bbbfa5b32e97be4c306&end=abbdec3be6cfce1175d0dc6737a2999cf43b530d&stat=instructions:u) (up to -1.7% on `incr-unchanged` builds of `deeply-nested-async-opt`)
- Switching to tracing spans and tracing's "values" over string-formatting seems
  to have been a improvement here. Definitely an interesting result --
  presumably tracing's handling is somehow more visible to LLVM?

[#77796](https://github.com/rust-lang/rust/issues/77796)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=abbdec3be6cfce1175d0dc6737a2999cf43b530d&end=afb4514c099fde6e3102373602bea9e6dacd4f88&stat=instructions:u) (up to -1.4% on `full` builds of `deeply-nested-async-check`)
- Seems like potentially a slight regression on wall times, but ultimately the
  change is good on its merits, so no action is taken at this time.

[#77947](https://github.com/rust-lang/rust/issues/77947)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b6e2dc6cdece6b498b876bc7e9377ff7d63d93e7&end=9bd740a8f17d75168b683bcfb077b6e450047df5&stat=instructions:u) (up to -7.4% on `incr-unchanged` builds of `cranelift-codegen-debug`)
- Seems to be a mixed result on [wall
  times](https://perf.rust-lang.org/compare.html?start=b6e2dc6cdece6b498b876bc7e9377ff7d63d93e7&end=9bd740a8f17d75168b683bcfb077b6e450047df5&stat=wall-time)
  though.

[#77373](https://github.com/rust-lang/rust/issues/77373)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=6af9846fcc8797bf97e9fb387385208c2219f3d0&end=ffeeb20398bb9a25c1f75599b942f57c85a2140d&stat=instructions:u) (up to -1.6% on `full` builds of `deeply-nested-async-check`)
- Wall times are less positive, but mostly on incremental. Not deemed a concern.

[#77908](https://github.com/rust-lang/rust/issues/77908)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=cb2462c53f2cc3f140c0f1ea0976261cab968a34&end=f90e6173053f7e6b377d7f75367b511ceee7d9d1&stat=instructions:u) (up to -1.8% on `full` builds of `inflate-check`)

[#78151](https://github.com/rust-lang/rust/issues/78151)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=9832374f6e378971e1a933362cf9781b121bb845&end=981346fc07dd5ef414c5b1b21999f7604cece006&stat=instructions:u) (up to -7.6% on `incr-patched: println` builds of `regression-31157-opt`)

### Nags requiring follow up

- https://github.com/rust-lang/rust/pull/77755#issuecomment-714086526

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- Confusing type error due to strange inferred type for a closure argument [rustc#41078](https://github.com/rust-lang/rust/issues/41078)
    - Longstsanding issue since 2017, has generated many duplicates since then
    - Seems to impact more from an usability/ergonomics point of view since there are workarounds, example [this comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-298180037) and this [Stack Overflow](https://stackoverflow.com/questions/58773989) answer
    - [First comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-293646723) by @**nikomatsakis** 
    - More [recent comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-358385901) from @**nikomatsakis**
    - [Another explaination](https://github.com/rust-lang/rust/issues/41078#issuecomment-552064766) from @**eddyb** 
    - nightly from June shows a [slightly different error](https://github.com/rust-lang/rust/issues/41078#issuecomment-649465827)
- "regression: target_feature no longer permitted in some places" [rust#78143](https://github.com/rust-lang/rust/issues/78143)
  - Opened by @**simulacrum** 
  - Should fix an issue caused by PR [rust#71205](https://github.com/rust-lang/rust/pull/71205)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Amend RFC2603 to allow mangled identifiers to start with a digit." [rfcs#2705](https://github.com/rust-lang/rfcs/pull/2705)
  - Submitted by @**eddyb** 
  - RFC proposes a new mangling scheme describing what the symbol names generated by the Rust compiler look like
  - Suggested by @**pnkfelix**  [in this comment](https://github.com/rust-lang/rfcs/pull/2603#discussion_r279670424)
- "RFC: -C export-executable-symbols" [rfcs#2841](https://github.com/rust-lang/rfcs/pull/2841)
  - Submitted by `@MaulingMonkey`
  - RFC proposes adding the ability to export symbols from executables, not just dylibs, via a new compiler flag `-C export-executable-symbols`
  - @**pnkfelix** [has some questions](https://github.com/rust-lang/rfcs/pull/2841#issuecomment-569852146)
