---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-10-21

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :confetti: Today Thursday Oct, 21st release Rust stable 1.56 :confetti:
- Tomorrow <time:2021-10-15T10:00:00-04:00> monthly [Compiler team meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)
- Any legal questions about compiler copyright support?

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last review activity: GH none, Zulip +3 months ago)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: GH none, Zulip about 1 week ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 3 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: GH none, Zulip about 1 month ago)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
  - "Tracking issue for `#![feature(const_precise_live_drops)]`" [rust#73255](https://github.com/rust-lang/rust/issues/73255)
- Things in FCP (make sure you're good with it)
  - "Tier 3 target proposal: x86_64-unknown-none (freestanding/bare-metal x86-64)" [compiler-team#462](https://github.com/rust-lang/compiler-team/issues/462)
- Accepted MCPs
  - "lint internal hashmap iteration" [compiler-team#465](https://github.com/rust-lang/compiler-team/issues/465)
- Finalized FCPs (disposition merge)
  - "Make all proc-macro back-compat lints deny-by-default" [rust#88041](https://github.com/rust-lang/rust/pull/88041)
  - "Stabilize `unreachable_unchecked` as `const fn`" [rust#89509](https://github.com/rust-lang/rust/pull/89509)

### WG checkins

@_wg-incr-comp_ by @**pnkfelix** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/c-I7gxx4SK2eudQgwruuJw#WG-checkins)):

> pnkfelix thinks there is nothing to report since the last checkin

@_WG-llvm_ by @**nagisa** ([previous checkin](https://hackmd.io/c-I7gxx4SK2eudQgwruuJw#WG-checkins)):

> A PR that's about to land (if it hasn't yet) to drop LLVM 10 support (last time I wrote an update we only "considered" it^^)
> NewPM did land. NewPM has led to some problems with build times and memory use due to different (and worse?) inlining and unrolling heuristics in some samples of code, but on average the build times did decrease significantly.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "Revert #86011 to fix an incorrect bound check" [rust#90025](https://github.com/rust-lang/rust/pull/90025)
  - fixes stable-to-nightly P-critical [rust#89935](https://github.com/rust-lang/rust/issues/89935)
- :beta: "Erase late-bound regions before computing vtable debuginfo name." [rust#90050](https://github.com/rust-lang/rust/pull/90050)
  - fixes stable-to-beta P-critical [rust#90019](https://github.com/rust-lang/rust/issues/90019)
  - nominated by @mw as it fixes a stable-to-beta regression
- :beta: "Don't emit a warning for empty rmeta files." [rust#90072](https://github.com/rust-lang/rust/pull/90072)
  - closes [rust#89795](https://github.com/rust-lang/rust/issues/89795)
  - nominated by @**Eric Huss** [to remove this warning when running x.py](https://github.com/rust-lang/rust/pull/90072#issuecomment-947195572)
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- No PRs waiting on `T-compiler` this time.

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)

- "Direct users towards using Rust feature names in CLI" [rust#87402](https://github.com/rust-lang/rust/pull/87402) (last review activity: 23 days ago)
- "Fix ICE with inferred type in const or static item" [rust#89161](https://github.com/rust-lang/rust/pull/89161) (last review activity: about 2 weeks ago)
- "Type inference for inline consts" [rust#89561](https://github.com/rust-lang/rust/pull/89561) (last review activity: 15 days ago)
- "Fix suggestion of additional `pub` when using `pub pub fn ...`" [rust#87901](https://github.com/rust-lang/rust/pull/87901) (last review activity: 2 months ago)
- "Allow simd_bitmask to return byte arrays" [rust#88868](https://github.com/rust-lang/rust/pull/88868) (last review activity: 15 days ago)
- "Turn TrapUnreachable off by default" [rust#88826](https://github.com/rust-lang/rust/pull/88826) (last review activity: 5 weeks ago)
- "Implement concat_bytes!" [rust#87599](https://github.com/rust-lang/rust/pull/87599) (last review activity: 2 months ago)
- "Recommend fix `count()` -> `len()` on slices" [rust#87614](https://github.com/rust-lang/rust/pull/87614) (last review activity: 2 months ago)
  - assigned to @**cuviper**, perhaps review should go now to `t-libs` [see comment](https://github.com/rust-lang/rust/pull/87614)?

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [74 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [3 P-critical, 0 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 46 P-high, 85 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)

- "cargo fails to build on Windows with nightly" [rust#90019](https://github.com/rust-lang/rust/issues/90019)
  - opened by @**Wesley Wiser**
  - fixed by @**mw**, tracking beta-backport approval of [rust#90050](https://github.com/rust-lang/rust/pull/90050)
- "Miscompilation when awaiting generator containing an enum with niche at least [0, 1]" [rust#90038](https://github.com/rust-lang/rust/issues/90038)
  - opened by @**tmandry**
  - stable-to-beta P-critical regression
  - needs beta backport of [rust#90040](https://github.com/rust-lang/rust/pull/90040)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)

- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "CI: dist-s390x-linux build went from 40min. to 160min with new LLVM pass manager" [rust#89609](https://github.com/rust-lang/rust/issues/89609)
- "Undefined reference to `getauxval` in function `init_have_lse_atomics` when compiling to nightly `aarch64-unknown-linux-musl`" [rust#89626](https://github.com/rust-lang/rust/issues/89626)
  - `E-needs-bisection`
  - relevant PR https://github.com/rust-lang/rust/pull/90044

## Performance logs

> [triage logs for 2021-10-19](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-10-19.md)

A week where improvements outweigh regressions. The highlight of the week is the change to split out LLVM profile guided optimization (PGO) and using clang 13 to compile LLVM which led to improvements in many real world crates (e.g., cargo) in the range of 10%. Most regressions were limited and at most in the less than 1% range. We are seeing more performance changes in rollups which are supposed to be performance neutral. We'll have to decide how to best address this.

Triage done by **@rylev**.
Revision range: [9475e609b8458fff9e444934a6017d2e590642cf..d45ed7502ad225739270a368528725930f54b7b6](https://perf.rust-lang.org/?start=9475e609b8458fff9e444934a6017d2e590642cf&end=d45ed7502ad225739270a368528725930f54b7b6&absolute=false&stat=instructions%3Au)

3 Regressions, 4 Improvements, 2 Mixed; 2 of them in rollups
34 comparisons made in total

#### Regressions

Rollup of 6 pull requests [#89858](https://github.com/rust-lang/rust/issues/89858)

- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=dfc5add915e8bf4accbb7cf4de00351a7c6126a1&end=8c852bc15a058022c9d4175e8ed60da628960800&stat=instructions:u) (up to 0.7% on `incr-unchanged` builds of `cranelift-codegen`)
- This rollup is the kind that is very hard to diagnose because none of the individual PRs seem to be risky.
- Left a [comment](https://github.com/rust-lang/rust/pull/89858#issuecomment-947476063) about possible causes and a call out for more investigation.

add `slice::swap_unchecked` [#88540](https://github.com/rust-lang/rust/issues/88540)

- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=72d66064e77281536588189a916af28a1819b313&end=1dafe6d1c328d2f0580763e8438a227e490deb10&stat=instructions:u) (up to 1.5% on `full` builds of `piston-image`)
- Seems like we're doing more bounds checking than is necessary when using `slice::swap` though this should only happen when debug assertions are on which is not the case in the compiler.
- It is interesting that this has predominately impacted full build scenarios, but it's not clear why this would be the case.
- It's already been suggested to revert this, and I've left a [comment](https://github.com/rust-lang/rust/pull/88540#issuecomment-946736079) as such in the PR.

Associated consts sidebar [#89815](https://github.com/rust-lang/rust/issues/89815)

- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=8c852bc15a058022c9d4175e8ed60da628960800&end=7807a694c2f079fd3f395821bcc357eee8650071&stat=instructions:u) (up to 0.9% on `full` builds of `many-assoc-items`)
- Expected since we're doing more work and the benchmark in question is explicitly meant to test the worst case in this scenario.

#### Improvements

- Remove textual span from diagnostic string [#89555](https://github.com/rust-lang/rust/issues/89555)
  polymorphization: shims and predicates [#89514](https://github.com/rust-lang/rust/issues/89514)
- Split out LLVM PGO step and use clang 13 to compile LLVM [#89499](https://github.com/rust-lang/rust/issues/89499)
- Revert "Auto merge of #89709 - clemenswasser:apply_clippy_suggestions… [#89905](https://github.com/rust-lang/rust/issues/89905)

#### Mixed

Rollup of 10 pull requests [#89939](https://github.com/rust-lang/rust/issues/89939)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=6cc0a764e082d9c0abcf37a768d5889247ba13e2&end=7fbd4ce2768744b3bd2ddf8453b73f4f18dbe5bc&stat=instructions:u) (up to -1.7% on `full` builds of `inflate`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=6cc0a764e082d9c0abcf37a768d5889247ba13e2&end=7fbd4ce2768744b3bd2ddf8453b73f4f18dbe5bc&stat=instructions:u) (up to 1.0% on `full` builds of `diesel`)
- No obvious place where the regressions or improvements are coming from.
- Most likely culprit is [#89915](https://github.com/rust-lang/rust/pull/89915) as most other PRs in the rollup seem to be pretty low risk.
- Left a [comment](https://github.com/rust-lang/rust/pull/89939#issuecomment-946747553) saying as much.

Index and hash HIR as part of lowering [#89124](https://github.com/rust-lang/rust/issues/89124)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5dab47dcd8267b8769421b46532414ec36d625e3&end=bd41e09da334697c0f993b36685cb599061d9faa&stat=instructions:u) (up to -5.4% on `full` builds of `cranelift-codegen`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5dab47dcd8267b8769421b46532414ec36d625e3&end=bd41e09da334697c0f993b36685cb599061d9faa&stat=instructions:u) (up to 5.3% on `full` builds of `unused-warnings`)
- Definitely looks related to the change in question (`unused-warnings` shows larges increases in HIR lowering).
- Left a [comment](https://github.com/rust-lang/rust/pull/89124#issuecomment-947444364) asking for clarification of next steps.

#### Untriaged Pull Requests

- [#89939 Rollup of 10 pull requests](https://github.com/rust-lang/rust/pull/89939)
- [#89858 Rollup of 6 pull requests](https://github.com/rust-lang/rust/pull/89858)
- [#89695 Move top part of print_item to Tera templates](https://github.com/rust-lang/rust/pull/89695)
- [#89608 Rollup of 12 pull requests](https://github.com/rust-lang/rust/pull/89608)
- [#89534 Introduce `tcx.get_diagnostic_name`](https://github.com/rust-lang/rust/pull/89534)
- [#89495 Add two inline annotations for hot functions](https://github.com/rust-lang/rust/pull/89495)
- [#89435 Rollup of 6 pull requests](https://github.com/rust-lang/rust/pull/89435)
- [#89405 Fix clippy lints](https://github.com/rust-lang/rust/pull/89405)
- [#89263 Suggest both of immutable and mutable trait implementations](https://github.com/rust-lang/rust/pull/89263)
- [#89165 Fix read_to_end to not grow an exact size buffer](https://github.com/rust-lang/rust/pull/89165)
- [#89125 Don't use projection cache or candidate cache in intercrate mode](https://github.com/rust-lang/rust/pull/89125)
- [#89124 Index and hash HIR as part of lowering](https://github.com/rust-lang/rust/pull/89124)
- [#89103 Migrate in-tree crates to 2021](https://github.com/rust-lang/rust/pull/89103)
- [#89047 Rollup of 10 pull requests](https://github.com/rust-lang/rust/pull/89047)
- [#89030 Introduce `Rvalue::ShallowInitBox`](https://github.com/rust-lang/rust/pull/89030)
- [#88945 Remove concept of 'completion' from the projection cache](https://github.com/rust-lang/rust/pull/88945)
- [#88880 Rework HIR API to make invocations of the hir_crate query harder.](https://github.com/rust-lang/rust/pull/88880)
- [#88824 Rollup of 15 pull requests](https://github.com/rust-lang/rust/pull/88824)
- [#88804 Revise never type fallback algorithm](https://github.com/rust-lang/rust/pull/88804)
- [#88719 Point at argument instead of call for their obligations](https://github.com/rust-lang/rust/pull/88719)
- [#88703 Gather module items after lowering.](https://github.com/rust-lang/rust/pull/88703)
- [#88627 Do not preallocate HirIds](https://github.com/rust-lang/rust/pull/88627)
- [#88575 Querify `FnAbi::of_{fn_ptr,instance}` as `fn_abi_of_{fn_ptr,instance}`.](https://github.com/rust-lang/rust/pull/88575)
- [#88540 add `slice::swap_unchecked`](https://github.com/rust-lang/rust/pull/88540)
- [#88308 Morph `layout_raw` query into `layout_of`.](https://github.com/rust-lang/rust/pull/88308)
- [#87781 Remove box syntax from compiler and tools](https://github.com/rust-lang/rust/pull/87781)
- [#87064 Support `#[track_caller]` on closures and generators](https://github.com/rust-lang/rust/pull/87064)
- [#83302 Get piece unchecked in `write`](https://github.com/rust-lang/rust/pull/83302)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "Add new tier 3 target: `x86_64-unknown-none`" [rust#89062](https://github.com/rust-lang/rust/pull/89062)
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-10-14.20.2354818/near/257547308)
  - @**Josh Triplett** nominated for T-compiler discussion
  - does `T-compiler` need to follow up on the discussion? [Josh's comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-10-14.20.2354818/near/257550014)
- "LTO toolchain compatability docs could use an update in case anything has changed in the last year" [rust#89654](https://github.com/rust-lang/rust/issues/89654)
  - @**Joshua Nelson**  nominated for T-compiler discussion

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.
