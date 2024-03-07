---
tags: weekly, rustc
type: docs
note_id: QQzvErTHQF6o8btLDH3oPw
---

# T-compiler Meeting Agenda 2024-02-08

## Announcements

- Today Rust stable 1.76 is out :top_hat: :rabbit: [Blog post](https://github.com/rust-lang/blog.rust-lang.org/pull/1243)
- Announcement: experts/interested in C++/Rust interop might be interested to take part to the new initiative meant to work on long term goals in this area ([Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/392734-council/topic/Creating.20a.20WG.20or.20project.20group.20for.20Interop.20Initiative)). Funding provided by Google, [blog post of the Foundation](https://foundation.rust-lang.org/news/google-contributes-1m-to-rust-foundation-to-support-c-rust-interop-initiative).
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage  Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-02-08T22:00:00+01:00>
- Types Team: Rotating Solver/Formality/Polonius Deep Dive <time:2024-02-12T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Use debug fission instead of dwarf split debuginfo for -Csplit-debuginfo=packed" [compiler-team#721](https://github.com/rust-lang/compiler-team/issues/721) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20debug.20fission.20instead.20of.20dwarf.20split.20.E2.80.A6.20compiler-team.23721))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 22 days ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703)) (last review activity: about 55 days ago)
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: about 55 days ago)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: about 6 days ago)
  - "Promote tier 3 arm64e-apple-darwin target to tier 2" [compiler-team#717](https://github.com/rust-lang/compiler-team/issues/717) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20arm64e-apple-darwin.20target.E2.80.A6.20compiler-team.23717)) (last review activity: about 6 days ago)
  - "Add `--emit=` to emit nothing" [compiler-team#718](https://github.com/rust-lang/compiler-team/issues/718) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--emit.3D.60.20to.20emit.20nothing.20compiler-team.23718)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
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
  - "Promote tier 3 `*-pc-windows-gnullvm` targets to tier 2" [compiler-team#710](https://github.com/rust-lang/compiler-team/issues/710) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20.60.2A-pc-windows-gnullvm.60.20tar.E2.80.A6.20compiler-team.23710))
  - "Unstably support MIR-only rlibs" [compiler-team#713](https://github.com/rust-lang/compiler-team/issues/713) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstably.20support.20MIR-only.20rlibs.20compiler-team.23713))
  - "Promote OpenHarmony targets to tier 2" [compiler-team#719](https://github.com/rust-lang/compiler-team/issues/719) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20OpenHarmony.20targets.20to.20tier.202.20compiler-team.23719))
  - "Remove fake `rust-intrinsic` ABI" [compiler-team#720](https://github.com/rust-lang/compiler-team/issues/720) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20fake.20.60rust-intrinsic.60.20ABI.20compiler-team.23720))
  - "Overhaul `Diagnostic` and `DiagnosticBuilder` " [compiler-team#722](https://github.com/rust-lang/compiler-team/issues/722) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Overhaul.20.60Diagnostic.60.20and.20.60DiagnosticBuil.E2.80.A6.20compiler-team.23722))
- Accepted MCPs
  - "Add -Z direct-access-external-data" [compiler-team#707](https://github.com/rust-lang/compiler-team/issues/707) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20direct-access-external-data.20compiler-team.23707))
- Finalized FCPs (disposition merge)
  - "Decision: semantics of the `#[expect]` attribute" [rust#115980](https://github.com/rust-lang/rust/issues/115980)
  - "style-guide: Format single associated type `where` clauses on the same line" [rust#119515](https://github.com/rust-lang/rust/pull/119515)
  - "style-guide: When breaking binops handle multi-line first operand better" [rust#119838](https://github.com/rust-lang/rust/pull/119838)
  - "style-guide: Tweak `Cargo.toml` formatting to not put `description` last" [rust#120072](https://github.com/rust-lang/rust/pull/120072)
  - "Make it so that async-fn-in-trait is compatible with a concrete future in implementation" [rust#120103](https://github.com/rust-lang/rust/pull/120103)

### WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/dpHKGJflSWiY_yyXprzSww#WG-checkins)):
  > We have an ongoing update to LLVM 18, which will land soon(TM) and has some nice perf results.

- @_*WG-mir-opt* by @**oli**:
  > I did not track updates this cycle.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Correctly check `never_type` feature gating" [rust#120552](https://github.com/rust-lang/rust/pull/120552)
  - Fixes p-high #120542, the never_type `!` slipped out of the feaature gate.
  - nominated by Michael ([comment](https://github.com/rust-lang/rust/pull/120552#issuecomment-1921616806)) in case it doesn't make it to 1.77
  - By reading [the milestone](https://github.com/rust-lang/rust/pull/120552#event-11697373772) (1.78), unsure if it made it
<!--
/poll Approve beta backport of #120552?
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
- "Stabilize `cfg_target_abi`" [rust#119590](https://github.com/rust-lang/rust/pull/119590)
  - what is this waiting on a team for? (cc @**Jubilee**)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ). Note: a few of them are `I-lang-nominated` (cc @**pnkfelix** )

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [32 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
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

> [triage logs for 2023-02-05](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-02-05.md)

Rust's CI was down most of the week, leading to a much smaller collection of
commits than usual.

Triage done by **@simulacrum**.
Revision range: [5c9c3c7871d603ba13d38372830eca0c9013e575..0984becf01112cbd3583c796541760b65340c8db](https://perf.rust-lang.org/?start=5c9c3c7871d603ba13d38372830eca0c9013e575&end=0984becf01112cbd3583c796541760b65340c8db&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 3     |
| Improvements (primary)   | -0.3% | [-0.7%, -0.2%] | 7     |
| Improvements (secondary) | -0.6% | [-1.0%, -0.5%] | 7     |
| All  (primary)           | -0.3% | [-0.7%, -0.2%] | 7     |


0 Regressions, 2 Improvements, 1 Mixed; 1 of them in rollups
17 artifact comparisons made in total

#### Regressions

* None this week.

#### Improvements

Normalize region obligation in lexical region resolution with next-gen solver [#119101](https://github.com/rust-lang/rust/pull/119101) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f3d71c9249072413f014b378bb5ea79c8a7dc9a7&end=cb4d9a1902b3ea17e93872dafb76d24aa6295c47&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 4     |


hir: Refactor getters for owner nodes [#120346](https://github.com/rust-lang/rust/pull/120346) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=80deabd0987201e1b8d060400f50e03309a0105e&end=d53ddcd8bbb41cd977ab4f7a54886fd7779c0eba&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -3.6% | [-3.6%, -3.6%] | 1     |
| Improvements (secondary) | -0.6% | [-1.0%, -0.5%] | 7     |
| All  (primary)           | -3.6% | [-3.6%, -3.6%] | 1     |

#### Mixed

Rollup of 9 pull requests [#120660](https://github.com/rust-lang/rust/pull/120660) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0984becf01112cbd3583c796541760b65340c8db&end=8c0b4f67c9b4bf477df38c16669fd576d46a2b3d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.2%, 1.4%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 2     |
| All  (primary)           | 0.8%  | [0.2%, 1.4%]   | 2     |

Needs further investigation. This just landed so it's hard to say whether the
regressions are noise or not. Kicked off another run on the PR to see if that
helps.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add rustc_intrinsic_const_vector_arg attribute to allow vectors to be passed as constants" [rust#118980](https://github.com/rust-lang/rust/pull/118980)
  - cc Wesley
- "tidy watcher" [rust#114209](https://github.com/rust-lang/rust/pull/114209)
  - Wesley autoassigned (but in case we can re-roll)
- "Fix type resolution of associated const equality bounds (take 2)" [rust#119385](https://github.com/rust-lang/rust/pull/119385)
  - cc @**Michael Goulet (compiler-errors)** (though PR author is fine with waiting a bit)

## Next week's WG checkins

- @_*T-rust-analyzer* by @**Lukas Wirth**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/kumG_EirTtOWJiQcgji7_w)
