---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-12-08

## Announcements
- Next week December 15th, release of Rust stable 1.66
- [Compiler P-high review slot](https://www.google.com/calendar/event?eid=NG10OWdvcGMzMWJtZTFxOWN0bnNjYzI1djdfMjAyMjEyMDlUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-09T10:00:00-05:00>
- [RustcContributor::explore @compiler-errors session: method selection](https://www.google.com/calendar/event?eid=MTA1Zm42YjJmbnN1YjQ5ajZrNWpnNGluMzcgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-12-08T15:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMjEyMTJUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-12T10:00:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjEyMTJUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-12-12T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "x.py --keep-stage-rustc N (a "smarter" keep-stage)" [compiler-team#571](https://github.com/rust-lang/compiler-team/issues/571) 
- Old MCPs (not seconded, take a look)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 4 months ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: 3 months ago)
  - "Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools" [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 3 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: 3 months ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: 2 months ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: 3 months ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 44 days ago)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) (last review activity: about 50 days ago)
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: about 50 days ago)
  - "New tier-3 targets for OpenHarmony" [compiler-team#568](https://github.com/rust-lang/compiler-team/issues/568) (last review activity: about 19 days ago)
- Pending FCP requests (check your boxes!)
  - "Encode spans relative to the enclosing item -- enable by default" [rust#84762](https://github.com/rust-lang/rust/pull/84762#issuecomment-1327518372)
    - just entered in final comment period
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

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/GTHhJzDrS26WZbIntmn55g#WG-checkins)):
  > #### Most notable changes
  > 
  > - Remove TyS [#1526](https://github.com/rust-lang/rustc-dev-guide/pull/1526)
  > - clarify subtree tool policy [#1518](https://github.com/rust-lang/rustc-dev-guide/pull/1518)
  > - rewrite the section about regions in the trait solver [#1508](https://github.com/rust-lang/rustc-dev-guide/pull/1508)
  > 
  > #### Most notable WIPs
  > 
  > - Create a chapter for AST validation [#1524](https://github.com/rust-lang/rustc-dev-guide/pull/1524)
  > - Add -Ztrack-diagnostics information [#1506](https://github.com/rust-lang/rustc-dev-guide/pull/1506)
  > - Add sample CodeLLDB launch.json [#1482](https://github.com/rust-lang/rustc-dev-guide/pull/1482)
  > - Add a review checklist and suggest reviews as a way to get started with the project [#1463](https://github.com/rust-lang/rustc-dev-guide/pull/1463)
  > - rewrite bootstrapping stages [#1458](https://github.com/rust-lang/rustc-dev-guide/pull/1458)
  > - Improve documentation of MIR queries & passes [#1434](https://github.com/rust-lang/rustc-dev-guide/pull/1434)
  > - Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)

- Impl Trait initiative by @**oli**:
  > Type Alias Impl Trait is ready for stabilization. oli is writing up documentation of the feature in https://hackmd.io/tB3V8MP5S66zHIWTUdRvQw so that the lang team can make an informed decision on the stabilization.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Encode spans relative to the enclosing item -- enable by default" [rust#84762](https://github.com/rust-lang/rust/pull/84762) 
  - just entered in final comment period: can remove `S-waiting-on-team`?
- (other hidden issues in progress or waiting on other teams, [details here](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Fix variable debuginfo being optimized away at `mir-opt-level=2 `" [rust#103657](https://github.com/rust-lang/rust/pull/103657) (last review activity: about 39 days ago)
  - cc @**Wesley Wiser** for a comment on latest perf. run (I think)
- "Add support for SpanTrace capture in ICE reports" [rust#103993](https://github.com/rust-lang/rust/pull/103993) (last review activity: about 27 days ago)
  - cc @**oli** (unsure if all the prev. review comments are checked)
- "fix: Unexpected trait bound not satisfied in HRTB and Associated Type" [rust#103695](https://github.com/rust-lang/rust/pull/103695) (last review activity: about 26 days ago)
  - cc @**Jack Huey** for a comment on latest perf. run
- "TokenTreesReader now can find the correct mismatch delimiter pairs" [rust#104012](https://github.com/rust-lang/rust/pull/104012) (last review activity: about 24 days ago)
  - cc @**Esteban Küber**
- "Fix incorrect span when using byte-escaped rbrace" [rust#103828](https://github.com/rust-lang/rust/pull/103828) (last review activity: about 23 days ago)
  - cc @**cjgillot** 
- "layout_of: `T: Thin` implies `sizeof(&T) == sizeof(usize)`" [rust#104376](https://github.com/rust-lang/rust/pull/104376) (last review activity: about 21 days ago)
  - cc @**Michael Goulet (compiler-errors)** for the comment (I believe still pending). Other than that, does it need more work or can be reviewed/approved?

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [51 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [22 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 30 P-high, 85 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE "no errors encountered even though `delay_span_bug` issued" in nightly 2022-11-20" [rust#105009](https://github.com/rust-lang/rust/issues/105009)
  - @**lcnr** self-assigned and prepared patch #105455, reviewed+approved by '@**Jack Huey** (cc: the MIR group)
  - closed a few other duplicate reports (#105171, #105044, #103081)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- (issue #102754 discussed: not a release blocker)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-12-06](https://github.com/rust-lang/rustc-perf/blob/cc0dd3cd9ca4614a7709e21852914e1ce4c427c7/triage/2022-12-06.md)

A mixed bag of a week. 2 of the 3 regressions are connected to changes to the
query system that underlies incremental compilation. The third regression is
still being investigated. For all three, the impact on cycle counts that are
within our noise tolerance levels There were several small-ish improvements,
though PR #104963 is worth calling out: a well-factored change to
how we lower the AST into HIR that had a broad positive impact. One final
note: the summary-opt max-rss seems to gone up by 1.5% over the past month
([perf](https://perf.rust-lang.org/?start=2022-11-06&end=2022-12-06&kind=percentfromfirst&stat=max-rss)),
via a gradual climb; just something to keep our eyes on going forward.


Triage done by **@pnkfelix**.
Revision range: [8a09420a..9db224fc](https://perf.rust-lang.org/?start=8a09420ac48658cad726e0a6997687ceac4151e3&end=9db224fc908059986c179fc6ec433944e9cfce50&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 1.5%]   | 52    |
| Regressions (secondary)  | 1.2%  | [0.2%, 5.6%]   | 80    |
| Improvements (primary)   | -0.8% | [-1.7%, -0.2%] | 34    |
| Improvements (secondary) | -2.2% | [-4.8%, -0.2%] | 29    |
| All  (primary)           | 0.0%  | [-1.7%, 1.5%]  | 86    |


3 Regressions, 7 Improvements, 4 Mixed; 3 of them in rollups
50 artifact comparisons made in total
30 Untriaged Pull Requests

#### Regressions

Allow to feed a value in another query's cache [#104940](https://github.com/rust-lang/rust/pull/104940) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=90711a86e5bdd4b0b65d293f0c2c48fd2db761b3&end=c97b539e408ea353f4fde2f9251d598291fec421&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 44    |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.4%] | 44    |

* Many primary benchmarks regressed, but the regression is contained solely to incremental builds, and the magnitude is also well-contained.
* [oli-obk investigated](https://github.com/rust-lang/rust/pull/104940#issuecomment-1333435955) and determined that
  the bulk of the regression is time spent in try_mark_previous_green and incremental_verify_ich calls.
* The impact on cycle-counts (rather than instruction counts) was well within noise tolerance levels.
* Therefore, marked as triaged.

Reduce macro usage for lints [#104863](https://github.com/rust-lang/rust/pull/104863) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cef44f53034eac46be3a0e3eec7b2b3d4ef5140b&end=e960b5e7749e95c6a6b2fdec7250a48105664efb&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.2%, 1.4%] | 116   |
| Regressions (secondary)  | 0.9% | [0.1%, 2.3%] | 83    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.2%, 1.4%] | 116   |

* [nnethercote is investigating](https://github.com/rust-lang/rust/pull/104863#issuecomment-1335853746)
* they have already put up [PR 105291](https://github.com/rust-lang/rust/pull/105291) which fixed a few cases but the bulk remain
* they have also [posted a separate idea](https://github.com/rust-lang/rust/pull/104863#issuecomment-1338224753), to avoid calling empty `check_*` methods.
* not marking as triaged yet

feed resolver_for_lowering instead of storing it in a field [#105220](https://github.com/rust-lang/rust/pull/105220) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=226202d9026b0f24b4f7aad4de398bd8378774cd&end=ed61c139c2bc778ebb91f5dd6a5393aa20467f78&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 2     |
| Regressions (secondary)  | 0.5%  | [0.1%, 0.8%]   | 15    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | 0.2%  | [0.2%, 0.3%]   | 2     |


* the original timer run said [this had no problem](https://github.com/rust-lang/rust/pull/105220#issuecomment-1336312355)
* (though to be fair, I don't know what changes occurred to the commit series between that timer run and what landed)
* oli-obk investigated and found [cachegrind shows this to be artifacts from inlining decisions](https://github.com/rust-lang/rust/pull/105220#issuecomment-1338942653)
* The impact on cycle-counts (rather than instruction counts) was well within noise tolerance levels.
* Therefore, marked as triaged.

#### Improvements

Also cache the stable hash of interned Predicates [#94487](https://github.com/rust-lang/rust/pull/94487) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e0098a5cc3a87d857e597af824d0ce1ed1ad85e0&end=bddad597feb997a4e5d2cd174a76c3b07a84e4d6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 12    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-0.6%, -0.2%] | 12    |


Some initial normalization method changes [#104905](https://github.com/rust-lang/rust/pull/104905) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a569a88f5500e8780c7cc65fa53fc8b098517674&end=24606deaf48e56f604a6125fa11fb9f70cf4f1f4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.0%, -0.8%] | 2     |
| Improvements (secondary) | -2.2% | [-2.8%, -0.3%] | 7     |
| All  (primary)           | -0.9% | [-1.0%, -0.8%] | 2     |


Attribute cleanups [#104861](https://github.com/rust-lang/rust/pull/104861) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=744a97b98c3f2722e1a43486c05203b04e499e21&end=d6c4de0fb22fe8f3cc5a27e94b6b6d88fb504a91&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 3     |
| Improvements (secondary) | -0.7% | [-0.9%, -0.5%] | 6     |
| All  (primary)           | -0.2% | [-0.2%, -0.1%] | 3     |


rustc_ast_lowering: Stop lowering imports into multiple items [#104963](https://github.com/rust-lang/rust/pull/104963) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=56c241c86212d84b9528dca1628bc06e32c742c1&end=11663b1b4857ffeafbd85a9a36c234d117373b76&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.6%, 0.6%]   | 1     |
| Improvements (primary)   | -0.5% | [-1.2%, -0.3%] | 54    |
| Improvements (secondary) | -4.2% | [-5.4%, -2.0%] | 13    |
| All  (primary)           | -0.5% | [-1.2%, -0.3%] | 54    |

* Wow, I would not have expected this to have this significant of an impact.
* bravo petrochenkov

Ensure query backtraces work for `DefId`s created after ast lowering [#105133](https://github.com/rust-lang/rust/pull/105133) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=24f2704e96c9d3a4f887d2d0a7d79ecffd79bd65&end=703d95e183fbb678249d8f61cabc732e46884e00&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 5     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 2     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 5     |


Rewrite LLVM's archive writer in Rust  [#97485](https://github.com/rust-lang/rust/pull/97485) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4bb15759d7eb519be70c9a955dba9be09e13c06d&end=cab4fd678c5b148a330f2bf255bf28a67dfea0fc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 12    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-0.6%, -0.2%] | 12    |


Cheaper `dump_mir` take two [#105121](https://github.com/rust-lang/rust/pull/105121) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1195b672fb58364e4ca7022fbbe62a9a7a451b60&end=fd02567705326884ddb94535d2ab230a9595dc2a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.9%, 0.9%]   | 1     |
| Improvements (primary)   | -1.1% | [-1.9%, -0.6%] | 17    |
| Improvements (secondary) | -1.4% | [-1.9%, -0.6%] | 9     |
| All  (primary)           | -1.1% | [-1.9%, -0.6%] | 17    |


#### Mixed

Rollup of 9 pull requests [#105017](https://github.com/rust-lang/rust/pull/105017) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8a09420ac48658cad726e0a6997687ceac4151e3&end=2585bcea0bc2a9c42a4be2c1eba5c61137f2b167&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.9%, 1.0%]   | 2     |
| Regressions (secondary)  | 3.7%  | [2.2%, 5.6%]   | 12    |
| Improvements (primary)   | -0.6% | [-0.8%, -0.4%] | 7     |
| Improvements (secondary) | -1.1% | [-1.3%, -0.9%] | 4     |
| All  (primary)           | -0.3% | [-0.8%, 1.0%]  | 9     |

* nnethercote already [marked as triaged](https://github.com/rust-lang/rust/pull/105017#issuecomment-1333117104)

Rollup of 14 pull requests [#105070](https://github.com/rust-lang/rust/pull/105070) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bddad597feb997a4e5d2cd174a76c3b07a84e4d6&end=d38a99078cd3c4dadac1ba8b729ea77e8d1d5a82&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.4%, 0.9%]   | 7     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 7     |
| Improvements (primary)   | -0.9% | [-1.0%, -0.8%] | 2     |
| Improvements (secondary) | -2.1% | [-2.7%, -1.4%] | 8     |
| All  (primary)           | 0.3%  | [-1.0%, 0.9%]  | 9     |

* lqd [already investigated](https://github.com/rust-lang/rust/pull/105070#issuecomment-1332141661)
* all the primary regressions were deemed noise.
* marking as triaged.

Rollup of 5 pull requests [#105080](https://github.com/rust-lang/rust/pull/105080) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8de4b138455add55bde6de5553a933a2ab79b71f&end=a569a88f5500e8780c7cc65fa53fc8b098517674&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.8%, 1.0%]   | 2     |
| Regressions (secondary)  | 2.4%  | [2.1%, 2.8%]   | 6     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.5%] | 7     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.9%, 1.0%]  | 9     |


° lqd already [marked as triaged](https://github.com/rust-lang/rust/pull/105080#issuecomment-1332124349)

Disable top down MIR inlining [#105119](https://github.com/rust-lang/rust/pull/105119) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8e440b03761f725d452120a992723c7e261822b2&end=226202d9026b0f24b4f7aad4de398bd8378774cd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.0%]   | 12    |
| Regressions (secondary)  | 1.0%  | [0.2%, 2.1%]   | 15    |
| Improvements (primary)   | -0.4% | [-1.0%, -0.2%] | 8     |
| Improvements (secondary) | -0.7% | [-1.0%, -0.1%] | 18    |
| All  (primary)           | 0.1%  | [-1.0%, 1.0%]  | 20    |


* nnethercote already [marked as triaged](https://github.com/rust-lang/rust/pull/105119#issuecomment-1338814158)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**
- Types team by @**nikomatsakis** and @**Jack Huey**
