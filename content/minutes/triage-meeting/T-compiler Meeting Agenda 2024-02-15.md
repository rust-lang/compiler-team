---
tags: weekly, rustc
type: docs
note_id: kumG_EirTtOWJiQcgji7_w
---

# T-compiler Meeting Agenda 2024-02-15

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-02-15T22:00:00+01:00>
- Types Team: Rotating Solver/Formality/Polonius Deep dive <time:2024-02-19T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 29 days ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
    - concern: [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
- Old MCPs (not seconded, take a look)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703)) (last review activity: 2 months ago)
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: 2 months ago)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: about 12 days ago)
  - "Promote tier 3 arm64e-apple-darwin target to tier 2" [compiler-team#717](https://github.com/rust-lang/compiler-team/issues/717) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20arm64e-apple-darwin.20target.E2.80.A6.20compiler-team.23717)) (last review activity: about 12 days ago)
  - "Add `--emit=` to emit nothing" [compiler-team#718](https://github.com/rust-lang/compiler-team/issues/718) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--emit.3D.60.20to.20emit.20nothing.20compiler-team.23718)) (last review activity: about 12 days ago)
  - "Use debug fission instead of dwarf split debuginfo for -Csplit-debuginfo=packed" [compiler-team#721](https://github.com/rust-lang/compiler-team/issues/721) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20debug.20fission.20instead.20of.20dwarf.20split.20.E2.80.A6.20compiler-team.23721)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
  - "Stabilize `--env-set` option" [rust#119926](https://github.com/rust-lang/rust/pull/119926)
  - "debuginfo: Stabilize `-Z debug-macros`, `-Z collapse-macro-debuginfo` and `#[collapse_debuginfo]`" [rust#120845](https://github.com/rust-lang/rust/pull/120845)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Remove fake `rust-intrinsic` ABI" [compiler-team#720](https://github.com/rust-lang/compiler-team/issues/720) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20fake.20.60rust-intrinsic.60.20ABI.20compiler-team.23720))
  - "Overhaul `Diagnostic` and `DiagnosticBuilder` " [compiler-team#722](https://github.com/rust-lang/compiler-team/issues/722) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Overhaul.20.60Diagnostic.60.20and.20.60DiagnosticBuil.E2.80.A6.20compiler-team.23722))
  - "Rename `astconv::AstConv` and related items" [compiler-team#723](https://github.com/rust-lang/compiler-team/issues/723) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60astconv.3A.3AAstConv.60.20and.20related.20ite.E2.80.A6.20compiler-team.23723))
- Accepted MCPs
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Semantics of `-Cinstrument-coverage=all`" [compiler-team#690](https://github.com/rust-lang/compiler-team/issues/690) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Semantics.20of.20.60-Cinstrument-coverage.3Dall.60.20compiler-team.23690))
  - "New Tier-3 target: `wasm32-wasi-preview2`" [compiler-team#694](https://github.com/rust-lang/compiler-team/issues/694) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.3A.20.60wasm32-wasi-preview2.60.20compiler-team.23694))
  - "Provide option to shorten symbol names by replacing them with a digest" [compiler-team#705](https://github.com/rust-lang/compiler-team/issues/705) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/new.20option.20to.20reduce.20the.20size.20of.20dylib.20compiler-team.23705))
  - "uplift some -Zverbose calls and rename to -Zverbose-internals" [compiler-team#706](https://github.com/rust-lang/compiler-team/issues/706) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/merge.20-Zverbose.20into.20--verbose.20compiler-team.23706))
  - "Promote tier 3 `*-pc-windows-gnullvm` targets to tier 2" [compiler-team#710](https://github.com/rust-lang/compiler-team/issues/710) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20.60.2A-pc-windows-gnullvm.60.20tar.E2.80.A6.20compiler-team.23710))
  - "Unstably support MIR-only rlibs" [compiler-team#713](https://github.com/rust-lang/compiler-team/issues/713) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstably.20support.20MIR-only.20rlibs.20compiler-team.23713))
  - "Promote OpenHarmony targets to tier 2" [compiler-team#719](https://github.com/rust-lang/compiler-team/issues/719) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20OpenHarmony.20targets.20to.20tier.202.20compiler-team.23719))
- Finalized FCPs (disposition merge)
  - "static mut: allow mutable reference to arbitrary types, not just slices and arrays" [rust#117614](https://github.com/rust-lang/rust/pull/117614)
  - "Check normalized call signature for WF in mir typeck" [rust#118882](https://github.com/rust-lang/rust/pull/118882)

### WG checkins

- @_*T-rust-analyzer* by @**Lukas Wirth** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > We now share a bit more code with the compiler thanks to @Nadrieril https://github.com/rust-lang/rust-analyzer/pull/16420, fixing some bugs and panics with our exhaustiveness checking along the way :tada: On a less happy note, rust-analyzer still lacks support for ATPITs which is on the path to [stabilization](https://github.com/rust-lang/rust/pull/120700). rust-analyzer currently reports a type mismatch for the snippet in the PR description, https://github.com/rust-lang/rust-analyzer/issues/15704.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.77] "Update jobserver-rs to 0.1.28" [rust#120846](https://github.com/rust-lang/rust/pull/120846)
  - Fixes #120515, regression when running `rustc` with `make -j2`
  - nominated by @**Vadim Petrochenkov**
<!--
/poll Approve beta backport of #120846?
approve
decline
don't know
-->
- :beta: [1.77] "Improve wording of `static_mut_ref`" [rust#121034](https://github.com/rust-lang/rust/pull/121034)
  - nominated by @**oli**, closes #120964 (documentation wording, IIUC)
  - PR is being reviewed. Diff is non-trivial even if not code
<!--
/poll Approve beta backport of #121034?
approve
decline
don't know
-->
- :beta: [1.77] "Update LLVM submodule" [rust#121132](https://github.com/rust-lang/rust/pull/121132)
    - nominated by @**nikic**
    - Fixes various P-high LLVM related issues
<!--
/poll Approve beta backport of #121132?
approve
decline
don't know
-->
- :stable: [1.76] "Update jobserver-rs to 0.1.28" [rust#120846](https://github.com/rust-lang/rust/pull/120846)
  - as above. Stable backport in case a minor release is in the air
<!--
/poll Approve stable backport of #120846?
approve
approve but does not justify new dot release
decline
don't know
-->

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "debuginfo: Stabilize `-Z debug-macros`, `-Z collapse-macro-debuginfo` and `#[collapse_debuginfo]`" [rust#120845](https://github.com/rust-lang/rust/pull/120845)
  - `I-compiler-nominated`: see end of the agenda
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [32 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 37 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "thread 'rustc' panicked at compiler/rustc_metadata/src/rmeta/encoder.rs:1888:17" [rust#120830](https://github.com/rust-lang/rust/issues/120830)
  - Happens on nightly
  - `diesel` crate author proposes to revert the change rolled up in #121038 (exact PR is #119592)
  - Vadim suggest a different approach than reverting ([comment](https://github.com/rust-lang/rust/pull/121038#issuecomment-1942075058))

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-02-13](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-02-13.md)

Relatively balanced results this week, with more improvements than regressions. Some of the
larger regressions are not relevant, however there was a real large regression on `doc` builds, that was
caused by a correctness fix (`rustdoc` was doing the wrong thing before).

Triage done by **@kobzol**.
Revision range: [0984becf..74c3f5a1](https://perf.rust-lang.org/?start=0984becf01112cbd3583c796541760b65340c8db&end=74c3f5a146860c94ff4d179fc3bfa34f879adf41&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.1%  | [0.2%, 12.0%]  | 44    |
| Regressions (secondary)  | 5.2%  | [0.2%, 20.1%]  | 76    |
| Improvements (primary)   | -0.7% | [-2.4%, -0.2%] | 139   |
| Improvements (secondary) | -1.3% | [-3.3%, -0.3%] | 86    |
| All  (primary)           | -0.1% | [-2.4%, 12.0%] | 183   |


6 Regressions, 5 Improvements, 8 Mixed; 5 of them in rollups
53 artifact comparisons made in total

#### Regressions

pattern_analysis: Gracefully abort on type incompatibility [#120313](https://github.com/rust-lang/rust/pull/120313) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ea37e8091fe87ae0a7e204c034e7d55061e56790&end=f067fd6084d750f3797f54b71771c5dbc149726f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 1.9% | [1.8%, 2.0%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

* The pattern matching machinery is now receiving a lot of updates, and the `match-stress` stress test
is swinging back and forth. Marked as triaged.

Rework support for async closures; allow them to return futures that borrow from the closure's captures [#120361](https://github.com/rust-lang/rust/pull/120361) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=037f515caf46846d2bffae55883eebc6c1ccb861&end=4a2fe4491ea616983a0cf0cbbd145a39768f4e7a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.7%]   | 11    |
| Regressions (secondary)  | 0.6%  | [0.4%, 0.7%]   | 11    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | 0.5%  | [0.2%, 0.7%]   | 11    |

* This is probably just codegen noise, the changes were reverted in followup commits. Marked as triaged.

Make traits / trait methods detected by the dead code lint [#118257](https://github.com/rust-lang/rust/pull/118257) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=586893c7b0adabf5f0a4c155fd86e13cf470e74b&end=d4f6f9ee6a3b24f2cb97b1a5b82963609b93aa33&stat=instructions:u)

| (instructions:u)         | mean | range         | count |
|:------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.1%, 1.8%]  | 18    |
| Regressions (secondary)  | 9.4% | [0.2%, 16.0%] | 10    |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)           | 0.7% | [0.1%, 1.8%]  | 18    |

* This PR implements a new lint for unused traits, so the compiler does more work.
The large regression is a red herring, it is a small stress test that didn't produce any warnings before,
but it does now, which causes it to initialize the diagnostics machinery, which is a one-time cost.
Marked as triaged.

Stop bailing out from compilation just because there were incoherent traits [#120558](https://github.com/rust-lang/rust/pull/120558) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=384b02c0825cefa59f2e8a99a33d9a5344959079&end=870a01a30e45d73b8e922a91850919e03f772636&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 1.0%] | 14    |
| Regressions (secondary)  | 1.2% | [0.1%, 3.5%] | 23    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 1.0%] | 14    |

* The regression was resolved in [#120835](https://github.com/rust-lang/rust/pull/120835).

Rollup of 6 pull requests [#120862](https://github.com/rust-lang/rust/pull/120862) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d44e3b95cb9d410d89cb8ab3233906a33f43756a&end=b5c46dc5426038a49c95398bce30eeb20ec421e2&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.3%, 0.7%] | 7     |
| Regressions (secondary)  | 4.0% | [1.2%, 7.7%] | 13    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.3%, 0.7%] | 7     |

* Regression is expected to be partially resolved by [#120942](https://github.com/rust-lang/rust/pull/120942).

Assert that params with the same *index* have the same *name* [#120619](https://github.com/rust-lang/rust/pull/120619) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a648b397dedc98ada3dd3360f6d661ec2436c56&end=520b0b20aa8c218f84cefc6260f52406b84fa55f&stat=instructions:u)

| (instructions:u)         | mean  | range         | count |
|:------------------------:|:-----:|:-------------:|:-----:|
| Regressions (primary)    | 6.0%  | [1.6%, 19.0%] | 18    |
| Regressions (secondary)  | 12.2% | [0.8%, 19.1%] | 22    |
| Improvements (primary)   | -     | -             | 0     |
| Improvements (secondary) | -     | -             | 0     |
| All  (primary)           | 6.0%  | [1.6%, 19.0%] | 18    |

* The `doc` regressions are unfortunately real, however this is a bugfix, `rustdoc` was doing incorrect work.

#### Improvements

Rollup of 13 pull requests [#120748](https://github.com/rust-lang/rust/pull/120748) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cfb42e5d7f6d5fc39f532ec251e1cea4bbafc746&end=8ace7ea1f7cbba7b4f031e66c54ca237a0d65de6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-2.3%, -0.2%] | 27    |
| Improvements (secondary) | -1.7% | [-2.2%, -1.4%] | 11    |
| All  (primary)           | -1.1% | [-2.3%, -0.2%] | 27    |

* Nice win caused by [#120733](https://github.com/rust-lang/rust/pull/120733).

Prevent running some code if it is already in the map [#120579](https://github.com/rust-lang/rust/pull/120579) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=870a01a30e45d73b8e922a91850919e03f772636&end=81bef0b0ba78f9b7bb08beb0575e245fbe18674a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.3% | [-5.9%, -0.8%] | 19    |
| Improvements (secondary) | -4.0% | [-6.4%, -0.6%] | 22    |
| All  (primary)           | -2.3% | [-5.9%, -0.8%] | 19    |

* A nice win for `doc` benchmarks.

Continue to borrowck even if there were previous errors [#120550](https://github.com/rust-lang/rust/pull/120550) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=81bef0b0ba78f9b7bb08beb0575e245fbe18674a&end=af88f7db51f6f2a1472f9279d7c7e7c822afff77&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.0%, -0.8%] | 4     |
| Improvements (secondary) | -0.5% | [-0.7%, -0.3%] | 17    |
| All  (primary)           | -0.9% | [-1.0%, -0.8%] | 4     |

Harmonize `AsyncFn` implementations, make async closures conditionally impl `Fn*` traits [#120712](https://github.com/rust-lang/rust/pull/120712) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=68125c72d389060fe9aaee8d87ebd834f417c9fc&end=757b8efed44eacbbc6baf4a393f77d23d5be90c8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.8%, -0.2%] | 5     |
| Improvements (secondary) | -0.6% | [-0.7%, -0.5%] | 2     |
| All  (primary)           | -0.5% | [-0.8%, -0.2%] | 5     |


A trait's local impls are trivially coherent if there are no impls. [#120834](https://github.com/rust-lang/rust/pull/120834) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=084ce5bdb5f7dc1c725f6770a8de281165ba3b0a&end=de4d615e6b86f7ef6deacd24610b0678230b8af3&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-1.0%, -0.2%] | 10    |
| Improvements (secondary) | -1.4% | [-3.5%, -0.3%] | 24    |
| All  (primary)           | -0.4% | [-1.0%, -0.2%] | 10    |


#### Mixed

Rollup of 9 pull requests [#120660](https://github.com/rust-lang/rust/pull/120660) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0984becf01112cbd3583c796541760b65340c8db&end=8c0b4f67c9b4bf477df38c16669fd576d46a2b3d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.2%, 1.4%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 2     |
| All  (primary)           | 0.8%  | [0.2%, 1.4%]   | 2     |

* The regression was small and looks like noise, marking as triaged.

Make `NonZero` constructors generic. [#120521](https://github.com/rust-lang/rust/pull/120521) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6894f435d35d3d540dcefbc51390158ca5954861&end=384b02c0825cefa59f2e8a99a33d9a5344959079&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.4%, 1.7%]   | 9     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.0%, -1.0%] | 1     |
| Improvements (secondary) | -1.3% | [-1.3%, -1.3%] | 1     |
| All  (primary)           | 0.5%  | [-1.0%, 1.7%]  | 10    |

* Regression later resolved in [#120809](https://github.com/rust-lang/rust/pull/120809).

Rollup of 9 pull requests [#120767](https://github.com/rust-lang/rust/pull/120767) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=af88f7db51f6f2a1472f9279d7c7e7c822afff77&end=1280928a99ad3ef2c5735b42dc8852456ae3b974&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 13    |
| Improvements (secondary) | -0.4% | [-0.8%, -0.2%] | 25    |
| All  (primary)           | -0.2% | [-0.3%, 0.4%]  | 15    |

* The improvements outweight the regressions. Marked as triaged.

Toggle assert_unsafe_precondition in codegen instead of expansion [#120594](https://github.com/rust-lang/rust/pull/120594) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=972452c4473b2d8f6f6415614f915296bfc34f12&end=8fb67fb37fed736cb04f307473af7c863be224fb&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.3%, 1.0%]   | 13    |
| Regressions (secondary)  | 0.5%  | [0.2%, 2.1%]   | 8     |
| Improvements (primary)   | -0.6% | [-1.4%, -0.2%] | 15    |
| Improvements (secondary) | -0.6% | [-1.4%, -0.2%] | 15    |
| All  (primary)           | -0.1% | [-1.4%, 1.0%]  | 28    |

* The wins and regressions are more or less balanced out.

Rollup of 8 pull requests [#120843](https://github.com/rust-lang/rust/pull/120843) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8fb67fb37fed736cb04f307473af7c863be224fb&end=e28fae52d99d7c14bf0890d1f2b13c2c34fa8932&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.0%]   | 11    |
| Improvements (primary)   | -0.5% | [-1.0%, -0.2%] | 41    |
| Improvements (secondary) | -0.8% | [-2.4%, -0.2%] | 17    |
| All  (primary)           | -0.5% | [-1.0%, 0.2%]  | 42    |

* More wins than losses. Marked as triaged.

Enable MIR JumpThreading by default [#117206](https://github.com/rust-lang/rust/pull/117206) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6cc4843512d613f51ec81aba689180c31b0b28b6&end=42752cbe095b9ad9941f20f22f80788d95f4ab06&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.8%  | [0.4%, 7.1%]   | 10    |
| Regressions (secondary)  | 1.0%  | [0.4%, 3.3%]   | 18    |
| Improvements (primary)   | -0.5% | [-1.6%, -0.2%] | 130   |
| Improvements (secondary) | -0.8% | [-2.5%, -0.3%] | 74    |
| All  (primary)           | -0.4% | [-1.6%, 7.1%]  | 140   |

* Wins outweight the losses here, and this PR should also hopefully improve runtime performance slightly,
which seems to be confirmed by our runtime `hashmap` benchmarks. Marked as triaged.

Fold pointer operations in GVN [#120405](https://github.com/rust-lang/rust/pull/120405) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0cbef48150e1fab161b5fd147b57ceb3f9272a52&end=9aa232ecc7bb006a1fad404f437b049482021a3a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.7%, 1.1%]   | 2     |
| Regressions (secondary)  | 2.7%  | [2.7%, 2.7%]   | 1     |
| Improvements (primary)   | -0.5% | [-0.8%, -0.3%] | 4     |
| Improvements (secondary) | -1.8% | [-1.8%, -1.8%] | 1     |
| All  (primary)           | 0.0%  | [-0.8%, 1.1%]  | 6     |

* There are a few regressions, but nothing too large. This change should eventually help the compiler
optimize Rust code better. Marked as triaged.

Lowering unnamed fields and anonymous adt [#115367](https://github.com/rust-lang/rust/pull/115367) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ed195328689e052b5270b25d0e410b491914fc71&end=bdc15928c8119a86d15e2946cb54851264607842&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 6.1%  | [0.3%, 20.7%]  | 9     |
| Improvements (primary)   | -1.1% | [-1.1%, -1.1%] | 1     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -1.1% | [-1.1%, -1.1%] | 1     |

* A large regression on a stress test. Not marking as triaged yet.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Limit `-C strip` on MSVC" [rust#115120](https://github.com/rust-lang/rust/pull/115120)
  - Nominated by @**davidtwco**
  - Discussion about `-C` flags starts [here](https://github.com/rust-lang/rust/pull/115120#issuecomment-1857697068)
- "Feature gates for renamed features hard error, breaking "nightly-detecting" crates" [rust#120804](https://github.com/rust-lang/rust/issues/120804)
  - Nominated by @**Manish Goregaokar**
  - Seems that renaming nightly features can break some crates (also fundamental ones, like `proc-macro2`). The proposal is to add some machinery in `rustc` to prevent this to happen
  - Other comments point out that this is a "bad" behaviour that crates should avoid ([comment](https://github.com/rust-lang/rust/issues/120804#issuecomment-1934812070) and following)
  - Also interesting [this comment](https://github.com/tkaitchuck/aHash/issues/200#issuecomment-1928961077) from @**RalfJ** in a crate affected
- "debuginfo: Stabilize `-Z debug-macros`, `-Z collapse-macro-debuginfo` and `#[collapse_debuginfo]`" [rust#120845](https://github.com/rust-lang/rust/pull/120845)
  - Nominated by @**Vadim Petrochenkov** (see [Stabilization report](https://github.com/rust-lang/rust/pull/120845#issuecomment-1939145242)), opened FCP

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- None this week

## Next week's WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/UiuKhvMQSbeGjtWD-W8eTA)
