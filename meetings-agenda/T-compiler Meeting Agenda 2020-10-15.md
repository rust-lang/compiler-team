---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-10-15

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
- Pending FCP requests (check your boxes!)
  - "Accept RFC 2951 "Linking modifiers for native libraries"" [compiler-team#356](https://github.com/rust-lang/compiler-team/issues/356)
- Things in FCP (make sure you're good with it)
  - "`ty.kind()` -> `ty.data()`" [compiler-team#359](https://github.com/rust-lang/compiler-team/issues/359)
  - "inherit stable annotations in enum variants and field items" [compiler-team#370](https://github.com/rust-lang/compiler-team/issues/370)
- Accepted MCPs
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
- Finalized FCPs (disposition merge)
  - "Promote aarch64-pc-windows-msvc to Tier 2 Development Platform" [rust#75914](https://github.com/rust-lang/rust/pull/75914)
  - "Set up CI for aarch64-apple-darwin" [rust#75991](https://github.com/rust-lang/rust/pull/75991)
  - [T-libs] "Tracking issue for slice_partition_at_index" [rust#55300](https://github.com/rust-lang/rust/issues/55300) (closed via merge of PR #77639 Oct 13)
  - [T-libs] "Fix Debug implementations of some of the HashMap and BTreeMap iterator types" [rust#75377](https://github.com/rust-lang/rust/pull/75377) (PR merged Oct 2)
  - [T-libs] "Stabilize slice_ptr_range." [rust#77111](https://github.com/rust-lang/rust/pull/77111) (PR merged Oct 2)

### WG checkins

@*WG-async-foundations* checkin by @**tmandry**:
> Most activity has been in RFCs and improving the async book lately. We've fixed some implementation issues lately and have a [large backlog](https://github.com/orgs/rust-lang/projects/2) of others.
>
> There haven't been a ton of people picking up new issues to work on, but I'd still say the main bottlenecks have been reviews and mentoring. I'm shifting priorities to focus more time on this and would love to grow more reviewers from the people who are contributing. One (minor) challenge here is it's unclear if we want to grant r+ to individual wg members, but I think we do.

@*WG-diagnostics* checkin by @**estebank**:
> As usual, there has been a flurry of unstructured activity, lots of small and medium sized improvements. The following are a loose cathegorization of some of the salient work since the last update, but I'm sure I'm missing some (mainly PRs I'm fogetting about that didn't close an existing A-diagnostics ticket)
> * **short path in error messages for unique identifiers** 🎉
> * various improvements to structured suggestions for invalid patterns and invalid enum uses
> * various small fixes to I-perf, parser and span accuracy regressions
> * various borrowck wording and span tweaks
> * more turbofish misparse recovery and suggestions
> * gracefully handle range `const` used as pattern [rust#76222](https://github.com/rust-lang/rust/pull/76222)
> * structured suggestion when finding trait where a type was expected in where clause and trait object type [rust#77087](https://github.com/rust-lang/rust/pull/77087)
> * silence various redundant trait selection errors
> * detect turbofish without surrounding angle brackets and recover parser state gracefully
> * smarter numeric conversion suggestion [rust#73145](https://github.com/rust-lang/rust/issues/73145)
> * suggest constraining type parameter with appropriate trait bound when encountering binop involving them
> * auditted hidden/short code suggestions
> * tweak "missing lifetime" structured suggestions to be more accurate and account for `for<'lt>`
> 
> Upcoming change needing eyes:
> * Provide appropriate types in turbofish suggestions [rust#76043](https://github.com/rust-lang/rust/pull/76043)


## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "rustc_parse: More precise spans for `tuple.0.0`" [rust#77774](https://github.com/rust-lang/rust/pull/77774)
  - Fixes a severe rustfmt issue [rustfmt#4355](https://github.com/rust-lang/rustfmt/issues/4355)
  - cc @**Vadim Petrochenkov** @**Esteban Küber** 
- "Update crossbeam-channel to avoid UB" [rust#77819](https://github.com/rust-lang/rust/pull/77819)
  - Porting of a [security patch in crossbeam-channel](https://github.com/RustSec/advisory-db/pull/425) already in 1.47 stable
  - cc @**mati865** @**Joshua Nelson** @**simulacrum** @**lcnr**
- "Do not ICE with TraitPredicates containing [type error]" [rust#77930](https://github.com/rust-lang/rust/pull/77930)
  - Fixes a `P-medium` ICE [rustc#77919](https://github.com/rust-lang/rust/issues/77919) on resolving bounds after type-checking error
  - cc @**Esteban Küber** @**Jack Huey**

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Do not ICE with TraitPredicates containing [type error]" [rust#77930](https://github.com/rust-lang/rust/pull/77930)
  - Fixes a `P-medium` ICE [rustc#77919](https://github.com/rust-lang/rust/issues/77919) on resolving bounds after type-checking error
  - Nominating for stable backport because this is handling a stable-to-stable regression, but it was introduced back in 1.36 so it doesn't warrant a dot release only for this one fix.
  - cc @**Esteban Küber** @**Jack Huey**

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
  - cc @**DPC** @**Joshua Nelson** @**Eric Huss** @**mark-i-m** @**Vadim Petrochenkov**

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [48 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [30 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-critical, 2 P-high, 4 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 19 P-high, 63 P-medium, 6 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Optimisation-caused UB during cross-crate compilation" [rust#76387](https://github.com/rust-lang/rust/issues/76387)
  - This one was already discussed
  - [A different LLVM patch has been accepted](https://reviews.llvm.org/D88529) and will be included in LLVM 12
  - The accepted patch is pretty small and self-contained, so we could cherry-pick it if we wanted to
  - cc @**Aaron Hill**
- "coreos-installer test segfaults on s390x-unknown-linux-gnu" [rust#77382](https://github.com/rust-lang/rust/issues/77382)
  - This one was already discussed
  - @**ecstatic-morse** points to this issue as duplicate of [rust#74551](https://github.com/rust-lang/rust/issues/74551)
  - @**cuviper** opened an issue on [LLVM](https://bugs.llvm.org/show_bug.cgi?id=47736) and the issue was already fixed
  - [Backport is waiting for LLVM 11 final rebase](https://github.com/rust-lang/rust/issues/77382#issuecomment-708618338)
- "[ICE] Encountered errors resolving bounds after type-checking" [rust#77653](https://github.com/rust-lang/rust/issues/77653)
  - This one was already discussed
  - Nightly regression
  - Opened by @**lzutao** to highlight comment from issue above :point_up: [rust#77638](https://github.com/rust-lang/rust/issues/77638#issuecomment-704892157)
  - Bisected to commit [08e2d46](https://github.com/rust-lang/rust/commit/08e2d4616613716362b4b49980ff303f2b9ae654)
  - [PR by @**Matthew Jasper** that fixes the issue is up](https://github.com/rust-lang/rust/pull/77720) 
- "ICE: Projection bound ... was applicable to ... but now is not" [rust#77656](https://github.com/rust-lang/rust/issues/77656)
  - This one was already discussed
  - Nightly regression that impacts code in a crate
  - Bisected to commit [08e2d46](https://github.com/rust-lang/rust/commit/08e2d4616613716362b4b49980ff303f2b9ae654), merged in [rust#73905](https://github.com/rust-lang/rust/pull/73905)
  - [PR by @**Matthew Jasper** that fixes the issue is up](https://github.com/rust-lang/rust/pull/77720) 

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "ICE: Expected module, found DefId" [rust#75982](https://github.com/rust-lang/rust/issues/75982)
  - Unassigned
  - Reported by @**Daniel Henry-Mantilla|232018**
  - Issue priority raised to `P-high`: issue reporter [mentions there was a test shadowing the ICE](https://github.com/rust-lang/rust/issues/75982#issuecomment-706100003) behind a compiler error. ICE persists after removing this test. 
- "Build hang on Linux with nightly and beta toolchains" [rust#76980](https://github.com/rust-lang/rust/issues/76980)
  - Unassigned
  - Build hangs on beta
  - @**Eric Huss** bisected it to [rust#73526](https://github.com/rust-lang/rust/pull/73526)
  - @**cuviper** [is not aware of any LLVM 11 issue like that ](https://github.com/rust-lang/rust/issues/76980#issuecomment-695805807)
  - A [possible workaround was added](https://github.com/rust-lang/rust/pull/77642) by @**Pietro Albini** but it doesn't seem to be confirmation if works or not.
  - @**cuviper** believes the real issue stems in PR [rustc#74163](https://github.com/rust-lang/rust/pull/74163)
  - There's a long technical analysis in the [last comment](https://github.com/rust-lang/rust/issues/76980#issuecomment-705800997)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- "New "warning incompatible with previous forbid in same scope" error" [rust#77713](https://github.com/rust-lang/rust/issues/77713)
  - Opened by @**Nemo157** 
  - Error seems two conflicting/overlapping `unused_extern_crates` linting options cause a crash
  - issue reporter mentions issue [rustc#77713](https://github.com/rust-lang/rust/issues/70819) and following PR [rustc#77534](https://github.com/rust-lang/rust/pull/77534) as origin of the intended behaviour
  - @**nikomatsakis** reported about the [discussion on this issues](https://github.com/rust-lang/rust/issues/77713#issuecomment-707326546) and suggests to be ok with giving precedence to the `forbid` directive, provided a context of how the linting precedence used to work, works today and in different context (e.g. from the CLI)

## Performance logs

Overall, fairly busy week, but without major regressions that need to be
addressed.

Triage done by **@simulacrum**.
Revision range: [ea7e131435a960d154e9a5d6a9297039574ffd7d..06a079c43efb062e335e6e6c9dabd3c750619980](https://perf.rust-lang.org/?start=ea7e131435a960d154e9a5d6a9297039574ffd7d&end=06a079c43efb062e335e6e6c9dabd3c750619980&absolute=false&stat=instructions%3Au)

0 Regressions, 3 Improvements, 3 Mixed
1 mixed improvement in a rollup

### Regressions

### Improvements

[#73905](https://github.com/rust-lang/rust/issues/73905)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5849a7eca90582ee59b67eb09548a2aa424d7f52&end=08e2d4616613716362b4b49980ff303f2b9ae654&stat=instructions:u) (up to -90.5% on `full` builds of `wf-projection-stress-65510-check`)

[#77597](https://github.com/rust-lang/rust/issues/77597)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=91a79fb29ac78d057d04dbe86be13d5dcc64309a&end=e055f87cdfcac1f4da6c518a547dee459de0aa26&stat=instructions:u) (up to -3.5% on `full` builds of `match-stress-enum-debug`)

[#77793](https://github.com/rust-lang/rust/issues/77793)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=bc74dd711fd154555dea3b110dfed39c4dc37bc6&end=8cc82ee340ed96099680ec1165cf5e192d658d0f&stat=instructions:u) (up to -2.3% on `full` builds of `piston-image-debug`)

### Mixed

[#77594](https://github.com/rust-lang/rust/issues/77594)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5ded394553296d56bb66e925d7001ab3271979ce&end=5849a7eca90582ee59b67eb09548a2aa424d7f52&stat=instructions:u) (up to 46.0% on `full` builds of `deeply-nested-opt`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5ded394553296d56bb66e925d7001ab3271979ce&end=5849a7eca90582ee59b67eb09548a2aa424d7f52&stat=instructions:u) (up to -1.6% on `incr-unchanged` builds of `deeply-nested-opt`)

[#77630](https://github.com/rust-lang/rust/issues/77630)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=98edd1fbf8a68977a2a7c1312eb1ebff80515a92&end=59dafb876e125c49fca93820c5ef22da3fcb8644&stat=instructions:u) (up to -5.2% on `full` builds of `match-stress-enum-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=98edd1fbf8a68977a2a7c1312eb1ebff80515a92&end=59dafb876e125c49fca93820c5ef22da3fcb8644&stat=instructions:u) (up to 1.6% on `full` builds of `style-servo-opt`)

[#77771](https://github.com/rust-lang/rust/issues/77771)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=cae8bc1f2324e31c98cb32b8ed37032fc9cef405&end=87b71ed68b69361ab0d45653a972ad4cf7a65cba&stat=instructions:u) (up to -2.5% on `incr-patched: Job` builds of `regex-opt`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=cae8bc1f2324e31c98cb32b8ed37032fc9cef405&end=87b71ed68b69361ab0d45653a972ad4cf7a65cba&stat=instructions:u) (up to 1.3% on `full` builds of `match-stress-enum-check`)

### Nags requiring follow up

- #77594
- [#77630](https://github.com/rust-lang/rust/pull/77630#issuecomment-707713702)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
-  Confusing type error due to strange inferred type for a closure argument [rustc#41078](https://github.com/rust-lang/rust/issues/41078)
    -  Longstsanding issue since 2017, has generated many duplicates since then
    -  Seems to impact more from an usability/ergonomics point of view since there are workarounds, example [this comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-298180037) and this [Stack Overflow](https://stackoverflow.com/questions/58773989) answer
    -  [First comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-293646723) by @**nikomatsakis** 
    -  More [recent comment](https://github.com/rust-lang/rust/issues/41078#issuecomment-358385901) from @**nikomatsakis**
    -  [Another explaination](https://github.com/rust-lang/rust/issues/41078#issuecomment-552064766) from @**eddyb** 
    -  nightly from June shows a [slightly different error](https://github.com/rust-lang/rust/issues/41078#issuecomment-649465827)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.
