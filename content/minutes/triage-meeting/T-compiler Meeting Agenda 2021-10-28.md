---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-10-28

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- If you see a PR/issue that seems like there might be legal implications due to copywrite/IP/etc, please let the Core team know (or at least message Felix or Wesley so we can pass it along). "If you see something, say something"

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: GH none, Zulip about 10 days ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: GH none, Zulip 1 month ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: GH none, Zulip about 1 month ago)
- Pending FCP requests (check your boxes!)
  - "Tracking issue for `#![feature(const_precise_live_drops)]`" [rust#73255](https://github.com/rust-lang/rust/issues/73255)
  - "Stabilize -Z strip as -C strip" [rust#90058](https://github.com/rust-lang/rust/pull/90058)
  - "Stabilize -Z symbol-mangling-version as -C symbol-mangling-version" [rust#90128](https://github.com/rust-lang/rust/pull/90128)
- Things in FCP (make sure you're good with it)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
- Accepted MCPs
  - "Tier 3 target proposal: x86_64-unknown-none (freestanding/bare-metal x86-64)" [compiler-team#462](https://github.com/rust-lang/compiler-team/issues/462)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @_WG-mir-opt_ checkin by @**oli** ([previous checkin](https://hackmd.io/0z3bxGHlQwSYrLNm5ap2Lg#WG-checkins)):

  > We have moved to a "merge fast" policy for new mir opts. This means we add them behind mir-opt-level=4 (very unstable, probably unsound) without necessarily reviewing them with the detail required for anything we expose to users. This allows us to quickly move ahead with new opts without burdening the author with too much rebasing due to mir tests changing under them.
  > 
  > #90016 is an optimization currently WIP that uses dataflow to figure out when a match arm is unreachable. This is a very simple form of VRA (value range analysis) that only works for matches on integers, bools and chars, but it is expected to become more powerful and be able to handle enums and comparisons, too.

- @_wg-polymorphization_ checkin by @**davidtwco** ([previous checkin](https://hackmd.io/0z3bxGHlQwSYrLNm5ap2Lg#WG-checkins)):
  > There's a polymorphization update! Surprise!
  >
  > - @\__davidtwco_ submitted #89426 which makes polymorphization pass tests on master, removes some special-case predicate logic that isn't necessary now (after earlier work on the v0 mangling scheme that landed many months ago), and makes the `unused_generic_params` query work on instances rather than just functions (so that shims can be polymorphized). Approved and merged by @\_lcnr.
  > - @_lcnr_ is working on a fix for #75325, this is the primary blocker for polymorphization, and the fix should enable greater polymorphization in the long run. Work-in-progress PR at #90057, and some rough sketches of the design [in a HackMD document](https://hackmd.io/CJ2zzXm0RtGORidx83RtBg).

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "Fix ICE when forgetting to `Box` a parameter to a `Self::func` call" [rust#90221](https://github.com/rust-lang/rust/pull/90221)
  - Closes a `P-high` issue [rust#90213](https://github.com/rust-lang/rust/issues/90213)
  - (Unilaterally approved by @**pnkfelix**, no discussion required.)
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- :beta: "Fix documentation header sizes" [rust#90186](https://github.com/rust-lang/rust/pull/90186)
  - no concerns from `T-rustdoc`, can be safely beta-backported
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "Change default panic strategy to abort for wasm32-unknown-emscripten" [rust#89762](https://github.com/rust-lang/rust/pull/89762)
  - also nominated by @**pnkfelix** ([see comment](https://github.com/rust-lang/rust/pull/89762#issuecomment-952012634)) to discuss the strategy to adopt
  - Fixes a P-high issue [rust#85821](https://github.com/rust-lang/rust/issues/85821), emscripten target compiling on trivial code

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)

- "Fixes incorrect handling of ADT's drop requirements" [rust#90218](https://github.com/rust-lang/rust/issues/90218)
  - fixes a `P-high` occurring when trying to migrate code to 2021 edition
  - (pnkfelix askes during meeting: this shouldn't be on this list)
- "Support #[global_allocator] without the allocator shim" [rust#86844](https://github.com/rust-lang/rust/pull/86844) (last review activity: 2 months ago)
  - seems to need a reviewer assigned
  - review from `T-lang` or `T-compiler`?
- "Turn TrapUnreachable off by default" [rust#88826](https://github.com/rust-lang/rust/pull/88826)
  - seems to need a reviewer assigned
- "Allow use of AddressSanitizer on Windows by linking to existing libraries" [rust#89369](https://github.com/rust-lang/rust/pull/89369)
- "debuginfo: Add script for Rust support in lldb-mi" [rust#89163](https://github.com/rust-lang/rust/pull/89163) (last review activity: 19 days ago)
- "Implement concat_bytes!" [rust#87599](https://github.com/rust-lang/rust/pull/87599) (last review activity: 3 months ago)
- "Make specifying repr optional for fieldless enums" [rust#88203](https://github.com/rust-lang/rust/pull/88203) (last review activity: 2 months ago)
  - review seems to point out there's some more work to do, [see comment](https://github.com/rust-lang/rust/pull/88203#issuecomment-918528891)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [75 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 47 P-high, 84 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)

- "cargo fails to build on Windows with nightly" [rust#90019](https://github.com/rust-lang/rust/issues/90019)
  - assigned to @**mw**, re-opened to track beta-backport (beta-accepted)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)

- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "Incremental compilation fails in all cases on SystemZ (s390x)" [rust#90123](https://github.com/rust-lang/rust/issues/90123)
  - incremental compile ICE on Tier 2 platform
  - There seems to be a patch on the way to fix ([see comment](https://github.com/rust-lang/rust/issues/90123#issuecomment-950825250))
- "regression: rustc suggests `.as_ref()` at incorrect location and other spans have regressed" [rust#90286](https://github.com/rust-lang/rust/issues/90286)
  - assigned P-high as it could be confusing for beginners
- "DWARF info for `static` vars in lib crates has stopped being produced reliably in LTO builds" [rust#90357](https://github.com/rust-lang/rust/issues/90357)
  - needs an assignee
  - bisection seems to point to PR [rust#89041](https://github.com/rust-lang/rust/pull/89041) (cc: @**nagisa**)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "Undefined reference to `getauxval` in function `init_have_lse_atomics` when compiling to nightly `aarch64-unknown-linux-musl`" [rust#89626](https://github.com/rust-lang/rust/issues/89626)
  - opened by @**XAMPPRocky**
  - issue seems to receive mentions from other issues
  - @**Hans Kratz** [comments](https://github.com/rust-lang/rust/issues/89626#issuecomment-945711248) probably related to PR [rust#83655](https://github.com/rust-lang/rust/pull/83655)

## Performance logs

> [triage logs for 2021-10-26](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-10-26.md)

Multiple regressions this week, several of which were in rollups, without much to balance them out on the improvements front.

Triage done by **@simulacrum**.
Revision range: [d45ed7502ad225739270a368528725930f54b7b6..3c8f001d454b1b495f7472d8430ef8fdf10aac11](https://perf.rust-lang.org/?start=d45ed7502ad225739270a368528725930f54b7b6&end=3c8f001d454b1b495f7472d8430ef8fdf10aac11&absolute=false&stat=instructions%3Au)

5 Regressions, 4 Improvements, 3 Mixed; 3 of them in rollups; 35 comparisons made in total

#### Regressions

resolve: Use `NameBinding` for local variables and generic parameters [#89100](https://github.com/rust-lang/rust/issues/89100)

- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=42983a28ab3c70728da7a9b932b667c978dd898d&end=6162529a01473bbb2427fa27354cbafc3c514eee&stat=instructions:u) (up to 99.5% on `incr-unchanged` builds of `style-servo`)
- Reverted in #90130.

Rollup of 6 pull requests [#90235](https://github.com/rust-lang/rust/issues/90235)

- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ed08a67566d7d1d9dd2ad928ff21c23e841a4345&end=00d5e42e776da900049fe19087bc9b0057ec70cd&stat=instructions:u) (up to 9.8% on `incr-full` builds of `deeply-nested-async`)
- Probably caused by new compiler-internal lint
  ([#89558](https://github.com/rust-lang/rust/pull/89558)), which appears to be
  run on end-user code (despite being allow-by-default). Suggested a few
  possible fixes or a revert if we can't do so quickly.

Inline CStr::from_ptr [#90007](https://github.com/rust-lang/rust/issues/90007)

- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=01198792a608b05e624b0127e76dd0753057016c&end=514b3877956dc594823106b66c164f8cdbc8b3da&stat=instructions:u) (up to 0.4% on `incr-unchanged` builds of `helloworld`)
- Regression limited to stress tests and fairly minor. Seems likely to be a
  litle extra work in codegen, as the regressions are all in -opt builds. This
  change is done to permit better optimization, skipping a call to strlen in
  some cases, so seems worthwhile.

Implement coherence checks for negative trait impls [#90104](https://github.com/rust-lang/rust/issues/90104)

- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=55ccbd090d96ec3bb28dbcb383e65bbfa3c293ff&end=aa5740c715001f981515ed46faaddebf67cb9539&stat=instructions:u) (up to 0.6% on `full` builds of `diesel`)
- Looks like a real regression, but the feature is important and the regression
  is relatively small.

Rollup of 5 pull requests [#90203](https://github.com/rust-lang/rust/issues/90203)

- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=aa5740c715001f981515ed46faaddebf67cb9539&end=91b931926fd49fc97d1e39f2b8206abf1d77ce7d&stat=instructions:u) (up to 0.6% on `full` builds of `externs`)
- Regression limited to rustdoc, likely due to the addition of code-scraping
  from the examples directory. Does not seem major enough to warrant deep
  investigation, but have left a comment on the likely PR.

#### Improvements

- Adopt let_else across the compiler [#89933](https://github.com/rust-lang/rust/issues/89933)
- Revert "resolve: Use NameBinding for local variables and generic parameters" [#90130](https://github.com/rust-lang/rust/issues/90130)
- Specialize HashStable for [u8] slices [#90208](https://github.com/rust-lang/rust/issues/90208)
- Build the query vtable directly. [#90210](https://github.com/rust-lang/rust/issues/90210)

#### Mixed

Rollup of 10 pull requests [#90067](https://github.com/rust-lang/rust/issues/90067)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=1af55d19c7a9189374d89472f97dc119659bb67e&end=42983a28ab3c70728da7a9b932b667c978dd898d&stat=instructions:u) (up to -1.4% on `incr-patched: println` builds of `coercions`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1af55d19c7a9189374d89472f97dc119659bb67e&end=42983a28ab3c70728da7a9b932b667c978dd898d&stat=instructions:u) (up to 1.1% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo`)
- Left a comment with a few suggestions, but the regression and improvements
  seem both major and without obvious cause.

Merge the two depkind vtables [#89978](https://github.com/rust-lang/rust/issues/89978)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3d71e749a244890cd370d49963e747cf92f4a037&end=efd0483949496b067cd5f7569d1b28cd3d5d3c72&stat=instructions:u) (up to -2.0% on `incr-unchanged` builds of `helloworld`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3d71e749a244890cd370d49963e747cf92f4a037&end=efd0483949496b067cd5f7569d1b28cd3d5d3c72&stat=instructions:u) (up to 0.9% on `incr-unchanged` builds of `clap-rs`)
- Improvements mostly outweigh the regressions

Make new symbol mangling scheme default for compiler itself. [#90054](https://github.com/rust-lang/rust/issues/90054)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=514b3877956dc594823106b66c164f8cdbc8b3da&end=a3f7c4db0373aa077f86cdd1bf11122845d3b65a&stat=instructions:u) (up to -0.8% on `incr-unchanged` builds of `deeply-nested-async`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=514b3877956dc594823106b66c164f8cdbc8b3da&end=a3f7c4db0373aa077f86cdd1bf11122845d3b65a&stat=instructions:u) (up to 0.4% on `incr-unchanged` builds of `deep-vector`)
- Mostly improvements, and digging in is hard since tools like rustfilt have
  slightly different output across the symbol mangling boundary. Regressions
  seem limited to a just a few benchmarks and are small enough that this seems
  acceptable.

#### Untriaged Pull Requests

- [#90235 Rollup of 6 pull requests](https://github.com/rust-lang/rust/pull/90235)
- [#90067 Rollup of 10 pull requests](https://github.com/rust-lang/rust/pull/90067)
- [#90054 Make new symbol mangling scheme default for compiler itself.](https://github.com/rust-lang/rust/pull/90054)
- [#89939 Rollup of 10 pull requests](https://github.com/rust-lang/rust/pull/89939)
- [#89858 Rollup of 6 pull requests](https://github.com/rust-lang/rust/pull/89858)
- [#89695 Move top part of print_item to Tera templates](https://github.com/rust-lang/rust/pull/89695)
- [#89608 Rollup of 12 pull requests](https://github.com/rust-lang/rust/pull/89608)
- [#89534 Introduce `tcx.get_diagnostic_name`](https://github.com/rust-lang/rust/pull/89534)
- [#89435 Rollup of 6 pull requests](https://github.com/rust-lang/rust/pull/89435)
- [#89405 Fix clippy lints](https://github.com/rust-lang/rust/pull/89405)
- [#89263 Suggest both of immutable and mutable trait implementations](https://github.com/rust-lang/rust/pull/89263)
- [#89165 Fix read_to_end to not grow an exact size buffer](https://github.com/rust-lang/rust/pull/89165)
- [#89125 Don't use projection cache or candidate cache in intercrate mode](https://github.com/rust-lang/rust/pull/89125)
- [#89124 Index and hash HIR as part of lowering](https://github.com/rust-lang/rust/pull/89124)
- [#89103 Migrate in-tree crates to 2021](https://github.com/rust-lang/rust/pull/89103)
- [#89100 resolve: Use `NameBinding` for local variables and generic parameters](https://github.com/rust-lang/rust/pull/89100)
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

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "Add new tier 3 target: `x86_64-unknown-none`" [rust#89062](https://github.com/rust-lang/rust/pull/89062)
  - @**Josh Triplett** nominated for T-compiler discussion
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-10-14.20.2354818/near/257547308)
  - PR probably needs stakeholders to move forward, see [comment](https://github.com/rust-lang/rust/pull/89062#issuecomment-941347194)
  - does `T-compiler` need to follow up on the discussion? [Josh's comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-10-14.20.2354818/near/257550014)
- "sess: default to v0 symbol mangling" [rust#89917](https://github.com/rust-lang/rust/pull/89917)
  - PR opened by @**davidtwco** 
  - @**mw** nominated to discuss @**wesley wiser** [suggestion](https://github.com/rust-lang/rust/pull/89917#issuecomment-951009529)
- "Enable verification for 1/32th of queries loaded from disk" [rust#90361](https://github.com/rust-lang/rust/pull/90361)
  - PR opened by @**simulacrum** 
  - PR should fix [rust#85783](https://github.com/rust-lang/rust/issues/85783)
  - nominated by @**mw** ([comment](https://github.com/rust-lang/rust/pull/90361#issuecomment-953852646)) to evaluate the perf regression and possible new fingerprint errors

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.
