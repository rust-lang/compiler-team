---
tags: weekly, rustc
type: docs
note_id: fpaSNYGXR0eHKFbF36lS6g
---

# T-compiler Meeting Agenda 2024-06-06

## Announcements

- Rust stable release 1.79 in a week!
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-06-06T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 4 months ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: 3 months ago)
  - "Only emit forward compatible v0 symbol names with graceful degradation" [compiler-team#737](https://github.com/rust-lang/compiler-team/issues/737) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Only.20emit.20forward.20compatible.20v0.20symbol.20na.E2.80.A6.20compiler-team.23737)) (last review activity: 2 months ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: about 55 days ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 20 days ago)
  - "Add a `--emit=nameres` for IDEs" [compiler-team#749](https://github.com/rust-lang/compiler-team/issues/749) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20.60--emit.3Dnameres.60.20for.20IDEs.20compiler-team.23749)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `--env-set` option" [rust#119926](https://github.com/rust-lang/rust/pull/119926)
  - "sanitizers: stabilize core sanitizers (i.e., AddressSanitizer, LeakSanitizer, MemorySanitizer, ThreadSanitizer)" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "allow overwriting the output of `rustc --version`" [rust#124339](https://github.com/rust-lang/rust/pull/124339)
  - "Add `--print host-triple` to print host target triple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "Remove the `box_pointers` lint." [rust#126018](https://github.com/rust-lang/rust/pull/126018)
- Things in FCP (make sure you're good with it)
  - "Fully rustfmt `use` declarations" [compiler-team#750](https://github.com/rust-lang/compiler-team/issues/750) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23750))
  - "Promote loongarch64-unknown-linux-musl to tier 2" [compiler-team#753](https://github.com/rust-lang/compiler-team/issues/753) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch64-unknown-linux-musl.20to.E2.80.A6.20compiler-team.23753))
  - "Remove `src/tools/rust-demangler`" [compiler-team#754](https://github.com/rust-lang/compiler-team/issues/754) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20.60src.2Ftools.2Frust-demangler.60.20compiler-team.23754))
  - "Extract rustc stable hasher into it's own crate" [compiler-team#755](https://github.com/rust-lang/compiler-team/issues/755) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Extract.20rustc.20stable.20hasher.20into.20it.27s.20own.E2.80.A6.20compiler-team.23755))
- Accepted MCPs
  - "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730))
  - "Add `--emit=thin-link-bitcode` to enable distributed ThinLTO users" [compiler-team#735](https://github.com/rust-lang/compiler-team/issues/735) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zemit-thin-lto-index.3D.3Cpath.3E.60.20to.20ena.E2.80.A6.20compiler-team.23735))
  - "Add --print=check-cfg" [compiler-team#743](https://github.com/rust-lang/compiler-team/issues/743) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20--print.3Dcheck-cfg.20compiler-team.23743))
  - "Support `-Cforce-frame-pointers=non-leaf`" [compiler-team#744](https://github.com/rust-lang/compiler-team/issues/744) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20.60-Cforce-frame-pointers.3Dnon-leaf.60.20compiler-team.23744))
  - "Promote arm64ec-pc-windows-msvc to tier 2" [compiler-team#746](https://github.com/rust-lang/compiler-team/issues/746) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20arm64ec-pc-windows-msvc.20to.20tier.202.20compiler-team.23746))
  - "`-Zfixed-x18`" [compiler-team#748](https://github.com/rust-lang/compiler-team/issues/748) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-Cfixed-x18.60.20compiler-team.23748))
- MCPs blocked on unresolved concerns
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
- Finalized FCPs (disposition merge)
  - "Do not try to reveal hidden types when trying to prove auto-traits in the defining scope" [rust#122192](https://github.com/rust-lang/rust/pull/122192)
  - "Show files produced by `--emit foo` in json artifact notifications" [rust#122597](https://github.com/rust-lang/rust/pull/122597)
  - "Item bounds can reference self projections and still be object safe" [rust#122804](https://github.com/rust-lang/rust/pull/122804)
  - "change method resolution to constrain hidden types instead of rejecting method candidates" [rust#123962](https://github.com/rust-lang/rust/pull/123962)
  - "Make `WHERE_CLAUSES_OBJECT_SAFETY` a regular object safety violation" [rust#125380](https://github.com/rust-lang/rust/pull/125380)
- Other teams finalized FCPs
  - "Tracking Issue for asm_const" [rust#93332](https://github.com/rust-lang/rust/issues/93332)
  - "Do not try to reveal hidden types when trying to prove auto-traits in the defining scope" [rust#122192](https://github.com/rust-lang/rust/pull/122192)
  - "Item bounds can reference self projections and still be object safe" [rust#122804](https://github.com/rust-lang/rust/pull/122804)
  - "Edition 2024: Make `!` fall back to `!`" [rust#123508](https://github.com/rust-lang/rust/pull/123508)
  - "change method resolution to constrain hidden types instead of rejecting method candidates" [rust#123962](https://github.com/rust-lang/rust/pull/123962)
  - "Turn remaining non-structural-const-in-pattern lints into hard errors" [rust#124661](https://github.com/rust-lang/rust/pull/124661)
  - "Use a default lifetime of `'static` in associated consts" [rust#125190](https://github.com/rust-lang/rust/issues/125190)
  - "Make `WHERE_CLAUSES_OBJECT_SAFETY` a regular object safety violation" [rust#125380](https://github.com/rust-lang/rust/pull/125380)

### WG checkins

None this week

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix insufficient logic when searching for the underlying allocation" [rust#124761](https://github.com/rust-lang/rust/pull/124761)
  - Authored by Urgau
  - Fixes #124685, a diagnostic papercut
  - Urgau: regression introduced in rust#118983 when extending the already stable and deny-by-default `ìnvalid_refernce_casting` lint
<!--
/poll Approve beta backport of #124761?
approve
don't know
-->
- :beta: "Handle field projections like slice indexing in invalid_reference_casting" [rust#124908](https://github.com/rust-lang/rust/pull/124908)
  - Authored by saethlin
  - Follow-up to #124761, improves diagnostics
<!--
/poll Approve beta backport of #124908?
approve
don't know
-->
- :beta: "Handle Deref expressions in invalid_reference_casting" [rust#124978](https://github.com/rust-lang/rust/pull/124978)
  - Authored by saethlin
  - Again, follow-up to #124761 to fix diagnostics (fixes the last of the known false positive we encountered in the crater run)
<!--
/poll Approve beta backport of #124978?
approve
don't know
-->
- :beta: "Closures are recursively reachable" [rust#125996](https://github.com/rust-lang/rust/pull/125996)
  - Authored by tmiasko
  - Fixes #126012, P-medium regression in MIR optimization
<!--
/poll Approve beta backport of #125996?
approve
don't know
-->
- :beta: "Update to LLVM 18.1.7" [rust#126061](https://github.com/rust-lang/rust/pull/126061)
  - Authored by nikic
  - only commit [rust-lang/llvm-project@7e6ece9](https://github.com/rust-lang/llvm-project/commit/7e6ece9b4f2d37caf8ff7b87603f15ed9ad2d6ec) addressing a regression in LLVM 18.1.6 that may result in compiler crashes when targeting PPC.
<!--
/poll Approve beta backport of #126061?
approve
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Disallow deriving (other than Copy/Clone) on types with unnamed fields" [rust#121270](https://github.com/rust-lang/rust/pull/121270)
  - Unsure if T-compiler is called to express an opinion ([comment](https://github.com/rust-lang/rust/issues/49804#issuecomment-2106381721))
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [65 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [35 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 1 P-high, 1 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "regression: trait bound not satisfied" [rust#125194](https://github.com/rust-lang/rust/issues/125194)
  - reverted breaking changes in #125629
- "regression: ambiguous outer attributes" [rust#125199](https://github.com/rust-lang/rust/issues/125199)
  - This will soon get into stable. @**Wesley Wiser** could you get around cooking a revert for this? Need support? ([comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-05-30/near/441470232))

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: cannot find macro in scope" [rust#125201](https://github.com/rust-lang/rust/issues/125201)
  - Fixed in #125734, probably another fix will be reworked in #125741 ([comment](https://github.com/rust-lang/rust/issues/125201#issuecomment-2138276172))

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-06-03](https://github.com/rust-lang/rustc-perf/blob/fba75cc08937425ab274959581401b862a0b3068/triage/2024-06-03.md)

A quiet week; we did have one quite serious regression (#115105, "enable
DestinationPropagation by default"), but it was shortly reverted (#125794).
The only other PR identified as potentially problematic was rollup
[PR #125824](https://github.com/rust-lang/rust/pull/125824), but even
that is relatively limited in its effect.

Triage done by **@pnkfelix**.
Revision range: [a59072ec..1d52972d](https://perf.rust-lang.org/?start=a59072ec4fb6824213df5e9de8cae4812fd4fe97&end=1d52972dd8592edf4026aa577c8ce69acc0ac2d1&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.2%, 2.0%]   | 28    |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.6%]   | 6     |
| Improvements (primary)   | -0.4% | [-1.2%, -0.2%] | 30    |
| Improvements (secondary) | -0.5% | [-0.9%, -0.2%] | 24    |
| All  (primary)           | 0.2%  | [-1.2%, 2.0%]  | 58    |


3 Regressions, 5 Improvements, 6 Mixed; 4 of them in rollups
57 artifact comparisons made in total

#### Regressions

Rollup of 5 pull requests [#125649](https://github.com/rust-lang/rust/pull/125649) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c0d600385bb96cc23d3de8615ee37c01abba6c8a&end=f989d2f62500df1696eb797d8800a705293b43b9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.3%  | [0.5%, 2.1%]   | 12    |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.4%]   | 3     |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 1.2%  | [-0.1%, 2.1%]  | 13    |

* all 12 of the regressing primary benchmarks are diesel-1.4.8 (in a variety of configurations).
* problem was isolated to PR #125089 (improve diagnostic output of non_local_definitions lint)
* Urgau notes: "The lint triggers nearly 150 times in the version of diesel used by rustc-perf, so the benchmark has become a bit a linting machinery benchmark"
* cc rustc-perf#1819
* marked as triaged.

Rollup of 5 pull requests [#125665](https://github.com/rust-lang/rust/pull/125665) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c4db851a7bb64173832e6602638204ebbd373a8&end=274499dd0ff53b81e93b80520f7afe25adaa2812&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.5%, 0.5%] | 1     |
| Regressions (secondary)  | 0.4% | [0.2%, 0.5%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.5%, 0.5%] | 1     |

* helloworld is sole primary regression.
* marked as triaged (my own opinion is that helloworld is a useful canary when it regresses by a more significant amount than this)
* (also the 30-day history shows the story for helloworld to be quite a bit more complicated than what is presented by the effects of this single PR, there are lots of spikes mixed in there)

fn_arg_sanity_check: fix panic message [#125695](https://github.com/rust-lang/rust/pull/125695) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5870f1ccbbb2661c92cdc356231386210a64d723&end=4cf5723dbe471ef0a32857b968b91498551f5e38&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.8%, 0.9%] | 4     |
| Regressions (secondary)  | 0.5% | [0.2%, 1.5%] | 19    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.8%, 0.9%] | 4     |

* helloworld is the sole primary regression.
* (already) marked as triaged

#### Improvements

Omit non-needs_drop drop_in_place in vtables [#122662](https://github.com/rust-lang/rust/pull/122662) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7717a306b2678ba9ece19b723c76a6b3a89ba931&end=8c4db851a7bb64173832e6602638204ebbd373a8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.5%, -0.2%] | 9     |
| Improvements (secondary) | -0.5% | [-1.0%, -0.2%] | 18    |
| All  (primary)           | -0.6% | [-1.5%, -0.2%] | 9     |

* improvements are to helloworld-opt and regex-opt.
* small but seems real given nature of PR (largely a binary size reduction)

Update cargo [#125682](https://github.com/rust-lang/rust/pull/125682) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=274499dd0ff53b81e93b80520f7afe25adaa2812&end=da159eb331b27df528185c616b394bb0e1d2a4bd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.6%, -0.5%] | 3     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.2%] | 12    |
| All  (primary)           | -0.5% | [-0.6%, -0.5%] | 3     |

* improvements are to helloworld-check
* probably just noise

Stabilize `custom_code_classes_in_docs` feature [#124577](https://github.com/rust-lang/rust/pull/124577) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=466be510af95d377a4e9997a6ab7c4db5f91e9ec&end=05965ae238403d8c141170b411245a62aa046240&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.8%, -0.2%] | 9     |
| Improvements (secondary) | -0.7% | [-0.9%, -0.5%] | 2     |
| All  (primary)           | -0.4% | [-0.8%, -0.2%] | 9     |

* improvements are to various doc-full benchmarks.
* Probably measurement bias (unless somehow the stability checks are a noticeable expense?)

Increase vtable layout size [#123572](https://github.com/rust-lang/rust/pull/123572) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=acaf0aeed0dfbfc4be9f996344e2c5f294cf5794&end=f2208b32971faba7fa6bf09bd0821adbf3db0c00&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.6%, -0.2%] | 10    |
| All  (primary)           | -     | -              | 0     |

* all "improvements" are to secondary benchmarks: unify-linearly, match-stress, and unused-warnings
* (the improvement from this PR is expected to be realized in runtime performance, especially for code heavy with vtable lookups. Its unsurprising that it wouldn't have a noticeable effect on the compiler tooolchain.)

Avoid checking the edition as much as possible [#125828](https://github.com/rust-lang/rust/pull/125828) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eda9d7f987de76b9d61c633a6ac328936e1b94f0&end=a6416d8907bc94ef1a032d54cb0443cde963e455&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.3%] | 6     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 4     |
| All  (primary)           | -0.4% | [-0.4%, -0.3%] | 6     |

* this is recovering performance that was lost in PR #123865

#### Mixed

Create const block DefIds in typeck instead of ast lowering [#124650](https://github.com/rust-lang/rust/pull/124650) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f989d2f62500df1696eb797d8800a705293b43b9&end=7717a306b2678ba9ece19b723c76a6b3a89ba931&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 3     |
| Improvements (primary)   | -0.5% | [-0.6%, -0.3%] | 6     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -0.3% | [-0.6%, 0.2%]  | 8     |

* as previously noted by @lqd : "Tiny changes, and overall more gains than losses, probably not worth investigation effort imho."
* marking as triaged

Rollup of 8 pull requests [#125691](https://github.com/rust-lang/rust/pull/125691) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=da159eb331b27df528185c616b394bb0e1d2a4bd&end=751691271d76b8435559200b84d1947c2bd735bd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | 1.2%  | [1.2%, 1.2%]   | 1     |
| Improvements (primary)   | -0.5% | [-0.6%, -0.4%] | 2     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -0.2% | [-0.6%, 0.4%]  | 3     |

* regression to image-opt-full
* improvements to webrender-2022-opt-full and regex-opt-incr-patched
* had a broad (if small) improvement to binary sizes, which was isolated to PR #124251
* overall wins seem to outweigh losses; marking as triaged.

don't inhibit random field reordering on repr(packed(1)) [#125360](https://github.com/rust-lang/rust/pull/125360) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4cf5723dbe471ef0a32857b968b91498551f5e38&end=f2e1a3a80ae54734e1a3d306f31c2caebb05de9b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.6%, 1.3%]   | 13    |
| Regressions (secondary)  | 0.4%  | [0.4%, 0.4%]   | 2     |
| Improvements (primary)   | -0.7% | [-0.8%, -0.7%] | 4     |
| Improvements (secondary) | -0.4% | [-0.7%, -0.3%] | 13    |
| All  (primary)           | 0.5%  | [-0.8%, 1.3%]  | 17    |

* regressed bitmaps and typenum; improved helloworld
* instruction counts were affected but not cycle counts; [one theory is that object code has extra offset computations or niche computations...](https://github.com/rust-lang/rust/pull/125360#issuecomment-2137781620)
* since cycle count was not affected, does not seem worth further investigation; marking as triaged

Enable DestinationPropagation by default. [#115105](https://github.com/rust-lang/rust/pull/115105) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=91c0823ee63e793d990bb9fed898dc95b5d6db51&end=cfb730450f847bb622243eaaab15e77e58d91767&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.3%, 3.4%]   | 18    |
| Regressions (secondary)  | 1.3%  | [0.3%, 3.3%]   | 22    |
| Improvements (primary)   | -0.5% | [-4.0%, -0.2%] | 23    |
| Improvements (secondary) | -0.8% | [-1.6%, -0.2%] | 18    |
| All  (primary)           | 0.2%  | [-4.0%, 3.4%]  | 41    |

* was reverted due to injecting [big regression for "Building stage1 codegen backend gcc"](https://github.com/rust-lang/rust/pull/115105#issuecomment-2141019310)
* marking as triaged

Revert "Auto merge of #115105 - cjgillot:dest-prop-default, r=oli-obk" [#125794](https://github.com/rust-lang/rust/pull/125794) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=434999efe6e9aa61afbd8b4ae86864d3ce91c533&end=366da30d554719e7490950aeea5d3f3a5927e313&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 4.2%]   | 18    |
| Regressions (secondary)  | 0.8%  | [0.1%, 1.5%]   | 20    |
| Improvements (primary)   | -1.0% | [-3.2%, -0.3%] | 15    |
| Improvements (secondary) | -1.5% | [-3.1%, -0.4%] | 18    |
| All  (primary)           | -0.2% | [-3.2%, 4.2%]  | 33    |

* revert of above PR
* marking as triaged

Rollup of 7 pull requests [#125824](https://github.com/rust-lang/rust/pull/125824) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2a2c29aafa50bf6fe53d66b32070eba59f860ac3&end=ada5e2c7b5427a591e30baeeee2698a5eb6db0bd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.5%, 1.1%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.4%  | [-0.4%, 1.1%]  | 4     |

* instruction-counts regressed webrender-2022-opt-full, cargo-opt-{incr-patched, full}
* cycle-counts regressed webrender-2022-opt-{full, incr-full}, cranelift-codegen-opt-incr-full, and clap-opt-incr-patched
* history view for webrender shows that the cycle-count effect seems real though not quite as pronounced as the original measurements indicate.
* there are many potential candidates for the cause here in this rollup.
* not marking as triaged; doing some followup perf runs on individual PR's

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Reserve guarded string literals (RFC 3593)" [rust#123951](https://github.com/rust-lang/rust/pull/123951)
  - This guard will be enabled in Edition 2024 (RFC [rendered](https://github.com/rust-lang/rfcs/blob/master/text/3593-unprefixed-guarded-strings.md))
  - @nethercote left a [review](https://github.com/rust-lang/rust/pull/123951#issuecomment-2144065529), seems not too positive about the proposal (was [reviewed by T-lang](https://github.com/rust-lang/rfcs/pull/3593#issuecomment-2017640953))
  - Nominated by @**Esteban Küber** asking T-compiler an opinion ([comment](https://github.com/rust-lang/rust/pull/123951#issuecomment-2136273724))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "tidy watcher" [rust#114209](https://github.com/rust-lang/rust/pull/114209) (last review activity: 5 months ago)
  - This PR looks to me dead in the water. It's lacking a review and the author seems to not respond. Any taker?
- "Remove unnecessary impl sorting in queries and metadata" [rust#120812](https://github.com/rust-lang/rust/pull/120812) (last review activity: 3 months ago)
  - cc @**cjgillot**
- "Suggest a borrow when using dbg" [rust#120990](https://github.com/rust-lang/rust/pull/120990) (last review activity: 3 months ago)
  - cc @**Esteban Küber**
- "Always emit `native-static-libs` note, even if it is empty" [rust#121216](https://github.com/rust-lang/rust/pull/121216) (last review activity: 3 months ago)
  - cc @**Wesley Wiser**

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/t6jzlSpDScqdP-ibSkABRw)
