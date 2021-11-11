---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-11-11

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copywrite/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
  - A new PR has been filed to include the Playstation Vita as tier 3 target. [This comment](https://github.com/rust-lang/rust/pull/90584#issuecomment-963675057) suggests the situation could be similar to other end-of-life proprietary platforms. @**Josh Triplett** provided tips for an MCP
- @**Hans Kratz** is gathering interest around the macOS target platform and build a notification group who can respond to issues, [see Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Create.20a.20macos.20notification.20group.20compiler-team.23470).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Unstable lints should be considered unknown" [compiler-team#469](https://github.com/rust-lang/compiler-team/issues/469)
- Old MCPs (not seconded, take a look)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: GH 2 months ago, zulip 1 month ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: GH 4 months ago, zulip 40 days)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: about 41 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking Issue for cargo report future-incompat" [rust#71249](https://github.com/rust-lang/rust/issues/71249)
  - "Tracking Issue for inline assembly (`asm!`)" [rust#72016](https://github.com/rust-lang/rust/issues/72016)
  - "Tracking issue for `#![feature(const_precise_live_drops)]`" [rust#73255](https://github.com/rust-lang/rust/issues/73255)
- Things in FCP (make sure you're good with it)
  - "Create a macos notification group" [compiler-team#470](https://github.com/rust-lang/compiler-team/issues/470)
  - "Stabilize -Z strip as -C strip" [rust#90058](https://github.com/rust-lang/rust/pull/90058)
  - "Stabilize -Z symbol-mangling-version=v0 as -C symbol-mangling-version=v0" [rust#90128](https://github.com/rust-lang/rust/pull/90128)
- Accepted MCPs
  - "Tier 3 target proposal: x86_64-unknown-none (freestanding/bare-metal x86-64)" [compiler-team#462](https://github.com/rust-lang/compiler-team/issues/462)
- Finalized FCPs (disposition merge)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
  - "Tracking Issue for `destructuring_assignment`" [rust#71126](https://github.com/rust-lang/rust/issues/71126)
  - "Tracking Issue for relaxed struct unsizing rules" [rust#81793](https://github.com/rust-lang/rust/issues/81793)
  - "GATs: Decide whether to have defaults for `where Self: 'a`" [rust#87479](https://github.com/rust-lang/rust/issues/87479)
  - "Stabilize `const_raw_ptr_deref` for `*const T`" [rust#89551](https://github.com/rust-lang/rust/pull/89551)

### WG checkins

@_WG-self-profile_ from @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/eviBs_qISRC9mlDve0cSRQ?view#WG-checkins)):

> The compiler can record artifact sizes (e.g. size of object files, rlibs, incr. comp. cache, etc) now and will do so by default when invoking it with -Zself-profile. The summarize tool will display these artifact sizes in a separate table. @rylev is working hard on also showing them on perf.rlo -- which turned out to be a little more tricky than expected but we'll get there `:)`This will be very useful for gauging the impact a PR might have on binary sizes and the like.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "Apply adjustments for field expression even if inaccessible" [rust#90508](https://github.com/rust-lang/rust/pull/90508)
  - fixes a `P-medium` [rust#90483](https://github.com/rust-lang/rust/issues/90483)
  - nominated by @**davidtwco** since it's a regression on stable ([comment](https://github.com/rust-lang/rust/pull/90508#issuecomment-962547437))
- :beta: "Properly register text_direction_codepoint_in_comment lint." [rust#90626](https://github.com/rust-lang/rust/pull/90626)
  - Fixes [rust#90614](https://github.com/rust-lang/rust/issues/90614)
  - nominated by @**Esteban Küber**
- :beta: "Warn for variables that are no longer captured" [rust#90597](https://github.com/rust-lang/rust/pull/90597)
  - [nominated by @**nikomatsakis** ](https://github.com/rust-lang/rust/pull/90597#issuecomment-961557867), fixes incorrect migration that can cause subtle changes in execution order
- :stable: "Warn for variables that are no longer captured" [rust#90597](https://github.com/rust-lang/rust/pull/90597)
  - see beta nomination

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- :beta: "Show all Deref implementations recursively" [rust#90183](https://github.com/rust-lang/rust/pull/90183)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-11-04.20.2354818/near/260277835)
  - waiting for feedback from T-rustdoc
- :beta: "rustdoc: Go back to loading all external crates unconditionally" [rust#90489](https://github.com/rust-lang/rust/pull/90489)
  - backport decision is waiting for [rust#90489](https://github.com/rust-lang/rust/issues/90489)
- :stable: "rustdoc: Go back to loading all external crates unconditionally" [rust#90489](https://github.com/rust-lang/rust/pull/90489)
  - same as above

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "Wrap libraries in linker groups, allowing backwards/circular references" [rust#85805](https://github.com/rust-lang/rust/pull/85805)
  - [Discussed a while ago](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-08-05.20.2354818/near/248486248)
  - @**Josh Triplett** will rework this patch to provide a separate option that enables linker groups ([comment](https://github.com/rust-lang/rust/pull/85805#issuecomment-959876580))
  - Can `S-waiting-on-team` be removed?
- "Change default panic strategy to abort for wasm32-unknown-emscripten" [rust#89762](https://github.com/rust-lang/rust/pull/89762)
  - mentioned in a [previous meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-10-28.20.2354818/near/259395704), seems it can move forward?
  - Can `S-waiting-on-team` be removed?

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)

- "Add codegen option for branch protection and pointer authentication on AArch64" [rust#88354](https://github.com/rust-lang/rust/pull/88354) (last review activity: 2 months ago)
  - last comment is paging @**nagisa**
- "Check for duplicate attributes." [rust#88681](https://github.com/rust-lang/rust/pull/88681) (last review activity: about 59 days ago)
  - last comment is paging @**Vadim Petrochenkov** but review can be reassigned
- "Makes docs for references a little less confusing" [rust#88361](https://github.com/rust-lang/rust/pull/88361) (last review activity: none)
  - rust-highfive assigned to @**Josh Triplett** but review can be reassigned
- "Suggest `i += 1` when we see `i++` or `++i`" [rust#88672](https://github.com/rust-lang/rust/pull/88672) (last review activity: 2 months ago)
- "asm/arm: allow r9 when usable, make diagnostics more specific" [rust#88879](https://github.com/rust-lang/rust/pull/88879) (last review activity: about 57 days ago)
  - last comment is paging @**Amanieu**

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [79 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [55 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 5 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 48 P-high, 84 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)

- No `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)

- "Index out of bounds when running `cargo doc` in `rustc_metadata/src/creader.rs`" [rust#84738](https://github.com/rust-lang/rust/issues/84738)
  - old issue reprioritized as P-critical by `T-rustdoc`
  - since 1.56 it breaks doc builds for some crates) (note: [this comment](https://github.com/rust-lang/rust/issues/84738#issuecomment-950370740))
  - under scrutiny by `T-rustdoc`

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "Incremental compilation fails in all cases on SystemZ (s390x)" [rust#90123](https://github.com/rust-lang/rust/issues/90123)
  - going to be closed by [rust#90403](https://github.com/rust-lang/rust/pull/90403) (beta-accepted)
- "regression: rustc suggests `.as_ref()` at incorrect location and other spans have regressed" [rust#90286](https://github.com/rust-lang/rust/issues/90286)
  - confusing wrong diagnostic
  - @**pnkfelix** self-assigned
- "DWARF info for `static` vars in lib crates has stopped being produced reliably in LTO builds" [rust#90357](https://github.com/rust-lang/rust/issues/90357)
  - @**pnkfelix** self-assigned
- "warn(must_not_suspend) started being raised incorrectly when moving from stable to nightly" [rust#90459](https://github.com/rust-lang/rust/issues/90459)
  - currently unassigned
  - should be fixed by [rust#89826](https://github.com/rust-lang/rust/pull/89826) (it's on `master` and beta-accepted)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "Undefined reference to `getauxval` in function `init_have_lse_atomics` when compiling to nightly `aarch64-unknown-linux-musl`" [rust#89626](https://github.com/rust-lang/rust/issues/89626)
  - unassigned, but:
  - fixed by [libc#2272](https://github.com/rust-lang/libc/pull/2272)
  - and [rust#90527](https://github.com/rust-lang/rust/pull/90527)

## Performance logs

> [triage logs for 2021-11-09](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-11-09.md)

Largely a positive week despite taking a significant performance hit from turning on incremental compilation verification for a subsection of the total queries that the compiler does in order to more quickly catch bugs in incremental compilation. Luckily optimizations in bidi detection brought large performance improvements.

Triage done by **@rylev**.
Revision range: [6384dca100f3cedfa031a9204586f94f8612eae5..eee8b9c7bafade55981d155dae71657f1cc55a22](https://perf.rust-lang.org/?start=6384dca100f3cedfa031a9204586f94f8612eae5&end=eee8b9c7bafade55981d155dae71657f1cc55a22&absolute=false&stat=instructions%3Au)

2 Regressions, 4 Improvements, 4 Mixed; 1 of them in rollups
29 Untriaged Pull Requests
45 comparisons made in total

#### Regressions

Implement `RefUnwindSafe` for `Rc<T>` [#87467](https://github.com/rust-lang/rust/issues/87467)

- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=0b4ac62ddaf9ee01b8aaf9dd7097f1f541d64551&end=4061c0407978a00c5c2518d898ad8406da28c106&stat=instructions:u) (up to 1.1% on `full` builds of `cargo`)
- Unsurprising regression in one instance of a rustdoc run since `get_auto_trait_impls` has bad algoritmic complexity. This issue is being tracked somewhat [here](https://github.com/rust-lang/rust/issues/90512).

Enable verification for 1/32th of queries loaded from disk [#90361](https://github.com/rust-lang/rust/issues/90361)

- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3e3890c9d4064253aaa8c51f5d5458d2dc6dab77&end=495322d776fd6f679cd8cd4ca02b8fa834da654b&stat=instructions:u) (up to 6.3% on `incr-unchanged` builds of `coercions`)
- Allows for verification of incremental compilation results to more easily catch bugs (which have unfortunately been a bit too common in the past).
- As noted in the PR this is a regression of at most 7% on coercions opt incr-unchanged, and typically less than 0.5% on other benchmarks (largely limited to incr-unchanged).
- The PR author and reviewer reviewed the regression impact and it was deemed acceptable.

#### Improvements

- Optimize bidi character detection. [#90559](https://github.com/rust-lang/rust/issues/90559)
- Fix ICE when rustdoc is scraping examples inside of a proc macro [#90583](https://github.com/rust-lang/rust/issues/90583)
- Replace some uses of vec.drain(..) with vec.into_iter() [#90655](https://github.com/rust-lang/rust/issues/90655)
- rustdoc: Cleanup `clean::Impl` and other parts of `clean` [#90675](https://github.com/rust-lang/rust/issues/90675)

#### Mixed

rustdoc: Add `DocVisitor` and use it where possible [#90475](https://github.com/rust-lang/rust/issues/90475)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=baba6687df3e83fdb15cc6ec239b4a1c75a30505&end=4ff90232a0c0c6adb9d2052da2206b26c3c723e4&stat=instructions:u) (up to -0.8% on `full` builds of `serde`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=baba6687df3e83fdb15cc6ec239b4a1c75a30505&end=4ff90232a0c0c6adb9d2052da2206b26c3c723e4&stat=instructions:u) (up to 0.5% on `full` builds of `webrender`)
- The regressions have [already been justified](https://github.com/rust-lang/rust/pull/90475#issuecomment-959808629), but in short the improvements outweigh the regressions, and the code is much cleaner as a result.

Improve error when an .rlib can't be parsed [#88368](https://github.com/rust-lang/rust/issues/88368)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=46b8e7488eae116722196e8390c1bd2ea2e396cf&end=5fa94f3c57e27a339bc73336cd260cd875026bd1&stat=instructions:u) (up to -0.3% on `full` builds of `externs`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=46b8e7488eae116722196e8390c1bd2ea2e396cf&end=5fa94f3c57e27a339bc73336cd260cd875026bd1&stat=instructions:u) (up to 0.5% on `incr-unchanged` builds of `helloworld`)
- It was pointed out that this could be simply due to a different binary layout impacting performance.
- When taking into account significance factor, the improvements outweigh the regressions, and so it's likely not worth it to investigate deeper.

Rollup of 4 pull requests [#90695](https://github.com/rust-lang/rust/issues/90695)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=515472757d2991e280965d7c1d235cfbb6ceb006&end=c57704f3eb4319cc93513c232e9c434a73af46d2&stat=instructions:u) (up to -0.5% on `full` builds of `deeply-nested-async`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=515472757d2991e280965d7c1d235cfbb6ceb006&end=c57704f3eb4319cc93513c232e9c434a73af46d2&stat=instructions:u) (up to 0.3% on `incr-unchanged` builds of `html5ever`)
- Nothing jumps out as a possible cause for this but luckily the perf changes in question are small.

Don't destructure args tuple in format_args! [#90485](https://github.com/rust-lang/rust/issues/90485)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=c57704f3eb4319cc93513c232e9c434a73af46d2&end=60952bc3da442cf2ea11dcc9c80a461a659bbcd7&stat=instructions:u) (up to -4.0% on `incr-unchanged` builds of `inflate`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c57704f3eb4319cc93513c232e9c434a73af46d2&end=60952bc3da442cf2ea11dcc9c80a461a659bbcd7&stat=instructions:u) (up to 1.3% on `incr-patched: println` builds of `html5ever`)
- The regressions seem to be coming in `expand_crate` which might be impacted by this change. However, nothing stands out immediately as a definite cause for concern.
- Left a [comment](https://github.com/rust-lang/rust/pull/90485#issuecomment-964330008) for the author and reviewer to ask if they have an ideas before we investigate more.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

[T-compiler](https://github.com/rust-lang/rust/labels/I-compiler-nominated)

- "Tracking issue for plugin stabilization (`plugin`, `plugin_registrar` features)" [rust#29597](https://github.com/rust-lang/rust/issues/29597)
  - nominated by @**Josh Triplett**, [asks in comment](https://github.com/rust-lang/rust/issues/29597#issuecomment-965644083): "what's still using plugin support?"
- "Change `char` type in debuginfo to DW_ATE_UTF" [rust#89887](https://github.com/rust-lang/rust/pull/89887)
  - nominated by @**wesley wiser** [in comment](https://github.com/rust-lang/rust/pull/89887#issuecomment-965530540)
- "sess: default to v0 symbol mangling" [rust#89917](https://github.com/rust-lang/rust/pull/89917)
  - @**mw** nominated to discuss Wesley's suggestion [in this comment](https://github.com/rust-lang/rust/pull/89917#issuecomment-951009529)
- "implement aspect-oriented programming (AOP) for Rust" [rust#90721](https://github.com/rust-lang/rust/pull/90721)
  - @**mw** suggested to first file an MCP
  - @**davidtwco** is a colleague of the author at Huawei and can coordinate between the compiler team and the author where required.
  - Does this might be of interest for `T-lang`?
- "Miscompilation where binding only some fields leaks the others" [rust#90752](https://github.com/rust-lang/rust/issues/90752)
  - @**tmandry** nominated
  - [great writeup](https://github.com/rust-lang/rust/issues/90752#issuecomment-965822895) from @**Dylan MacKenzie (ecstatic-morse)**

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.
