---
tags: weekly, rustc
type: docs
note_id: j7ulhAwrQQeguFno_ejZog
---

# T-compiler Meeting Agenda 2024-05-02

## Announcements

- Today release of stable Rust 1.78 ([blog post](https://blog.rust-lang.org/2024/05/02/Rust-1.78.0.html))
- Next week it's [RustNL week](https://2024.rustnl.org): some? many? of us will be there. Should we skip next week's meeting? Or maybe just a quick look if there's anything urgent?
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-05-02T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add --print=check-cfg" [compiler-team#743](https://github.com/rust-lang/compiler-team/issues/743) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20--print.3Dcheck-cfg.20compiler-team.23743))
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 3 months ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: about 55 days ago)
  - "Add `--emit=thin-link-bitcode` to enable distributed ThinLTO users" [compiler-team#735](https://github.com/rust-lang/compiler-team/issues/735) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zemit-thin-lto-index.3D.3Cpath.3E.60.20to.20ena.E2.80.A6.20compiler-team.23735)) (last review activity: about 1 days ago)
  - "Only emit forward compatible v0 symbol names with graceful degradation" [compiler-team#737](https://github.com/rust-lang/compiler-team/issues/737) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Only.20emit.20forward.20compatible.20v0.20symbol.20na.E2.80.A6.20compiler-team.23737)) (last review activity: about 27 days ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: about 20 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - merge: [Retire the mailing list and make all decisions on zulip (compiler-team#649)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
    - no pending checkboxes
    - concerns: [automatic-sync (by compiler-errors)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660), [single-point-of-failure-via-stream-archival (by pnkfelix)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|116083** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
  - merge: [Show files produced by `--emit foo` in json artifact notifications (rust#122597)](https://github.com/rust-lang/rust/pull/122597#issuecomment-2063945502)
    - @_**|116083** @_**|123586** @_**|116107** @_**|125294** @_**|119031** @_**|248906** @_**|426609** @_**|116118** @_**|232957**
    - no pending concerns
  - merge: [allow overwriting the output of `rustc --version` (rust#124339)](https://github.com/rust-lang/rust/pull/124339#issuecomment-2075414901)
    - @_**|116083** @_**|123586** @_**|125250** @_**|116107** @_**|248906** @_**|124287** @_**|426609** @_**|116118** @_**|216206** @_**|232957**
    - no pending concerns
  - merge: [re-organise the compiler team](https://github.com/rust-lang/rfcs/pull/3599#issuecomment-2062471077) (rfcs#3599)
    - no pending concerns
    - @**Aaron Hill** @**cjgillot** @**Michael (compiler-errors) Goulet** @**Esteban Küber** @**mw** @**nagisa**
- Things in FCP (make sure you're good with it)
  - "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730))
  - "Make casts of pointers to trait objects stricter" [rust#120248](https://github.com/rust-lang/rust/pull/120248)
- Accepted MCPs
  - "allow all command line flags to be passed multiple times, overwriting previous usages" [compiler-team#731](https://github.com/rust-lang/compiler-team/issues/731) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/allow.20all.20command.20line.20flags.20to.20be.20passed.E2.80.A6.20compiler-team.23731))
  - "Policy: no discussions on T-compiler tracking issues" [compiler-team#739](https://github.com/rust-lang/compiler-team/issues/739) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Lock.20all.20tracking.20issues.20to.20prevent.20discu.E2.80.A6.20compiler-team.23739))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 3 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
- Finalized FCPs (disposition merge)
  - "Tracking Issue for RFC 3013: Checking conditional compilation at compile time" [rust#82450](https://github.com/rust-lang/rust/issues/82450)
- Other teams finalized FCPs
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @_*WG-async* by @**nikomatsakis** and @**tmandry**
  > Checkin text

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
  > Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Consider inner modules to be local in the `non_local_definitions` lint" [rust#124539](https://github.com/rust-lang/rust/pull/124539)
  - Authored by @_**urgau** (thanks!)
  - Fixes #124396, a P-medium regression emitting a false positive and misleading error message when compiling the Diesel crate ([comment](https://github.com/rust-lang/rust/issues/124396#issue-2265162210)):
    > The wording [of the error message] might result in cases where the user will believe that this is an upstream diesel issue, rather than an issue with their local code.
<!--
/poll Approve beta backport of #124539?
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
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs for 2024-04-29](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-04-29.md)

Several non-noise changes this week, with both improvements and regressions coming as a result.
Overall compiler performance is roughly neutral across the week.

Triage done by **@simulacrum**.
Revision range: [a77f76e2..c65b2dc9](https://perf.rust-lang.org/?start=a77f76e26302e9a084fb321817675b1dfc1dcd63&end=c65b2dc935c27c0c8c3997c6e8d8894718a2cb1a&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.4%]    | 104   |
| Regressions (secondary)  | 2.4%  | [0.2%, 23.7%]   | 81    |
| Improvements (primary)   | -3.8% | [-26.1%, -0.3%] | 10    |
| Improvements (secondary) | -1.6% | [-4.6%, -0.5%]  | 12    |
| All  (primary)           | 0.1%  | [-26.1%, 1.4%]  | 114   |


2 Regressions, 2 Improvements, 3 Mixed; 1 of them in rollups
51 artifact comparisons made in total

#### Regressions

Use fulfillment in method probe, not evaluation [#122317](https://github.com/rust-lang/rust/pull/122317) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ad07aa12c99698f810d730d7b5a49704c729651d&end=cd90d5c03532da6f7ca7dcfb861ffabdc36a9d00&stat=instructions:u)

| (instructions:u)         | mean | range         | count |
|:------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.2%, 1.3%]  | 38    |
| Regressions (secondary)  | 4.2% | [0.5%, 23.6%] | 39    |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)           | 0.5% | [0.2%, 1.3%]  | 38    |

Some additional attempts to fix perf were done in a follow-up PR
(https://github.com/rust-lang/rust/pull/124303) but did not pan out to be
successful. It looks like this is a correctness fix, so we'll need to accept
the regressions for now.

Stabilize `Utf8Chunks` [#123909](https://github.com/rust-lang/rust/pull/123909) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1b3a32958bb54bde45e693217e8f7469459e5865&end=4d570eea025a19564429eb52b34ec34e14659f55&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.2%, 1.1%] | 11    |
| Regressions (secondary)  | 0.8% | [0.3%, 1.2%] | 19    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.2%, 1.1%] | 11    |

The regressions are in doc builds, but are not really expected from what is a
relatively small change. Further investigation feels warranted (see
https://github.com/rust-lang/rust/pull/123909#issuecomment-2082668500).

#### Improvements

Rollup of 5 pull requests [#124289](https://github.com/rust-lang/rust/pull/124289) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c67277301c896857d0534f2bb7431680796833fb&end=ad07aa12c99698f810d730d7b5a49704c729651d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 7     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 2     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 7     |

Unclear whether this is a genuine improvement. Performance seems to have
re-regressed in #123126 (see Mixed results below), so this may just be
bimodality of some kind.

Set writable and dead_on_unwind attributes for sret arguments [#121298](https://github.com/rust-lang/rust/pull/121298) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cb3752d20e0f5d24348062211102a08d46fbecff&end=284f94f9c0f77ad4ef85323a634cfda29c1a801d&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]    | 1     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -3.1% | [-26.0%, -0.3%] | 12    |
| Improvements (secondary) | -1.6% | [-4.4%, -0.5%]  | 11    |
| All  (primary)           | -2.8% | [-26.0%, 0.5%]  | 13    |

#### Mixed

Enable `CrateNum` query feeding via `TyCtxt` [#123126](https://github.com/rust-lang/rust/pull/123126) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=40dcd796d094b911b8b7b55a0519fb8e3d21680f&end=244da22fabd9fa677bbd0ac601a88e5ca6917526&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.6%]   | 19    |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.5%]   | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-0.7%, -0.7%] | 2     |
| All  (primary)           | 0.3%  | [0.2%, 0.6%]   | 19    |

This looks like it's mostly just a regression to incremental. The PR
description notes this is expected and sounds like there's follow-up work
planned (unclear whether it will help with performance though).

Stop using LLVM struct types for alloca [#122053](https://github.com/rust-lang/rust/pull/122053) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c1feb3eceef7d5f0126c309a87062cf413fe0a25&end=29a56a3b1c06a624c0c06728c0af756d09df6b1b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 8     |
| Regressions (secondary)  | 0.4%  | [0.2%, 1.1%]   | 17    |
| Improvements (primary)   | -1.9% | [-1.9%, -1.9%] | 1     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)           | -0.0% | [-1.9%, 0.3%]  | 9     |

Instruction counts are predominantly affected by some shuffling inside LLVM,
but cycles are largely unaffected. See detailed analysis in
https://github.com/rust-lang/rust/pull/122053#issuecomment-2074850501.

Abort a process when FD ownership is violated [#124210](https://github.com/rust-lang/rust/pull/124210) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6c90ac8d8f4489472720fce03c338cd5d0977f33&end=cb4940645775f60d74aee2e018d6c516c5aa9ed7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-0.8%, -0.8%] | 1     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 2     |
| All  (primary)           | 0.0%  | [-0.8%, 0.4%]  | 3     |

Based on the [self profile results](https://perf.rust-lang.org/detailed-query.html?commit=cb4940645775f60d74aee2e018d6c516c5aa9ed7&benchmark=cargo-0.60.0-opt&scenario=full&base_commit=6c90ac8d8f4489472720fce03c338cd5d0977f33&sort_idx=-12)
I suspect this is caused by us generating more code in the downstream crate(s)
as a result of the late-bound ub checks.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Make create_def a side effect instead of marking the entire query as always red" [rust#115613](https://github.com/rust-lang/rust/pull/115613) (last review activity: 7 months ago)
  - cc: @**cjgillot** (pending rebase cc: @**oli**)
- "tidy watcher" [rust#114209](https://github.com/rust-lang/rust/pull/114209) (last review activity: 4 months ago)
  - cc: @**Wesley Wiser**
- "Remove unnecessary impl sorting in queries and metadata" [rust#120812](https://github.com/rust-lang/rust/pull/120812)
  - cc: @**cjgillot**
- "Use Box<[T]> for ProcessResult::Changed" [rust#121355](https://github.com/rust-lang/rust/pull/121355) (last review activity: 2 months ago)
  - cc: @**Esteban Küber**

## Next week's WG checkins

- None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/XC-GJ4ubTbCwR8KLjXdx7A)
