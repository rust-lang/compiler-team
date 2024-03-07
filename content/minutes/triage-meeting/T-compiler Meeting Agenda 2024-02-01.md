---
tags: weekly, rustc
type: docs
note_id: zW1EBQGZQ2yVhGBlvlPPpg
---

# T-compiler Meeting Agenda 2024-02-01

## Announcements

- No T-compiler meeting according [to the calendar file](https://github.com/rust-lang/calendar/blob/main/compiler.events-only.toml)
- Feb 8th, Rust 1.76 stable release
- There's Rustc Dev Guide reading club initiative in case you want to join, [more info here](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Rustc.20dev.20guide.20reading.20club)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-02-01T22:00:00+01:00>
- Stable MIR Weekly Meeting <time:2024-02-01T16:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716))
  - "Promote tier 3 arm64e-apple-darwin target to tier 2" [compiler-team#717](https://github.com/rust-lang/compiler-team/issues/717) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20arm64e-apple-darwin.20target.E2.80.A6.20compiler-team.23717))
  - "Add `--emit=` to emit nothing" [compiler-team#718](https://github.com/rust-lang/compiler-team/issues/718) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--emit.3D.60.20to.20emit.20nothing.20compiler-team.23718))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 15 days ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703)) (last review activity: about 47 days ago)
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: about 47 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
    - concern: [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
  - "Stabilize `--env-set` option" [rust#119926](https://github.com/rust-lang/rust/pull/119926)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Semantics of `-Cinstrument-coverage=all`" [compiler-team#690](https://github.com/rust-lang/compiler-team/issues/690) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Semantics.20of.20.60-Cinstrument-coverage.3Dall.60.20compiler-team.23690))
  - "New Tier-3 target: `wasm32-wasi-preview2`" [compiler-team#694](https://github.com/rust-lang/compiler-team/issues/694) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.3A.20.60wasm32-wasi-preview2.60.20compiler-team.23694))
  - "Provide option to shorten symbol names by replacing them with a digest" [compiler-team#705](https://github.com/rust-lang/compiler-team/issues/705) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/new.20option.20to.20reduce.20the.20size.20of.20dylib.20compiler-team.23705))
  - "uplift some -Zverbose calls and rename to -Zverbose-internals" [compiler-team#706](https://github.com/rust-lang/compiler-team/issues/706) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/merge.20-Zverbose.20into.20--verbose.20compiler-team.23706))
  - "Add -Z direct-access-external-data" [compiler-team#707](https://github.com/rust-lang/compiler-team/issues/707) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20direct-access-external-data.20compiler-team.23707))
  - "Promote tier 3 `*-pc-windows-gnullvm` targets to tier 2" [compiler-team#710](https://github.com/rust-lang/compiler-team/issues/710) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20.60.2A-pc-windows-gnullvm.60.20tar.E2.80.A6.20compiler-team.23710))
  - "Unstably support MIR-only rlibs" [compiler-team#713](https://github.com/rust-lang/compiler-team/issues/713) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstably.20support.20MIR-only.20rlibs.20compiler-team.23713))
- Accepted MCPs
  - "Smooth the renaming transition of `wasm32-wasi`" [compiler-team#695](https://github.com/rust-lang/compiler-team/issues/695) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Smooth.20the.20renaming.20transition.20of.20.60wasm32.E2.80.A6.20compiler-team.23695))
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

@*T-compiler/meeting* Reminder to not forget giving a glance at MCPs in the FCP phase (if there are any in your area of expertise/interest). Thanks!
(@**apiraino** wonders if at some point we should establish a protocol to close FCPs with longstanding unresolved concerns)

### WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**

  > #### Most notable changes
  >
  > - Document unsafety checking [#1847](https://github.com/rust-lang/rustc-dev-guide/pull/1847)
  > - Add guide for rustdoc search implementation [#1846](https://github.com/rust-lang/rustc-dev-guide/pull/1846)
  > - Add a chapter on editions. [#1835](https://github.com/rust-lang/rustc-dev-guide/pull/1835)
  > - Replace experts map with reviewers from triagebot [#1831](https://github.com/rust-lang/rustc-dev-guide/pull/1831)
  > - Explain the important concepts of exhaustiveness checking [#1830](https://github.com/rust-lang/rustc-dev-guide/pull/1830)
  > - Update how-to-build-and-run.md [#1828](https://github.com/rust-lang/rustc-dev-guide/pull/1828)
  > - Emphasize that the experts map is not up to date [#1826](https://github.com/rust-lang/rustc-dev-guide/pull/1826)
  > - Update documentation for coverage tests [#1823](https://github.com/rust-lang/rustc-dev-guide/pull/1823)
  > - add a new type system invariant [#1822](https://github.com/rust-lang/rustc-dev-guide/pull/1822)
  > - Add explanations on how to run rustc_codegen_gcc tests [#1821](https://github.com/rust-lang/rustc-dev-guide/pull/1821)
  > - notification groups: add information about how to ping them [#1818](https://github.com/rust-lang/rustc-dev-guide/pull/1818)
  > - Add some documentation for unsizing [#1817](https://github.com/rust-lang/rustc-dev-guide/pull/1817)
  >
  > #### Most notable WIPs
  >
  > - Add overview.drawio.svg [#1725](https://github.com/rust-lang/rustc-dev-guide/pull/1725)
  > - rewrite bootstrapping stages [#1650](https://github.com/rust-lang/rustc-dev-guide/pull/1650)
  > - new chapter with examples of diagnostic translation PRs [#1621](https://github.com/rust-lang/rustc-dev-guide/pull/1621)
  > - Improve documentation of MIR queries & passes [#1434](https://github.com/rust-lang/rustc-dev-guide/pull/1434)
  > - Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)

- Impl Trait initiative by @**oli**
  > Currently preparing an "impl trait in associated types" stabilization report along with a roadmap for type-alias-impl-trait. Targetting next month for providing the report to T-lang.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fold arithmetic identities in GVN" [rustc#119670](https://github.com/rust-lang/rust/pull/119670)
  - perf. fix from #111344
    > This PR implements a few arithmetic folds for unary and binary operations.
    > This should take care of the missed optimizations introduced by #116012.
<!--
/poll Approve beta backport of #119670?
approve
decline
don't know
-->
- :beta: "Correct paths for hexagon-unknown-none-elf platform doc" [rust#120533](https://github.com/rust-lang/rust/pull/120533)
  - Not merged. Fixes paths in platform docs for a tier 3 target (`hexagon-unknown-none-elf`)
  - Maybe superseded by #117601? That could make it faster to the next beta build artifact ([comment](https://github.com/rust-lang/rust/pull/120533#issuecomment-1920189295))
  - nominated after request from an interested party for this target ([comment](https://github.com/rust-lang/rust/pull/120533#issuecomment-1919831674))
    > "it was wrong when initially submitted". Following the procedure from the baseline will result in confusing link errors.
    > [...] probably not critical to backport, but I'd prefer it if possible.
<!--
/poll Approve beta backport of #120533?
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
  - [32 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-01-30](https://github.com/rust-lang/rustc-perf/blob/54a18b2515048a5695aa61e79cbf12b5ed9a118d/triage/2024-01-30.md)

This was a very quiet week with only one PR having any real impact on overall compiler performance. The removal of the internal `StructuralEq` trait saw a roughly 0.4% improvement on average across nearly 50 real-world benchmarks.

Triage done by **@rylev**.
Revision range: [d6b151fc7..5c9c3c7](https://perf.rust-lang.org/?start=d6b151fc77e213bf637db0f12c1965ace3ffe255&end=5c9c3c7871d603ba13d38372830eca0c9013e575&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.3%, 0.7%]   | 5     |
| Regressions (secondary)  | 0.5%  | [0.2%, 1.4%]   | 10    |
| Improvements (primary)   | -0.5% | [-1.5%, -0.2%] | 48    |
| Improvements (secondary) | -2.3% | [-7.7%, -0.4%] | 36    |
| All  (primary)           | -0.4% | [-1.5%, 0.7%]  | 53    |


0 Regressions, 4 Improvements, 4 Mixed; 3 of them in rollups
37 artifact comparisons made in total

#### Regressions

None? :big_smile:

#### Improvements

Only use dense bitsets in dataflow analyses [#116152](https://github.com/rust-lang/rust/pull/116152) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8b94152af68a0ed6d6af0b5ba57491e40481008e&end=0e4243538b9119654c22dce688f8a63c81864de9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.2%] | 5     |
| Improvements (secondary) | -0.8% | [-1.1%, -0.4%] | 2     |
| All  (primary)           | -0.4% | [-0.5%, -0.2%] | 5     |


const-eval interning: get rid of type-driven traversal [#119044](https://github.com/rust-lang/rust/pull/119044) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0e4243538b9119654c22dce688f8a63c81864de9&end=6265a95b3735a51cca1d48b8bbc3c8a6a035e15b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.1%, -0.8%] | 3     |
| Improvements (secondary) | -3.8% | [-8.0%, -0.6%] | 14    |
| All  (primary)           | -0.9% | [-1.1%, -0.8%] | 3     |


Remove all ConstPropNonsense [#119627](https://github.com/rust-lang/rust/pull/119627) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7ffc697ce10f19447c0ce338428ae4b9bc0c041c&end=68411c955458ffbc98649d6dd057c4be3b187f38&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 11    |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 3     |
| All  (primary)           | -0.4% | [-0.6%, -0.2%] | 11    |


remove StructuralEq trait [#116167](https://github.com/rust-lang/rust/pull/116167) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0c1fb2a1e65a57073dc62dd502319a00cf753371&end=dd2559e08e1530806740931037d6bb83ef956161&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 48    |
| Improvements (secondary) | -1.3% | [-3.0%, -0.3%] | 23    |
| All  (primary)           | -0.4% | [-0.6%, 0.3%]  | 49    |


#### Mixed

Rollup of 10 pull requests [#120335](https://github.com/rust-lang/rust/pull/120335) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d93feccb35183fa66fee77e7a2c9d4bf4d01695c&end=5bd5d214effd494f4bafb29b3a7a2f6c2070ca5c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.8%]   | 9     |
| Regressions (secondary)  | 0.7%  | [0.6%, 0.9%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-0.7%, -0.7%] | 1     |
| All  (primary)           | 0.4%  | [0.3%, 0.8%]   | 9     |
- Small regressions in doc benchmarks
- Most likely caused by [addings `AsyncFn` family of traits](https://github.com/rust-lang/rust/pull/119305).
- Author has been pinged, but it's probably acceptable cost given that we're documenting more.


Rollup of 9 pull requests [#120375](https://github.com/rust-lang/rust/pull/120375) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cdd4ff8d8179197ba25708e0d85a4fc30f0a4971&end=e7bbe8ce933123a8e327c79e38bcb790595e6a65&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.4%]   | 3     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-0.2%, -0.2%] | 6     |
- Small number of improvements outweigh the small number of regressions and so it's not really worth investigating further.


Rollup of 12 pull requests [#120401](https://github.com/rust-lang/rust/pull/120401) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c073f56a416b541fc66e46fb5265dad870da9229&end=b362939be16f9324dd9e6e36e22b606020068d75&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.5%, 1.1%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -3.1% | [-3.1%, -3.1%] | 1     |
| All  (primary)           | -     | -              | 0     |
- Very small regressions in match stress test is not worth investigating


Merge into larger interval set [#120024](https://github.com/rust-lang/rust/pull/120024) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6b4f1c5e782c72a047a23e922decd33e7d462345&end=635124704849eeead4e3a7bb6e663c5351571d93&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 14    |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 2     |
| All  (primary)           | 0.3%  | [0.2%, 0.4%]   | 14    |
- The reviewer decided that the performance hit here was worth it given that we are now protecting against truly extreme cases that the perf benchmark suite doesn't test against. 

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- TODO

## Next week's WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**
- @_*WG-mir-opt* by @**oli**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/QQzvErTHQF6o8btLDH3oPw)
