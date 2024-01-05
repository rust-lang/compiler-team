---
tags: weekly, rustc
type: docs
note_id: mdVtQOZMQqqFCjtY9H-05g
---

# T-compiler Meeting Agenda 2023-11-09

## Announcements

- Next week Rust stable 1.74 release
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- No meetings scheduled for next week

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - " Add `$message_type` field to distinguish json diagnostic outputs" [compiler-team#673](https://github.com/rust-lang/compiler-team/issues/673) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.20Add.20.60type.60.20field.20to.20json.20diagnostic.20outp.E2.80.A6.20compiler-team.23673))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - No old proposals this time.
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - concern [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
    - concern [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
    - concern [nesting](https://github.com/rust-lang/rust/pull/113307#issuecomment-1621305927)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
    - concern [needs blog post](https://github.com/rust-lang/rust/pull/115141#issuecomment-1740089459)
  - "make soft_unstable show up in future breakage reports" [rust#116274](https://github.com/rust-lang/rust/pull/116274#issuecomment-1756999638)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457#issuecomment-1789204219)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
      - concern [needs-fcp](https://github.com/rust-lang/compiler-team/issues/625#issuecomment-1672919695)
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20infrastructure.20to.20.22compute.20the.20ABI.20of.E2.80.A6.20compiler-team.23672))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
    - concern [lint-interactions](https://github.com/rust-lang/compiler-team/issues/674#issuecomment-1740243111)
  - "Set alignment of `i128` to 128 bits for x86" [compiler-team#683](https://github.com/rust-lang/compiler-team/issues/683) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20alignment.20of.20.60i128.60.20to.20128.20bits.20compiler-team.23683))
  - "Support response files generated by ninja with `@ninja:path` syntax" [compiler-team#684](https://github.com/rust-lang/compiler-team/issues/684) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20shell.20parsing.20for.20response.20files.20compiler-team.23684))
  - "Add `-Zexperimental-target`" [compiler-team#685](https://github.com/rust-lang/compiler-team/issues/685) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zexperimental-target.60.20compiler-team.23685))
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
- Accepted MCPs
  - "Have `rustc` produce a local log of execution metrics" [compiler-team#679](https://github.com/rust-lang/compiler-team/issues/679) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Have.20.60rustc.60.20produce.20a.20local.20log.20of.20execu.E2.80.A6.20compiler-team.23679))
  - "Enable Parallel Rustc Front End In Nightly Builds" [compiler-team#681](https://github.com/rust-lang/compiler-team/issues/681) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20Parallel.20Rustc.20Front.20End.20In.20Nightl.E2.80.A6.20compiler-team.23681))
  - "Rename generator to coroutine" [compiler-team#682](https://github.com/rust-lang/compiler-team/issues/682) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20generator.20to.20coroutine.20compiler-team.23682))
- Finalized FCPs (disposition merge)
  - "Allow partially moved values in match" [rust#103208](https://github.com/rust-lang/rust/pull/103208)
  - "document ABI compatibility" [rust#115476](https://github.com/rust-lang/rust/pull/115476)
  - "Remove support for compiler plugins." [rust#116412](https://github.com/rust-lang/rust/pull/116412)
  - "Consider alias bounds when computing liveness in NLL (but this time sound hopefully)" [rust#116733](https://github.com/rust-lang/rust/pull/116733)
  - "Guarantee that `char` has the same size and alignment as `u32`" [rust#116894](https://github.com/rust-lang/rust/pull/116894)
  - "document that the null pointer has the 0 address" [rust#116988](https://github.com/rust-lang/rust/pull/116988)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Make sure that predicates with unmentioned bound vars are still considered global in the old solver" [rust#117589](https://github.com/rust-lang/rust/pull/117589)
  - Fixes 2 of the regressions in [rust#117056](https://github.com/rust-lang/rust/issues/117056) found during the beta crater run
  - Goes hand in hand with backporting [rust#117637](https://github.com/rust-lang/rust/pull/117637) ([comment](https://github.com/rust-lang/rust/pull/117589#issuecomment-1795328159))
<!--
/poll Approve beta backport of #117589?
approve
decline
don't know
-->
- :beta: "Check binders with bound vars for global bounds that don't hold" [rust#117637](https://github.com/rust-lang/rust/pull/117637)
  - Fixes a regression found during [rust#117589](https://github.com/rust-lang/rust/pull/117589)'s crater run
  - Needs to be backported along that PR
<!--
/poll Approve beta backport of #117637?
approve
decline
don't know
-->

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- :beta: generator layout: ignore fake borrows" [rust#117712](https://github.com/rust-lang/rust/pull/117712)
  - [FCP in progress](https://github.com/rust-lang/rust/pull/117712#issuecomment-1801888018) (currently one checkbox more to go)
  - Fixes [rust#117059](https://github.com/rust-lang/rust/issues/117059), `P-high` crater run regression
  - Fallout from enabling [-Zdrop-tracking-mir](https://github.com/rust-lang/rust/issues/116242)
  - Also `I-types-nominated` ([comment](https://github.com/rust-lang/rust/issues/117059#issuecomment-1790928898))
<!--
/poll Approve beta backport of #117712?
approve
decline
don't know
-->

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 4 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Code no longer compiles after -Zdrop-tracking-mir was enabled by default" [rust#116242](https://github.com/rust-lang/rust/issues/116242)
  - It's fixed, left open to track backports

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: new resolution failures in 1.74" [rust#117056](https://github.com/rust-lang/rust/issues/117056)
  - Fixed by [rust#117589](https://github.com/rust-lang/rust/pull/117589), thanks @**Michael (compiler-errors) Goulet**
- "regression: change in async capture rules?" [rust#117059](https://github.com/rust-lang/rust/issues/117059)
  - Fixed by [rust#117134](https://github.com/rust-lang/rust/pull/117134), thanks @**lcnr**, beta backport approved.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-11-07](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-11-07.md)

A difficult week for triage, due to what appears to be system-level disruption to
measurement apparatus, yielding transient noise (and potentially masking actual
problems). The main non-noise performance change was huge regression to bitmaps introduced
by PR 117131, and that already has a fix in-flight (PR #117542). The other thing
worth noting is that the parallel rustc front-end has been enabled in the nightly builds,
which has introduced some overhead that was expected by wg-parallel-rustc.

Triage done by **@pnkfelix**.
Revision range: [650991d6..7b97a5ca](https://perf.rust-lang.org/?start=650991d62c3a2c80ba27009d06839adbb038bf5e&end=7b97a5ca8422d1495a8918106d3249aa405812d4&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean | range          | count |
|:----------------------------------:|:----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 5.8% | [0.3%, 104.7%] | 234   |
| Regressions ❌ <br /> (secondary)  | 2.7% | [0.5%, 11.6%]  | 219   |
| Improvements ✅ <br /> (primary)   | -    | -              | 0     |
| Improvements ✅ <br /> (secondary) | -    | -              | 0     |
| All ❌✅ (primary)                 | 5.8% | [0.3%, 104.7%] | 234   |


10 Regressions, 4 Improvements, 3 Mixed; 3 of them in rollups
68 artifact comparisons made in total

#### Regressions

Accept less invalid Rust in rustdoc [#117450](https://github.com/rust-lang/rust/pull/117450) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d7d9f15be205b45d44700e7ac33b4f79b91f9680&end=50be22964035027398754e54cd3a497efb00f83e&stat=instructions:u)

| (instructions:u)                   | mean | range         | count |
|:----------------------------------:|:----:|:-------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 4.1% | [0.6%, 21.0%] | 17    |
| Regressions ❌ <br /> (secondary)  | 3.0% | [1.0%, 7.7%]  | 6     |
| Improvements ✅ <br /> (primary)   | -    | -             | 0     |
| Improvements ✅ <br /> (secondary) | -    | -             | 0     |
| All ❌✅ (primary)                 | 4.1% | [0.6%, 21.0%] | 17    |

* primary regressions are to doc benchmarks, were anticipated, and are unavoidable.
* marking as triaged.


Fix order of implementations in the "implementations on foreign types" section [#117521](https://github.com/rust-lang/rust/pull/117521) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c5afe0a61e39bdd912803eae8d1887a513bdd172&end=b20f40dba9feabf4b446d9b09d15996f0c046eff&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 2.4% | [0.7%, 3.3%] | 3     |
| Regressions ❌ <br /> (secondary)  | -    | -            | 0     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 2.4% | [0.7%, 3.3%] | 3     |

* the primary regressions are to diesel-doc-full (3.35%), syn-opt-full (3.07%) and serde-doc-full (0.69%).
* the syn-opt-full "regression" is noise; the other two primary benchmarks are doc; this is rustdoc fix and that team has already said they don't think they can do much to address the situation there.
* marking as triaged.

dropck_outlives check whether generator witness needs_drop [#117134](https://github.com/rust-lang/rust/pull/117134) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e8418e092a643ef87019192af7ed6bbd23cc4a63&end=a2f5f9691b6ce64c1703feaf9363710dfd7a56cf&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.3% | [0.2%, 0.3%] | 5     |
| Regressions ❌ <br /> (secondary)  | -    | -            | 0     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 0.3% | [0.2%, 0.3%] | 5     |

* regressed ripgrep check for incr-patched:println (0.35%), incr-full (0.26%), and full (0.21%); regressed regex check for incr-patched:Job (0.29%) and incr-patched:println (0.24%).
* this is easily justified; it is fixing a code-acceptance regression
* marking as triaged

Add track_caller to transmute_copy [#117510](https://github.com/rust-lang/rust/pull/117510) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d6f05fd3735efc8f5af2f6278a3391543c2790b&end=49112241e96aaca646b1aa8ef704e494f56feed4&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.4% | [0.4%, 0.4%] | 3     |
| Regressions ❌ <br /> (secondary)  | -    | -            | 0     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 0.4% | [0.4%, 0.4%] | 3     |

* regressed bitmaps incr-full for check (0.37%), opt (0.36%), and debug (0.36%).
* this seems likely to be noise. It certainly paled in comparison to the regression associated with #117131 for this benchmark (see below).
* marking as triaged.

Guarantee representation of None in NPO [#115333](https://github.com/rust-lang/rust/pull/115333) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9c20ddd956426d577d77cb3f57a7db2227a3c6e9&end=1bb6553b967b69eed9ed8147e78b4f65cfc48e11&stat=instructions:u)

| (instructions:u)                   | mean  | range         | count |
|:----------------------------------:|:-----:|:-------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 12.2% | [0.9%, 30.1%] | 8     |
| Regressions ❌ <br /> (secondary)  | -     | -             | 0     |
| Improvements ✅ <br /> (primary)   | -     | -             | 0     |
| Improvements ✅ <br /> (secondary) | -     | -             | 0     |
| All ❌✅ (primary)                 | 12.2% | [0.9%, 30.1%] | 8     |

* this is a docs change.
* There was a spike of noise that somehow significantly (but temporarily) affected three instances of stm32f4 debug, as well as clap opt (all of which immediately went away in the next commit).
* there is more [discussion of why on zulip](https://rust-lang.zulipchat.com/#narrow/stream/242791-t-infra/topic/perf.20is.20slow.20again/near/400329622)
* already marked as triaged.

clone less [#117540](https://github.com/rust-lang/rust/pull/117540) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5020f7c3b8bd8bf57077389bca5c19f7911fde7a&end=f1b104f52350c800f78d4372aec52080bd6f9164&stat=instructions:u)

| (instructions:u)                   | mean  | range         | count |
|:----------------------------------:|:-----:|:-------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 16.5% | [1.1%, 30.2%] | 3     |
| Regressions ❌ <br /> (secondary)  | -     | -             | 0     |
| Improvements ✅ <br /> (primary)   | -     | -             | 0     |
| Improvements ✅ <br /> (secondary) | -     | -             | 0     |
| All ❌✅ (primary)                 | 16.5% | [1.1%, 30.2%] | 3     |

* the regressions here seem to be correlated with the same spike of noise that afflicted #115333.
* marking as triaged

Run tidy license checker on more workspaces [#115274](https://github.com/rust-lang/rust/pull/115274) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f1b104f52350c800f78d4372aec52080bd6f9164&end=3aaa0f57b7b877ef58532a8de075d1e5a79142bf&stat=instructions:u)

| (instructions:u)                   | mean | range         | count |
|:----------------------------------:|:----:|:-------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 8.8% | [3.3%, 17.8%] | 3     |
| Regressions ❌ <br /> (secondary)  | -    | -             | 0     |
| Improvements ✅ <br /> (primary)   | -    | -             | 0     |
| Improvements ✅ <br /> (secondary) | -    | -             | 0     |
| All ❌✅ (primary)                 | 8.8% | [3.3%, 17.8%] | 3     |

* the regressions here seem to be correlated with the same spike of noise that afflicted #115333.
* already marked as triaged

Warn users who set `non_exhaustive_omitted_patterns` lint level on a match arm [#117094](https://github.com/rust-lang/rust/pull/117094) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2db26d3d55387930f1b1dfb84810bcde5a787a09&end=f81d6f0cb00b1e314107b81bcb9aa72b9df9f564&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.2% | [0.2%, 0.3%] | 3     |
| Regressions ❌ <br /> (secondary)  | 0.1% | [0.1%, 0.1%] | 4     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 0.2% | [0.2%, 0.3%] | 3     |

* regressed check incr-full for cranelift-codegen (0.25%), cargo (0.22%) and hyper (0.21%).
* this small amount does not appear to be noise
* but it shouldn't have any (significant) effect if the `non_exhaustive_omitted_patterns` lint is not in use.
* marking as triaged

Rollup of 6 pull requests [#117590](https://github.com/rust-lang/rust/pull/117590) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a42d94ebb883116f2867cbe3016d9bde9ca6d3f7&end=4b85902b438f791c5bfcb6b1c5b476d5b88e2bef&stat=instructions:u)

| (instructions:u)                   | mean  | range         | count |
|:----------------------------------:|:-----:|:-------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 12.7% | [0.4%, 30.9%] | 6     |
| Regressions ❌ <br /> (secondary)  | 16.2% | [8.1%, 24.2%] | 2     |
| Improvements ✅ <br /> (primary)   | -     | -             | 0     |
| Improvements ✅ <br /> (secondary) | -     | -             | 0     |
| All ❌✅ (primary)                 | 12.7% | [0.4%, 30.9%] | 6     |

* the primary regressions (bitmaps and cargo), while huge, are also clearly noise.
* marking as triaged.

enable parallel rustc front end in nightly builds [#117435](https://github.com/rust-lang/rust/pull/117435) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fcca978aa0c9a7443649305dd0ed48c4691a1e89&end=f9b644636f8c74d1d9a3283dc65a6a6f02a97718&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 2.9% | [0.4%, 5.1%] | 209   |
| Regressions ❌ <br /> (secondary)  | 2.7% | [0.4%, 9.1%] | 219   |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 2.9% | [0.4%, 5.1%] | 209   |

* I was not sure that wg-parallel-rustc was anticipating there being this much of a regression here.
* after followup in [zulip for wg-parallel-rustc](https://rust-lang.zulipchat.com/#narrow/stream/187679-t-compiler.2Fwg-parallel-rustc/topic/performance.20results/near/400790214), they clarified that their expectation of a 1.65% regression was based on wall-time that includes so-called "non-relevant results". (Our default rustc-perf presentation filters out the non-relevant results, which will boost outliers and thus inflate the true mean effect.)
* concluded that this was anticipated and marking as triaged

#### Improvements

bootstrap: do not purge docs on CI environment [#117471](https://github.com/rust-lang/rust/pull/117471) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b20f40dba9feabf4b446d9b09d15996f0c046eff&end=e8418e092a643ef87019192af7ed6bbd23cc4a63&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -3.0% | [-3.0%, -3.0%] | 1     |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | -3.0% | [-3.0%, -3.0%] | 1     |

* single improvement to syn-opt-full that is almost certainly noise.
* and was reverted anyway in PR #117533

Remove support for compiler plugins. [#116412](https://github.com/rust-lang/rust/pull/116412) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1bb6553b967b69eed9ed8147e78b4f65cfc48e11&end=5020f7c3b8bd8bf57077389bca5c19f7911fde7a&stat=instructions:u)

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -      | -               | 0     |
| Regressions ❌ <br /> (secondary)  | -      | -               | 0     |
| Improvements ✅ <br /> (primary)   | -10.1% | [-23.2%, -0.9%] | 8     |
| Improvements ✅ <br /> (secondary) | -      | -               | 0     |
| All ❌✅ (primary)                 | -10.1% | [-23.2%, -0.9%] | 8     |

* perf improvements here are mostly noise.

Rollup of 3 pull requests [#117564](https://github.com/rust-lang/rust/pull/117564) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3aaa0f57b7b877ef58532a8de075d1e5a79142bf&end=a9b03ffe9b23a0832c897e25f246439d99d3026d&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -               | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -               | 0     |
| Improvements ✅ <br /> (primary)   | -9.6% | [-15.4%, -3.0%] | 4     |
| Improvements ✅ <br /> (secondary) | -     | -               | 0     |
| All ❌✅ (primary)                 | -9.6% | [-15.4%, -3.0%] | 4     |

* again, perf improvements here seem to be noise

Hint optimizer about try-reserved capacity [#117503](https://github.com/rust-lang/rust/pull/117503) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b85902b438f791c5bfcb6b1c5b476d5b88e2bef&end=f5ca57e153afaed818f8be88abf5ce46715c0f9a&stat=instructions:u)

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -      | -               | 0     |
| Regressions ❌ <br /> (secondary)  | -      | -               | 0     |
| Improvements ✅ <br /> (primary)   | -10.4% | [-23.6%, -0.4%] | 6     |
| Improvements ✅ <br /> (secondary) | -13.5% | [-19.5%, -7.5%] | 2     |
| All ❌✅ (primary)                 | -10.4% | [-23.6%, -0.4%] | 6     |

* improvement here is transient noise on bitmaps and cargo.


#### Mixed

Update cargo [#117462](https://github.com/rust-lang/rust/pull/117462) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=50be22964035027398754e54cd3a497efb00f83e&end=9d83ac217957eece2189eccf4a7232caec7232ee&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.9%  | [0.8%, 1.1%]   | 2     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.5% | [-0.6%, -0.4%] | 2     |
| Improvements ✅ <br /> (secondary) | -1.5% | [-1.5%, -1.5%] | 1     |
| All ❌✅ (primary)                 | 0.2%  | [-0.6%, 1.1%]  | 4     |

* regressions are to unicode-normalization-opt-incr-patched:println (1.06%) and clar-opt-full (0.81%)
* the regressions to instruction counts seem small but they persist; i.e. this is not transient noise. (It is not clear whether the cost is borne from cargo itself, or if something has changed about how cargo is invoking rustc that incurs this cost.)
* on the other hand, cycle counts and wall time are not impacted at all, which implies to me that this is probably not worth investigating.
* marking as triaged.


Rollup of 5 pull requests [#117459](https://github.com/rust-lang/rust/pull/117459) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9d83ac217957eece2189eccf4a7232caec7232ee&end=09ac6e4b6dbec74dc4718191a6650a1b7e04a7a6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 0.4%  | [0.3%, 0.5%]   | 4     |
| Improvements ✅ <br /> (primary)   | -0.2% | [-0.3%, -0.1%] | 3     |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | -0.2% | [-0.3%, -0.1%] | 3     |

* regressions are all minor and to variants of secondary benchmark coercions
* marking as triaged

Add all RPITITs when augmenting param-env with GAT bounds in `check_type_bounds` [#117131](https://github.com/rust-lang/rust/pull/117131) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a2f5f9691b6ce64c1703feaf9363710dfd7a56cf&end=2520ca8566e596b10b0a163d31d9ce216876fafc&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 32.3% | [0.3%, 99.8%]  | 19    |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -1.4% | [-1.7%, -1.0%] | 6     |
| All ❌✅ (primary)                 | 32.3% | [0.3%, 99.8%]  | 19    |

* the regression to bitmaps (to 13 variants, ranging from 10.8% to 99.8%) appears persistent (non-noise)
* it carries over to cycle-count and wall-clock time.
* compiler-errors has been investigating, and it looks like PR #117542 will address it.
* marking as triaged

## Nominated Issues

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "RFC: Packages as (optional) namespaces" [rfcs#3243](https://github.com/rust-lang/rfcs/pull/3243)
  - @**Ed Page** is open to feedback and comments (on the [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Review.20for.20RFC.233243))
  - other teams have already reviewed

## Next week's WG checkins

TODO

Next meetings' agenda draft: [hackmd link](hackmd.io/0GmbMjmTSDO5dXpIjsXmng)
