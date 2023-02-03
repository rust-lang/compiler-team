---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2023-01-19

## Announcements

- Next week, Jan, 26th - release of Rust stable 1.67 
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMzAxMjNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-23T10:00:00-05:00>
- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMzAxMTlUMTcwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-19T12:00:00-05:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzAxMjNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-23T10:00:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMzAxMjNUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-23T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add builtin# for compiler-intrinsic syntax" [compiler-team#580](https://github.com/rust-lang/compiler-team/issues/580) 
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - "Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools" [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 4 months ago)
    - MCP author put it "on ice" ([comment](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Promote.20.60i586-unknown-linux-gnu.60.20to.20Tier.E2.80.A6.20compiler-team.23543/near/314755347))
- Old MCPs (not seconded, take a look)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 26 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 6 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 7 days ago)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: 3 months ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: about 14 days ago)
  - "Store ICE backtraces to disk and point end users at the file location" [compiler-team#578](https://github.com/rust-lang/compiler-team/issues/578) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Make `unused_allocation` lint against `Box::new` too" [rust#104363](https://github.com/rust-lang/rust/pull/104363#issuecomment-1376858371) 
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850)
- Things in FCP (make sure you're good with it)
  - "Upgrade `*-linux-musl` targets to musl 1.2" [compiler-team#572](https://github.com/rust-lang/compiler-team/issues/572) 
  - "New tier-2 target for `wasm32-wasi` + threads" [compiler-team#574](https://github.com/rust-lang/compiler-team/issues/574) 
  - "Add `SEMICOLON_IN_EXPRESSIONS_FROM_MACROS` to future-incompat report" [rust#103418](https://github.com/rust-lang/rust/pull/103418) 
- Accepted MCPs
  - "Also accept `true` and `false` on boolean flags" [compiler-team#577](https://github.com/rust-lang/compiler-team/issues/577) 
- Finalized FCPs (disposition merge)
  - "rustdoc: simplify JS search routine by not messing with lev distance" [rust#105796](https://github.com/rust-lang/rust/pull/105796)

### WG checkins

- Generic Associated Types initiative by @**Jack Huey** ([previous checkin](https://hackmd.io/IvuR59rBR2Ka9opecmfaJQ#WG-checkins)):
  > Checkin text

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/GTHhJzDrS26WZbIntmn55g#WG-checkins)):
  > * A bunch of old diagnostics issues was fixed in the last two months.
  > * We are testing the diagnostics output that users see in our ui test suite. Previously we tested the output if the libstd/libcore sources were available, which caused us to miss that some diagnostics were bad.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time
- No stable nominations for `T-compiler` this time

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time
- No stable nominations for `T-rustdoc` this time

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- None ([issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Fix invalid float literal suggestions when recovering an integer" [rust#105650](https://github.com/rust-lang/rust/pull/105650) (last review activity: about 33 days ago)
  - cc: @**nnethercote** 
- "Fix #99684 through autoref in `write!` macro with a two-phased borrows retrocompat workaround" [rust#100202](https://github.com/rust-lang/rust/pull/100202) (last review activity: about 33 days ago)
  - @**pnkfelix** self-assigned 
- "Relax ordering rules for `asm!` operands" [rust#105798](https://github.com/rust-lang/rust/pull/105798) (last review activity: about 31 days ago)
  - cc: @**Josh Triplett** (specifically mentioned by @**Amanieu**) - or reroll?
- "Skip possible where_clause_object_safety lints when checking `multiple_supertrait_upcastable`" [rust#106253](https://github.com/rust-lang/rust/pull/106253) (last review activity: about 19 days ago)
  - cc: @**Michael Goulet (compiler-errors)** (now unblocked, #106248 landed)
- "Add Minimal Std implementation for UEFI" [rust#105861](https://github.com/rust-lang/rust/pull/105861) (last review activity: about 29 days ago)
  - Mostly `T-libs` but some bits also for `T-compiler`

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [47 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [18 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 29 P-high, 89 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "regression: failed to resolve proc macro definition" [rust#106337](https://github.com/rust-lang/rust/issues/106337)
  - @**Vadim Petrochenkov** self-assigned
  - deprioritize if it will end in next stable (~1 week)?

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` at this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` at this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Regression in Beta/Nightly: implementation of `Trait` is not general enough" [rust#106630](https://github.com/rust-lang/rust/issues/106630)
  - @**Michael Goulet (compiler-errors)** self-assigned

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time

## Performance logs

> [triage logs for 2023-01-18](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-01-18.md)

Nearly all flagged regressions are likely noise, except one rollup with minor
impact on diesel that we will follow up on. We had a broad (albeit small) win
from [#106294](https://github.com/rust-lang/rust/pull/106294).

Triage done by **@pnkfelix**.
Revision range: [0442fbabe24ec43636a80ad1f40a0ad92a2e38df..1f72129ffe5e8c495113f9a2d4e1730f7fad3209](https://perf.rust-lang.org/?start=0442fbabe24ec43636a80ad1f40a0ad92a2e38df&end=1f72129ffe5e8c495113f9a2d4e1730f7fad3209&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.7%]   | 39    |
| Regressions (secondary)  | 0.5%  | [0.2%, 1.8%]   | 23    |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 7     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 6     |
| All  (primary)           | 0.3%  | [-0.6%, 1.7%]  | 46    |


4 Regressions, 3 Improvements, 3 Mixed; 4 of them in rollups
50 artifact comparisons made in total
30 Untriaged Pull Requests

#### Regressions

Rollup of 9 pull requests [#106730](https://github.com/rust-lang/rust/pull/106730) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b22c152958eade17a71d899b29a2d39bcc77aa48&end=ef4046e4f3932991971cdb64915172899532aece&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.3%] | 6     |
| Regressions (secondary)  | 0.4% | [0.2%, 0.7%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.3%] | 6     |

* already isolated by the PR author to [#106321](https://github.com/rust-lang/rust/issues/106321)
* left comment and marked as triaged

Rollup of 10 pull requests [#106822](https://github.com/rust-lang/rust/pull/106822) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0b90256ada21c6a81b4c18f2c7a23151ab5fc232&end=a11eb4f267ddfe4f00cb40bf94aef508c11e0862&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.8%, 0.9%] | 4     |
| Regressions (secondary)  | 0.5% | [0.3%, 0.8%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.8%, 0.9%] | 4     |

* the sole primary impacted benchmarks are variants of helloworld-check.
* Looking at the [graph](https://perf.rust-lang.org/index.html?start=2022-12-14&end=2023-01-17&benchmark=helloworld&profile=check&scenario=incr-unchanged&stat=instructions:u), I'm categorizing this as noise.
* left comment and marked as triaged

Rework some `predicates_of`/`{Generic,Instantiated}Predicates` code [#106395](https://github.com/rust-lang/rust/pull/106395) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=41edaac716dde55b6a9d83ae4da0fba354ae5ba8&end=d12412c90fbd974b1cf886e42a95c850d9ee45a1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.7%, 0.9%]   | 4     |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.1%]   | 18    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-0.7%, -0.7%] | 1     |
| All  (primary)           | 0.8%  | [0.7%, 0.9%]   | 4     |

* already triaged as noise

Heuristically undo path prefix mappings. [#106853](https://github.com/rust-lang/rust/pull/106853) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=af669c26846f85fd15e34a6f03d5d2f237444c17&end=481725984b4cd94ef5c00917b01c1771b6e5299c&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.7%, 0.8%] | 3     |
| Regressions (secondary)  | 0.4% | [0.3%, 0.6%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.7%, 0.8%] | 3     |

* From the [graph](https://perf.rust-lang.org/index.html?start=2022-12-17&end=2023-01-18&benchmark=helloworld&profile=check&scenario=incr-unchanged&stat=instructions:u), I think this is just noise
* left comment and marked as triaged


#### Improvements

Update cargo [#106825](https://github.com/rust-lang/rust/pull/106825) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a11eb4f267ddfe4f00cb40bf94aef508c11e0862&end=ca5d92d789c94060fc32bfc4a778fb16904756ea&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-0.9%, -0.8%] | 4     |
| Improvements (secondary) | -0.5% | [-0.8%, -0.3%] | 12    |
| All  (primary)           | -0.9% | [-0.9%, -0.8%] | 4     |

* just noise in the other direction

Emit only one nbsp error per file [#106872](https://github.com/rust-lang/rust/pull/106872) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d12412c90fbd974b1cf886e42a95c850d9ee45a1&end=a5bfc25c93d2549887848529382892f93c95207d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.8%, -0.7%] | 4     |
| Improvements (secondary) | -0.6% | [-1.1%, -0.3%] | 15    |
| All  (primary)           | -0.7% | [-0.8%, -0.7%] | 4     |

* just noise in the other direction


Put `noundef` on all scalars that don't allow uninit [#106294](https://github.com/rust-lang/rust/pull/106294) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=38a76f33220c4b9d13dda1fa8f6c629c8a7bcc5d&end=3984bc5833db8bfb0acc522c9775383e4171f3de&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.5%, 0.6%]   | 2     |
| Regressions (secondary)  | 1.2%  | [1.2%, 1.2%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 52    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 24    |
| All  (primary)           | -0.2% | [-0.3%, 0.6%]  | 54    |

* awesome amount of green (small but broad) in the perf results

#### Mixed

Rollup of 10 pull requests [#106757](https://github.com/rust-lang/rust/pull/106757) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4887cb18dc2ef5b1bf3fc50ce6c267fde085032b&end=2b8590ef3bd1221830ec8a4131ea9d02b1636746&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.7%]   | 6     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 1     |
| All  (primary)           | 0.6%  | [0.6%, 0.7%]   | 6     |

* the regressing cases are all variation of diesel {full, incr-full}
* Not marking #106757 as triaged. Doing some rust-timer runs on the individual builds.

Rollup of 10 pull requests [#106851](https://github.com/rust-lang/rust/pull/106851) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=44a500c8c187b245638684748f54bd6ec67e0b25&end=4b51adf6ffa1ae2286ea436eb48cbaa8771886e6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.5%]   | 5     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.3%] | 4     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.1%] | 3     |
| All  (primary)           | -0.4% | [-0.4%, -0.3%] | 4     |

* the regressing cases are secondary tuple-stress and deep-vector
* left comment and marked as triaged.

Switch to `EarlyBinder` for `const_param_default` and `impl_trait_ref` queries [#106696](https://github.com/rust-lang/rust/pull/106696) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b51adf6ffa1ae2286ea436eb48cbaa8771886e6&end=b8f9cb345ab1401f2fbd14cc23f64dda9dd2314e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-0.4%, 0.2%]  | 4     |

* there is one small regression to bitmaps-full doc, and three improvements to bitmaps-incr-full {check, debug, opt}.
* If its not noise, its seems like the right trade off.
* left comment, marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Backport patch to fix build failure to 1.67.0" [rust#107032](https://github.com/rust-lang/rust/issues/107032)
  - Github user [@paulmenzel](https://github.com/paulmenzel) asks if PR #105901 can be backported to next stable 1.67.0 ([comment](https://github.com/rust-lang/rust/pull/105901#issuecomment-1386916210)) (was planned for 1.68)
  - PR #105901 fixes #105816, a regression affecting building `rustc` on Solaris

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time

## Next week's WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
- Impl Trait initiative by @**oli**
