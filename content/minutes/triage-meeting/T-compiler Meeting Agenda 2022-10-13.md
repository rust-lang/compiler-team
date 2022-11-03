---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-10-13

## Announcements

- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjEwMTRUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-14T09:00:00-04:00>
- [steering: dealing with disabled tests](https://www.google.com/calendar/event?eid=NW52ZGNhYzVrbWJxdG0yOTBpN2Q2ZmExaXIgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-10-14T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- the `apfloat` library, ported from LLVM with a different license
  - @_**pnkfelix** provides updates about the licensing (see [comment](https://rust-lang.zulipchat.com/#narrow/stream/231349-t-core.2Flicensing/topic/apfloat/near/303676093)), also a meeting with a Rust Foundation lawyer
  - conversation is happening [in this Zulip stream](https://rust-lang.zulipchat.com/#narrow/stream/231349-t-core.2Flicensing/topic/apfloat/near/303116180)

### Other WG meetings
- [wg-debugging triage meeting](https://www.google.com/calendar/event?eid=NjAwbDEwNzNmMzVsNDZucnFsdDdwbGJrdDRfMjAyMjEwMTdUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-17T10:00:00-04:00>
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMjEwMTdUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-17T10:00:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMjEwMTdUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-17T11:00:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjEwMTdUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-10-17T16:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce a `#[rustc::*]` tool attribute namespace and provide a stable `#[rustc::on_unimplemented]` attribute" [compiler-team#560](https://github.com/rust-lang/compiler-team/issues/560) 
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 5 months ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 2 months ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: about 48 days ago)
  - "Allow informational -Z flags on stable compiler" [compiler-team#542](https://github.com/rust-lang/compiler-team/issues/542) (last review activity: about 48 days ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: about 48 days ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 34 days ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 15 days ago)
  - "New Tier-3 target proposal: powerpc64-ibm-aix" [compiler-team#553](https://github.com/rust-lang/compiler-team/issues/553) (last review activity: about 34 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 34 days ago)
  - "MCP: Raise UEFI Targets to Tier-2" [compiler-team#555](https://github.com/rust-lang/compiler-team/issues/555) (last review activity: about 34 days ago)
  - "Raise minimum supported macOS and iOS versions" [compiler-team#556](https://github.com/rust-lang/compiler-team/issues/556) (last review activity: about 34 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 21 days ago)
- Pending FCP requests (check your boxes!)
  - "Make PROC_MACRO_DERIVE_RESOLUTION_FALLBACK a hard error" [rust#84022](https://github.com/rust-lang/rust/pull/84022) 
- Things in FCP (make sure you're good with it)
  - "Only apply `ProceduralMasquerade` hack to older versions of `rental`" [rust#94063](https://github.com/rust-lang/rust/pull/94063) 
  - "Remove save-analysis." [rust#101841](https://github.com/rust-lang/rust/pull/101841) 
  - "Elaborate supertrait bounds when triggering `unused_must_use` on `impl Trait`" [rust#102287](https://github.com/rust-lang/rust/pull/102287) 
- Accepted MCPs
  - "`DROP` to `DROP_IF`" [compiler-team#558](https://github.com/rust-lang/compiler-team/issues/558) 
- Finalized FCPs (disposition merge)
  - "Tracking Issue for asm_sym" [rust#93333](https://github.com/rust-lang/rust/issues/93333) 
  - "add `no_compile` doctest attribute" [rust#96573](https://github.com/rust-lang/rust/pull/96573) 
  - "Allow transmutes between the same types after erasing lifetimes" [rust#101520](https://github.com/rust-lang/rust/pull/101520) 
  - "Change default level of INVALID_HTML_TAGS to warning and stabilize it" [rust#101720](https://github.com/rust-lang/rust/pull/101720) 
  - "make const_err a hard error" [rust#102091](https://github.com/rust-lang/rust/pull/102091)

### WG checkins

- @_*WG-rls2.0* by @**Lukas Wirth** ([previous checkin](https://hackmd.io/7G80yGgQQjeW-TJCMrOSMA#WG-checkins))
  > We changed how we order generics and parent generics fixing some gat related panics (no support got GATs yet though). Proc-macros stopped working in the rustc workspace due to the installed toolchain's sysroot proc-macro server being picked unconditionally, now its possible to point r-a to a specific sysroot manually so proc-macros work once again. There is a [PR open](https://github.com/rust-lang/rust-analyzer/pull/13112) to make auto-trait bounds work in r-a, unfortunately that is blocked on r-a not being able to index the standard libraries crates.io dependencies yet which will require some changes in the rust repo/sysroot, see the accompanying [zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/rust-lang.2Frust.2Flibrary.20workspace).

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser** (https://hackmd.io/7G80yGgQQjeW-TJCMrOSMA#WG-checkins)
  > Nothing to report since last checkin.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Use rebind instead of dummy binder in `SameTypeModuloInfer` relation" [rust#102059](https://github.com/rust-lang/rust/pull/102059) 
  - nominated by @**Michael Goulet (compiler-errors)**
  - fixes #101984 and #102964 (both ICEs)
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- 3 hidden issue waiting on teams or progressing

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "add `with_hash_task` to generate `DepNode` deterministically" [rust#100987](https://github.com/rust-lang/rust/pull/100987) (last review activity: about 49 days ago)
  - cc: @**cjgillot** for another round
- "Format rustc_codegen_gcc" [rust#101104](https://github.com/rust-lang/rust/pull/101104) (last review activity: about 46 days ago)
  - cc: @**Esteban Küber** 
- "Recover when unclosed char literal is parsed as a lifetime in some positions" [rust#101293](https://github.com/rust-lang/rust/pull/101293) (last review activity: about 41 days ago)
  - cc: @**Esteban Küber** (new review assignee)
- "Add powerpc-unknown-linux-muslspe compile target" [rust#100860](https://github.com/rust-lang/rust/pull/100860) (last review activity: about 34 days ago)
  - cc: @**Wesley Wiser** (has the author implemented the suggested changes?)
- "Always disabling incremental linking on MSVC" [rust#101550](https://github.com/rust-lang/rust/pull/101550) (last review activity: about 32 days ago)
  - cc: @**eddyb** (perhaps switch `s-waiting-on-author`?)


## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 39 P-high, 86 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "`as` cast of non-`Copy` enum is no longer a move" [rust#102389](https://github.com/rust-lang/rust/issues/102389)
  - T-lang agreed this behaviour is incorrect
  - issue needs an assignee

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-10-11](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-10-11.md)

Overall, a fairly quiet week where the change to primary benchmarks ended up breaking exactly even. Secondary benchmarks saw improvements but not in large enough numbers for it to be particularly noteworthy.

Triage done by **@rylev**.
Revision range: [02cd79a..1e926f0](https://perf.rust-lang.org/?start=02cd79afb8080fce8c8ce35533c54d8ecf8f390e&end=1e926f06528ecb2503f026e2fd53cb735d487b10&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.2%, 1.4%]   | 19    |
| Regressions (secondary)  | 1.0%  | [0.3%, 1.8%]   | 9     |
| Improvements (primary)   | -0.6% | [-1.8%, -0.3%] | 29    |
| Improvements (secondary) | -1.0% | [-6.4%, -0.2%] | 39    |
| All  (primary)           | -0.0% | [-1.8%, 1.4%]  | 48    |


3 Regressions, 1 Improvements, 6 Mixed; 4 of them in rollups
41 artifact comparisons made in total

#### Regressions

Reduce CString allocations in std as much as possible [#93668](https://github.com/rust-lang/rust/pull/93668) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=79a664d8b00505a76b53cfe017b9c80bcee7e080&end=1b225414f325593f974c6b41e671a0a0dc5d7d5e&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.0% | [1.0%, 1.0%] | 4     |
| Regressions (secondary)  | 0.2% | [0.2%, 0.2%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.0% | [1.0%, 1.0%] | 4     |
- The `hello-world` opt benchmarks are dominated by link time. 
- It makes sense that a change to an FFI type `CString` could have an impact on these. 
- I don't think there's a need though to really do anything about it. 


Rollup of 6 pull requests [#102867](https://github.com/rust-lang/rust/pull/102867) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a7c203e7f89f92598a793c6f6406735c024e7ee&end=e495b37c9a301d776a7bd0c72d5c4a202e159032&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.4%]   | 6     |
| Regressions (secondary)  | 1.4%  | [1.2%, 1.6%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | 0.3%  | [0.3%, 0.4%]   | 6     |
- The impacted benchmarks are more sensitive to changes to the trait system, so it looks like it might be [#102845](https://github.com/rust-lang/rust/pull/102845).
- Kicked of a perf run to investigate.


tools/remote-test-{server,client}: Use /data/local/tmp on Android [#102755](https://github.com/rust-lang/rust/pull/102755) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=365578445c6771bb74bfd341c8c48867164a9992&end=1e926f06528ecb2503f026e2fd53cb735d487b10&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.6%, 0.9%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.6%, 0.9%] | 6     |
- Looks like Diesel is becoming more noisy lately. You can see that in [this graph](https://user-images.githubusercontent.com/1327285/195131717-d78400d3-218b-4bb2-967a-7faef12b9fbe.png).


#### Improvements

Rewrite representability [#100720](https://github.com/rust-lang/rust/pull/100720) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a688a0305fad9219505a8f2576446510601bafe8&end=bba9785dd73f61aacd301a2cb379e1e85a129047&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.8%, -0.2%] | 38    |
| Improvements (secondary) | -0.9% | [-3.3%, -0.2%] | 21    |
| All  (primary)           | -0.4% | [-0.8%, -0.2%] | 38    |


#### Mixed

Remove `TypeckResults` from `InferCtxt` [#101632](https://github.com/rust-lang/rust/pull/101632) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e42c4d7218b2596276152c5eb1e69335621f3086&end=43c22af267fd9337bc05382b2771dde49d2e9f26&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.5%, 1.2%]   | 13    |
| Regressions (secondary)  | 4.3%  | [3.2%, 5.7%]   | 6     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.2%] | 19    |
| Improvements (secondary) | -0.6% | [-1.6%, -0.2%] | 52    |
| All  (primary)           | 0.1%  | [-0.6%, 1.2%]  | 32    |
- Looks `specialization_graph::Children::insert` is getting called way more. 
- Perhaps some strategic placement of `inline` could help help.


Rollup of 6 pull requests [#102787](https://github.com/rust-lang/rust/pull/102787) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=43c22af267fd9337bc05382b2771dde49d2e9f26&end=2d3a85b4f8ba7e2554f4d4fee126bc2ac6ee2af4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.3%]   | 2     |
| Regressions (secondary)  | 1.4%  | [1.1%, 1.9%]   | 6     |
| Improvements (primary)   | -0.8% | [-1.0%, -0.4%] | 8     |
| Improvements (secondary) | -2.5% | [-3.7%, -0.3%] | 7     |
| All  (primary)           | -0.6% | [-1.0%, 0.3%]  | 10    |
- Most of the regressions are in secondary benchmarks, so I don't think it's worth investigating what caused this.


std: use futex in `Once` [#99505](https://github.com/rust-lang/rust/pull/99505) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eed7f2f58bd44d32ac30e48425eb4bede7ea84f7&end=a688a0305fad9219505a8f2576446510601bafe8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]   | 1     |
| Regressions (secondary)  | 1.7%  | [1.0%, 3.3%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 9     |
| All  (primary)           | 0.5%  | [0.5%, 0.5%]   | 1     |
- The regression results are small and neutral enough that we don't need to investigate.


Rollup of 8 pull requests [#102809](https://github.com/rust-lang/rust/pull/102809) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bba9785dd73f61aacd301a2cb379e1e85a129047&end=c27948d255167d827421401950c6d723ba28de8f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 13    |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.6%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.1% | [-1.1%, -1.1%] | 1     |
| All  (primary)           | 0.3%  | [0.2%, 0.4%]   | 13    |


Rollup of 6 pull requests [#102875](https://github.com/rust-lang/rust/pull/102875) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8dfb40722da197e77a33a19eb9d3fd6512831341&end=691aeaad6c9ee3483f2851695379b348b8a92a43&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -5.0% | [-6.6%, -1.8%] | 5     |
| All  (primary)           | 0.2%  | [0.2%, 0.2%]   | 2     |
- This is neutral enough that I don't believe it warrants investigation.


slice: #[inline] a couple iterator methods. [#96711](https://github.com/rust-lang/rust/pull/96711) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=691aeaad6c9ee3483f2851695379b348b8a92a43&end=0265a3e93bf1b89d97cae113ed214954d5c35e22&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.7%]   | 4     |
| Improvements (primary)   | -0.8% | [-1.5%, -0.5%] | 8     |
| Improvements (secondary) | -1.4% | [-1.8%, -1.2%] | 6     |
| All  (primary)           | -0.8% | [-1.5%, -0.5%] | 8     |
- From the reviewer: "Perf results are more positive than negative, I think that's all that matters for this kind of change. The regressions are minor ones in secondary benchmarks"

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Introduce a no-op FakeRead for `let _ =`." [rust#102256](https://github.com/rust-lang/rust/pull/102256)
  - Nominated by @**pnkfelix**, asks for T-compiler for more insights (see [comment](https://github.com/rust-lang/rust/pull/102256#issuecomment-1270414456))
  - additional [comments](https://github.com/rust-lang/rust/pull/102256#issuecomment-1276524221) after T-lang meeting
- "Enforce that `closure: 'a` requires that `closure_ret_ty: 'a` holds" [rust#84385](https://github.com/rust-lang/rust/pull/84385)
  - Nominated by @**Aaron Hill** (see [comment](https://github.com/rust-lang/rust/pull/84385#issuecomment-1273756240))
  - suggests the only way out is to make it first a warning, then a hard error. Asks for more insights.
- "Massive performance regression between nightly-2022-08-12 and nightly-2022-08-13" [rust#102952](https://github.com/rust-lang/rust/issues/102952)
  - issue reporter points out that LLVM upgrades sometimes causes substancial perf. regression in the `wasmi` WASM interpreter, also points to a previous case in [rust#95409](https://github.com/rust-lang/rust/issues/95409))
  - Suggests a possible idea for these regressions: "Due to missing guaranteed tail calls in Rust wasmi relies heavily on a non-guaranteed optimization for a loop-switch based interpreter hot path"
  - what is the context? is there an actionable for these issues? Are by nature of LLVM these optimizations not guaranteed (as pointed out by the reporter)?
  - should an upstream LLVM issue be reported?
- "Performance regressions of compiled code over the last year" [rust#47561](https://github.com/rust-lang/rust/issues/47561) 
  - Very old perf. regression, triaged as P-medium at the time
  - nominated by @**Ben Kimock (Saethlin)** as it still exists (see [comment](https://github.com/rust-lang/rust/issues/47561#issuecomment-1272602873))
  - asks for insights if these regressions can be ever resolved without introducing other issues

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry**
- Generic Associated Types initiative by @**Jack Huey**
