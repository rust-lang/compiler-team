---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-06-30

## Announcements

- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA3MDFUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-01T09:00:00-04:00>
- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMjA3MDFUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-01T10:00:00-04:00>
- Rust stable 1.62 is out: (wip) [blog post](https://github.com/rust-lang/blog.rust-lang.org/blob/452900fcdd233c137a94578554f04fa8988e10e6/posts/2022-06-30-Rust-1.62.0.md)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjA3MDRUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-04T11:30:00-04:00>
- [[Types team] Hack session: Advanced subtyping](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA3MDZUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-06T09:00:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA3MDRUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-04T16:00:00-04:00>
- [wg-debugging status & design meeting](https://www.google.com/calendar/event?eid=MGplMHAxc2dwMHVsOW5hbmQzZDRvdDJnbjEgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-07-05T12:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 5 months ago)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: 3 months ago)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: about 54 days ago)
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026) 
  - "session: stabilize split debuginfo on linux" [rust#98051](https://github.com/rust-lang/rust/pull/98051) 
- Things in FCP (make sure you're good with it)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) 
  - "Track licensing metadata with REUSE" [compiler-team#519](https://github.com/rust-lang/compiler-team/issues/519) 
  - "Revise how MIR variants are distinguished" [compiler-team#522](https://github.com/rust-lang/compiler-team/issues/522) 
- Accepted MCPs
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) 
  - "Split TypeVisitable out from TypeFoldable" [compiler-team#520](https://github.com/rust-lang/compiler-team/issues/520) 
- Finalized FCPs (disposition merge)
  - "Remove migrate borrowck mode" [rust#95565](https://github.com/rust-lang/rust/pull/95565) 
  - "Modify MIR building to drop repeat expressions with length zero" [rust#95953](https://github.com/rust-lang/rust/pull/95953) 
  - "Lang: Stabilize usage of rustc_nonnull_optimization_guaranteed on -1" [rust#97122](https://github.com/rust-lang/rust/issues/97122) 
  - "Remove a back-compat hack on lazy TAIT" [rust#97346](https://github.com/rust-lang/rust/pull/97346) 
  - "make cenum_impl_drop_cast deny-by-default" [rust#97652](https://github.com/rust-lang/rust/pull/97652) 
  - "make const_err show up in future breakage reports" [rust#97743](https://github.com/rust-lang/rust/pull/97743) 
  - "lub: don't bail out due to empty binders" [rust#97867](https://github.com/rust-lang/rust/pull/97867) 
  - "allow unions with mutable references and tuples of allowed types" [rust#97995](https://github.com/rust-lang/rust/pull/97995)

### WG checkins

- @_*WG-traits* (Generic associated types initiative) by @**Jack Huey** ([prev checkin](https://hackmd.io/FkajQEA9RXe9dnnKk6SQqQ#WG-checkins))
> Still lots of discussion in stabilization PR and zulip. Niko posted a nice [comment](https://github.com/rust-lang/rust/pull/96709#issuecomment-1167220240) giving a nice example use case of GATs

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([prev checkin](https://hackmd.io/Ual97ehdQ-icEaP9Z0NPxg#WG-checkins))
> Biggest announcement is the ongoing work on the translation machinery. There are some HackMD documents with context [here](https://hackmd.io/@davidtwco/Bk0wTF2u5) and [here](https://hackmd.io/@davidtwco/rkXSbLg95)

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
- "Enable varargs support for calling conventions other than C or cdecl" [rust#97971](https://github.com/rust-lang/rust/pull/97971)
  - @**Jack Huey** comments this PR could go through a FCP ([comment](https://github.com/rust-lang/rust/pull/97971#issuecomment-1166627241))
- "TypeId: use a (v0) mangled type to remain sound in the face of hash collisions." [rust#95845](https://github.com/rust-lang/rust/pull/95845)
  - @**eddyb** nominates for various teams discussions ([comment](https://github.com/rust-lang/rust/pull/95845#issuecomment-1167298830)), T-lang contributes to the discussion.
  - See also `T-compiler` nominations
- (Omitted 4 PRs in draft or waiting on other teams / RFC process)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Warn about dead tuple struct fields" [rust#95977](https://github.com/rust-lang/rust/pull/95977) (last review activity: about 29 days ago)
  - unsure about the status, perhaps need another round of review? cc @**eddyb** 
- "Use liballoc's specialised in-place vec collection" [rust#97870](https://github.com/rust-lang/rust/pull/97870) (last review activity: about 21 days ago)
  - hifive bot autoassigned to @**Wesley Wiser**? re-roll :dice:?

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [44 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 3 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 40 P-high, 80 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463) 
  - Issue is being addressed by @__**pnkfelix** in #97800
  - previously discussed, pending a downgrade to `P-high` and perhaps adding more tests to the PR (suggested [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-06-23/near/287198504))
- "Wrong optimization" [rust#98568](https://github.com/rust-lang/rust/issues/98568) 
  - nikic opened an LLVM bug report [llvm-project#56242](https://github.com/llvm/llvm-project/issues/56242)
  - and submitted a patch [D128640](https://reviews.llvm.org/D128640)
- "Function type with opaque return type can be coerced to `dyn Fn` with arbitrary return type" [rust#98608](https://github.com/rust-lang/rust/issues/98608)
  - @**oli** self-assigned

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2022-06-28 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-06-28.md)

Overall, a positive week for compiler performance with regressions mainly being relegated to smaller issues. This can be see by the fact that 95 test cases in real world crates were improvements while regressions only happened in 22 test cases. The largest improvement was by @nnethercote where the compilation of `#[derive(Debug)]` was improved. This led to an average of 1% improvement in compile times across 124 real world crate test cases.

Triage done by **@rylev**.
Revision range: [abace0a1f17986d89aedf610819deab2b4afee56..baf382e63c023259fa1f9042f8f479f183ca6ed3](https://perf.rust-lang.org/?start=abace0a1f17986d89aedf610819deab2b4afee56&end=baf382e63c023259fa1f9042f8f479f183ca6ed3&absolute=false&stat=instructions%3Au)

**Summary**:

|                           | mean  | max    | count |
|:-------------------------:|:-----:|:------:|:-----:|
| Regressions  (primary)    | 0.6%  | 2.4%   | 22    |
| Regressions  (secondary)  | 0.5%  | 1.0%   | 35    |
| Improvements  (primary)   | -1.1% | -5.2%  | 95    |
| Improvements  (secondary) | -2.3% | -10.3% | 35    |
| All  (primary)            | -0.8% | -5.2%  | 117   |


3 Regressions, 3 Improvements, 4 Mixed; 5 of them in rollups
34 artifact comparisons made in total

#### Regressions


Rollup of 16 pull requests [#98438](https://github.com/rust-lang/rust/pull/98438) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=43347397f7c5ca9a670a3bb3890c7187e24a52ab&end=e605a88441e5f6092194c914912142db635dfe21&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 0.3%  | 0.4%  | 37    |
| Regressions  (secondary)  | 0.4%  | 0.6%  | 17    |
| Improvements  (primary)   | N/A   | N/A   | 0     |
| Improvements  (secondary) | -0.4% | -0.5% | 3     |
| All  (primary)            | 0.3%  | 0.4%  | 37    |
- Given the difficulty of investigation and the relatively small magnitude of the regression, I've marked this as triaged.

fix universes in the NLL type tests [#98109](https://github.com/rust-lang/rust/pull/98109) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fc96600bf6a52f92aeeee60a92a161a82b61c0ef&end=d017d59ed013a4bc2431d023077eb7209fe9c60d&stat=instructions:u)

|                           | mean | max  | count |
|:-------------------------:|:----:|:----:|:-----:|
| Regressions  (primary)    | 0.6% | 1.9% | 31    |
| Regressions  (secondary)  | 0.9% | 2.0% | 35    |
| Improvements  (primary)   | N/A  | N/A  | 0     |
| Improvements  (secondary) | N/A  | N/A  | 0     |
| All  (primary)            | 0.6% | 1.9% | 31    |
- This was a high-priority correctness fix, so the regressions are acceptable at least in the short term.
- [Oli already commented](https://github.com/rust-lang/rust/pull/98109#issuecomment-1165569316) on possible ideas for fixing the regression.



Rollup of 9 pull requests [#98591](https://github.com/rust-lang/rust/pull/98591) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2f3ddd9f594adf9773547aa7cedb43c4ac8ffd2f&end=7f08d04d60d03e1a52dae61ce6aa50996898702b&stat=instructions:u)

|                           | mean | max  | count |
|:-------------------------:|:----:|:----:|:-----:|
| Regressions  (primary)    | N/A  | N/A  | 0     |
| Regressions  (secondary)  | 1.2% | 1.7% | 7     |
| Improvements  (primary)   | N/A  | N/A  | 0     |
| Improvements  (secondary) | N/A  | N/A  | 0     |
| All  (primary)            | N/A  | N/A  | 0     |
- [#98576](https://github.com/rust-lang/rust/pull/98576) is probably the only likely candidate for this regression. 
- The cahcegrind didn't reveal anything super interesting though unfortunately.
- Left a comment [here](https://github.com/rust-lang/rust/pull/98591#issuecomment-1168877399).


#### Improvements

Rollup of 11 pull requests [#98335](https://github.com/rust-lang/rust/pull/98335) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a25b1315ee968146a5b206a8f3c670c5b307ebfe&end=72fd41a8b4d3488c97df3c3c75ddd9951aa3c73f&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | 1.1%  | 1.1%  | 1     |
| Improvements  (primary)   | -0.9% | -1.2% | 8     |
| Improvements  (secondary) | -0.6% | -0.7% | 13    |
| All  (primary)            | -0.9% | -1.2% | 8     |


proc_macro/bridge: cache static spans in proc_macro's client thread-local state [#98187](https://github.com/rust-lang/rust/pull/98187) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c80c4b8fdcf3da69cd483e2fec172c9b1f95842c&end=3b0d4813ab461ec81eab8980bb884691c97c5a35&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | -0.4% | -0.7% | 12    |
| Improvements  (secondary) | N/A   | N/A   | 0     |
| All  (primary)            | -0.4% | -0.7% | 12    |


Only keep a single query for well-formed checking [#98222](https://github.com/rust-lang/rust/pull/98222) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7f08d04d60d03e1a52dae61ce6aa50996898702b&end=5ffa8f67b75be56cf829bfc9d055082c8382c0cf&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | N/A   | N/A   | 0     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | -0.2% | -0.3% | 2     |
| Improvements  (secondary) | -0.2% | -0.3% | 7     |
| All  (primary)            | -0.2% | -0.3% | 2     |


#### Mixed

Remove dereferencing of Box from codegen [#95576](https://github.com/rust-lang/rust/pull/95576) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=abace0a1f17986d89aedf610819deab2b4afee56&end=a25b1315ee968146a5b206a8f3c670c5b307ebfe&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 0.6%  | 1.6%  | 5     |
| Regressions  (secondary)  | 0.5%  | 0.8%  | 17    |
| Improvements  (primary)   | -0.5% | -0.5% | 1     |
| Improvements  (secondary) | -1.2% | -1.7% | 8     |
| All  (primary)            | 0.4%  | 1.6%  | 6     |
- Some light investigation from Oli [already done](https://github.com/rust-lang/rust/pull/95576#issuecomment-1161901041).
- Seems like we're spending a bit more time in trait obligation resolution
- Asked Oli whether [this is acceptable](https://github.com/rust-lang/rust/pull/95576#issuecomment-1168899350).


Rollup of 6 pull requests [#98359](https://github.com/rust-lang/rust/pull/98359) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dc80ca78b6ec2b6bba02560470347433bcd0bb3c&end=a09c668c965f735f4cd59e7158662b9daa0b71ba&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 0.8%  | 1.0%  | 6     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | -0.3% | -0.6% | 14    |
| Improvements  (secondary) | N/A   | N/A   | 0     |
| All  (primary)            | 0.0%  | 1.0%  | 20    |
- By in large, a wash in terms of change to overall performance.
- The regressions are contained to diesel. 
- If I had to guess about a place to investigate, it would be [#87867](https://github.com/rust-lang/rust/pull/97867), but it might not be worth the effort. 


Rollup of 9 pull requests [#98447](https://github.com/rust-lang/rust/pull/98447) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d017d59ed013a4bc2431d023077eb7209fe9c60d&end=7036449c774860a5b348dbbe01c20704c557382e&stat=instructions:u)

|                           | mean  | max   | count |
|:-------------------------:|:-----:|:-----:|:-----:|
| Regressions  (primary)    | 2.1%  | 2.1%  | 1     |
| Regressions  (secondary)  | N/A   | N/A   | 0     |
| Improvements  (primary)   | N/A   | N/A   | 0     |
| Improvements  (secondary) | -0.3% | -0.3% | 1     |
| All  (primary)            | 2.1%  | 2.1%  | 1     |
- The regressions are contained to only one test case (regex opt) in codegen related queries.
- I didn't find any PRs that seemed like likely culprits.


Improve `derive(Debug)` [#98190](https://github.com/rust-lang/rust/pull/98190) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7125846d17a549866aa1ed0ea28778537378fca8&end=788ddedb0d88e40db9cd62b6163d5a471813044b&stat=instructions:u)

|                           | mean  | max    | count |
|:-------------------------:|:-----:|:------:|:-----:|
| Regressions  (primary)    | 0.5%  | 0.6%   | 4     |
| Regressions  (secondary)  | 0.5%  | 0.8%   | 13    |
| Improvements  (primary)   | -1.0% | -5.3%  | 120   |
| Improvements  (secondary) | -1.8% | -10.3% | 69    |
| All  (primary)            | -1.0% | -5.3%  | 124   |
- Largely a very positive win.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "TypeId: use a (v0) mangled type to remain sound in the face of hash collisions." [rust#95845](https://github.com/rust-lang/rust/pull/95845)
  - nominated by @**eddyb** ([comment](https://github.com/rust-lang/rust/pull/95845#issuecomment-1167298830))
  - points out the main discussion is whether we need anything other than a larger hash.
- "pessimistically treat all function items as containing an opaque type" [rust#98614](https://github.com/rust-lang/rust/pull/98614)
  - PR authored by @**oli**, fixes unsound `P-critical` [#98608](https://github.com/rust-lang/rust/issues/98608) and related ICE [#98604](https://github.com/rust-lang/rust/issues/98604)
  - [perf. results](https://github.com/rust-lang/rust/pull/98614#issuecomment-1170612891) show significant regressions
  - nominated by @**oli** to evaluate if the perf. regression is acceptable since this fixes an unsoundness ([comment](https://github.com/rust-lang/rust/pull/98614#issuecomment-1170815790))
- "`for<'a> &'a T: 'a` and closures regressed" [rust#98437](https://github.com/rust-lang/rust/issues/98437)
  - @_**apiraino** nominated to get some eyeballs on the general question raised by @**Jack Huey** about reverting some PRs related to the merged NLL ([comment](https://github.com/rust-lang/rust/issues/98437#issuecomment-1165733263))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
- @_*WG-traits* (Impl Trait initiative) by @**oli**
