---
tags: weekly, rustc
type: docs
note_id: dpHKGJflSWiY_yyXprzSww
---

# T-compiler Meeting Agenda 2023-12-21

## Announcements

- Next week Rust stable release 1.75
- [Compiler Team Steering: P-high review](https://www.google.com/calendar/event?eid=MnJmNnY2czZsbHJmMjZidGNmcG9oczFrbm8gNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2023-12-22T10:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzEyMjFUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-21T16:00:00-05:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzEyMjVUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-25T10:00:00-05:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzEyMjhUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-28T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add -Z direct-access-external-data" [compiler-team#707](https://github.com/rust-lang/compiler-team/issues/707) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20direct-access-external-data.20compiler-team.23707))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Require `--known-broken-llvm` flag for x.py to skip codegen tests on old LLVM" [compiler-team#687](https://github.com/rust-lang/compiler-team/issues/687) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Require.20.60--known-broken-llvm.60.20flag.20for.20x.2E.E2.80.A6.20compiler-team.23687))
    - concern [codegen-tests-are-for-new-optimizations](https://github.com/rust-lang/compiler-team/issues/687#issuecomment-1809869102)
  - "Semantics of `-Cinstrument-coverage=all`" [compiler-team#690](https://github.com/rust-lang/compiler-team/issues/690) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Semantics.20of.20.60-Cinstrument-coverage.3Dall.60.20compiler-team.23690)) (last review activity: about 8 days ago)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692))
    - concern: [added-complexity-to-frontend](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Add.20hygiene.20attributes.20to.20compile.20expande.E2.80.A6.20compiler-team.23692/near/403245433)
  - "New Tier-3 target: `wasm32-wasi-preview2`" [compiler-team#694](https://github.com/rust-lang/compiler-team/issues/694) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.3A.20.60wasm32-wasi-preview2.60.20compiler-team.23694)) (last review activity: about 2 days ago)
  - "Smooth the renaming transition of `wasm32-wasi`" [compiler-team#695](https://github.com/rust-lang/compiler-team/issues/695) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Smooth.20the.20renaming.20transition.20of.20.60wasm32.E2.80.A6.20compiler-team.23695)) (last review activity: about 8 days ago)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703)) (last review activity: about 6 days ago)
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - concern [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
    - concern [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
    - concern [lint-interactions](https://github.com/rust-lang/compiler-team/issues/674#issuecomment-1746696850)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
    - concern [nesting](https://github.com/rust-lang/rust/pull/113307#issuecomment-1621305927)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
    - concern [needs blog post](https://github.com/rust-lang/rust/pull/115141#issuecomment-1740089459)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
  - "Undeprecate lint `unstable_features` and make use of it in the compiler" [rust#118639](https://github.com/rust-lang/rust/pull/118639)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
    - concern [needs-fcp](https://github.com/rust-lang/compiler-team/issues/625#issuecomment-1672919695)
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Use the MSVC provided Address Sanitizer runtime when building for MSVC" [compiler-team#702](https://github.com/rust-lang/compiler-team/issues/702) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20the.20MSVC.20provided.20Address.20Sanitizer.20r.E2.80.A6.20compiler-team.23702))
  - "Provide option to shorten symbol names by replacing them with a digest" [compiler-team#705](https://github.com/rust-lang/compiler-team/issues/705) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/new.20option.20to.20reduce.20the.20size.20of.20dylib.20compiler-team.23705))
  - "uplift some -Zverbose calls and rename to -Zverbose-internals" [compiler-team#706](https://github.com/rust-lang/compiler-team/issues/706) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/merge.20-Zverbose.20into.20--verbose.20compiler-team.23706))
  - "make soft_unstable show up in future breakage reports" [rust#116274](https://github.com/rust-lang/rust/pull/116274)
- Accepted MCPs
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20infrastructure.20to.20.22compute.20the.20ABI.20of.E2.80.A6.20compiler-team.23672))
  - "Support response files generated by ninja with `@ninja:path` syntax" [compiler-team#684](https://github.com/rust-lang/compiler-team/issues/684) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20shell.20parsing.20for.20response.20files.20compiler-team.23684))
  - "De-llvm some integer intrinsics that on the Rust side always use `u32`" [compiler-team#693](https://github.com/rust-lang/compiler-team/issues/693) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/De-llvm.20some.20integer.20intrinsics.20that.20on.20t.E2.80.A6.20compiler-team.23693))
  - "Consistent `Handler` naming" [compiler-team#699](https://github.com/rust-lang/compiler-team/issues/699) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Consistent.20.60Handler.60.20naming.20compiler-team.23699))
  - "Promote tier 3 riscv32 bare metal targets to tier 2" [compiler-team#701](https://github.com/rust-lang/compiler-team/issues/701) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20bare.20metal.20targets.E2.80.A6.20compiler-team.23701))
- Finalized FCPs (disposition merge)
  - "Stabilize THIR unsafeck" [rust#117673](https://github.com/rust-lang/rust/pull/117673)
  - "Properly reject `default` on free const items" [rust#117818](https://github.com/rust-lang/rust/pull/117818)
  - "Make inductive cycles in coherence ambiguous always" [rust#118649](https://github.com/rust-lang/rust/pull/118649)

### WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/Eq0n1oBvTaajzXK5WvKPng#WG-checkins)):
  > LLVM 18 is going to branch in about a month

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Exhaustiveness: Improve complexity on some wide matches" [rust#118796](https://github.com/rust-lang/rust/pull/118796)
  - PR is being reviewed, fixes a (P-high) exhaustiveness check [rust#118437](https://github.com/rust-lang/rust/issues/118437) ([comment](https://github.com/rust-lang/rust/pull/118796#issue-2034270817))
  - issue analysis and patch authored by @**Nadrieril** (big thanks!)
  - nominated by @**apiraino**, could be nice to have it backported to beta after merge (issue report affects a real-world crate)
<!--
/poll Approve beta backport of #118796?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 39 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No new `P-high` regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-12-18](https://github.com/rust-lang/rustc-perf/blob/b9ecf1aba002cd6b33d06f784e088839636d7e92/triage/2023-12-18.md)

A lot of noise in the results this week; there was an lull in the noise
recently, so our auto-inferred noise threshold went down, and thus five PR's
were artificially flagged this week (and three supposed improvements were just
reverting to the mean). Beyond that, we had three nice improvements: the first
to debug builds in #117962 (by ceasing emission of expensive+unused
`.debug_pubnames` and `.debug_pubtypes`), a second to diesel and serde in
#119048 (by avoiding some unnecessary work), and a third to several benchmarks
in #117749 (by adding some caching of an internal compiler structure).

Triage done by **@pnkfelix**.
Revision range: [57010939..bf9229a2](https://perf.rust-lang.org/?start=57010939ed1d00076b4af0ed06a81ec69ea5e4a8&end=bf9229a2e366b4c311f059014a4aa08af16de5d8&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]    | 9     |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.9%]    | 21    |
| Improvements (primary)   | -1.8% | [-10.8%, -0.1%] | 103   |
| Improvements (secondary) | -1.2% | [-2.6%, -0.2%]  | 93    |
| All  (primary)           | -1.6% | [-10.8%, 0.4%]  | 112   |


6 Regressions, 9 Improvements, 3 Mixed; 5 of them in rollups
67 artifact comparisons made in total

#### Regressions

rustc_passes: Enforce `rustc::potential_query_instability` lint [#118870](https://github.com/rust-lang/rust/pull/118870) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=56d25ba5ea3515ba2b361b6c4636373734eb27cc&end=c3def263a44e07e09ae6d57abfc8650227fb4972&stat=instructions:u)

| (instructions:u)         | mean  | range         | count |
|:------------------------:|:-----:|:-------------:|:-----:|
| Regressions (primary)    | 13.5% | [0.5%, 44.5%] | 8     |
| Regressions (secondary)  | -     | -             | 0     |
| Improvements (primary)   | -     | -             | 0     |
| Improvements (secondary) | -     | -             | 0     |
| All  (primary)           | 13.5% | [0.5%, 44.5%] | 8     |

* already marked as triaged by lqd; this PR did not regress things, the reported change is due to a periodic "slow s3 uploads on the collector", i.e. instrument noise/bias.

fix --dry-run when the change-id warning is printed [#118789](https://github.com/rust-lang/rust/pull/118789) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1aa6aefdc92555b3fbc5ae4c99365df9845a3e31&end=529047cfc3f4f7b3ea5aaac054408f368d153727&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.9% | [0.8%, 1.0%] | 4     |
| Regressions (secondary)  | 0.5% | [0.3%, 0.8%] | 18    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.9% | [0.8%, 1.0%] | 4     |

* already marked as triaged by lqd; this PR did not regress things. lqd hypothesized that the inferred noise threshold was lowered (due to a period of low noisiness?), and thus normal amounts of noise are tripping the threshold.

Rollup of 3 pull requests [#118982](https://github.com/rust-lang/rust/pull/118982) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4d1bd0db7f489b22c6d8aa2385937a95412c015b&end=e6707df0de337976dce7577e68fc57adcd5e4842&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.8%, 0.9%] | 4     |
| Regressions (secondary)  | 0.4% | [0.0%, 0.8%] | 32    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.8%, 0.9%] | 4     |


* already marked as triaged by lqd. We think this is another case where the inferred noise threshold was low and we are seeing regression reports as the noise ramps up again.

Rollup of 5 pull requests [#119002](https://github.com/rust-lang/rust/pull/119002) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a96d57bdb6d2bb6d233d7d5aaefc2995ab99be01&end=ca5c68a110099b17c3537e6e5840dbcc21b0e3ca&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.5%]   | 40    |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.7%]   | 36    |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 2     |
| All  (primary)           | 0.2%  | [-0.3%, 0.5%]  | 41    |

* lqd identified PR #118396, "Collect lang items from AST, get rid of GenericBound::LangItemTrait" as the root cause for the regressions here.
* not marking as triaged

More unescaping cleanups [#118897](https://github.com/rust-lang/rust/pull/118897) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1c6a06183a1452c2772db370b572e38bac9c5d86&end=3ad8e2d129a67b0dc450d6ef1100ae41d2cd4b8a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.1%, 0.8%] | 5     |
| Regressions (secondary)  | 0.4% | [0.2%, 0.7%] | 26    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.1%, 0.8%] | 5     |

* lqd theorized this is another instance of noise threshold wriggling
* pnkfelix agrees and marked as triaged.

coverage: Regression test for `assert!(!false)` [#119011](https://github.com/rust-lang/rust/pull/119011) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=445177724ac2beebf4faa5a3ffacb2adbe7e7846&end=9022e6a39c2714d2f447285c4ee7513bf153e3a9&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.7%, 0.8%] | 4     |
| Regressions (secondary)  | 0.5% | [0.3%, 0.6%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.7%, 0.8%] | 4     |

* yet again, helloworld check is being flagged as regressing (in four scenarios), probably due to wriggling noise threshold.
* pnkfelix marking as triaged

#### Improvements

Rollup of 8 pull requests [#118838](https://github.com/rust-lang/rust/pull/118838) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=57010939ed1d00076b4af0ed06a81ec69ea5e4a8&end=21cce21d8c012f14cf74d5afddd795d324600dac&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.9% | [-1.0%, -0.9%] | 6     |
| All  (primary)           | -     | -              | 0     |


fix: stop emitting `.debug_pubnames` and `.debug_pubtypes` [#117962](https://github.com/rust-lang/rust/pull/117962) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=21cce21d8c012f14cf74d5afddd795d324600dac&end=e2a3c9b3f0895c866c104bd2fff2a8bf16eaf964&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.1% | [-5.2%, -0.3%] | 24    |
| Improvements (secondary) | -1.6% | [-3.1%, -0.2%] | 61    |
| All  (primary)           | -2.1% | [-5.2%, -0.3%] | 24    |

* nice improvement to debug builds, especially for ripgrep and serde_derive

Unbreak non-unix non-windows bootstrap [#118894](https://github.com/rust-lang/rust/pull/118894) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c3def263a44e07e09ae6d57abfc8650227fb4972&end=7176b8babdc55d68a485ab61940b10611cfa6c57&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | -      | -               | 0     |
| Regressions (secondary)  | -      | -               | 0     |
| Improvements (primary)   | -10.4% | [-30.8%, -0.6%] | 8     |
| Improvements (secondary) | -      | -               | 0     |
| All  (primary)           | -10.4% | [-30.8%, -0.6%] | 8     |

* (don't get excited; this is just a return-to-normal after the artificial regression flagged with PR #118870 above)

cache param env canonicalization [#117749](https://github.com/rust-lang/rust/pull/117749) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e6d1b0ec9859e6f5c29aaa3b6525fb625bf354ad&end=d23e1a689426638a5146c204e09278433c509610&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.0% | [-4.8%, -0.2%] | 32    |
| Improvements (secondary) | -1.3% | [-1.4%, -1.3%] | 2     |
| All  (primary)           | -2.0% | [-4.8%, -0.2%] | 32    |

* pretty solid improvement here to serde, diesel, bitmaps, hyper, image.

`-Ztrait-solver=next` to `-Znext-solver` [#118937](https://github.com/rust-lang/rust/pull/118937) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=529047cfc3f4f7b3ea5aaac054408f368d153727&end=2ecba0fa00b75e7291978c50bece407f17296f45&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.0%, -0.9%] | 4     |
| Improvements (secondary) | -0.5% | [-0.8%, -0.3%] | 21    |
| All  (primary)           | -0.9% | [-1.0%, -0.9%] | 4     |

* (just noise)

Use the LLVM option NoTrapAfterNoreturn [#110494](https://github.com/rust-lang/rust/pull/110494) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e223c41028def5123ffd2a4a51a9109b1aae2c2e&end=02ad6676ddc7ea7bc3acd73f383180bc80185aeb&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-0.9%, -0.8%] | 4     |
| Improvements (secondary) | -0.5% | [-0.8%, -0.3%] | 25    |
| All  (primary)           | -0.9% | [-0.9%, -0.8%] | 4     |

* (just noise)

Add support for `--env` on `tracked_env::var` [#118830](https://github.com/rust-lang/rust/pull/118830) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9022e6a39c2714d2f447285c4ee7513bf153e3a9&end=5e7025419d1b1359e4cb7cd365ba5900c8299089&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.8%, -0.7%] | 3     |
| Improvements (secondary) | -0.5% | [-0.7%, -0.3%] | 7     |
| All  (primary)           | -0.7% | [-0.8%, -0.7%] | 3     |

* (just noise)

don't fold ParamEnv in register_predicate_obligation [#119048](https://github.com/rust-lang/rust/pull/119048) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d14e52b47ab27bcc3c3e083ed5f009a57db63eff&end=4283aeaca5c0c14864d4af3369a42c6b8b21f80f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.1% | [-7.3%, -0.2%] | 23    |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -2.1% | [-7.3%, -0.2%] | 23    |

* nice improvement to diesel and serde.

resolve: Replace visibility table in resolver outputs with query feeding [#118657](https://github.com/rust-lang/rust/pull/118657) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=43dcc9b786c922251c3fbe75a0142f50f07053ca&end=321b6565a5f8ebf6f23622fc91ea1191a54f2a38&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.1%] | 70    |
| Improvements (secondary) | -0.6% | [-1.2%, -0.1%] | 42    |
| All  (primary)           | -0.3% | [-0.5%, -0.1%] | 70    |


#### Mixed

codegen_llvm: set `DW_AT_accessibility` [#115165](https://github.com/rust-lang/rust/pull/115165) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e6707df0de337976dce7577e68fc57adcd5e4842&end=3f39cae1199a2a0217c3646a16d1ae7fa599130b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 4     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.6%] | 4     |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] | 22    |
| All  (primary)           | -0.2% | [-0.7%, 0.3%]  | 8     |

* the improvements are helloworld noise; the regressions are minor.

Rollup of 6 pull requests [#119009](https://github.com/rust-lang/rust/pull/119009) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5c927ab99946c312eed65f28aea15d2a035441f0&end=1c6a06183a1452c2772db370b572e38bac9c5d86&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.4%  | [0.2%, 1.2%]   | 8     |
| Improvements (primary)   | -1.3% | [-1.9%, -0.9%] | 8     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.1% | [-1.9%, 0.2%]  | 9     |

* The single tiny regression to exa doc full does not warrant spending time trying to tease apart this rollup, IMO.
* marked as triaged

Rollup of 5 pull requests [#119069](https://github.com/rust-lang/rust/pull/119069) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cda4736f1eaad8af6f49388baa9b7e480df8e329&end=e004adb5561b724ac18f5b24584648ca4e42b6ad&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 2     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 12    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 13    |
| All  (primary)           | -0.2% | [-0.3%, -0.1%] | 12    |

* The two minor regressions to secondary benchmarks do not warrant spending time trying to tease apart this rollup, IMO.
* marked as triaged

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "tidy watcher" [rust#114209](https://github.com/rust-lang/rust/pull/114209) (last review activity: 2 months ago)
  - anyone wants to adopt this puppet? Seems it's bouncing a bit around 
- "Try Carbon's new hashing strategy in the compiler" [rust#117079](https://github.com/rust-lang/rust/pull/117079) (last review activity: about 58 days ago)
  - cc: @**bjorn3** (IIUC)
- "mark ty::Const::Error when meet unsupport ty for const generic params" [rust#117176](https://github.com/rust-lang/rust/pull/117176) (last review activity: about 56 days ago)
  - cc: @**michael goulet (compiler-errors)** (for some questions but review is assigned to @**Wesley Wiser**)
- "Make `#![allow_internal_unstable(..)]` work with `stmt_expr_attributes`" [rust#117420](https://github.com/rust-lang/rust/pull/117420) (last review activity: about 51 days ago)
  - cc: @**wesley wiser**

## Next week's WG checkins

- @_*WG-mir-opt* by @_**oli** (on leave, other WG member?)
- @_*T-rust-analyzer* by @**Lukas Wirth**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/GFdlns3tRjaeF-u-k-1PlA)
