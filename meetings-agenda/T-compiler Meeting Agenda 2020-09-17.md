---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-09-17

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- [There was a meeting followup from last weekly meeting where a bunch of T-compiler RFC backlog things were discussed.](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.20followup.5D.202020-09-11.20.2354818)
- Tomorrow we will have the [MCP retrospective](https://github.com/rust-lang/compiler-team/issues/314) at <time:2020-09-18T14:00:00+00:00>
- wg-incr-comp will have its third meeting next Tuesday at 8am EDT.
    - Ping wesleywiser or pnkfelix if you're interested in helping out.
- New MCPs (take a look, see if you like them!)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "`ty.kind()` -> `ty.data()`" [compiler-team#359](https://github.com/rust-lang/compiler-team/issues/359)
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
  - "Uplift `temporary-cstring-as-ptr` lint from `clippy` into rustc" [compiler-team#346](https://github.com/rust-lang/compiler-team/issues/346)
  - "Uplift `drop-bounds` lint from clippy into rustc" [compiler-team#347](https://github.com/rust-lang/compiler-team/issues/347)
  - "Add StatementKind::Intrinsic to MIR" [compiler-team#348](https://github.com/rust-lang/compiler-team/issues/348)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
- Pending FCP requests (check your boxes!)
  - "Accept RFC 2951 "Linking modifiers for native libraries"" [compiler-team#356](https://github.com/rust-lang/compiler-team/issues/356)
  - "Promote aarch64-pc-windows-msvc to Tier 2 Development Platform" [rust#75914](https://github.com/rust-lang/rust/pull/75914)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - [T-libs] "Implement `Index` and `IndexMut` for arrays" [rust#74989](https://github.com/rust-lang/rust/pull/74989)
  - [T-lang] "Use implicit (not explicit) rules for promotability by default in `const fn`" [rust#75502](https://github.com/rust-lang/rust/pull/75502)
  - [T-libs] "Make some Ordering methods const" [rust#76198](https://github.com/rust-lang/rust/pull/76198)
  - [T-libs] "Stabilize some Option methods as const" [rust#76135](https://github.com/rust-lang/rust/pull/76135)
  - [T-libs] "Stabilize some Result methods as const" [rust#76136](https://github.com/rust-lang/rust/pull/76136)
  - [T-libs] "Add `[T; N]: TryFrom<Vec<T>>` (insta-stable)" [rust#76310](https://github.com/rust-lang/rust/pull/76310)

### WG checkins

Polymorphization working group checkin by @**davidtwco** @**eddyb** @**lcnr** 
> I think the initial goal ought to be getting polymorphization enabled by default:
>
>- #75185 was opened to perform a crater run on polymorphization enabled-by-default. This was rebased after some other PRs broke polymorphization and we didn't notice, and we've yet to rebase and re-queue it.
>
>We've currently got the following open PRs:
>
>- #75675 (assigned to @**eddyb**) was opened to adjust the new symbol mangling scheme to encode impl parameters - this is an alternative fix for #75326 (which was originally resolved by #75518 and then #75595 - which changed polymorphization's analysis to mark more parameters are used). It's works but one of the tests required normalization that didn't differ based on bitness, which was unexpected and we've yet to decide how to proceed.
>
>- #75737 (blocked, but approved by @**eddyb**)  was opened to remove the predicate logic in polymorphization's analysis. This logic was added during the original polymorphization PR (and then extended in #75518 and #75595) and isn't necessary after #75675 (which is why it is blocked). Other changes to polymorphization must have affected the necessity of this logic, since I'm confident that the new symbol mangling scheme wasn't the original impetus for it, but I'm not sure which changes those would have been.
>
>- #75414 (assigned to @**eddyb**) changes polymorphization's analysis to take an `InstanceDef`, which enables the MIR of shims to be polymorphized. I'm not sure if it is exactly what we want.
>
>- #75346 (assigned to @**nikomatsakis**) changes how `FnPtrShim`s are constructed so that they don't require substitution during codegen - this will help avoid double substitution from polymorphization changes.
>
>We've also got the following issues open:
>
>- #75327 would remove `ParamEnv::reveal_all()` from codegen, a necessary next step so that we can construct `ParamEnv`s that constrain generic parameters by their size (eventually) - this is the first step towards polymorphization by size/alignment.
>
>- #75336 suggests re-applying some changes from #75255 that we reverted (in #75337) because it caused regressions (the crux of this issue is fixing those regressions). #75255 modified the closure upvar tuple so that if it contained closures, those would be polymorphized - this was necessary to avoid issues that were revealed when the new symbol mangling scheme was used ([#t-compiler/wg-polymorphization>symbol mangling v0 ✕ polymorphisation](https://rust-lang.zulipchat.com/#narrow/stream/216091-t-compiler.2Fwg-polymorphization/topic/symbol.20mangling.20v0.20.E2.9C.95.20polymorphisation) discussed this issue initially). After chatting with eddy, I'm not sure that approach #75255 implemented is desirable - we've experimented with changing how the polymorphization analysis treats closures, and with attempts to reveal other issues that this could be a symptom of - we haven't had any luck with that though. Anyway, the changes that #75336 suggests polymorphizing closures anywhere in a `Instance`'s substs, not just in the upvar tuple because that would reduce duplication of more functions (see the example in the issue).
>
>- #69925 is fixed by #75346 above.
>
>- #75325 is probably the biggest unknown facing polymorphization right now and relates to how we handle the `type_id` and `type_name` intrinsics - which would make polymorphization observable. The issue contains some examples which were failing at one point with polymorphization enabled (I'm not sure if that's still the case). This issue requires a lot of investigation.
>
>I think that's everything. I think that landing the current PRs and addressing #75325 are the most important tasks right now, we can crater after that and hopefully try enabling polymorphization by default.

@*WG-polonius* checkin by @**nikomatsakis** and @**lqd** 
> The polonius WG (Niko, Albin, and Rémy) had a sprint at the beginning of August, where:
>- we continued the work on move errors: both in rustc to prepare the data needed to do the analysis and actually emit the errors computed by polonius, and in polonius itself, to fix potential false positives, and current efficiency issues in this part of the computation. Some new rules have been written but not yet fully implemented or tested, so this is something we'll continue to look at in the next sprint.
>- we were able to prototype our different lifetime analysis, and evaluate it: there was an open question whether it'd be better to track subset relations or equality relations, and we were able to find some subtle flaws in our current thoughts about tracking equality. There's some interesting theoretical core that could be useful in the future, but also has foundational issues, so we decided to keep tracking subset relations for now and not change our existing lifetime analysis rules.
>- we continued the work on universal region errors / illegal subset errors: we settled a tiny open question on whether we should compute these errors using subset relations or by looking for unexpected loans in universal regions. We decided to switch to using subset relations because it works everywhere: the polonius analysis is currently split into different parts for validation and efficiency reasons. Our existing subset errors computation had only been added to the main rules used for validation, and it used the "looking at unexpected loans" approach. We did the work necessary to update this, and also to compute the errors in the other parts dedicated to efficiency.
>- we were able to work on a fix for the current OOMs we see in a couple rustc UI tests (during fact generation): we have prototyped a fix in rustc and polonius. It is, however, quite invasive and requires subtle duplication of rules. So we also started looking at a different fix which could avoid that, and is something we'll continue to look at in the next sprint.
>- we did our periodic reevaluation of rustc UI tests using the polonius compare mode: find which tests might have changed .stderr files, add the ones missing for the tests added recently, etc; since the compare mode is not run on CI yet, we do this manually every few months to keep up to date with diagnostics changes and the likes. This time, a new test OOMs for move errors and will be fixed as part of this work mentioned earlier.
>- finally, we also looked at supporting profiling polonius' internals from rustc's -Zself-profile, and also when using the tracy profiler.


## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- "Ignore rustc_private items from std docs" [rust#76571](https://github.com/rust-lang/rust/pull/76571)
  - Opened by @**lzutao** and assigned to @**Joshua Nelson**
  - Potentially fixes the following issues [rust#74672](https://github.com/rust-lang/rust/issues/74672), [rust#75588](https://github.com/rust-lang/rust/issues/75588) and [rust#76529](https://github.com/rust-lang/rust/issues/76529)
  - @**GuillaumeGomez** is in favor of the backport

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
- "Don't run tidy exec check on WSL2" [rust#74753](https://github.com/rust-lang/rust/pull/74753)
  - This was discussed last week
  - @**nikomatsakis** approved the changes
  - @**mati865** is not convinced this is the right solution
  - Windows WG was just pinged
- "Uplift drop-bounds lint from clippy" [rust#75699](https://github.com/rust-lang/rust/pull/75699)
  - This is the implementation of [MCP #347](https://github.com/rust-lang/compiler-team/issues/347) to move the lint warning from clippy into the compiler, which needs a second
  - Reviewed by @**lzutao** @**Vadim Petrochenkov** and @**Aaron Hill** 

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [54 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [3 P-critical, 0 P-high, 4 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 5 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 20 P-high, 58 P-medium, 6 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "incorrect code generation for i686 release build for 1.47 beta and nightly" [rust#76042](https://github.com/rust-lang/rust/issues/76042)
  - This was discussed last week
  - Assigned to @**pnkfelix**
  - `I-unsound` issue and beta regression
  - It seems to be [a bug in LLVM](https://bugs.llvm.org/show_bug.cgi?id=47278), introduced in the LLVM 11 upgrade and triggered by compiler flag `-Copt-level=0`
  - The [LLVM bug](https://bugs.llvm.org/show_bug.cgi?id=47278) was fixed and included in the 11.x branch of LLVM
- "Optimisation-caused UB during cross-crate compilation" [rust#76387](https://github.com/rust-lang/rust/issues/76387)
  - This was discussed last week
  - Assigned to @**Aaron Hill**
  - Also nominated for discussion
  - Is not a regression, this never worked so it was also discussed if this was `P-critical` or `P-high`
  - [It's an LLVM bug](https://bugs.llvm.org/show_bug.cgi?id=47444)
  - @**Aaron Hill** is [left a patch up for review upstream and can be cherry picked if needed](https://github.com/rust-lang/rust/issues/76387#issuecomment-690610859)
- "regression: get_unchecked resolves to unstable feature use" [rust#76479](https://github.com/rust-lang/rust/issues/76479)
  - This was discussed last week
  - Unassigned
  - Opened by @**simulacrum** after hitting the issue on a crater run
  - @**simulacrum** suggested that is expected breakage (before the MCVE was built)
  - Beta regression that started on PR [rust#73565](https://github.com/rust-lang/rust/pull/73565) cc @**Matthew Jasper** @**nagisa**
- "starting from nightly-2020-08-18 rustls can't connect to some websites" [rust#76803](https://github.com/rust-lang/rust/issues/76803)
  - Unassigned
  - Opened by @**Paolo Barbolini**
  - Beta regression that started on PR [rust#74748](https://github.com/rust-lang/rust/pull/74748) cc @**Simon Vandel Sillesen** @**oli** 
  - [Mir optimization bug](https://github.com/rust-lang/rust/issues/76803#issuecomment-693999586)
  - [Has a PR to disable the optimization](https://github.com/rust-lang/rust/pull/76837) by @**wesleywiser**

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- "btree_map::OccupiedEntry: Send regression" [rust#76686](https://github.com/rust-lang/rust/issues/76686)
  - Assigned to @**simulacrum**
  - Nightly regression
  - Regressed on [rust#74437](https://github.com/rust-lang/rust/pull/74437)
  - [Has a PR](https://github.com/rust-lang/rust/pull/76722) opened by @**Stein Somers**

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- No unassigned `P-high` beta regressions this time.

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- "Linker error with wasm target with spaces in install path" [rust#76466](https://github.com/rust-lang/rust/issues/76466)
  - Unassigned
  - Reported by @**Jordan Miner** 
  - Nightly regression
  - [Probably an LLVM 11 regression](https://github.com/rust-lang/rust/issues/76466#issuecomment-688686973)
  - Reporter ran into the issues on a **Win10 64bit** and suggests a possible range of [culprit commits](https://github.com/rust-lang/rust/issues/76466#issuecomment-688686973) 
  - @**Mason Stallmo** could not reproduce on both Windows or Linux 64bit, therefore suggests a possible [Windows 32bit only regression](https://github.com/rust-lang/rust/issues/76466#issuecomment-693805846)

## Performance logs

Triage done by @**simulacrum** .
Revision range: [35fc8359868e65a0970094f648ba87fce634e8c7..a53f449516f23486d2dfd4e5685d4e869e8591d9](https://perf.rust-lang.org/index.html?start=35fc8359868e65a0970094f648ba87fce634e8c7&end=a53f449516f23486d2dfd4e5685d4e869e8591d9&absolute=false&stat=instructions%3Au)

0 Regressions, 2 Improvements, 0 of them in rollups.

#### Regressions

No regressions noted.

#### Improvements

[BTreeMap mutable iterators should not take any reference to visited nodes during iteration #73971](https://github.com/rust-lang/rust/pull/73971)
- A ~1.4% improvement on token-stream-stress check in [instruction counts](https://perf.rust-lang.org/compare.html?start=b4bdc07ff5a70175dbcdff7331c557245ddb012f&end=d92155bf6ae0b7d79fc83cbeeb0cc0c765353471)

[make `ConstEvaluatable` more strict #74595](https://github.com/rust-lang/rust/pull/74595)
- Improvement of up to 2% in [instruction counts](https://perf.rust-lang.org/compare.html?start=d92155bf6ae0b7d79fc83cbeeb0cc0c765353471&end=e2be5f568d1f60365b825530f5b5cb722460591b)

#### Nags requiring follow up

None

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- [RFC #2959](https://github.com/rust-lang/rfcs/pull/2959) almost ready for approval
  - @**Pietro Albini** [suggests](https://github.com/rust-lang/rfcs/pull/2959#issuecomment-693293223) only one unresolved question (about stack probes) doesn't need to block the bump to FCP and can be later added to the RFC process policy
- "Re-enable debug and LLVM assertions" [rust#75199](https://github.com/rust-lang/rust/pull/75199)
    - Opened by @**simulacrum** and assigned to @**Pietro Albini**
    - Helps with [rust#59637](https://github.com/rust-lang/rust/issues/59637) but doesn't close it, macOS still has asserts off
    - "We hit a similar looking bug in [rust#75380](https://github.com/rust-lang/rust/pull/75380)
- "diagnostics: "one type is more general" for two identical types?" [rust#75791](https://github.com/rust-lang/rust/issues/75791)
  - Opened by @**matthiaskrgr** and assigned to @**Esteban Küber** 
  - Confusing diagnostics suggestion
  - `P-high` stable regression, duplicate of [rust#74400](https://github.com/rust-lang/rust/issues/74400)
  - Nominated to ensure we circle back around to it this week if progress isn't made
- "Widen TypeId from 64 bits to 128." [rust#75923](https://github.com/rust-lang/rust/pull/75923)
  - Opened by @**eddyb**
  - @**simulacrum** [nominated it to talk about @**eddyb**'s concern wrt to typeid stabilization; it might be a T-lang question too](https://github.com/rust-lang/rust/pull/75923#issuecomment-684051064).
- "Optimisation-caused UB during cross-crate compilation" [rust#76387](https://github.com/rust-lang/rust/issues/76387)
  - Unassigned
  - Also nominated for discussion
  - Is not a regression, this never worked so it was also discussed if this was `P-critical` or `P-high`
  - [It's an LLVM bug](https://bugs.llvm.org/show_bug.cgi?id=47444)
  - @**Aaron Hill** is working [on an LLVM patch](https://github.com/rust-lang/rust/issues/76387#issuecomment-690610859)
- "Macro hygiene change breaks Firefox builds." [rust#76480](https://github.com/rust-lang/rust/issues/76480)
  - Breaking change
  - Nominated for discussion about how can we do better here
  - cc @**Esteban Küber** @**Aaron Hill**

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.