---
tags: weekly, rustc
type: docs
note_id: UiuKhvMQSbeGjtWD-W8eTA
---

# T-compiler Meeting Agenda 2024-02-22

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-02-22T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Dist rustc with overflow checks" [compiler-team#724](https://github.com/rust-lang/compiler-team/issues/724) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Dist.20rustc.20with.20overflow.20checks.20compiler-team.23724))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 36 days ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
    - concern: [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
- Old MCPs (not seconded, take a look)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703)) (last review activity: 2 months ago)
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: 2 months ago)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: about 20 days ago)
  - "Promote tier 3 arm64e-apple-darwin target to tier 2" [compiler-team#717](https://github.com/rust-lang/compiler-team/issues/717) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20arm64e-apple-darwin.20target.E2.80.A6.20compiler-team.23717)) (last review activity: about 20 days ago)
  - "Add `--emit=` to emit nothing" [compiler-team#718](https://github.com/rust-lang/compiler-team/issues/718) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--emit.3D.60.20to.20emit.20nothing.20compiler-team.23718)) (last review activity: about 20 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141#issuecomment-1740089459)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457#issuecomment-1789204219)
  - "Stabilize `--env-set` option" [rust#119926](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
  - "debuginfo: Stabilize `-Z debug-macros`, `-Z collapse-macro-debuginfo` and `#[collapse_debuginfo]`" [rust#120845](https://github.com/rust-lang/rust/pull/120845#issuecomment-1939147057)
- Things in FCP (make sure you're good with it)
  - "Support debug fission using -Csplit-debuginfo=post-link" [compiler-team#721](https://github.com/rust-lang/compiler-team/issues/721) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20debug.20fission.20instead.20of.20dwarf.20split.20.E2.80.A6.20compiler-team.23721))
- Accepted MCPs
  - "Remove fake `rust-intrinsic` ABI" [compiler-team#720](https://github.com/rust-lang/compiler-team/issues/720) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20fake.20.60rust-intrinsic.60.20ABI.20compiler-team.23720))
  - "Overhaul `Diagnostic` and `DiagnosticBuilder` " [compiler-team#722](https://github.com/rust-lang/compiler-team/issues/722) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Overhaul.20.60Diagnostic.60.20and.20.60DiagnosticBuil.E2.80.A6.20compiler-team.23722))
  - "Rename `astconv::AstConv` and related items" [compiler-team#723](https://github.com/rust-lang/compiler-team/issues/723) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60astconv.3A.3AAstConv.60.20and.20related.20ite.E2.80.A6.20compiler-team.23723))
- Finalized FCPs (disposition merge)
  - "Make unsafe_op_in_unsafe_fn warn-by-default starting in 2024 edition" [rust#120535](https://github.com/rust-lang/rust/issues/120535)

### WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/XFCdZKuHRO2QFV5gUfUoDA#WG-checkins)):
  > Checkin text

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([prev checkin](https://hackmd.io/zW1EBQGZQ2yVhGBlvlPPpg#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.77] "Improve wording of `static_mut_ref`" [rust#121034](https://github.com/rust-lang/rust/pull/121034)
  - postponed from last week ([comment](https://doc.rust-lang.org/rustc/platform-support.html#tier-2-without-host-tools)), waiting for the patch to be r+'ed
  - which now happened (thanks @**RalfJ**!)
<!--
/poll Approve beta backport of #121034?
approve
decline
don't know
-->
- :beta: [1.77] "Solaris linker does not support --strip-debug" [rust#121399](https://github.com/rust-lang/rust/pull/121399)
  - @_**Eric Huss** nominated since issue reporter asks for a backport ([comment](https://github.com/rust-lang/rust/pull/121399#issuecomment-1956929676)).
  - fixes #121381, linkage broke on Solaris in a recent beta ([Tier 2 without host tools](https://doc.rust-lang.org/rustc/platform-support.html#tier-2-without-host-tools))
<!--
/poll Approve beta backport of #121399?
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

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 4 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 15 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "rust-1.75.0 fails to compile with ICE on aarch64 and various ppc arches with LTO enabled - error: could not compile memchr" [rust#121124](https://github.com/rust-lang/rust/issues/121124)
  - Reported from a Gentoo user (in their issue tracker)
  - Waiting for a feedback on a question whether it also happen on LLVM 18 ([comment](https://github.com/rust-lang/rust/issues/121124#issuecomment-1952228591))
  - @**nils (Nilstrieb)** suggests whether to disable LTO=fat altogether ([comment](https://github.com/rust-lang/rust/issues/121124#issuecomment-1945445978))

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "Severe perf regression in optimized debug builds due to extra UB checks" [rust#121245](https://github.com/rust-lang/rust/issues/121245)
  - @**apiraino** assigned P-high given it's reported as a /severe/ perf. regression in Miri built with optimized and debug assertions. Open to re-assess priority.
  - reported that disabling one of the UB checks introduced in #120594 gives a speedup of the same ballpark as that slowdown
  - [last perf. run](https://github.com/rust-lang/rust/pull/120594#issuecomment-1936402227) on #120594 were mostly positive :thinking:

## Performance logs

> [triage logs for 2022-02-20](https://github.com/rust-lang/rustc-perf/blob/d18e18944c4ab14988ca5219b17530454d133474/triage/2024-02-20.md)

Relatively few PRs affecting performance, but massive improvements thanks to the
update to LLVM 18 (PR #12005), as well as the merging of two related compiler
queries (PR #120919) and other small improvements from a rollup (PR #121055).

Triage done by **@pnkfelix**.
Revision range: [74c3f5a1..5af21304](https://perf.rust-lang.org/?start=74c3f5a146860c94ff4d179fc3bfa34f879adf41&end=5af2130440c198afefbe5b8099342057cf272ef4&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]    | 1     |
| Regressions (secondary)  | 7.1%  | [0.5%, 78.5%]   | 17    |
| Improvements (primary)   | -2.4% | [-13.9%, -0.4%] | 222   |
| Improvements (secondary) | -2.0% | [-9.8%, -0.3%]  | 155   |
| All  (primary)           | -2.4% | [-13.9%, 0.5%]  | 223   |


3 Regressions, 1 Improvements, 6 Mixed; 1 of them in rollups
65 artifact comparisons made in total

#### Regressions

Tracking import use types for more accurate redundant import checking [#117772](https://github.com/rust-lang/rust/pull/117772) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6f726205a1b7992537ddec96c83f2b054b03e04f&end=8b21296b5db6d5724d6b8440dcf459fa82fd88b5&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 1.0%] | 44    |
| Regressions (secondary)  | 0.7% | [0.4%, 1.1%] | 13    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 1.0%] | 44    |

* regressions are [explained by petrochenkov](https://github.com/rust-lang/rust/pull/117772#issuecomment-1951430297): This lint is newly firing against benchmark code, which means that lint reporting machinery is being exercised that was previously not being exercised.
* marked as triaged and filed rust-lang/rustc-perf#1819 to follow up with potential counter-action in benchmark tooling.

macro_rules: Preserve all metavariable spans in a global side table [#119673](https://github.com/rust-lang/rust/pull/119673) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8a497723e311a62fccb1f0bf40e79c6519744a12&end=2bf78d12d33ae02d10010309a0d85dd04e7cff72&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.1%, 1.3%] | 26    |
| Regressions (secondary)  | 0.5% | [0.1%, 3.3%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.1%, 1.3%] | 26    |

* Instruction count regressions flagged against serde_derive, diesel, serde, html5ever, syn
* Most of these were anticipated in the final perf runs against the try builds.
* Marking as triaged under assumption that the reviewers deemed this change to be worth the predicted cost.


Always evaluate free constants and statics, even if previous errors occurred [#121087](https://github.com/rust-lang/rust/pull/121087) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5af2130440c198afefbe5b8099342057cf272ef4&end=cce6a6e22e715bd74455f2560a956ab920c3a914&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.4%, 2.0%] | 4     |
| Regressions (secondary)  | 1.0% | [0.3%, 5.2%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.4%, 2.0%] | 4     |


#### Improvements

pattern_analysis: Move constructor selection logic to `PlaceInfo` [#120692](https://github.com/rust-lang/rust/pull/120692) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0b9f6ad99482c9fc35baa5f40cebf21be4fd98b3&end=bcea3cb748040aa507f44abbd66c50725f35ea4f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.8% | [-1.9%, -1.7%] | 6     |
| All  (primary)           | -     | -              | 0     |


#### Mixed

Merge `impl_polarity` and `impl_trait_ref` queries [#120919](https://github.com/rust-lang/rust/pull/120919) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0a5b998c57a8681acc13206b5917340b053b3a30&end=d26b41711282042c4ea0c5733e7332b07cfa4933&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.5%, 0.7%]   | 3     |
| Regressions (secondary)  | 1.5%  | [1.5%, 1.5%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.7%, -0.2%] | 43    |
| Improvements (secondary) | -0.4% | [-0.5%, -0.2%] | 5     |
| All  (primary)           | -0.3% | [-0.7%, 0.7%]  | 46    |

* already marked as triaged (more wins than losses)

Update to LLVM 18 [#120055](https://github.com/rust-lang/rust/pull/120055) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bc1b9e0e9a813d27a09708b293dc2d41c472f0d0&end=eaff1af8fdd18ee3eb05167b2836042b7d4315f6&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 1.1%  | [0.7%, 3.5%]    | 7     |
| Improvements (primary)   | -2.4% | [-14.1%, -0.5%] | 233   |
| Improvements (secondary) | -1.6% | [-8.0%, -0.3%]  | 160   |
| All  (primary)           | -2.4% | [-14.1%, -0.5%] | 233   |

* already marked as triaged (more wins than losses)

Rollup of 8 pull requests [#121055](https://github.com/rust-lang/rust/pull/121055) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=37b65339c8cf1d18e331f184dbf70bbddcb1e4f7&end=7508c3e4c1349e3dd405547bc7dd8d9549e105b6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 2     |
| Regressions (secondary)  | 0.9%  | [0.8%, 0.9%]   | 2     |
| Improvements (primary)   | -0.9% | [-1.8%, -0.2%] | 9     |
| Improvements (secondary) | -0.6% | [-1.1%, -0.3%] | 21    |
| All  (primary)           | -0.7% | [-1.8%, 0.2%]  | 11    |

* already marked as triaged (more wins than losses)


`cargo update` [#120454](https://github.com/rust-lang/rust/pull/120454) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7508c3e4c1349e3dd405547bc7dd8d9549e105b6&end=cc1c0990ab6f7136d1d54fd008598095b2c53c66&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.4%  | [0.8%, 1.9%]   | 10    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.9% | [-3.4%, -0.2%] | 15    |
| All  (primary)           | -     | -              | 0     |

* already marked as triaged (improvements and regressions balanced out, and the binary size regressions were deemed due to upstream dependencies)

Store static initializers in metadata instead of the MIR of statics. [#116564](https://github.com/rust-lang/rust/pull/116564) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4ae1e79876fcee94a56c1edf7c029a677084d7fc&end=6a4222b5119bce8c24e74dd3ad44006ce0c803e6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 15.9% | [0.4%, 81.2%]  | 8     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.2%] | 8     |
| Improvements (secondary) | -2.5% | [-8.9%, -0.4%] | 18    |
| All  (primary)           | -0.4% | [-0.5%, -0.2%] | 8     |

* already marked as triaged: the benchmark stress test is now writing an 8MB constant to metadata instead of a tiny bit of MIR

Clean up potential_query_instability with FxIndexMap and UnordMap [#120931](https://github.com/rust-lang/rust/pull/120931) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6a4222b5119bce8c24e74dd3ad44006ce0c803e6&end=fa9f77ff35b4b63ed0cef9a9642c8f881b33f14f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 4     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 2     |
| Improvements (secondary) | -6.6% | [-6.6%, -6.6%] | 1     |
| All  (primary)           | -0.2% | [-0.2%, -0.2%] | 2     |

* regressions are solely to the secondary many-assoc-items benchmark (check full, check/debug/opt incr-full), and was anticipated.
* marking as triaged

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "debuginfo: Stabilize `-Z debug-macros`, `-Z collapse-macro-debuginfo` and `#[collapse_debuginfo]`" [rust#120845](https://github.com/rust-lang/rust/pull/120845)
  - Nominated by @**Vadim Petrochenkov** (see [Stabilization report](https://github.com/rust-lang/rust/pull/120845#issuecomment-1939145242)), opened FCP ([link](https://github.com/rust-lang/rust/pull/120845#issuecomment-1939147057))
  - mentioned quickly last week (unsure got some attention)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "compiler: allow transmute of ZST arrays with generics" [rust#114009](https://github.com/rust-lang/rust/pull/114009) (last review activity: 7 months ago)
  - cc @**Wesley Wiser** (or are you ok with passing this to someone else?)
- "Create the previous dep graph index on a background thread" [rust#116375](https://github.com/rust-lang/rust/pull/116375) (last review activity: 4 months ago)
  - cc: **cjgillot**
- "Fix ICE from zero-length span when suggesting to remove trailing semi-colon from final statement in block" [rust#118953](https://github.com/rust-lang/rust/pull/118953) (last review activity: 2 months ago)
  - cc @**cjgillot**

## Next week's WG checkins

- Impl Trait initiative by @**oli**
- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/uDPdSPqLTReGUGYL2yp4EA)
