---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-11-18

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow we have our monthly [planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html) at <time:2021-11-19T15:00:00-00:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copywrite/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: 3 months ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 4 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: about 48 days ago)
  - "Unstable lints should be considered unknown" [compiler-team#469](https://github.com/rust-lang/compiler-team/issues/469) (last review activity: about 2 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking Issue for cargo report future-incompat" [rust#71249](https://github.com/rust-lang/rust/issues/71249)
  - "Tracking Issue for inline assembly (`asm!`)" [rust#72016](https://github.com/rust-lang/rust/issues/72016)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - "Create a macos notification group" [compiler-team#470](https://github.com/rust-lang/compiler-team/issues/470)
- Finalized FCPs (disposition merge)
  - "Tracking Issue for `destructuring_assignment`" [rust#71126](https://github.com/rust-lang/rust/issues/71126)
  - "Tracking Issue for relaxed struct unsizing rules" [rust#81793](https://github.com/rust-lang/rust/issues/81793)
  - "GATs: Decide whether to have defaults for `where Self: 'a`" [rust#87479](https://github.com/rust-lang/rust/issues/87479)
  - "Stabilize `const_raw_ptr_deref` for `*const T`" [rust#89551](https://github.com/rust-lang/rust/pull/89551)
  - "Stabilize -Z strip as -C strip" [rust#90058](https://github.com/rust-lang/rust/pull/90058)
  - "Stabilize -Z symbol-mangling-version=v0 as -C symbol-mangling-version=v0" [rust#90128](https://github.com/rust-lang/rust/pull/90128)
  - "stabilize format args capture" [rust#90473](https://github.com/rust-lang/rust/pull/90473)

### WG checkins

- @_WG-async-foundations_ by @**nikomatsakis** and @**tmandry** ([previous checkin](https://hackmd.io/IGePuIQTQqGzdwqVrN1IlA?view#WG-checkins))

  > checkin text

- @_WG-traits_ by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/IGePuIQTQqGzdwqVrN1IlA?view#WG-checkins))
  > Work continues on both GATs and TAITs. For GATs, the outlives lint landed, but needs a bit more work before stabilization. Whether or not to change the syntax of where clauses on GATs remains an open question. Some bug fixes for GATs/HRTBs have also landed, including normalizing predicates for closures. Negative impls for coherence also landed. (sorry for no links, on mobile! - Jack)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "Android is not GNU" [rust#90834](https://github.com/rust-lang/rust/pull/90834)
  - nominated by @**Vadim Petrochenkov** [to reduce the versions window](https://github.com/rust-lang/rust/pull/90834#issuecomment-969664308) with this incorrect behaviour
- :beta: "relate lifetime in `TypeOutlives` bounds on drop impls" [rust#90840](https://github.com/rust-lang/rust/pull/90840)
  - Fixes `P-critical` [rust#90838](https://github.com/rust-lang/rust/issues/90838)
  - also nominated for stable backport
- :beta: "Update llvm submodule" [rust#90954](https://github.com/rust-lang/rust/pull/90954)
  - [Nomination details](https://github.com/rust-lang/rust/pull/90954#issuecomment-972660123)
- :stable: "Add `deref_into_dyn_supertrait` lint." [rust#89461](https://github.com/rust-lang/rust/pull/89461)
  - opened by @**Charles Lew**, fixes `P-high` [rust#89190](https://github.com/rust-lang/rust/issues/89190)
  - nominated by @**pnkfelix** (it's already in beta)
- :stable: "relate lifetime in `TypeOutlives` bounds on drop impls" [rust#90840](https://github.com/rust-lang/rust/pull/90840)
  - see beta nomination

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- :stable: "rustdoc: Go back to loading all external crates unconditionally" [rust#90489](https://github.com/rust-lang/rust/pull/90489)
  - beta-backport [approved last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-11-04.20.2354818/near/260278752)
  - stable-backport deferred to this week, could probably follow the release timeline

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "Make specifying repr optional for fieldless enums" [rust#88203](https://github.com/rust-lang/rust/pull/88203)
  - This is `T-lang-nominated`, T-lang [discussed the matter](https://github.com/rust-lang/rust/pull/88203#issuecomment-970574178)
- "Make feature key optional for rustc_stable, rustc_const_stable attributes" [rust#88588](https://github.com/rust-lang/rust/pull/88588)
  - Waiting for `T-libs` feedback

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)

#### this week

- "Add codegen option for branch protection and pointer authentication on AArch64" [rust#88354](https://github.com/rust-lang/rust/pull/88354) (last review activity: 2 months ago)
  - @**nagisa** will [try to have a look at this](https://github.com/rust-lang/rust/pull/88354#issuecomment-966435875)
- "Suggest `i += 1` when we see `i++` or `++i`" [rust#88672](https://github.com/rust-lang/rust/pull/88672) (last review activity: 2 months ago)
  - has been reviewed in September by @**estebank**
- "asm/arm: allow r9 when usable, make diagnostics more specific" [rust#88879](https://github.com/rust-lang/rust/pull/88879) (last review activity: 2 months ago)
  - last comment is paging @**Amanieu**
- "[experiment] remove diverge_from in box expr building" [rust#89332](https://github.com/rust-lang/rust/pull/89332) (last review activity: about 50 days ago)
  - PR author @**Gary Guo** [asks for a feedback](https://github.com/rust-lang/rust/pull/89332#issuecomment-964545540) before deciding to turn it into a real PR
- "Makes docs for references a little less confusing" [rust#88361](https://github.com/rust-lang/rust/pull/88361) (last review activity: none)
  - rust-highfive assigned to @**Josh Triplett**

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [81 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [57 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 6 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 49 P-high, 84 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)

- "Miscompilation where binding only some fields leaks the others" [rust#90752](https://github.com/rust-lang/rust/issues/90752)
- "Unsound drop due to imperfect lifetime checks" [rust#90838](https://github.com/rust-lang/rust/issues/90838)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)

- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "Compilation appears to loop indefinitely " [rust#89195](https://github.com/rust-lang/rust/issues/89195)
- "Incremental compilation fails in all cases on SystemZ (s390x)" [rust#90123](https://github.com/rust-lang/rust/issues/90123)
- "regression: rustc suggests `.as_ref()` at incorrect location and other spans have regressed" [rust#90286](https://github.com/rust-lang/rust/issues/90286)
- "DWARF info for `static` vars in lib crates has stopped being produced reliably in LTO builds" [rust#90357](https://github.com/rust-lang/rust/issues/90357)
- "warn(must_not_suspend) started being raised incorrectly when moving from stable to nightly" [rust#90459](https://github.com/rust-lang/rust/issues/90459)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "Undefined reference to `getauxval` in function `init_have_lse_atomics` when compiling to nightly `aarch64-unknown-linux-musl`" [rust#89626](https://github.com/rust-lang/rust/issues/89626)

## Performance logs

> [triage logs for 2021-11-16](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-11-16.md)

A large amount of noise in the comparisons this week, likely due to new
probabilistic query hash verification increasing likelihood of changes in each
benchmark; solutions are being tracked in [rustc-perf#1105].

Otherwise, though, the week largely amounted to a neutral one for performance.
There were some regressions, particularly in doc builds, as a result of the
addition of portable SIMD. These are relatively speaking minor and primarily
impact small crates.

[rustc-perf#1105]: https://github.com/rust-lang/rustc-perf/issues/1105

Triage done by **@simulacrum**.
Revision range: [eee8b9c7bafade55981d155dae71657f1cc55a22..934624fe5f66ce3fb8abf0597a6deb079783335f](https://perf.rust-lang.org/?start=eee8b9c7bafade55981d155dae71657f1cc55a22&end=934624fe5f66ce3fb8abf0597a6deb079783335f&absolute=false&stat=instructions%3Au)

5 Regressions, 2 Improvements, 6 Mixed; 2 of them in rollups

41 comparisons made in total
30 Untriaged Pull Requests

#### Regressions

pub use core::simd; [#89167](https://github.com/rust-lang/rust/issues/89167)

- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e90c5fbbc5df5c81267747daeb937d4e955ce6ad&end=032dfe43605f4324966933078ffe6f717b77c7c8&stat=instructions:u) (up to 11.8% on `full` builds of `helloworld`)
- Expected regression due to expansion of libcore size; this continues to be a
  pain point as we add features to the standard library. Largest regressions are
  in rustdoc builds as it's more sensitive to the addition of new traits and
  impls.

proc_macro: Add an expand_expr method to TokenStream [#87264](https://github.com/rust-lang/rust/issues/87264)

- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=7594067b69eac2395f7b3b42d519a559dae2d9d9&end=3e018ce194ab16125747220676dd8a20aecd5196&stat=instructions:u) (up to 5.3% on `incr-unchanged` builds of `inflate`)
- Incremental regressions are likely to be due to random hashing added for
  incr-comp verification (which we may decide to disable during perf collection
  to avoid this). Otherwise, the regression is minimal to TokenStream
  processing.

MIRI says `reverse` is UB, so replace it with something LLVM can vectorize [#90821](https://github.com/rust-lang/rust/issues/90821)

- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c26746af5a925bad66b7ed4f9e7c3018f00d4010&end=891ca5f63c3b3cfe3939710a728671243e881ed6&stat=instructions:u) (up to 0.8% on `full` builds of `deeply-nested`)
- Unclear cause to these regressions, but they seem to larely be in doc builds.

Rollup of 5 pull requests [#90769](https://github.com/rust-lang/rust/issues/90769)

- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=68ca579406f2fa9ec62710e4a4d5d3e07a168d3c&end=82af160c2cb9c349a0373cba98d8ad7f911f0d34&stat=instructions:u) (up to 84.9% on `full` builds of `webrender-wrench`)
- Also has a small improvement, but that is likely to be the incremental
  verification noise.

Added the --temps-dir option [#83846](https://github.com/rust-lang/rust/issues/83846)

- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=8e0293137f895a417fa043b9817c455150769406&end=9dbbbb12c0b796f35cbf5a518ac12846c969a214&stat=instructions:u) (up to 0.5% on `incr-unchanged` builds of `helloworld`)
- Unclear what the cause of this is; we would not generally expect a regression
  from such an introduction.

#### Improvements

- Use Vec extend and collect instead of repeatedly calling push [#90813](https://github.com/rust-lang/rust/issues/90813)
- Address performance regression introduced by #90218 [#90845](https://github.com/rust-lang/rust/issues/90845)

#### Mixed

Replace Copy/Clone compiler magic on arrays with library impls [#86041](https://github.com/rust-lang/rust/issues/86041)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=07acdb48a0e0b22d08a45e3ced0378e0027b40eb&end=d6082292a6f3207cbdacd6633a5b9d1476bb6772&stat=instructions:u) (up to -1.2% on `incr-unchanged` builds of `deeply-nested`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=07acdb48a0e0b22d08a45e3ced0378e0027b40eb&end=d6082292a6f3207cbdacd6633a5b9d1476bb6772&stat=instructions:u) (up to 1.0% on `full` builds of `cranelift-codegen`)
- Limited regressions in codegen, mostly due to more complicated MIR for these
  impls when done in library code vs. directly generated.

Optimize pattern matching [#90746](https://github.com/rust-lang/rust/issues/90746)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3d29b6807740db74aeb9c2f626115e519dee4a62&end=936238a92b2f9d6e7afe7dda69b4afd903f96399&stat=instructions:u) (up to -5.3% on `full` builds of `match-stress-enum`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3d29b6807740db74aeb9c2f626115e519dee4a62&end=936238a92b2f9d6e7afe7dda69b4afd903f96399&stat=instructions:u) (up to 4.0% on `incr-unchanged` builds of `deep-vector`)

rustdoc: Go back to loading all external crates unconditionally [#90489](https://github.com/rust-lang/rust/issues/90489)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=936238a92b2f9d6e7afe7dda69b4afd903f96399&end=14a2fd640e0df9ee8cc1e04280b0c3aff93c42da&stat=instructions:u) (up to -3.9% on `incr-unchanged` builds of `deep-vector`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=936238a92b2f9d6e7afe7dda69b4afd903f96399&end=14a2fd640e0df9ee8cc1e04280b0c3aff93c42da&stat=instructions:u) (up to 2.8% on `full` builds of `cargo`)

Make RawVec private to alloc [#90542](https://github.com/rust-lang/rust/issues/90542)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3e018ce194ab16125747220676dd8a20aecd5196&end=1b12d01903293453dd94aa170c82caf94415629f&stat=instructions:u) (up to -5.1% on `incr-unchanged` builds of `inflate`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3e018ce194ab16125747220676dd8a20aecd5196&end=1b12d01903293453dd94aa170c82caf94415629f&stat=instructions:u) (up to 4.0% on `incr-unchanged` builds of `deep-vector`)

Optimize Eq and Hash for Path/PathBuf [#90596](https://github.com/rust-lang/rust/issues/90596)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3b2c45441d7eefed63f6658ff8becd5a51eaeae1&end=c8e94975a6541e947a1bd4971e084c8ba637f2b6&stat=instructions:u) (up to -6.0% on `incr-unchanged` builds of `coercions`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3b2c45441d7eefed63f6658ff8becd5a51eaeae1&end=c8e94975a6541e947a1bd4971e084c8ba637f2b6&stat=instructions:u) (up to 12.9% on `incr-unchanged` builds of `tuple-stress`)

Rollup of 8 pull requests [#90945](https://github.com/rust-lang/rust/issues/90945)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=a2a7683e8f321e3c0b9d648ae480827b5ab70e1d&end=934624fe5f66ce3fb8abf0597a6deb079783335f&stat=instructions:u) (up to -0.4% on `full` builds of `deeply-nested-async`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a2a7683e8f321e3c0b9d648ae480827b5ab70e1d&end=934624fe5f66ce3fb8abf0597a6deb079783335f&stat=instructions:u) (up to 0.3% on `incr-patched: println` builds of `clap-rs`)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "Tracking issue for plugin stabilization (`plugin`, `plugin_registrar` features)" [rust#29597](https://github.com/rust-lang/rust/issues/29597)
  - nominated by @**Josh Triplett**, [asks in comment](https://github.com/rust-lang/rust/issues/29597#issuecomment-965644083): "what's still using plugin support?"
  - @**wesley wiser** comments [he's not be aware of anything](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-11-11.20.2354818/near/261151412)
- "Change `char` type in debuginfo to DW_ATE_UTF" [rust#89887](https://github.com/rust-lang/rust/pull/89887)
  - nominated by @**wesley wiser** [in comment](https://github.com/rust-lang/rust/pull/89887#issuecomment-965530540)
- "sess: default to v0 symbol mangling" [rust#89917](https://github.com/rust-lang/rust/pull/89917)
  - @**mw** nominated to discuss Wesley's suggestion [in this comment](https://github.com/rust-lang/rust/pull/89917#issuecomment-951009529)
- "implement aspect-oriented programming (AOP) for Rust" [rust#90721](https://github.com/rust-lang/rust/pull/90721)
  - @**mw** suggested to first file an MCP
  - @**davidtwco** is a colleague of the author at Huawei and can coordinate between the compiler team and the author where required.
  - Does this might be of interest for `T-lang`?
- "Miscompilation where binding only some fields leaks the others" [rust#90752](https://github.com/rust-lang/rust/issues/90752)
  - @**tmandry** nominated
  - [great writeup](https://github.com/rust-lang/rust/issues/90752#issuecomment-965822895) from @**Dylan MacKenzie (ecstatic-morse)**, suggests a quick fix
  - Opened PR [rust#90788](https://github.com/rust-lang/rust/pull/90788) that implements the quick fix suggested. PR is beiung reviewed.
  - wg-prio assigned `P-critical`, but being a regression from stable probably not a release blocker?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.
