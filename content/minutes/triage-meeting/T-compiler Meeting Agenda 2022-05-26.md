---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-05-26

## Announcements

- Tomorrow <time:2022-05-27T13:00:00+02:00> Types Team: Formality roadmap [calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA1MjdUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=UTC) and [issue](https://github.com/rust-lang/wg-traits/issues/41)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## Other upcoming WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- <time:2022-05-23T15:00:00+02:00> wg-rls-2.0 weekly sync-up ([calendar link](https://calendar.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMjA1MjNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00))
- <time:2022-05-30T20:00:00+02:00> [wg-traits] GATs Sync ([calendar link](https://calendar.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA1MzBUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00))
- <time:2022-06-01T13:00:00+02:00> [Types team] Hack session: Advanced subtyping ([calendar link](https://calendar.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA2MDFUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00))
- <time:2022-06-03T15:00:00+02:00> Types Team: Planning/Deep-Dive meeting ([calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA2MDNUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00))

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: about 4 days ago)
    - :loudspeaker: Stale MCP: candidate for closing in a week
    - [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Accept.20.60pc.60.20in.20place.20of.20.60unknown.60.20and.20.60un.E2.80.A6.20compiler-team.23441)
    - @**pnkfelix** checked the pulse of the discussion in [September 2021](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Accept.20.60pc.60.20in.20place.20of.20.60unknown.60.20and.20.60un.E2.80.A6.20compiler-team.23441)
    - the core proposal of the MCP seem to have received mixed comments
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: about 4 days ago)
    - :loudspeaker: Stale MCP: candidate for closing in a week
    - [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Make.20.60-Z.20binary-dep-depinfo.60.20the.20default.20.E2.80.A6.20compiler-team.23464)
    - MCP discussion received some favorable comments, no unresolved points
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 5 months ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 5 months ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 4 months ago)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: 2 months ago)
  - "Change compiletest declarations parsing" [compiler-team#512](https://github.com/rust-lang/compiler-team/issues/512) (last review activity: about 17 days ago)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: about 17 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510#issuecomment-1119675764)
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006)
- Things in FCP (make sure you're good with it)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475)
  - "Tracking issue for Consistent no-prelude attribute (RFC 501)" [rust#20561](https://github.com/rust-lang/rust/issues/20561) 
  - "Tracking Issue for `-Z terminal-width`" [rust#84673](https://github.com/rust-lang/rust/issues/84673) 
  - "Stabilize the `bundle` native library modifier" [rust#95818](https://github.com/rust-lang/rust/pull/95818) 
  - "Remove label/lifetime shadowing warnings" [rust#96296](https://github.com/rust-lang/rust/pull/96296) 
- Accepted MCPs
  - "Add attribute to run specific tests in an isolated process" [compiler-team#508](https://github.com/rust-lang/compiler-team/issues/508) 
  - "Add an `EarlyBinder` type" [compiler-team#514](https://github.com/rust-lang/compiler-team/issues/514) 
- Finalized FCPs (disposition merge)
  - "Neither require nor imply lifetime bounds on opaque type for well formedness" [rust#95474](https://github.com/rust-lang/rust/pull/95474) 

### WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
> - Introduction of translation machinery in the rustc codebase, with a handful of errors being migrated to this new system for testing.
> - New fn argument diagnostic that detects additions, removals and substitutions in the call site, with appropriate suggestions.
> - Tons of diagnostics improvements and fixes.

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**

>#### Most notable changes
>
>- Add docs for logging of queries. [#1350](https://github.com/rust-lang/rustc-dev-guide/pull/1350)
>- mention `WithOptConstParam` [#1346](https://github.com/rust-lang/rustc-dev-guide/pull/1346)
>- Update docs for deprecated attribute [#1338](https://github.com/rust-lang/rustc-dev-guide/pull/1338)
>
>#### Most notable WIPs
>
>- Update suggested config to expand proc macros [#1341](https://github.com/rust-lang/rustc-dev-guide/pull/1341)
>- rewrite bootstrapping stages [#1327](https://github.com/rust-lang/rustc-dev-guide/pull/1327)
>- Describe Type Alias Impl Trait (TAIT) Inference Algorithm [#1297](https://github.com/rust-lang/rustc-dev-guide/pull/1297)
>- Added detail to codegen section [#1216](https://github.com/rust-lang/rustc-dev-guide/pull/1216)
>- Update build instructions for rustdoc [#1117](https://github.com/rust-lang/rustc-dev-guide/pull/1117)
>- Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)
>- Explain the new valtree system for type level constants. [#1097](https://github.com/rust-lang/rustc-dev-guide/pull/1097)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix some typos in arg checking algorithm" [rust#97303](https://github.com/rust-lang/rust/pull/97303) 
  - Fixes [rust#97197](https://github.com/rust-lang/rust/issues/97197), `P-medium` ICE
  - patch authored and nominated for backport by @**Michael Goulet (compiler-errors)** 
- :beta: "rustc: Fix ICE in native library error reporting" [rust#97328](https://github.com/rust-lang/rust/pull/97328)
  - Fixes [rust#97299](https://github.com/rust-lang/rust/issues/97299), building Rust broken for MSYS2/Mingw ([tier 1](https://doc.rust-lang.org/rustc/platform-support.html))
- :stable: "rustc: Fix ICE in native library error reporting" [rust#97328](https://github.com/rust-lang/rust/pull/97328)
  - backport nomination of previous regression

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Mir-Opt for copying enums with large discrepancies" [rust#85158](https://github.com/rust-lang/rust/pull/85158) (last review activity: 2 months ago)
  - PR author asks [for comment](https://github.com/rust-lang/rust/pull/85158#issuecomment-1119222751) cc @**Wesley Wiser**
- "Only compile #[used] as llvm.compiler.used for ELF targets" [rust#93718](https://github.com/rust-lang/rust/pull/93718) (last review activity: about 41 days ago)
  - PR seems ready for another round of review cc: @**pnkfelix**
- "Micro-optimize `InferCtxt::replace_bound_vars_with_placeholders` by avoiding unnecessary allocation" [rust#96021](https://github.com/rust-lang/rust/pull/96021) (last review activity: about 35 days ago)
  - rust highfive bot assigned to @**nnethercote**, reroll dice?
- "libcore: Add `iter::from_generator` which is like `iter::from_fn`, but for coroutines instead of functions" [rust#96298](https://github.com/rust-lang/rust/pull/96298) (last review activity: about 32 days ago)
  - part of PR may be of interest for T-compiler, assign a reviewer for that?
- "TypeId: use a (v0) mangled type to remain sound in the face of hash collisions." [rust#95845](https://github.com/rust-lang/rust/pull/95845) (last review activity: about 31 days ago)
  - last review from @**lcnr** end of april ([comment](https://github.com/rust-lang/rust/pull/95845#pullrequestreview-951388336))
  - after that, lengthy discussion - unsure if still in flux or any actionable available (maybe add a summary?)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [45 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 80 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-05-24](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-05-24.md)

Overall a positive week for non-incremental performance (roughly 0.5% faster),
with >1% regressions on incremental benchmarks, primarily due to
[#95563](https://github.com/rust-lang/rust/pull/95563), which will hopefully be
investigated in the coming weeks.

Triage done by **@simulacrum**.
Revision range: [7355d971a954ed63293e4191f6677f60c1bc07d9..43d9f3859e0204e764161ee085a360274b5f3e9a](https://perf.rust-lang.org/?start=7355d971a954ed63293e4191f6677f60c1bc07d9&end=43d9f3859e0204e764161ee085a360274b5f3e9a&absolute=false&stat=instructions%3Au)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 69                     | 58                       | 76                      | 52                        | 145             |
| mean  | 1.5%                   | 2.2%                     | -1.0%                   | -3.3%                     | 0.2%            |
| max   | 5.1%                   | 7.3%                     | -2.9%                   | -36.9%                    | 5.1%            |

2 Regressions, 5 Improvements, 4 Mixed; 0 of them in rollups
57 artifact comparisons made in total

#### Regressions

Transition to valtrees pt1 [#97019](https://github.com/rust-lang/rust/pull/97019)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=07ae142d77f56dd48f2736605e0a6c015f2aecc6&end=cd282d7f75da9080fda0f1740a729516e7fbec68&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 4                      | 5                        | 0                       | 0                         | 4               |
| mean  | 1.0%                   | 0.1%                     | N/A                     | N/A                       | 1.0%            |
| max   | 1.1%                   | 0.1%                     | N/A                     | N/A                       | 1.1%            |

@oli-obk has suggested applying some targeted inlining as a likely resolution to
the regressions; work to follow up needs to be done. It seems like the
regression is likely to be resolved (or at least effort applied to do so).

Make write/print macros eagerly drop temporaries [#96455](https://github.com/rust-lang/rust/pull/96455)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d12557407c7c34f1599cfba79666954291810859&end=c186f7c07912064c352f12d8b0aa9d5e5975450e&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 3                      | 0                        | 0                       | 0                         | 3               |
| mean  | 0.4%                   | N/A                      | N/A                     | N/A                       | 0.4%            |
| max   | 0.6%                   | N/A                      | N/A                     | N/A                       | 0.6%            |

Change is relatively minor and limited to just a single benchmark, so marking
the regression as triaged; further investigation is not warranted at this time.

#### Improvements

Add PID to PGO profile data filename [#97110](https://github.com/rust-lang/rust/pull/97110)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a084b7ad35adb508bd2e053fc2a1b9a53df9536c&end=e5732a21711e7cefa6eb22e1790406b269d6197a&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 0                      | 0                        | 94                      | 54                        | 94              |
| mean  | N/A                    | N/A                      | -0.3%                   | -0.4%                     | -0.3%           |
| max   | N/A                    | N/A                      | -0.5%                   | -1.2%                     | -0.5%           |

An expected improvement in our PGO scripts, with a small magnitude effect across
many benchmarks.

--remap-path-prefix: Fix duplicated path components in debuginfo [#96867](https://github.com/rust-lang/rust/pull/96867)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e5732a21711e7cefa6eb22e1790406b269d6197a&end=936eba3b348e65b658b60218cc9237f02abdbeb4&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 0                      | 0                        | 2                       | 6                         | 2               |
| mean  | N/A                    | N/A                      | -0.4%                   | -4.1%                     | -0.4%           |
| max   | N/A                    | N/A                      | -0.4%                   | -4.7%                     | -0.4%           |

Improvements likely to be primarily driven by reducing the amount of codegen due
to simpler/smaller debuginfo.


rustdoc: Reduce clean::Type size [#93963](https://github.com/rust-lang/rust/pull/93963)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4f372b14dea58cbff1dd76bb651f9c035d3f6e7b&end=5f33adce1bfe01e4c0c8754400bf782a95af88c9&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 0                      | 0                        | 12                      | 20                        | 12              |
| mean  | N/A                    | N/A                      | -0.4%                   | -0.6%                     | -0.4%           |
| max   | N/A                    | N/A                      | -0.8%                   | -0.8%                     | -0.8%           |


rustc_parse: Move AST -> TokenStream conversion logic to rustc_ast [#97251](https://github.com/rust-lang/rust/pull/97251)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=653463731a7f01f519cf85f444869def27f00395&end=4bb4dc4672b4d80509db4c0572ae8ceeaf7d4a1c&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 0                      | 0                        | 6                       | 7                         | 6               |
| mean  | N/A                    | N/A                      | -0.3%                   | -0.5%                     | -0.3%           |
| max   | N/A                    | N/A                      | -0.4%                   | -0.6%                     | -0.4%           |


Refactor call terminator to always include destination place [#96098](https://github.com/rust-lang/rust/pull/96098)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=acb5c16fa8acf7fd3b48fc218881f006577bab1a&end=43d9f3859e0204e764161ee085a360274b5f3e9a&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 0                      | 0                        | 5                       | 17                        | 5               |
| mean  | N/A                    | N/A                      | -0.3%                   | -0.5%                     | -0.3%           |
| max   | N/A                    | N/A                      | -0.4%                   | -1.1%                     | -0.4%           |


#### Mixed

Add a query for checking whether a function is an intrinsic. [#97012](https://github.com/rust-lang/rust/pull/97012)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7355d971a954ed63293e4191f6677f60c1bc07d9&end=735efc0c703812343a5e5d19b600dac73b8a89f0&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 7                      | 9                        | 16                      | 2                         | 23              |
| mean  | 0.3%                   | 0.3%                     | -0.3%                   | -0.5%                     | -0.1%           |
| max   | 0.3%                   | 0.4%                     | -0.5%                   | -0.5%                     | -0.5%           |

Mixed results, but overall looks to be pretty neutral. The preparation for
future maintainability outweighs the possible small cost to keeping this change.
Regression was already marked as triaged by @oli-obk (thank you!).

Cache more queries on disk [#95418](https://github.com/rust-lang/rust/pull/95418)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=536020c5f97883aa9f2a90897a5adb520486d2e1&end=e6a4afc3af2d2a53f91fc8a77bdfe94bea375b29&stat=instructions:u)

|       | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:----------------------:|:------------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 33                     | 32                       | 65                      | 28                        | 98              |
| mean  | 0.8%                   | 1.6%                     | -1.0%                   | -4.4%                     | -0.4%           |
| max   | 2.1%                   | 4.0%                     | -3.6%                   | -33.0%                    | -3.6%           |

This is overall an improvement, with regressions primarily limited to secondary
benchmarks. Mixed results are fairly expected from a change like this; marking
the regression as triaged. @cjgillot (PR author) also posted a good summary:

> This PR caches many more queries' results on disk. The queries have been
> chosen to be: (1) outputs of typechecking, and (2) parts of metadata. This
> caching allows for wide and large compile time savings, up to 36%. The
> tradeoff is a compile time increase (4%) when these caches cannot be usefully
> used, and a increased on-disk size around 30%.

Move the extended lifetime resolution into typeck context [#95563](https://github.com/rust-lang/rust/pull/95563)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=acfd327fd4e3a302ebb0a077f422a527a7935333&end=653463731a7f01f519cf85f444869def27f00395&stat=instructions:u)

|            | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:----------:|:------------------------------:|:--------------------------------:|:-------------------------------:|:---------------------------------:|:------------------------:|
| count      | 97                             | 42                               | 42                              | 34                                | 139                      |
| mean       | 1.8%                           | 3.0%                             | -0.6%                           | -0.5%                             | 1.1%                     |
| max        | 5.8%                           | 8.9%                             | -1.9%                           | -1.4%                             | 5.8%                     |

Looks like a fairly large regression across a number of benchmarks, though
limited to the incremental scenarios. Non-incremental benchmarks show an
improvement (hence the mixed results). Left a
[comment](https://github.com/rust-lang/rust/pull/95563#issuecomment-1135994637)
on the PR asking for clarification and further investigation.

Update `rustc` PGO benchmark list [#97120](https://github.com/rust-lang/rust/pull/97120)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=222c5724ecc922fe67815f428c19f82c129d9386&end=ee160f2f5e73b6f5954bc33f059c316d9e8582c4&stat=instructions:u)

|            | Regressions  (primary) | Regressions  (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:----------:|:------------------------------:|:--------------------------------:|:-------------------------------:|:---------------------------------:|:------------------------:|
| count      | 3                              | 18                               | 83                              | 53                                | 86                       |
| mean       | 0.3%                           | 0.8%                             | -0.5%                           | -0.5%                             | -0.5%                    |
| max        | 0.4%                           | 1.8%                             | -1.3%                           | -1.1%                             | -1.3%                    |

Overall an improvement, some slight regressions are expected from a larger
change like this which bumps PGO inputs.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Change enum->int casts to not go through MIR casts." [rust#96862](https://github.com/rust-lang/rust/pull/96862)
  - nominated by @**RalfJ** (T-compiler specifically for first point in [comment](https://github.com/rust-lang/rust/pull/96862#issuecomment-1123376867))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "New rustc and Cargo options to allow path sanitisation by default" [rfcs#3127](https://github.com/rust-lang/rfcs/pull/3127)
  - nominated by @**matklad** in response to this [comment](https://github.com/rust-lang/rfcs/pull/3127#issuecomment-1112754808=) from @**Andy Wang** asking T-compiler an opinion about the implementation

## Next week's WG checkins

- @_*WG-traits* (impl trait) by @**nikomatsakis** @**oli**
- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**
