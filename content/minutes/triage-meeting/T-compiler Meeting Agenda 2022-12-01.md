---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-12-01

## Announcements
- [Compiler P-high review slot](https://www.google.com/calendar/event?eid=NG10OWdvcGMzMWJtZTFxOWN0bnNjYzI1djdfMjAyMjEyMDJUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-02T10:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-debugging status & design meeting](https://www.google.com/calendar/event?eid=NnFtY2IxZTg5YWcyNGIzZzcxN2YxdW5oZHQgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-12-05T10:00:00-05:00>
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMjEyMDVUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-05T10:00:00-05:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjEyMDVUMTYzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-05T11:30:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjEyMDVUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-05T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "x.py --keep-stage-rustc N (a "smarter" keep-stage)" [compiler-team#571](https://github.com/rust-lang/compiler-team/issues/571) 
- Old MCPs (not seconded, take a look)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 4 months ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: 3 months ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 3 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: 2 months ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: 2 months ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: 2 months ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 37 days ago)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) (last review activity: about 43 days ago)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: about 43 days ago)
  - "New tier-3 targets for OpenHarmony" [compiler-team#568](https://github.com/rust-lang/compiler-team/issues/568) (last review activity: about 12 days ago)
- Pending FCP requests (check your boxes!)
  - "Encode spans relative to the enclosing item -- enable by default" [rust#84762](https://github.com/rust-lang/rust/pull/84762#issuecomment-1327518372) 
  - "Change `bindings_with_variant_name` to deny-by-default" [rust#104154](https://github.com/rust-lang/rust/pull/104154#issuecomment-1307473562) 
- Things in FCP (make sure you're good with it)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) 
- Accepted MCPs
  - "Redefine dropck in terms of bound-like constructs" [compiler-team#563](https://github.com/rust-lang/compiler-team/issues/563) 
  - "Reboot Parallel Rustc WG Proposal" [compiler-team#567](https://github.com/rust-lang/compiler-team/issues/567) 
  - "Raw pointer alignment checks in debug" [compiler-team#570](https://github.com/rust-lang/compiler-team/issues/570) 
- Finalized FCPs (disposition merge)
  - "Make PROC_MACRO_DERIVE_RESOLUTION_FALLBACK a hard error" [rust#84022](https://github.com/rust-lang/rust/pull/84022) 
  - "Make `Sized` coinductive, again" [rust#100386](https://github.com/rust-lang/rust/pull/100386) 
  - "Handle projections as uncovered types during coherence check" [rust#100555](https://github.com/rust-lang/rust/pull/100555) 
  - "Elaborate supertrait obligations when deducing closure signatures" [rust#101834](https://github.com/rust-lang/rust/pull/101834) 
  - "make const_err a hard error" [rust#102091](https://github.com/rust-lang/rust/pull/102091) 
  - "make unaligned_reference a hard error" [rust#102513](https://github.com/rust-lang/rust/pull/102513) 
  - "make `order_dependent_trait_objects` show up in future-breakage reports" [rust#102635](https://github.com/rust-lang/rust/pull/102635) 
  - "Stabilize raw-dylib for non-x86" [rust#102793](https://github.com/rust-lang/rust/issues/102793) 
  - "Use `token::Lit` in `ast::ExprKind::Lit`." [rust#102944](https://github.com/rust-lang/rust/pull/102944) 
  - "Remove drop order twist of && and || and make them associative" [rust#103293](https://github.com/rust-lang/rust/pull/103293) 
  - "Unreserve braced enum variants in value namespace" [rust#103578](https://github.com/rust-lang/rust/pull/103578) 
  - "Stabilize native library modifier `verbatim`" [rust#104360](https://github.com/rust-lang/rust/pull/104360) 
  - "Expand a style-guide principle: readability in plain text" [rust#104506](https://github.com/rust-lang/rust/pull/104506)

### WG checkins

- Generic Associated Types initiative by @**Jack Huey** ([previous checkin](https://hackmd.io/P5_PrNfwR6Sp89yQ_S3-jg#WG-checkins)):
  > No big changes. A couple small diagnostic additions:
  > - Implied static bug note readded: https://github.com/rust-lang/rust/pull/101924
  > - Better error when using GATs in generator interiors: https://github.com/rust-lang/rust/pull/103171
  >
  > Aside: I've seen several crates being published (from Reddit) mentioning GATs usage, so stabilization seems to be helpful and relatively smooth.

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/GTHhJzDrS26WZbIntmn55g#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Reverts check done by #100757" [rust#104610](https://github.com/rust-lang/rust/pull/104610) 
  - nominated by @**Michael Goulet (compiler-errors)** 
  - Reverts [#100757](https://github.com/rust-lang/rust/pull/100757) which caused some issues in production crates (#103274 #104322 #104606)
  - this revert [#100757](https://github.com/rust-lang/rust/pull/100757) reopened issues #95134, #92004 and #92470 which now crash again
- :beta: "Statics used in reachable function's inline asm are reachable" [rust#105023](https://github.com/rust-lang/rust/pull/105023)
  - Fixes [#104925](https://github.com/rust-lang/rust/issues/104925) (could not link libraries using inline asm)
  - nominated by @**Wesley Wiser** to allow reaching next stable along [#103168](https://github.com/rust-lang/rust/pull/103168) (stabilization of `asm_sym`)

- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Encode spans relative to the enclosing item -- enable by default" [rust#84762](https://github.com/rust-lang/rust/pull/84762)
  - FCP open, needs a couple more ticks after review ([link](https://github.com/rust-lang/rust/pull/84762#issuecomment-1327518372))
  - @**mw** raises concern about subtle bugs ([comment](https://github.com/rust-lang/rust/pull/84762#issuecomment-1329373895))
- (other hidden issues in progress or waiting on other teams, [details here](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Allow to feed a value in another query's cache" [rust#96840](https://github.com/rust-lang/rust/pull/96840)
  - unsure about the status, does #104940 supersedes this? cc @**cjgillot** 
- "Error parsing lifetime following by Sized and message + between them" [rust#103020](https://github.com/rust-lang/rust/pull/103020)
  - cc: @**Michael Goulet (compiler-errors)**
- "Inferred lifetimes cleanup" [rust#102673](https://github.com/rust-lang/rust/pull/102673) (last review activity: about 55 days ago)
  - rust highfive added T-compiler: is it the case though?
- "add `with_hash_task` to generate `DepNode` deterministically" [rust#100987](https://github.com/rust-lang/rust/pull/100987) (last review activity: about 45 days ago)
  - cc @**cjgillot** 
- "Remove `box_free` lang item" [rust#100036](https://github.com/rust-lang/rust/pull/100036) (last review activity: about 39 days ago)
  - needs review? cc @**Wesley Wiser** 
- "Add `SEMICOLON_IN_EXPRESSIONS_FROM_MACROS` to future-incompat report" [rust#103418](https://github.com/rust-lang/rust/pull/103418) (last review activity: about 34 days ago)
  - needs `T-compiler` signoff?

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [55 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [28 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 3 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 34 P-high, 85 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
  - (issue #102754 recently discussed in past meetings)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-11-29](https://github.com/rust-lang/rustc-perf/blob/472dbb513c9db62cdf74d5e9376f7b462216e3ff/triage/2022-11-29.md)

A relatively quiet week for performance, with the notable exception of "Avoid
`GenFuture` shim when compiling async constructs [#104321](https://github.com/rust-lang/rust/pull/104321)"
 which brought sizeable wins on a number of stress test benchmarks. It probably
won't be of huge benefit to most codebases, but should provide smaller wins to
folks with large amounts of async-generated futures.

Triage done by **@simulacrum**.
Revision range: [a78c9bee4d9d51a3891bd8ecae1f28a93b83653b..8a09420ac48658cad726e0a6997687ceac4151e3](https://perf.rust-lang.org/?start=a78c9bee4d9d51a3891bd8ecae1f28a93b83653b&end=8a09420ac48658cad726e0a6997687ceac4151e3&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.3%, 1.5%]    | 11    |
| Regressions (secondary)  | 1.8%  | [0.4%, 3.0%]    | 25    |
| Improvements (primary)   | -1.0% | [-3.8%, -0.3%]  | 148   |
| Improvements (secondary) | -6.7% | [-87.7%, -0.3%] | 107   |
| All  (primary)           | -0.9% | [-3.8%, 1.5%]   | 159   |


3 Regressions, 3 Improvements, 6 Mixed; 2 of them in rollups
43 artifact comparisons made in total

#### Regressions

Rollup of 6 pull requests [#104758](https://github.com/rust-lang/rust/pull/104758) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=008bc1d587b4f9d7197eb159922dd2080eea9284&end=3f2b2eee8f46f2252d2919d7a57bf3068d7df285&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 1     |
| Regressions (secondary)  | 2.1% | [0.6%, 7.1%] | 13    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.3%] | 1     |

This PR was a perf regression (see the report here
https://github.com/rust-lang/rust/pull/104758#issuecomment-1325100344). It's
relatively small and mostly limited to secondary workloads so I'm marking as
triaged.

Branch Clause from Predicate [#104846](https://github.com/rust-lang/rust/pull/104846) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e704e95250ff4e949214f390a88f21d08052bea1&end=051cab2b842113b18da28259f4b85d0a7556f7f1&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.2%, 2.4%] | 38    |
| Regressions (secondary)  | 0.4% | [0.3%, 0.8%] | 5     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.2%, 2.4%] | 38    |

Unexpected regression, PR reviewer and author are going to look into it.

Add `ConstKind::Expr` [#99798](https://github.com/rust-lang/rust/pull/99798) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8681d4cffcd23bbe619984ab62772a91827a40dc&end=aff003becd8b6bf803202e958623031274ad69c9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.5%]   | 6     |
| Regressions (secondary)  | 0.9%  | [0.3%, 1.6%]   | 21    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | 0.3%  | [0.2%, 0.5%]   | 6     |

Previous perf runs showed slight improvements, but the post-merge one shows regressions. They are mostly among secondary benchmarks.

#### Improvements

Fix perf regression by correctly matching keywords [#104410](https://github.com/rust-lang/rust/pull/104410)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d121aa3b5584eb919a4aaf64dbae0ea1e8e30231&end=70f8737b2f5d3bf7d6b784fad00b663b7ff9feda&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 32    |
| Improvements (secondary) | -0.8% | [-1.1%, -0.5%] | 8     |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 32    |


Use an IndexVec to cache queries with index-like key [#103808](https://github.com/rust-lang/rust/pull/103808) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fd815a5091eb4d49cd317f8ad272f17b7a5f550d&end=341d8b8a2c290b4535e965867e876b095461ff6e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-2.3%, -0.2%] | 133   |
| Improvements (secondary) | -1.2% | [-7.8%, -0.2%] | 105   |
| All  (primary)           | -0.8% | [-2.3%, -0.2%] | 133   |


Avoid `GenFuture` shim when compiling async constructs [#104321](https://github.com/rust-lang/rust/pull/104321) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1dda298ad39a64e019a3511139c5b13ac0a18e54&end=5dfb4b0afaf6acace0845d00e85a934fb4289d83&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | -      | -               | 0     |
| Regressions (secondary)  | -      | -               | 0     |
| Improvements (primary)   | -      | -               | 0     |
| Improvements (secondary) | -28.0% | [-87.8%, -1.9%] | 22    |
| All  (primary)           | -      | -               | 0     |


#### Mixed

optimize field ordering by grouping `m*2^n`-sized fields with equivalently aligned ones [#102750](https://github.com/rust-lang/rust/pull/102750) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3f2b2eee8f46f2252d2919d7a57bf3068d7df285&end=4e0d0d757e2f1b61ec809420b006545a9f8974c0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.3%, 0.8%]   | 4     |
| Regressions (secondary)  | 1.2%  | [0.3%, 2.3%]   | 26    |
| Improvements (primary)   | -0.5% | [-2.2%, -0.2%] | 44    |
| Improvements (secondary) | -0.6% | [-1.2%, -0.1%] | 22    |
| All  (primary)           | -0.4% | [-2.2%, 0.8%]  | 48    |

Some followup discussion on https://github.com/rust-lang/rust/issues/104807 but
overall a roughly neutral change.

privacy: Fix more (potential) issues with effective visibilities [#104602](https://github.com/rust-lang/rust/pull/104602)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=af63e3b39f3990418ad8e0a1b1fa8a722a7c50b0&end=41e0363055ade59584cff667c79f64937e6ef3f9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.3%]   | 8     |
| Regressions (secondary)  | 2.2%  | [0.3%, 3.6%]   | 17    |
| Improvements (primary)   | -1.0% | [-1.4%, -0.5%] | 13    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.5% | [-1.4%, 0.3%]  | 21    |

> This fixes correctness issues, and the regressions are mostly in
> unused-warnings which is a stress test where 3% doesn't really matter. Plus
> libc got a bit faster. So overall, not a performance concern.

Manually implement PartialEq for `Option<T>` and specialize non-nullable types [#103556](https://github.com/rust-lang/rust/pull/103556)
 [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f8a2e491ebec34113563cf8683f6fec2646cebb1&end=8841bee954ecf0e6820c9990feb3a76cb04e7d96&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.1%  | [2.1%, 2.1%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 2     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.3%] | 2     |
| All  (primary)           | 0.5%  | [-0.4%, 2.1%]  | 3     |

Relatively few relatively small changes, no further investigation needed.

Stop peeling the last iteration of the loop in `Vec::resize_with` [#104818](https://github.com/rust-lang/rust/pull/104818)
 [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c0e9c86b3f3e96267ba2cd80f95f362ef0cce40b&end=faf1891deb2633fe4040de8b71fd7b2045c45dc5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.8%, 0.8%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 3     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.1%] | 7     |
| All  (primary)           | -0.0% | [-0.3%, 0.8%]  | 4     |

> Perf changes are very small, and wins slightly outweigh losses.

Update VecDeque implementation to use head+len instead of head+tail [#102991](https://github.com/rust-lang/rust/pull/102991)
 [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dd12cd6dc631b5e964d541d370ca863c2242376c&end=69df0f2c2f665d7f4e38a3579a81d4efc0d81034&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.8%  | [0.2%, 1.4%]   | 4     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 3     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 3     |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 3     |

Performance looks like overall neutral to slight win.

Rollup of 6 pull requests [#105008](https://github.com/rust-lang/rust/pull/105008)
 [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=69df0f2c2f665d7f4e38a3579a81d4efc0d81034&end=8a09420ac48658cad726e0a6997687ceac4151e3&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 0.9%]   | 8     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-0.9%, -0.8%] | 2     |
| Improvements (secondary) | -2.4% | [-2.7%, -2.1%] | 6     |
| All  (primary)           | 0.3%  | [-0.9%, 0.9%]  | 10    |

keccak improvements may be spurious but overall neutral so no further investigation warranted.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
- Impl Trait initiative by @**oli**
