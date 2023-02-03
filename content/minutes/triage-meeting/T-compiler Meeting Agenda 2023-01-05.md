---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-01-05

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMzAxMDVUMTcwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-05T12:00:00-05:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzAxMDlUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-09T10:00:00-05:00>
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMzAxMDlUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-09T10:00:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMzAxMDlUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-09T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 5 months ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 4 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 12 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: 3 months ago)
    - Stale MCP: candidate for closing soon
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: 2 months ago)
    - Stale MCP: candidate for closing soon (actually the initiative moved forward without MCP)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) (last review activity: 2 months ago)
    - Replaced by [T-lang RFC](https://internals.rust-lang.org/t/pre-rfc-the-diagnostic-attribute-namespace-and-the-diagnostic-on-unimplemented-attribute/18004/12), maybe can be closed
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: 2 months ago)
  - "Upgrade `*-linux-musl` targets to musl 1.2" [compiler-team#572](https://github.com/rust-lang/compiler-team/issues/572) (last review activity: about 13 days ago)
  - "New tier-2 target for `wasm32-wasi` + threads" [compiler-team#574](https://github.com/rust-lang/compiler-team/issues/574) (last review activity: about 0 days ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: about 0 days ago)
- Pending FCP requests (check your boxes!)
  - "Add `SEMICOLON_IN_EXPRESSIONS_FROM_MACROS` to future-incompat report" [rust#103418](https://github.com/rust-lang/rust/pull/103418) 
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354) 
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - "Move tests out of src" [compiler-team#573](https://github.com/rust-lang/compiler-team/issues/573) 
- Finalized FCPs (disposition merge)
  - "Tracking issue for the "efiapi" calling convention" [rust#65815](https://github.com/rust-lang/rust/issues/65815) 
  - "Make PROC_MACRO_DERIVE_RESOLUTION_FALLBACK a hard error" [rust#84022](https://github.com/rust-lang/rust/pull/84022) 
  - "Encode spans relative to the enclosing item -- enable on nightly" [rust#84762](https://github.com/rust-lang/rust/pull/84762) 
  - "Stabilize `#![feature(target_feature_11)]`" [rust#99767](https://github.com/rust-lang/rust/pull/99767) 
  - "Make `Sized` coinductive, again" [rust#100386](https://github.com/rust-lang/rust/pull/100386) 
  - "Elaborate supertrait obligations when deducing closure signatures" [rust#101834](https://github.com/rust-lang/rust/pull/101834) 
  - "Don't normalize in AstConv" [rust#101947](https://github.com/rust-lang/rust/pull/101947) 
  - "make const_err a hard error" [rust#102091](https://github.com/rust-lang/rust/pull/102091) 
  - "Stabilize default_alloc_error_handler" [rust#102318](https://github.com/rust-lang/rust/pull/102318) 
  - "make `order_dependent_trait_objects` show up in future-breakage reports" [rust#102635](https://github.com/rust-lang/rust/pull/102635) 
  - "Stabilize raw-dylib for non-x86" [rust#102793](https://github.com/rust-lang/rust/issues/102793) 
  - "Use `token::Lit` in `ast::ExprKind::Lit`." [rust#102944](https://github.com/rust-lang/rust/pull/102944) 
  - "Remove drop order twist of && and || and make them associative" [rust#103293](https://github.com/rust-lang/rust/pull/103293) 
  - "Unreserve braced enum variants in value namespace" [rust#103578](https://github.com/rust-lang/rust/pull/103578) 
  - "Remove const eval limit and implement an exponential backoff lint instead" [rust#103877](https://github.com/rust-lang/rust/pull/103877) 
  - "Change `bindings_with_variant_name` to deny-by-default" [rust#104154](https://github.com/rust-lang/rust/pull/104154) 
  - "Stabilize native library modifier `verbatim`" [rust#104360](https://github.com/rust-lang/rust/pull/104360) 
  - "More deriving on packed structs" [rust#104429](https://github.com/rust-lang/rust/pull/104429) 
  - "Expand a style-guide principle: readability in plain text" [rust#104506](https://github.com/rust-lang/rust/pull/104506) 
  - "Find the right lower bound region in the scenario of partial order relations" [rust#104765](https://github.com/rust-lang/rust/pull/104765) 
  - "Stop promoting all the things" [rust#105085](https://github.com/rust-lang/rust/pull/105085) 
  - "Add `IMPLIED_BOUNDS_ENTAILMENT` lint" [rust#105575](https://github.com/rust-lang/rust/pull/105575)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- :stable: "Don't copy symbols from dylibs with `-Zdylib-lto`" [rust#105800](https://github.com/rust-lang/rust/pull/105800)
  - backport nominated by @**lqd**
  - patch addresses (among others) [rust#105637](https://github.com/rust-lang/rust/issues/105637) a `P-critical` regression impacting bug reports on ICEs
  - beta backport previously approved ([Zulip link](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-12-22/near/317388499))
    - stable backport was on hold to wait for some feedback once it lands on beta
    - or just let it ride and land on stable (Jan, 26th)

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Remove proc-macro back-compat hack for rental" [rust#106060](https://github.com/rust-lang/rust/pull/106060)
  - Waiting for team but @**Esteban Küber** and @**Aaron Hill** already contributed some comments 
- (other hidden issues in progress or waiting on other teams, [details here](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Add `SEMICOLON_IN_EXPRESSIONS_FROM_MACROS` to future-incompat report" [rust#103418](https://github.com/rust-lang/rust/pull/103418) (last review activity: 2 months ago)
  - The [FCP](https://github.com/rust-lang/rust/pull/103418#issuecomment-1347262220) needs some more ticks to progress. As mentioned [in comment](https://github.com/rust-lang/rust/pull/103418#issuecomment-1347262220), `T-lang` can review but it's not blocked on them
- "Parse unnamed struct and union fields" [rust#99754](https://github.com/rust-lang/rust/pull/99754) (last review activity: about 54 days ago)
  - cc: @**cjgillot** 
- "TokenTreesReader now can find the correct mismatch delimiter pairs" [rust#104012](https://github.com/rust-lang/rust/pull/104012) (last review activity: about 54 days ago)
  - cc @**Esteban Küber** 
- "Add Trusty OS as tier 3 target" [rust#103895](https://github.com/rust-lang/rust/pull/103895) (last review activity: about 50 days ago)
  - Does this proposal need an MCP? ([Left a comment](https://github.com/rust-lang/rust/pull/103895#issuecomment-1340697328) a little while ago)
- "Don't drain-on-drop in DrainFilter impls of various collections." [rust#104455](https://github.com/rust-lang/rust/pull/104455) (last review activity: about 50 days ago)
  - Some bits are under `./compiler` (reviewable from `T-compiler`?)

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [3 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [48 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [18 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 28 P-high, 89 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Seg fault in Rust 1.65.0 if I don't create temporary variable" [rust#105295](https://github.com/rust-lang/rust/issues/105295) 
  - @**Michael Goulet (compiler-errors)** is following up on this with a lint (#105572) and then a new PR to promote it to an error ([comment](https://github.com/rust-lang/rust/pull/105483#issuecomment-1358823234))
- "where_clauses_object_safety regression on a trait where it shouldn't trigger" [rust#106247](https://github.com/rust-lang/rust/issues/106247)
  - a revert PR landed with #106248
  - a fix PR by @**Gary Guo** is open at #106253, review assigned to @**Michael Goulet (compiler-errors)**
- "regression: anonymous lifetimes now unstable in impl trait" [rust#106338](https://github.com/rust-lang/rust/issues/106338)
  - a crater run in latest beta found these regressions
  - bisection seems to point to #104048 cc: @cjgillot

[T-types](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "regression: non-defining opaque type use in defining scope" [rust#105826](https://github.com/rust-lang/rust/issues/105826)
  - regression in beta, some crates fail building
  - seems to point to #103491 cc @**cjgillot** ([comment](https://github.com/rust-lang/rust/issues/105826#issuecomment-1356364617))
  - issue is `I-types-nominated`

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "deref_target_place is not a deref projection" [rust#105881](https://github.com/rust-lang/rust/issues/105881)
  - should be fixed by [rust#105958](https://github.com/rust-lang/rust/pull/105958) (reviewed and in progress)

## Performance logs

> [triage logs for 2023-01-03](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-01-03.md)

Fairly busy week with some massive performance improvements at the expense of some significant albeit smaller regressions. The main wins came in a long-standing PR from @cjgillot to enable encoding spans in metadata relative to their enclosing item. This causes more work in full compilation which causes some regressions up to 5% but can lead to very large wins in incremental compilation scenarios (up to ~70%). For example, the clap crate compiles 68% faster after a small 1 line change than it did previously.

Triage done by **@rylev**.
Revision range: [b38a6d..b43596](https://perf.rust-lang.org/?start=b38a6d373cb254697411147c0e49cd2e84864258&end=b435960c4cfd3975651c7051be56d7f5d6c201ab&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.6%  | [0.3%, 4.6%]    | 97    |
| Regressions (secondary)  | 1.8%  | [0.2%, 7.6%]    | 60    |
| Improvements (primary)   | -9.7% | [-68.7%, -0.2%] | 53    |
| Improvements (secondary) | -1.7% | [-15.3%, -0.1%] | 62    |
| All  (primary)           | -2.4% | [-68.7%, 4.6%]  | 150   |

1 Regressions, 1 Improvements, 4 Mixed; 1 of them in rollups
47 artifact comparisons made in total

#### Regressions

  Rollup of 8 pull requests [#106228](https://github.com/rust-lang/rust/pull/106228) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=270c94e484e19764a2832ef918c95224eb3f17c7&end=9709a438721d679572f0f7c389cd1fa60922fbef&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.6%] | 7     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 0.6%] | 7     |
- Kicked off a perf run on the only likely culprit. The regression is small enough that I don't think it's a big deal if we don't figure this out.

  Allow trait method paths to satisfy const Fn bounds [#106210](https://github.com/rust-lang/rust/pull/106210) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2c7536eaae59b44ff5259183ca98384129d69dd0&end=973a4db8d590d1ddfa4d07bd216aeffd28ba354e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.5%]   | 16    |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.7%]   | 16    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.4% | [-1.4%, -1.4%] | 1     |
| All  (primary)           | 0.3%  | [0.2%, 0.5%]   | 16    |
- Massive amount of noise reversed in [#106268](https://github.com/rust-lang/rust/pull/106268). No idea where this noise comes from.


#### Improvements


  fix comment for `TokenCursor::desugar` [#106268](https://github.com/rust-lang/rust/pull/106268) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=808be91da07c91e4d6006cca0ad78385785a741e&end=e5e5fcb0b758fcf7f149cc9206155dcfa18ec909&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 17    |
| Improvements (secondary) | -0.3% | [-0.7%, -0.2%] | 15    |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 17    |
- Massive amount of noise coming in [#106210](https://github.com/rust-lang/rust/pull/106210) reversed here. No idea where this noise comes from.


  Abolish `QueryVTable` in favour of more assoc items on `QueryConfig` [#106307](https://github.com/rust-lang/rust/pull/106307) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=23b1cc197a3a6d0c1ab78a5c6e7cdad17681f1c9&end=d6f99e535a301a421dfee52a7c25bb4bdf420344&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.4%, 1.0%]   | 4     |
| Improvements (primary)   | -0.5% | [-1.0%, -0.2%] | 63    |
| Improvements (secondary) | -0.6% | [-1.3%, -0.4%] | 60    |
| All  (primary)           | -0.5% | [-1.0%, -0.2%] | 63    |


#### Mixed

  Catch panics/unwinding in destruction of TLS values [#105426](https://github.com/rust-lang/rust/pull/105426) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f6cc345be403d481b4518e151218118c2a9eb4bb&end=7c991868c60a4afc1ee6334b912ea96061a2c98d&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.3%, 1.9%]    | 11    |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.2%]  | 41    |
| Improvements (secondary) | -1.8% | [-14.6%, -0.2%] | 31    |
| All  (primary)           | -0.1% | [-0.6%, 1.9%]   | 52    |
- Very much unsure where the performance changes are coming from. Some show LLVM regressions but not all. LLVM also does not explain the improvements.
- Ask [in the PR](https://github.com/rust-lang/rust/pull/105426#issuecomment-1370051574) for thoughts.


  Use some more `const_eval_select` in pointer methods for compile times [#106275](https://github.com/rust-lang/rust/pull/106275) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=726bbfc8f0d6eb431dfa620c1c8fc3848020cd3c&end=dd01a163c1cff9461ddd85e7b3c2c0109657658f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | 0.7%  | [0.6%, 0.9%]   | 2     |
| Improvements (primary)   | -0.5% | [-0.9%, -0.2%] | 28    |
| Improvements (secondary) | -0.8% | [-0.8%, -0.7%] | 3     |
| All  (primary)           | -0.4% | [-0.9%, 0.4%]  | 29    |
- Author investigated why this might have caused a regression in `regex` and found nothing. The gains much outweigh the regressions so we should be fine keeping it.


  Encode spans relative to the enclosing item -- enable on nightly [#84762](https://github.com/rust-lang/rust/pull/84762) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f89003eda8917ff99f8ee3fb5c812310a58c014b&end=fb9dfa8ceffb985105be3176d7ed2f99515ea377&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 1.7%   | [0.2%, 5.0%]    | 108   |
| Regressions (secondary)  | 1.8%   | [0.2%, 7.6%]    | 90    |
| Improvements (primary)   | -20.0% | [-68.9%, -0.6%] | 25    |
| Improvements (secondary) | -2.7%  | [-4.8%, -1.5%]  | 11    |
| All  (primary)           | -2.4%  | [-68.9%, 5.0%]  | 133   |
- There was an [FCP](https://github.com/rust-lang/rust/pull/84762#issuecomment-1327518372) to decide whether the trade off of some regressions for some huge incremental performance wins was worth it.
- This FCP passed and so the PR was merged.


  Reenable limited top-down MIR inlining [#106364](https://github.com/rust-lang/rust/pull/106364) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d6f99e535a301a421dfee52a7c25bb4bdf420344&end=67d16171d7eebc08057a46aeed887252e7cc286b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.3%, 1.1%]   | 4     |
| Regressions (secondary)  | 0.6%  | [0.5%, 0.6%]   | 4     |
| Improvements (primary)   | -0.6% | [-1.2%, -0.2%] | 9     |
| Improvements (secondary) | -0.9% | [-2.4%, -0.2%] | 18    |
| All  (primary)           | -0.2% | [-1.2%, 1.1%]  | 13    |
- As pointed out [here](https://github.com/rust-lang/rust/pull/106364#issuecomment-1369111291) this was effectively a performance wash with regressions and improvements canceling themselves out. 


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser**
