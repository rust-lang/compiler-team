---
tags: weekly, rustc
type: docs
note_id: RVxx4rUCSSy0NoXImNS8iQ
---

# T-compiler Meeting Agenda 2024-01-18

## Announcements

- Compiler team P-high issues review <time:2024-01-19T14:00:00+01:00>
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-01-19T:00:00+01:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Stable MIR weekly meeting <time:2024-01-19T16:00:00+01:00>
- WG-rust-analyzer weekly meeting <time:2024-01-19T16:00:00+01:00>
- WG-macros triage weekly meeting <time:2024-01-19T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Semantics of `-Cinstrument-coverage=all`" [compiler-team#690](https://github.com/rust-lang/compiler-team/issues/690) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Semantics.20of.20.60-Cinstrument-coverage.3Dall.60.20compiler-team.23690)) (last review activity: about 35 days ago)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 0 days ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703)) (last review activity: about 33 days ago)
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: about 33 days ago)
  - "Add -Z direct-access-external-data" [compiler-team#707](https://github.com/rust-lang/compiler-team/issues/707) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20direct-access-external-data.20compiler-team.23707)) (last review activity: about 7 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674#issuecomment-1740243111) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "New Tier-3 target: `wasm32-wasi-preview2`" [compiler-team#694](https://github.com/rust-lang/compiler-team/issues/694) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.3A.20.60wasm32-wasi-preview2.60.20compiler-team.23694))
  - "Smooth the renaming transition of `wasm32-wasi`" [compiler-team#695](https://github.com/rust-lang/compiler-team/issues/695) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Smooth.20the.20renaming.20transition.20of.20.60wasm32.E2.80.A6.20compiler-team.23695))
  - "Provide option to shorten symbol names by replacing them with a digest" [compiler-team#705](https://github.com/rust-lang/compiler-team/issues/705) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/new.20option.20to.20reduce.20the.20size.20of.20dylib.20compiler-team.23705))
  - "uplift some -Zverbose calls and rename to -Zverbose-internals" [compiler-team#706](https://github.com/rust-lang/compiler-team/issues/706) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/merge.20-Zverbose.20into.20--verbose.20compiler-team.23706))
  - "Promote tier 3 `*-pc-windows-gnullvm` targets to tier 2" [compiler-team#710](https://github.com/rust-lang/compiler-team/issues/710) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20.60.2A-pc-windows-gnullvm.60.20tar.E2.80.A6.20compiler-team.23710))
  - "Unstably support MIR-only rlibs" [compiler-team#713](https://github.com/rust-lang/compiler-team/issues/713) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstably.20support.20MIR-only.20rlibs.20compiler-team.23713))
  - "Undeprecate lint `unstable_features` and make use of it in the compiler" [rust#118639](https://github.com/rust-lang/rust/pull/118639)
  - "Warn on references casting to bigger memory layout" [rust#118983](https://github.com/rust-lang/rust/pull/118983)
- Accepted MCPs
  - "Start using clippy on rustc" [compiler-team#709](https://github.com/rust-lang/compiler-team/issues/709) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Start.20using.20clippy.20on.20rustc.20compiler-team.23709))
- Finalized FCPs (disposition merge)
  - "error on incorrect implied bounds in wfcheck except for Bevy dependents" [rust#118553](https://github.com/rust-lang/rust/pull/118553)
  - "const-eval interning: get rid of type-driven traversal" [rust#119044](https://github.com/rust-lang/rust/pull/119044)
  - "Deny braced macro invocations in let-else" [rust#119062](https://github.com/rust-lang/rust/pull/119062)

### WG checkins

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/IPpNv80sQAmD2ZTF6h56ng#WG-checkins)):
  > No updates, I'm still catching up on 2 months of changes while I was away

- @_*T-rust-analyzer* by @**Lukas Wirth** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "[beta] Revert #113923" [rust#119886](https://github.com/rust-lang/rust/pull/119886)
  - Seen last week ([on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-01-11)), @**Quentin Dian (dianqk)** followed-up and authored the revert patch
<!--
/poll Approve beta backport of #119886?
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
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [31 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 39 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs 2024-01-16](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-01-16.md)

This week had some small regressions that did not warrant further investigation,
several of which were dismissed as being noise/blips in the data. There were
also a number of gains. (Don't get exicited about that 20.6% improvement, its an
measurement artifact from a temporary blip in the PR that immediately preceded
this week's triage.)

Triage done by **@pnkfelix**.
Revision range: [76101eec..f9c2421a](https://perf.rust-lang.org/?start=76101eecbe9aa80753664bbe637ad06d1925f315&end=f9c2421a2a6e34f3756900dd7d600704c08bfccb&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.6%, 0.7%]    | 2     |
| Regressions (secondary)  | 3.1%  | [0.8%, 4.1%]    | 9     |
| Improvements (primary)   | -1.2% | [-20.6%, -0.2%] | 133   |
| Improvements (secondary) | -0.8% | [-7.3%, -0.1%]  | 31    |
| All  (primary)           | -1.2% | [-20.6%, 0.7%]  | 135   |


3 Regressions, 5 Improvements, 5 Mixed; 3 of them in rollups
55 artifact comparisons made in total

#### Regressions

Rollup of 10 pull requests [#119754](https://github.com/rust-lang/rust/pull/119754) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ca663b06c5492ac2dde5e53cd11579fa8e4d68bd&end=d6affcf520091fd0f48df1a2b6bfcb9ef48e0f40&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 2.4% | [2.4%, 2.4%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

* The 2 regressing (and secondary) benchmarks are tt-muncher debug {incr-full, full}. Its not transient.
* I've skimmed over the list of PR's in the rollup. None of them are obvious culprits here. I looked at the ones related to debuginfo (#118903) and to code-coverage (#119033 and #119681), but none of those seem likely to be to blame here
* Since this only affects a secondary benchmark, and only the instruction count (e.g. not cpu-clock:u nor wall-time for these two benchmarks), I do not think its worth further investigation and I'm going to mark it as triaged.

Exhaustiveness: use an `Option` instead of allocating fictitious patterns [#119688](https://github.com/rust-lang/rust/pull/119688) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a2d9d73e608f1b24eba840c4fd2d68dbe3b65e01&end=0a8923361ec2a37fa341292c029ef7c6d0405d4b&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 3.8% | [3.6%, 4.1%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

* This impacted the 6 variants of match-stress {incr-full,full} x {check,debug,opt}
* I think the impact on match-stress was probably well-anticipated, and within a reasonable range for a stress-test benchmark.
* Note that #119688 was a precursor to some further cleanup code (namely to remove the use of a local-arena within exhaustiveness checking).
* Marking as triaged.

never patterns: Check bindings wrt never patterns [#119610](https://github.com/rust-lang/rust/pull/119610) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bfcc027a751595ba290c554f47907eaa3779f798&end=714b29a17ff5fa727c794bbb60bfd335f8e75d42&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.4%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.4%] | 3     |

* This impacted 3 variants of unicode-normalization-0.1.19: debug incr-unchanged and check {incr-unchanged, incr-patched:println}.
* Interestingly, during two different try runs, those three variants were found to have improved by similar amounts by this PR.
* there's some weird interaction between that benchmark and the code paths impacted by this PR, and I do not think its worth investing effort in further investigation.
* marking as triaged.

#### Improvements

macro_rules: Add an expansion-local cache to span marker [#119693](https://github.com/rust-lang/rust/pull/119693) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=76101eecbe9aa80753664bbe637ad06d1925f315&end=0ee9cfd54db7b5f4be35f026588904500c866196&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -1.4% | [-20.5%, -0.2%] | 80    |
| Improvements (secondary) | -0.8% | [-1.9%, -0.3%]  | 16    |
| All  (primary)           | -1.4% | [-20.5%, -0.2%] | 80    |

* the bitmaps changes (-20.5%, -17.9%, -13.1%) are all artifacts of returning to normal after a blip in the previous PR.

A more efficient slice comparison implementation for T: !BytewiseEq [#116846](https://github.com/rust-lang/rust/pull/116846) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ae9d24de80b00b4158d1a29a212a6b02aeda0e75&end=190f4c96116a3b59b7de4881cfec544be0246d84&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.9%, -0.2%] | 15    |
| Improvements (secondary) | -0.6% | [-0.6%, -0.6%] | 1     |
| All  (primary)           | -0.5% | [-0.9%, -0.2%] | 15    |

* it is too bad that work in PR #100124 stalled.

Remove a large amount of leb128-coded integers [#119791](https://github.com/rust-lang/rust/pull/119791) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d73bd3fb3ba312f3e6b5af4d56d1161d37b71620&end=68acb393c5d2cff049b41981e35217a7e630f63a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.1%  | [1.1%, 1.1%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 5     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.1%] | 12    |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 5     |

* the 1.1% hit is to deep-vector debug full. It may be transient; the history is pretty up-and-down at the time of this PR, and has settled at a lower level than where it was when this PR landed.
* in any case, the gains elsewhere, especially bootstrap, outweigh the loss to that one secondary benchmark. (Which ... I guess is what the rustc-perf bot now computes as well, since it categorized this as an Improvement rather than Mixed?)

Exhaustiveness: track overlapping ranges precisely [#119396](https://github.com/rust-lang/rust/pull/119396) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bfd799f1a5a86d16e6b8caa2857bcb4aac6e0174&end=174e73a3f6df6f96ab453493796e461164dea94a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-1.7%, -0.2%] | 32    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-1.7%, -0.2%] | 32    |


Rollup of 6 pull requests [#119889](https://github.com/rust-lang/rust/pull/119889) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=174e73a3f6df6f96ab453493796e461164dea94a&end=ce1f2ccf5a5ac9343623bd115a05e4151d93af0d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.8% | [-1.9%, -1.7%] | 4     |
| Improvements (secondary) | -4.3% | [-7.4%, -1.3%] | 2     |
| All  (primary)           | -1.8% | [-1.9%, -1.7%] | 4     |


#### Mixed

Support async recursive calls (as long as they have indirection) [#117703](https://github.com/rust-lang/rust/pull/117703) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=387e7a5e42ac074e79a14361e82702a229a6aac8&end=dc641039d2b3f5c0894694e4b45f7c3951030685&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.4%, -0.3%] | 3     |

* this is weird, it looks like an inverse blip occurred on the preceding PR, where tt-muncher check incr-unchanged had a single point with -0.2% instruction-count, and then it preceding to "return to normal" on the succeeding PRs.
* (Its harder for me to explain away "inverse blips" ...)
* but at the same time, this does not seem like a significant regression by our usual metrics.
* marking as triaged.

Rollup of 9 pull requests [#119767](https://github.com/rust-lang/rust/pull/119767) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=be00c5a9b89161b7f45ba80340f709e8e41122f9&end=5876c8cdfd3df742c334d6447d44d760c77103b6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.3%  | [0.4%, 2.3%]   | 2     |
| Regressions (secondary)  | 0.9%  | [0.5%, 1.2%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | 1.3%  | [0.4%, 2.3%]   | 2     |

* primary regressions: syn opt-full regressed by 2.3%, bitmaps check-incr-full by 0.35%. secondary regressions: coercions debug-full by 1.23%, ctfe-stress check-full by 0.51%
* from the overall history, it seems like syn opt-full returned to "normal" with later PRs that don't necessarily seem like they would have affected syn (e.g. PR #117449). bitmap check-incr-full's trend is likewise downward after this point.
* marking as triaged

Add assume into `NonZeroIntX::get` [#119452](https://github.com/rust-lang/rust/pull/119452) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ce1f2ccf5a5ac9343623bd115a05e4151d93af0d&end=2319be8e265dd19973574eb581d28297baf44b11&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.4%, 0.9%]   | 4     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.3%  | [-0.7%, 0.9%]  | 5     |

* scottmcm writes: "Instructions have a couple red in instruction counts for opt, but that's entirely reasonable for something intended to enable optimizations. Notably, the cycles are green, with no regressions. So I think this is fine."
* marking as triaged

Avoid some redundant work in GVN [#119439](https://github.com/rust-lang/rust/pull/119439) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=714b29a17ff5fa727c794bbb60bfd335f8e75d42&end=f9c2421a2a6e34f3756900dd7d600704c08bfccb&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.6%, 0.9%]   | 4     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.1%, -0.5%] | 4     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)           | 0.0%  | [-1.1%, 0.9%]  | 8     |

* primary regressions are regex-1.5.5 debug-full, opt-incr-patched:Job, incr-full, and exa opt-full.
* the exa regression looks like a blip. The regex ones were predicted during a try run for the PR. I assume they were deemed acceptable as they are offset improvements elsewhere (or dismissed as noise?)
* marking as triaged.

Sandwich MIR optimizations between DSE. [#119672](https://github.com/rust-lang/rust/pull/119672) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f9c2421a2a6e34f3756900dd7d600704c08bfccb&end=fa0dc208d0a34027c1d3cca7d47975d8238bcfde&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.4%]   | 14    |
| Regressions (secondary)  | 0.5%  | [0.2%, 2.7%]   | 14    |
| Improvements (primary)   | -1.0% | [-2.2%, -0.2%] | 31    |
| Improvements (secondary) | -0.9% | [-2.2%, -0.2%] | 10    |
| All  (primary)           | -0.4% | [-2.2%, 1.4%]  | 45    |

* already marked as triaged by @lqd with the comment "As seen in the previous runs: some nice wins on bigger benchmarks, and overall gains outweigh the few losses."

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "`exported_private_dependencies` lint only take effect in innermost dependency" [rust#119428](https://github.com/rust-lang/rust/issues/119428)
  - [RFC3516](https://rust-lang.github.io/rfcs/3516-public-private-dependencies.html) describes an additional Cargo.toml flag (`public = <bool>`) to clarify public/private crate dependencies
  - After this RFC a `warn` lint will be added suggesting that it will become error starting from Rust 2024 edition
  - Changes to rustc are needed to adapt to this new behaviour ([comment](https://github.com/rust-lang/rust/issues/119428#issuecomment-1872438248))
  - Another piece of work is #71043 which is about places the lint should be triggered but isn't ([comment](https://github.com/rust-lang/rust/issues/71043#issuecomment-1834670326))
  - Any capacity from `T-{compiler,compiler-contributor}` to help with any of these? (Owning this work could help make these changes into the 2024 edition) (@_**Ed Page** probably the point of contact for this work)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "compiler: allow transmute of ZST arrays with generics" [rust#114009](https://github.com/rust-lang/rust/pull/114009)
  - cc: @**Wesley wiser** did you have some time for that (ref. [comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-12-14/near/407988418)), do we want to reroll?
- "[rustc_data_structures] Use partition_point to find  slice range end." [rust#114231](https://github.com/rust-lang/rust/pull/114231)
  - cc: @**cjgillot**: seems this is ready to merge? Can you r+?
- "Stabilize `extended_varargs_abi_support`" [rust#116161](https://github.com/rust-lang/rust/pull/116161) (last review activity: 3 months ago)
  - cc: @**wesley wiser**
- "Make privacy visitor use types more (instead of HIR)" [rust#113671](https://github.com/rust-lang/rust/pull/113671) (last review activity: about 54 days ago)
  - cc: **vadim petrochenkov**

## Next week's WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry**
- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/XFCdZKuHRO2QFV5gUfUoDA)


