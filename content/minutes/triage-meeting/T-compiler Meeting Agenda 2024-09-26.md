---
tags: weekly, rustc
type: docs
note_id: obtoz1e-RaeOnDoycHTgEQ
---

# T-compiler Meeting Agenda 2024-09-26

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-09-26T22:00:00+01:00>
- wg-rust-analyzer steering meeting on Zulip (https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/Steering.20meeting) <time:2024-09-27T17:00:00+01:00>
- wg-macros triage meeting Zulip (https://rust-lang.zulipchat.com/#narrow/stream/410876-wg-macros.2Ftriage) <time:2024-09-27T18:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785))
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 7 days ago)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 7 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 20 days ago)
  - "Opt-in flag for absolute paths in diagnostics" [compiler-team#770](https://github.com/rust-lang/compiler-team/issues/770) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Opt-in.20flag.20for.20absolute.20paths.20in.20diagnos.E2.80.A6.20compiler-team.23770)) (last review activity: about 41 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 20 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--orchestrator-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Add `--print host-triple` to print host target triple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "Check ABI target compatibility for function pointers" [rust#128784](https://github.com/rust-lang/rust/pull/128784)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
- Things in FCP (make sure you're good with it)
  - "-Z default-visibility option" [compiler-team#782](https://github.com/rust-lang/compiler-team/issues/782) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/-Z.20default-visibility.20option.20compiler-team.23782))
  - "Support tests to use `minicore` std/core prelude stubs" [compiler-team#786](https://github.com/rust-lang/compiler-team/issues/786) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20tests.20to.20use.20.60minicore.60.20std.2Fcore.20.E2.80.A6.20compiler-team.23786))
- Accepted MCPs
  - "Test rule annotations" [compiler-team#783](https://github.com/rust-lang/compiler-team/issues/783) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Test.20rule.20annotations.20compiler-team.23783))
  - "Don't track `--emit=` options as part of crate SVH" [compiler-team#769](https://github.com/rust-lang/compiler-team/issues/769) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Don.27t.20track.20.60--emit.3D.60.20options.20as.20part.20of.20.E2.80.A6.20compiler-team.23769))
  - "`--hint-msrv=version` option so the compiler can take MSRV into account when linting" [compiler-team#772](https://github.com/rust-lang/compiler-team/issues/772) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-C.20msrv.3Dversion.60.20option.20so.20the.20compiler.20.E2.80.A6.20compiler-team.23772))
  - "mark some target features as 'forbidden' so they cannot be (un)set with -Ctarget-feature" [compiler-team#780](https://github.com/rust-lang/compiler-team/issues/780) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/mark.20some.20target.20features.20as.20.27forbidden.27.20.E2.80.A6.20compiler-team.23780))
  - "New Tier-3 target for OpenHarmony on LoongArch64" [compiler-team#784](https://github.com/rust-lang/compiler-team/issues/784) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.20for.20OpenHarmony.20on.20Loon.E2.80.A6.20compiler-team.23784))
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - "Check WF of source type's signature on fn pointer cast" [rust#129021](https://github.com/rust-lang/rust/pull/129021)
  - "Relate receiver invariantly in method probe for `Mode::Path`" [rust#129073](https://github.com/rust-lang/rust/pull/129073)
  - "Stabilize `&mut` (and `*mut`) as well as `&Cell` (and `*const Cell`) in const" [rust#129195](https://github.com/rust-lang/rust/pull/129195)
  - "Make destructors on `extern "C"` frames to be executed" [rust#129582](https://github.com/rust-lang/rust/pull/129582)
  - "stabilize `const_extern_fn`" [rust#129753](https://github.com/rust-lang/rust/pull/129753)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta:"Use equality when relating formal and expected type in arg checking" [rust#129317](https://github.com/rust-lang/rust/pull/129317)
  - Authored by compiler-errors
  - Fixes #129286 a P-medium regression on nightly (regressed in #129059)
<!--
/poll Approve beta backport of #129317?
approve
don't know
-->
- :beta:"Don't call `extern_crate` when local crate name is the same as a dependency and we have a trait error" [rust#130275](https://github.com/rust-lang/rust/pull/130275)
  - Authored by compiler-errors
  - Fixes P-high (more likely P-critical) beta regression #130573 and #130272 and #129184 (all leading to the same root cause)
<!--
/poll Approve beta backport of #130275?
approve
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [68 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 6 P-medium, 3 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Unsoundness: Patterns in function parameters are not checked for union access" [rust#130528](https://github.com/rust-lang/rust/issues/130528)
  - Fixed by @**Michael Goulet (compiler-errors)** in #130531 (beta accepted last week, open just to track the backport)
- "Panic while compiling http-body v0.4.6 with rustc 1.83.0-nightly (7042c269c 2024-09-23)" [rust#130769](https://github.com/rust-lang/rust/issues/130769)
  - regressed on recent nightly and already fixed by @_**Quentin Dian (dianqk)** in #130786 should fix this

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: overflow evaluating the requirement" [rust#128887](https://github.com/rust-lang/rust/issues/128887)
  - Already fixed in #129073, just needs a regression test
- "regression: ICE is not supported for this key" [rust#130573](https://github.com/rust-lang/rust/issues/130573)
  - Solved by #130275, beta-nominated

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2024-09-23](https://github.com/rust-lang/rustc-perf/blob/44fe248ab62545a5ee7a1cd710451ca16073ea62/triage/2024-09-23.md)

Not too much happened this week. Most regressions of note were readily
justified as removing sources of unpredictable/inconsistent behavior
from code-generation. There was one notable improvement, from PR
#130561: avoiding redoing a redundant normalization of the param-env
ended up improving compile times for 93 primary benchmarks by -1.0% on
average.

Triage done by **@pnkfelix**.
Revision range: [170d6cb8..749f80ab](https://perf.rust-lang.org/?start=170d6cb845c8c3f0dcec5cdd4210df9ecf990244&end=749f80ab051aa0b3724b464130440b0e70a975ac&absolute=false&stat=instructions%3Au)
Revision range: [506f22b4..4cadeda9](https://perf.rust-lang.org/?start=506f22b4663f3e756e1e6a4f66c6309fdc00819c&end=4cadeda932d5c261a9a0b1bbd25c4486e4e0a4c6&absolute=false&stat=instructions%3Au)

**Summary**:

Note: Due to issues in how the perf website generates its output and
fails to deal with certain git histories, we have two different base
summaries.

Base Revision range: [170d6cb8..749f80ab](https://perf.rust-lang.org/?start=170d6cb845c8c3f0dcec5cdd4210df9ecf990244&end=749f80ab051aa0b3724b464130440b0e70a975ac&absolute=false&stat=instructions%3Au)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 2.5%]   | 8     |
| Regressions (secondary)  | 1.2%  | [0.1%, 3.2%]   | 4     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 9     |
| Improvements (secondary) | -0.9% | [-1.7%, -0.2%] | 23    |
| All  (primary)           | 0.2%  | [-0.4%, 2.5%]  | 17    |

Base Revision range: [506f22b4..4cadeda9](https://perf.rust-lang.org/?start=506f22b4663f3e756e1e6a4f66c6309fdc00819c&end=4cadeda932d5c261a9a0b1bbd25c4486e4e0a4c6&absolute=false&stat=instructions%3Au)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.7%  | [0.1%, 6.7%]   | 16    |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 6     |
| Improvements (primary)   | -1.1% | [-5.1%, -0.2%] | 80    |
| Improvements (secondary) | -2.4% | [-5.2%, -0.2%] | 54    |
| All  (primary)                 | -0.5% | [-5.1%, 6.7%]  | 96    |

Total:

2 Regression, 2 Improvements, 7 Mixed; 4 of them in rollups
62 artifact comparisons made in total

#### Regressions

Remove semi-nondeterminism of `DefPathHash` ordering from inliner [#130455](https://github.com/rust-lang/rust/pull/130455) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2e367d94f05f3c6170f4d49f5e387cfaa0c42c32&end=46b0f8bafcf11fa1d6b6c172f4f5c1b95c11ebdb&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.3%, 2.5%] | 5     |
| Regressions (secondary)  | 0.6% | [0.1%, 1.0%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.8% | [0.3%, 2.5%] | 5     |

* primary regressions are all to opt-full for hyper (-2.54%), clap (-0.69%), html5ever (-0.36%), image (-0.31%), cargo (-0.27%)
* from detailed results on hyper, looks like `mir_callgraph_reachable` doubled in instr-count; if I'm reading the table right,
  it seems like it is being called nearly twice as often as before? But this outcome seems like it might be expected, since
  this PR is deliberately removing some code that would bail out early from that call.
* it looks like @**Ben Kimock (Saethlin)** had already
  [attempted to mark](https://github.com/rust-lang/rust/pull/130455#issuecomment-2354849189) this as triaged (due to it being
  acceptable overhead for the benefit of better de

Rollup of 6 pull requests [#130649](https://github.com/rust-lang/rust/pull/130649) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c0838c8ebec23fb87855bb6de3a287981cb1df98&end=74fd001cdae0321144a20133f2216ea8a97da476&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.3% | [0.1%, 0.4%] | 13    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

* This was flagged solely because of the *number* of secondary benchmarks that were affected.
* Marking as triaged.

#### Improvements

[perf] skip normalizing param env if it is already normalized [#130561](https://github.com/rust-lang/rust/pull/130561) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=506f22b4663f3e756e1e6a4f66c6309fdc00819c&end=5793a9e90289382e447f5bc411cab2bc01c5836f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-5.5%, -0.1%] | 93    |
| Improvements (secondary) | -2.7% | [-6.5%, -0.2%] | 59    |
| All  (primary)                 | -1.0% | [-5.5%, -0.1%] | 93    |

* This is awesome. :)

Rollup of 7 pull requests [#130768](https://github.com/rust-lang/rust/pull/130768) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f5cd2c5888011d4d80311e5b771c6da507d860dd&end=4cadeda932d5c261a9a0b1bbd25c4486e4e0a4c6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.7%, -0.1%] | 14    |
| All  (primary)                 | -     | -              | 0     |

* This was flagged because of the *number* of secondary benchmarks that were affected.

#### Mixed

read_volatile __rust_no_alloc_shim_is_unstable in alloc_zeroed [#130497](https://github.com/rust-lang/rust/pull/130497) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aaed38b2a631dfc593454abf471d75d84033773e&end=7fc70f870a1d11c3b104274d3a18112996cdec9a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.7%, -0.3%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.2% | [-0.7%, 0.5%]  | 3     |

* cranelift-codegen opt-full-llvm regressed by -0.48%.
* marking as triaged; this is bringing the two allocator paths into consistency with eachother (the question of whether we want these volatile reads at all, and how to otherwise achieve their effect on the end-to-end developer experience, is an [entirely separate question](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Different.20mechanism.20for.20__rust_no_alloc_shim_is_unstable/near/462025387)).

Rollup of 9 pull requests [#130534](https://github.com/rust-lang/rust/pull/130534) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f79a912d9edc3ad4db910c0e93672ed5c65133fa&end=a5cf8bbd4e1c8edeae08778c85c6f806dd00e853&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.3%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.1% | [-1.2%, -0.6%] | 4     |
| All  (primary)                 | 0.3%  | [0.2%, 0.3%]   | 3     |

* syn regressed on three variant profiles: check incr-unchanged (-0.28%), check incr-patched:println (-0.27%), and debug incr-unchanged (-0.23%)
* [detailed perf results](https://perf.rust-lang.org/detailed-query.html?commit=a5cf8bbd4e1c8edeae08778c85c6f806dd00e853&benchmark=syn-1.0.89-check&scenario=incr-unchanged&base_commit=f79a912d9edc3ad4db910c0e93672ed5c65133fa&sort_idx=-11) indicates that incr_comp_persist_dep_graph went from 0.002 seconds to 0.14 seconds; a delta that accounts for the vast bulk of the difference here...
* but from examining the PR's that follow, it doesn't seem like that result persists into the future. (Also, I'm realizing that the detailed results are presenting seconds, not instruction-counts, and therefore they are probably wildly unstable between runs...)
* marking as triaged; this isn't worth investigating further.

Support `char::encode_utf8` in const scenarios. [#130511](https://github.com/rust-lang/rust/pull/130511) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=df7f77811c8806f85522a38878c57fde221138c9&end=f8192ba0d00bbbc58a10c45823ba010e98ea4474&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.4%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.0%  | [-0.5%, 0.4%]  | 5     |

* primary regressions to opt-full on clap (-0.38%), image (-0.33%), and webrender (-0.31%).
* from inspection, it seems like this may just be a natural (and small, acceptable) artifact of the changes to which things get const-eval'ed.
* marking as triaged


Get rid of niche selection's dependence on fields's order [#130508](https://github.com/rust-lang/rust/pull/130508) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=749f80ab051aa0b3724b464130440b0e70a975ac&end=902f2956a627bd1bd44557b7fe6427a099bf8c48&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.5%  | [0.2%, 0.9%]   | 3     |
| Improvements (primary)   | -0.6% | [-0.6%, -0.6%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.2% | [-0.6%, 0.2%]  | 2     |

* primary regression to typenum doc-full (-0.23%)
* marking as triaged; this is a very small (and probably semi-random) cost for a clear win IMO in terms of overall consistency of behavior.

Rollup of 7 pull requests [#130631](https://github.com/rust-lang/rust/pull/130631) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5ba6db1b648d93fbbab4ae0466e40db682fa45fc&end=da889684c80508036ff036db8c159ffdcf27648a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 5     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-0.3%, 0.6%]  | 2     |

* sole primary regression is to cargo opt-full by 0.6%.
* no obvious smoking guns in the PR list for this rollup.
* marking as triaged as "not being worth further investigation"

add unqualified_local_imports lint [#125645](https://github.com/rust-lang/rust/pull/125645) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9d6039ccae68a2f1930ed9c1542d387b2c0c0ba6&end=7042c269c166191cd5d8daf0409890903df7af57&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.5%  | [0.4%, 2.0%]   | 11    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 6     |
| All  (primary)                 | -     | -              | 0     |

* There was some surprise here for the PR author because this was an allow-by-default lint and so they didn't expect it to have any actual perf impact,
  because they assumed that allowed-linted could be skipped (which is not actually the way they work today, but there are PR's in process that try
  to get that effect).
* In any case, this PR was flagged solely because of the *number* of secondary benchmarks that were affected.
* Marking as triaged.

Rework `non_local_definitions` lint to only use a syntactic heuristic [#127117](https://github.com/rust-lang/rust/pull/127117) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=35daf8b8aa95dee4296bad117c4cb7ecaea7bf4f&end=f5cd2c5888011d4d80311e5b771c6da507d860dd&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.3%  | [0.6%, 6.6%]   | 13    |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.4%]   | 3     |
| Improvements (primary)   | -0.7% | [-1.0%, -0.2%] | 8     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 3     |
| All  (primary)                 | 1.8%  | [-1.0%, 6.6%]  | 21    |

* as noted by Urgau: "the version of diesel used by `rustc-perf` is too old and use named `const AA` items instead of un-named `const _` items, making the lint trigger many times (more than 150 times last time). We ruled in the past that given the regression where located in one benchmark only, and only a pathological case that the regressions where fine."
* already marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Consistently use the highest bit of vector masks when converting to i1 vectors" [rust#104693](https://github.com/rust-lang/rust/pull/104693) (last review activity: 14 months ago)
  - cc @**Wesley Wiser** (self-assigned last year, PR has bounced a bit looking for a reviewer)
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733) (last review activity: 9 months ago)
  - cc @**Esteban Küber**
- "Fix bug where `option_env!` would return `None` when env var is present but not valid Unicode" [rust#122670](https://github.com/rust-lang/rust/pull/122670)
  - cc: @*lcnr* (or reroll?)
- "Issue 83060 fix" [rust#119798](https://github.com/rust-lang/rust/pull/119798)
  - Can anyone assist the author? :) @**Michael Goulet (compiler-errors)** can you reply to the author's [comment](https://github.com/rust-lang/rust/pull/119798#discussion_r1573980900)?

Next meeting's agenda draft: [hackmd link](https://hackmd.io/szi5IXJzROqRtix7BOJjZQ)
