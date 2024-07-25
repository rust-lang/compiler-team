---
title: T-compiler Meeting Agenda 2024-07-04
tags: [weekly, ' rustc']

---

---
tags: weekly, rustc
type: docs
note_id: b8aoULbjSOiPk2z64V-ncA
---

# T-compiler Meeting Agenda 2024-07-04

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-07-04T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "Add `-Z embed-source` (DWARFv5 source code embedding extension)" [compiler-team#764](https://github.com/rust-lang/compiler-team/issues/764) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20embed-source.60.20.28DWARFv5.20source.20cod.E2.80.A6.20compiler-team.23764))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 5 months ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 2 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 48 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Disallow setting some built-in cfg via set the command-line (rust#126158)](https://github.com/rust-lang/rust/pull/126158#issuecomment--2098595599)
    - @_**|119009** @_**|116083** @_**|125250** @_**|116107** @_**|119031** @_**|124287** @_**|116118** @_**|232957**
    - no pending concerns
  - merge: [Remove the `missing_copy_implementations` lint. (rust#126293)](https://github.com/rust-lang/rust/pull/126293#issuecomment--2132638472)
    - @_**|119009** @_**|125250** @_**|426609** @_**|123856** @_**|116118**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Promote wasm32-wasip2 to a Tier 2 target" [compiler-team#760](https://github.com/rust-lang/compiler-team/issues/760) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20wasm32-wasip2.20to.20a.20Tier.202.20target.20compiler-team.23760))
  - "Remove `Nonterminal` and `TokenKind::Interpolated`" [compiler-team#763](https://github.com/rust-lang/compiler-team/issues/763) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20.60Nonterminal.60.20and.20.60TokenKind.3A.3AInte.E2.80.A6.20compiler-team.23763))
  - "MCP: Alternate cargo freshness algorithm, unstable flag to annotate depinfo file with checksums and file sizes" [compiler-team#765](https://github.com/rust-lang/compiler-team/issues/765) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Alternate.20cargo.20freshness.20algorithm.3A.E2.80.A6.20compiler-team.23765))
- Accepted MCPs
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728))
  - "Fully rustfmt `use` declarations" [compiler-team#750](https://github.com/rust-lang/compiler-team/issues/750) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23750))
  - "Remove `src/tools/rust-demangler`" [compiler-team#754](https://github.com/rust-lang/compiler-team/issues/754) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20.60src.2Ftools.2Frust-demangler.60.20compiler-team.23754))
  - "Extract rustc stable hasher into it's own crate" [compiler-team#755](https://github.com/rust-lang/compiler-team/issues/755) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Extract.20rustc.20stable.20hasher.20into.20it.27s.20own.E2.80.A6.20compiler-team.23755))
  - "Contracts: Experimental attributes and language intrinsics" [compiler-team#759](https://github.com/rust-lang/compiler-team/issues/759) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Contracts.3A.20Experimental.20attributes.20and.20la.E2.80.A6.20compiler-team.23759))
  - "Promote Mac Catalyst targets to Tier 2" [compiler-team#761](https://github.com/rust-lang/compiler-team/issues/761) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20Mac.20Catalyst.20targets.20to.20Tier.202.20compiler-team.23761))
  - "Change `-Z asm_comments` to `-Z verbose_asm`, stop stripping handwritten assembly comments" [compiler-team#762](https://github.com/rust-lang/compiler-team/issues/762) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20.60-Z.20asm_comments.60.20to.20.60-Z.20verbose_a.E2.80.A6.20compiler-team.23762))
- MCPs blocked on unresolved concerns
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - @_**|119009** @_**|124287**
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment--2102637174)
  - merge: [Add `--print host-triple` to print host target triple (rust#125579)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133192548)
    - @_**|119009** @_**|125250** @_**|232957**
    - concerns: [triple vs tuple (by lcnr)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133938172)
- Finalized FCPs (disposition merge)
  - "Collect relevant item bounds from trait clauses for nested rigid projections" [rust#120752](https://github.com/rust-lang/rust/pull/120752)
  - "Check alias args for WF even if they have escaping bound vars" [rust#123737](https://github.com/rust-lang/rust/pull/123737)
  - "allow overwriting the output of `rustc --version`" [rust#124339](https://github.com/rust-lang/rust/pull/124339)
  - "Re-implement a type-size based limit" [rust#125507](https://github.com/rust-lang/rust/pull/125507)
  - "Allow constraining opaque types during various unsizing casts" [rust#125610](https://github.com/rust-lang/rust/pull/125610)
  - "Remove the `box_pointers` lint." [rust#126018](https://github.com/rust-lang/rust/pull/126018)
- Other teams finalized FCPs
  - "Collect relevant item bounds from trait clauses for nested rigid projections" [rust#120752](https://github.com/rust-lang/rust/pull/120752)
  - "`#![crate_name = EXPR]` semantically allows `EXPR` to be a macro call but otherwise mostly ignores it" [rust#122001](https://github.com/rust-lang/rust/issues/122001)
  - "Check alias args for WF even if they have escaping bound vars" [rust#123737](https://github.com/rust-lang/rust/pull/123737)
  - "Re-implement a type-size based limit" [rust#125507](https://github.com/rust-lang/rust/pull/125507)
  - "Allow constraining opaque types during various unsizing casts" [rust#125610](https://github.com/rust-lang/rust/pull/125610)
  - "Syntax for precise capturing: `impl Trait + use<..>`" [rust#125836](https://github.com/rust-lang/rust/issues/125836)
  - "Add nightly style guide section for `precise_capturing` `use<>` syntax" [rust#126753](https://github.com/rust-lang/rust/pull/126753)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Switch back `non_local_definitions` lint to allow-by-default" [rust#127015](https://github.com/rust-lang/rust/pull/127015)
  - Authored by Urgau
  - This PR switch back (again) the `non_local_definitions` lint to allow-by-default
  - Lint was fired a bit too happily ([#126768](https://github.com/rust-lang/rust/issues/126768#issue-2365449221))
  - as per [comment](https://github.com/rust-lang/rust/pull/127015#issuecomment-2194029302):
    > it was put back to allow-by-default in #125183 for 1.79, but left as warn-by-default in 1.80, this PR would make it allow in 1.81 and the backport would make it allow in 1.80
<!--
/poll Approve beta backport of #127015?
approve
don't know
-->
- :beta: "Use the aligned size for alloca at args/ret when the pass mode is cast" [rust#127168](https://github.com/rust-lang/rust/pull/127168)
  - Authored by DianQK
  - Fixes #75839 (and its duplicate #121028), unsoundness caused by LLVM not accessing aligned sizes for `load` and `store` ([comment](https://github.com/rust-lang/rust/pull/127168#issue-2382266395))
<!--
/poll Approve beta backport of #127168?
approve
don't know
-->
- :beta: "Update LLVM submodule" [rust#127190](https://github.com/rust-lang/rust/pull/127190)
  - Authored by DianQK
  - Fixes #112548 (P-high miscompilation on `aarch64-apple-darwin`). Unlock work on #125642
  - LLVM commits [at this link](https://github.com/rust-lang/llvm-project/compare/5a5152f653959d14d68613a3a8a033fb65eec021...e6a6470d1eb4c88fee4b1ea98cd8e0ac4a181c16)
<!--
/poll Approve beta backport of #127190?
approve
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- :beta: "Stall computing instance for drop shim until it has no unsubstituted const params" [rust#127068](https://github.com/rust-lang/rust/pull/127068)
  - Authored by compiler-errors
  - Fixes #127030: report of a broken compilation of a crate
<!--
/poll Approve beta backport of #127068?
approve
don't know
-->
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [68 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "nightly ICE when building flexstr in release mode" [rust#127030](https://github.com/rust-lang/rust/issues/127030)
  - Fixed by [rust#127068](https://github.com/rust-lang/rust/pull/127068) (beta backport requested)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "nightly ICE when building flexstr in release mode" [rust#127030](https://github.com/rust-lang/rust/issues/127030)
  - Fixed by [rust#127068](https://github.com/rust-lang/rust/pull/127068) (beta backport requested)

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "`safe` keyword is not feature-gated" [rust#126755](https://github.com/rust-lang/rust/issues/126755)
  - Mitigated by #126757, makes the `safe` keyword usable in beta again

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "regression: trait bound not satisfied" [rust#125194](https://github.com/rust-lang/rust/issues/125194)
  - @_**lcnr** is working on it (comment on [Zulip](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-06-27/near/448605731))

## Performance logs

> [triage logs for 2024-07-02](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-07-02.md)

We saw a large set of primary benchmarks regress, mostly due to PR
#120924 (`lint_reasons` and `#[expect]`) and PR #120639 (new effects
desugaring). Separate from those, there are a couple rollup PRs
(#127076, #127096) with some regressions that were limited to
relatively few benchmarks; pnkfelix was unable to isolate a injecting
PR that can be identified as a root cause (outside assistance
welcome!).

Triage done by **@pnkfelix**.
Revision range: [c3d7fb39..cf2df68d](https://perf.rust-lang.org/?start=c3d7fb398569407350abe044e786bc7890c90397&end=cf2df68d1f5e56803c97d91e2b1a9f1c9923c533&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.2%, 2.8%]   | 109   |
| Regressions (secondary)  | 1.4%  | [0.3%, 8.0%]   | 50    |
| Improvements (primary)   | -1.3% | [-4.3%, -0.2%] | 41    |
| Improvements (secondary) | -1.3% | [-4.4%, -0.2%] | 75    |
| All  (primary)           | 0.4%  | [-4.3%, 2.8%]  | 150   |


4 Regressions, 3 Improvements, 11 Mixed; 7 of them in rollups
59 artifact comparisons made in total
30 Untriaged Pull Requests

#### Regressions

Rollup of 7 pull requests [#126951](https://github.com/rust-lang/rust/pull/126951) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fda509e817abeeecb5b76bc1de844f355675c81e&end=31f8b70d2e18a0339c034e44c52aa3791c29f53c&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.5%, 0.6%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.5%, 0.6%] | 3     |

* regressions are all to serde incr-patched:println {check, debug, opt}.
* on its own, the regression is limited to instruction counts, and seems minor enough to not warrant deeper investigation.
* (the 30-day history tells a slightly more complex story, though)
* marked as triaged

Let's `#[expect]` some lints: Stabilize `lint_reasons` (RFC 2383)  [#120924](https://github.com/rust-lang/rust/pull/120924) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d7c59370cea68cd17006ec3440a43254fd0eda7d&end=4bc39f028d14c24b04dd17dc425432c6ec354536&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.2%, 1.9%] | 142   |
| Regressions (secondary)  | 0.6% | [0.1%, 1.5%] | 79    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.2%, 1.9%] | 142   |

* wide collection of regressions.
* PR discussion indicates regression may be inherent to how `#[expect]` is implemented; it is also hypothesized to be "likely" that the implementation can be better optimized.
* not marking as triaged.
* (my hope is that someone will look into the "further optimizations" that xFrednet [alludes to above](https://github.com/rust-lang/rust/pull/120924#issuecomment-2202486203), and after we've done a reasonable amount of investigation there, then we can mark this as triaged.) 

Update browser-ui-test version to `0.18.0` [#127010](https://github.com/rust-lang/rust/pull/127010) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9c3bc805dd9cb84019c124b9a50fdff1e62a7ec9&end=42add88d2275b95c98e512ab680436ede691e853&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 7.2% | [7.2%, 7.2%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

* already marked as triaged (secondary benchmark deep-vector is being noisy at the moment).

Implement new effects desugaring [#120639](https://github.com/rust-lang/rust/pull/120639) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d1b7355d3d7b4ead564dbecb1d240fcc74fff21b&end=ba1d7f4a083e6402679105115ded645512a7aea8&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.6%] | 72    |
| Regressions (secondary)  | 0.4% | [0.1%, 0.9%] | 24    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.6%] | 72    |

* Biggest (>=0.4%) primary regressions: regex, bitmaps, typenum, stm32f4, exa. (19 variants of those five benchmarks.)
* the PR author (fee1-dead) has made a couple follow-up attempts to address the regressions, but nothing has hit yet.
* not marking as triaged, in order to encourage addressing the regressions. (note however: the cycles:u metric didn't regress, at least not past our noise-filtering significance threshold. Nor did task-clock:u. It is not totally clear how much effort is warranted here, apart from a desire to keep the instruction count low just because that is our most stable proxy for "computational effort")

#### Improvements

Save 2 pointers in `TerminatorKind` (96 → 80 bytes) [#126784](https://github.com/rust-lang/rust/pull/126784) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5a3e2a4e921097c8f2bf6ea7565f8abe878cdbd4&end=d8d5732456d375f7c4bdc2f6ad771989a5e0ae02&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.2%] | 9     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 4     |
| All  (primary)           | -0.4% | [-0.5%, -0.2%] | 9     |

* improvements are to serde and diesel.
* skimming 30 day history indicates that the effect is real, though may have been somewhat undone by subsequent changes.

rustdoc: use current stage if download-rustc enabled [#126728](https://github.com/rust-lang/rust/pull/126728) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=127fa2261b730a42e6d98b7927c3888ecd08f3e0&end=a4ce33c0b232deda1cbce447e80f187cd34952a6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -8.0% | [-8.0%, -8.0%] | 1     |
| All  (primary)           | -     | -              | 0     |

* (this was just deep-vector noise)

Rollup of 9 pull requests [#127174](https://github.com/rust-lang/rust/pull/127174) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ef3d6fd7002500af0a985f70d3ac5152623c1396&end=6868c831a1eb45c5150ff623cef5e42a8b8946d0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.4% | [-1.1%, -0.2%] | 46    |
| Improvements (secondary) | -1.3% | [-2.9%, -0.2%] | 36    |
| All  (primary)           | -0.4% | [-1.1%, -0.2%] | 46    |

* this had broad improvements to instruction counts, but the cycle counts metric reports that there were 13 regressions (one of which, unicode-normalization, was primary) here with only one improvement (none of which was primary).
* nonetheless, not worth investigating further.

#### Mixed

Rollup of 9 pull requests [#126878](https://github.com/rust-lang/rust/pull/126878) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=33422e72c8a66bdb5ee21246a948a1a02ca91674&end=bcf94dec5ba6838e435902120c0384c360126a26&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.5%]   | 6     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 4     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -0.4% | [-0.5%, -0.3%] | 4     |

* regressions are all to secondary benchmark: coercions.
* marking as triaged

Add `SliceLike` to `rustc_type_ir`, use it in the generic solver code (+ some other changes) [#126813](https://github.com/rust-lang/rust/pull/126813) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6b0f4b5ec3aa707ecaa78230722117324a4ce23c&end=5b270e1198e911247244b035a6f06ce3af0a4420&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.4%, 0.8%]   | 7     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.3%] | 12    |
| Improvements (secondary) | -0.7% | [-2.2%, -0.2%] | 9     |
| All  (primary)           | -0.4% | [-0.6%, -0.3%] | 12    |

* regressions are all to secondary benchmark: match-stress
* marking as triaged

Also get `add nuw` from `uN::checked_add` [#126852](https://github.com/rust-lang/rust/pull/126852) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5b270e1198e911247244b035a6f06ce3af0a4420&end=fc555cd832ee743ff5410c35de2b0dd59ec4322e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.3%, 0.9%]   | 4     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.4%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -1.3% | [-1.4%, -0.9%] | 7     |
| All  (primary)           | 0.4%  | [-0.3%, 0.9%]  | 5     |

* PR was analyzed and thought to be a net win, despite the anticipated regression to compiler instruction-counts
* but there was a bystander follow-up comment that the result here might be a pessimization, at least for Intel x86.
* not marking as triaged, in hopes that follow-up comment gets addressed in some manner.

ast: Standardize visiting order for attributes and node IDs [#125741](https://github.com/rust-lang/rust/pull/125741) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c2d2bb38c9067d983d13505c47e761308b1694db&end=d929a42a664c026167800801b26d734db925314f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 12    |
| All  (primary)           | -     | -              | 0     |

* solely regressions to secondary benchmark: tt-muncher.
* marking as triaged

Rollup of 8 pull requests [#126965](https://github.com/rust-lang/rust/pull/126965) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c290e9de32e8ba6a673ef125fde40eadd395d170&end=fda509e817abeeecb5b76bc1de844f355675c81e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 3.3%  | [1.7%, 5.8%]   | 9     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -3.0% | [-5.7%, -0.3%] | 2     |
| All  (primary)           | -     | -              | 0     |

* solely regressions to secondary benchmark: derive
* marking as triaged

Remove more `PtrToPtr` casts in GVN [#126844](https://github.com/rust-lang/rust/pull/126844) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4bdf8d2d5877f20b54c1506a607ad8c4744cc387&end=d7c59370cea68cd17006ec3440a43254fd0eda7d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.3%  | [0.3%, 2.9%]   | 4     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.1%, -0.4%] | 2     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | 0.6%  | [-1.1%, 2.9%]  | 6     |

* Main primary regressions to opt-full benchmarks ripgrep (2.89%), webrender (1.11%), html5ever (0.70%).
* Some interesting discussion on the PR about the cause; e.g. are PR's like this causing individual MIR reduction that leads to more inlining and then more bloat overall?
* but I do not think any of that would cause us to undo this particular change; there are higher level inlining and code-generation policies that need to be revisited.
* marking as triaged.

Rollup of 6 pull requests [#127014](https://github.com/rust-lang/rust/pull/127014) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=536235f07e57c9108c6c3b1eacb323164e0f4cfb&end=127fa2261b730a42e6d98b7927c3888ecd08f3e0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 8.2%  | [8.2%, 8.2%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -2.2% | [-5.0%, -0.2%] | 13    |
| All  (primary)           | -0.2% | [-0.2%, -0.2%] | 1     |

* already marked as triaged (sole regressionw as to noisy deep-vector)

Rollup of 6 pull requests [#127076](https://github.com/rust-lang/rust/pull/127076) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=42add88d2275b95c98e512ab680436ede691e853&end=99f77a2eda555b50b518f74823ab636a20efb87f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.4%  | [0.6%, 2.1%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.8% | [-2.7%, -0.8%] | 2     |
| Improvements (secondary) | -0.7% | [-6.2%, -0.2%] | 17    |
| All  (primary)           | -0.2% | [-2.7%, 2.1%]  | 4     |

* regressions are to opt-full: image (2.11%) and cargo (0.61%).
* eyeballing the self-profile results provides a hint that we might be spending more time in LLVM optimizations passes after this rollup PR landed.
* fired off some follow-up rust-timer builds on a couple potential culprits, but I admit that I'm only making semi-educated guesses. (outcome: It wasn't PR #124741 nor PR #126970)
* not marking as triaged, but if no one can identify a root cause within a week, then we should just mark it so at that point.

Rollup of 11 pull requests [#127096](https://github.com/rust-lang/rust/pull/127096) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9ed2ab3790ff41bf741dd690befd6a1c1e2b23ca&end=d38cd229b75a7a608e4971c46d1fb5a99343e430&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.3%, 0.7%]   | 7     |
| Regressions (secondary)  | 1.1%  | [0.2%, 1.6%]   | 7     |
| Improvements (primary)   | -3.4% | [-6.2%, -1.2%] | 12    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.9% | [-6.2%, 0.7%]  | 19    |

* all 7 primary regressions are variants of syn; all but one are incremental.
* skimming the detailed results reports for the top three regressing variants, I see the following queries at the top of the ordering by time-delta: incr_comp_persist_dep_graph, hir_crate, codegen_copy_artifacts_from_incr_cache, early_lint_checks...
* what in this rollup would have impacted those incremental-compilation related queries?
* PR #1270668 already had its own dedicated rustc-perf run.
* (is this potentially just fallout noise from internal API changes like that in PR #127071?)
* fired off a rust-timer build against that, just to scratch that itch.
* not marking as triaged, but if no one can identify a root cause within a week, then we should just mark it so at that point.

Automatically taint InferCtxt when errors are emitted [#126996](https://github.com/rust-lang/rust/pull/126996) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f92a6c41e644d6222be77b20396daec5e77661f3&end=7b21c18fe4de32a7d2faa468e6ef69abff013f85&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.4%, 0.9%]   | 7     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-0.2%, -0.2%] | 1     |

* all regressions are to secondary match-stress benchmark, and were anticipated during a perf run during review
* marking as triaged.

Avoid MIR bloat in inlining [#127113](https://github.com/rust-lang/rust/pull/127113) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c3774be7411722d3695de2ab1da9a358d0d5c82c&end=221e2741c39515a5de6da42d8c76ee1e132c2c74&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.3%, 2.8%]   | 6     |
| Regressions (secondary)  | 1.6%  | [1.5%, 1.9%]   | 6     |
| Improvements (primary)   | -0.8% | [-2.2%, -0.2%] | 17    |
| Improvements (secondary) | -1.6% | [-4.5%, -0.2%] | 18    |
| All  (primary)           | -0.3% | [-2.2%, 2.8%]  | 23    |

* regressed opt-full html5ever, diesel, hyper, and clap. Also regressed ripgrep and regex in two isolated opt incremental scenarios.
* overall gains more than it loses, as [noted after the perf run](https://github.com/rust-lang/rust/pull/127113#issuecomment-2198433788) done during PR development.
* the big impact was to binary sizes, where the improvement is pretty clear.
* marking as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Update bundled musl to 1.2.5" [rust#125692](https://github.com/rust-lang/rust/pull/125692)
  - Nominated as it could unblock some work on rust-cross (see [comment on PR](https://github.com/rust-lang/rust/pull/125692#issuecomment-2206027977))
  - musl [release notes](https://musl.libc.org/releases.html)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Remove unnecessary impl sorting in queries and metadata" [rust#120812](https://github.com/rust-lang/rust/pull/120812)
  - cc: @**cjgillot**
- "Stop using LLVM struct types for array/pointer offset GEPs" [rust#122325](https://github.com/rust-lang/rust/pull/122325)
  - cc: @**Nikita Popov** (author replied to your comment)
- "Issue 83060 fix" [rust#119798](https://github.com/rust-lang/rust/pull/119798)
  - cc @**Wesley Wiser** (author asks a question)
- "DependencyList: removed outdated comment" [rust#124290](https://github.com/rust-lang/rust/pull/124290)
  - This seems a small change: any taker for a review? :-)
- "size_of_val_raw: for length 0 this is safe to call" [rust#126152](https://github.com/rust-lang/rust/pull/126152) (last review activity: about 24 days ago)
  - cc: @**Michael Goulet (compiler-errors)**
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784) (last review activity: about 26 days ago)
  - cc: @**León Orell Liehr (fmease)** (unsure if your review is complete)

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/eQkxivnwRCuEACPKwn7T3A)
