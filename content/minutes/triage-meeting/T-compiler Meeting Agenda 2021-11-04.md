---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-11-04

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copywrite/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: 2 months ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 4 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: about 34 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking Issue for cargo report future-incompat" [rust#71249](https://github.com/rust-lang/rust/issues/71249)
  - "Tracking issue for `#![feature(const_precise_live_drops)]`" [rust#73255](https://github.com/rust-lang/rust/issues/73255)
- Things in FCP (make sure you're good with it)
  - "Stabilize -Z strip as -C strip" [rust#90058](https://github.com/rust-lang/rust/pull/90058)
  - "Stabilize -Z symbol-mangling-version=v0 as -C symbol-mangling-version=v0" [rust#90128](https://github.com/rust-lang/rust/pull/90128)
- Accepted MCPs
  - "Tier 3 target proposal: x86_64-unknown-none (freestanding/bare-metal x86-64)" [compiler-team#462](https://github.com/rust-lang/compiler-team/issues/462)
- Finalized FCPs (disposition merge)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
  - "Tracking Issue for `destructuring_assignment`" [rust#71126](https://github.com/rust-lang/rust/issues/71126)
  - "Tracking Issue for relaxed struct unsizing rules" [rust#81793](https://github.com/rust-lang/rust/issues/81793)

### WG checkins

@_WG-rfc-2229_ checkin from @nikomatsakis and @Matthew Jasper ([previous checkin](https://hackmd.io/GtwX44b4QwOSG-G5ZRMqRA?view#WG-checkins)):

nikomatsakis:

> there is a regression I"ve been investigating
> but in general this work stabilized and is complete
> I think we can close down the WG probably

@_WG-rls2.0_ checkin from @**Lukas Wirth** ([previous checkin](https://hackmd.io/GtwX44b4QwOSG-G5ZRMqRA?view#WG-checkins)):

> Steering issue covered by this checkin, https://github.com/rust-analyzer/rust-analyzer/issues/10370.
> This sprint was mainly about internal improvements, especially our macro test suite has seen some drastic changes, our AST grammar representation has seen some slight adjustments and we implemented some missing span-related proc-macro ABI functions.
> We also changed how we represent implicit delimiters resulting from macro variables for the time being due to some troubles with how rustc handles them, see r-a#10623.
> Finally attribute expansion is now usable enough that r-a expands attributes by default.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "Fixes incorrect handling of ADT's drop requirements" [rust#90218](https://github.com/rust-lang/rust/pull/90218)
  - Felix [left a small comment](https://github.com/rust-lang/rust/pull/90218/files#r741145944)
  - [large perf regression](https://github.com/rust-lang/rust/pull/90218#issuecomment-957802382), opened issue [rust#90504](https://github.com/rust-lang/rust/issues/90504)
- :beta: "Prevent duplicate caller bounds candidates by exposing default substs in Unevaluated" [rust#90266](https://github.com/rust-lang/rust/pull/90266)
  - @**lcnr** nominated as it fixes `P-high` [rust#90195](https://github.com/rust-lang/rust/issues/90195)
- :beta: "Update odht crate to 0.3.1 (big-endian bugfix)" [rust#90403](https://github.com/rust-lang/rust/pull/90403)
  - @**simulacrum** nominated as it fixes `P-high` [rust#90123](https://github.com/rust-lang/rust/issues/90123)
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- :beta: "Show all Deref implementations recursively" [rust#90183](https://github.com/rust-lang/rust/pull/90183)
  - Seems fine, @**Joshua Nelson** [left a comment about perf. regression](https://github.com/rust-lang/rust/pull/90183#issuecomment-955834531), also noted by Felix in the perf. triage report
  - @**GuillaumeGomez** @**jsha** any insights on this?
- :beta: "rustdoc: Go back to loading all external crates unconditionally" [rust#90489](https://github.com/rust-lang/rust/pull/90489)
  - workaround for `P-critical` [rust#84738](https://github.com/rust-lang/rust/issues/84738) to load all creates at once
  - seems fine for backport
- :beta: "Split doc_cfg and doc_auto_cfg features" [rust#90502](https://github.com/rust-lang/rust/pull/90502)
  - partial work to fix `P-high` [rust#90497](https://github.com/rust-lang/rust/issues/90497)
- :stable: "rustdoc: Go back to loading all external crates unconditionally" [rust#90489](https://github.com/rust-lang/rust/pull/90489)
  - see beta nomination

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "Make specifying repr optional for fieldless enums" [rust#88203](https://github.com/rust-lang/rust/pull/88203) (last review activity: 2 months ago)
  - review seems to point out there's some more work to do, [see comment](https://github.com/rust-lang/rust/pull/88203#issuecomment-918528891)
  - PR author @**fee1-dead** set flag to `S-waiting-on-team`
- "Change default panic strategy to abort for wasm32-unknown-emscripten" [rust#89762](https://github.com/rust-lang/rust/pull/89762)
  - Tier 2 target
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-10-28.20.2354818/near/259394157). This PR needs:
    - It's changing a default: can people opt into the old panic-unwind setting?
    - Does a change like this needs an MCP?
    - who are the stakeholders for the emscripten backend?
    - consensus seems [to let it move forward](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-10-28.20.2354818/near/259395704)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+sort%3Acreated-asc)

- "Add codegen option for branch protection and pointer authentication on AArch64" [rust#88354](https://github.com/rust-lang/rust/pull/88354) (last review activity: 2 months ago)
- "Check for duplicate attributes." [rust#88681](https://github.com/rust-lang/rust/pull/88681) (last review activity: about 59 days ago)
- "Mir-Opt for copying enums with large discrepancies" [rust#85158](https://github.com/rust-lang/rust/pull/85158) (last activity: 3 days ago)
- Support #[global_allocator] without the allocator shim" [rust#86844](https://github.com/rust-lang/rust/pull/86844) (last review activity: 24 days ago)
  - @**pnkfelix** self assigned
- "Makes docs for references a little less confusing" [rust#88361](https://github.com/rust-lang/rust/pull/88361) (last review activity: none)
  - rust-highfive assigned to @**Josh Triplett** (maybe another reviewer?)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [80 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [56 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 5 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 48 P-high, 87 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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
  - fix [rust#90403](https://github.com/rust-lang/rust/pull/90403) is merged (beta-nominated)
- "regression: rustc suggests `.as_ref()` at incorrect location and other spans have regressed" [rust#90286](https://github.com/rust-lang/rust/issues/90286)
  - confusing wrong diagnostic
  - currently unassigned
- "DWARF info for `static` vars in lib crates has stopped being produced reliably in LTO builds" [rust#90357](https://github.com/rust-lang/rust/issues/90357)
  - Felix self-assigned
  - bisection seems to point to PR [rust#89041](https://github.com/rust-lang/rust/pull/89041)
- "warn(must_not_suspend) started being raised incorrectly when moving from stable to nightly" [rust#90459](https://github.com/rust-lang/rust/issues/90459)
  - currently unassigned
  - should be fixed by [rust#89826](https://github.com/rust-lang/rust/pull/89826) (landed on master, not yet in beta)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "Undefined reference to `getauxval` in function `init_have_lse_atomics` when compiling to nightly `aarch64-unknown-linux-musl`" [rust#89626](https://github.com/rust-lang/rust/issues/89626)
  - unassigned, but:
  - fixed by [libc#2272](https://github.com/rust-lang/libc/pull/2272)
  - and [rust#90527](https://github.com/rust-lang/rust/pull/90527)

## Performance logs

> [triage logs for 2021-11-02](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-11-02.md)

Summary: The only significant regressions were:

1. two PRs that slowed down doc generation, and
2. some slowdown from the new lints to flag occurrences of Unicode bidirectional control characters. The doc generation regression is being investigated.

Triage done by **@pnkfelix**.
Revision range: [3c8f001d454b1b495f7472d8430ef8fdf10aac11..6384dca100f3cedfa031a9204586f94f8612eae5](https://perf.rust-lang.org/?start=3c8f001d454b1b495f7472d8430ef8fdf10aac11&end=6384dca100f3cedfa031a9204586f94f8612eae5&absolute=false&stat=instructions%3Au)

6 Regressions, 3 Improvements, 1 Mixed; 4 of them in rollups
39 comparisons made in total.

30 Untriaged Pull Requests

#### Regressions

Fixes incorrect handling of ADT's drop requirements [#90218](https://github.com/rust-lang/rust/issues/90218)

- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c4ff03f689c03d73d3a8af49611b1f2b54d6a300&end=85c0558d032e204f4f4ed6137f3119cb92dbc684&stat=instructions:u) (up to 5.3% on `full` builds of `regression-31157`)
- regression-31157 check regressed by 4.7% on incr and 5.3 on full.
- issue-46449 check regressed by 1.89% on incr-full.
- wg-grammar regressed by 1.3-1.4% in a bunch of scenarios.
- but otherwise, this does not seem too bad. I think we should keep this PR approved for backport, while also look into fixing the regression on nightly.
- filed [#90504](https://github.com/rust-lang/rust/issues/90504) as followup investigation issue.

Rollup of 3 pull requests [#90387](https://github.com/rust-lang/rust/issues/90387)

- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c390d69a615f095208ac94841f3310268521b2ee&end=df76418f1ee1a1973e862828ae8520abb6c3794a&stat=instructions:u) (up to 2.4% on `full` builds of `inflate`)
- 2 of the 3 pull requests appear trivial (fixing typos and removing extra lines in documentation), which leaves [PR #90376](https://github.com/rust-lang/rust/pull/90376) as the main suspect.
- Meanwhile, all [PR #90376](https://github.com/rust-lang/rust/pull/90376) does, according to its description, is move code around, remove dead code, and inline a singly called function.
- treating as alignment artifacts from code rearrangement. We tend not to micro-optimize that in the compiler.

Rollup of 8 pull requests [#90416](https://github.com/rust-lang/rust/issues/90416)

- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2b643e987173b36cb0279a018579372e31a35776&end=9f13083542cb2b9fce83ed8a50238e4a6386820f&stat=instructions:u) (up to 2.7% on `full` builds of `helloworld`)
- All the significant perf regressions are due to doc generation (many regressed by 1.0-2.7%).
- filed [#90512](https://github.com/rust-lang/rust/issues/90512) as followup investigation issue.

Rollup of 5 pull requests [#90422](https://github.com/rust-lang/rust/issues/90422)

- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2609fab8e46414333aa68412134df65c7fcd1a77&end=e249ce6b2345587d6e11052779c86adbad626dff&stat=instructions:u) (up to 5.8% on `full` builds of `tokio-webpush-simple`)
- All the significant perf regressions are due to doc generation (many regressed by 1.0-5.8%).
- discussion is ongoing in [PR 90183](https://github.com/rust-lang/rust/pull/90183)

impl Pattern for char array [#86336](https://github.com/rust-lang/rust/issues/86336)

- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=68b554e6af18726fe6fa8de2134c59c441e0b019&end=c7e4740ec18996e082fe6e29ebf7efdc7dda418f&stat=instructions:u) (up to 0.6% on `full` builds of `deeply-nested-async`)
- The only benchmarks that regressed did so by a small amount, percentage wise 0.2-0.6%; the benchmarks that did regress in that fashion are: `deeply-nested-async`, `helloworld`, `unify-linearly`.
- I don't think its worth investing effort trying to figure out the root cause of this minor regression, unless someone wants to take it on as a self-educating exercise.

Update cargo [#90490](https://github.com/rust-lang/rust/issues/90490)

- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=6225262562f06d8a52624e7898098b58789a6ae5&end=dca3f1b786efd27be3b325ed1e01e247aa589c3b&stat=instructions:u) (up to 2.0% on `incr-patched: println` builds of `regression-31157`)
- Only regression-31157 opt regressed, by 1.6-2.0%.
- It is not worth investing effort trying to figure out the root cause of this limited regression.
- (Note: regression [#31157](https://github.com/rust-lang/rust/issues/31157) was itself put in to catch a performance regression with respect to time and RAM, but that regression was more like 1,882% in time and 10x in space.)

#### Improvements

- Rollup of 4 pull requests [#90314](https://github.com/rust-lang/rust/issues/90314)
- Use SortedMap in HIR. [#90145](https://github.com/rust-lang/rust/issues/90145)
- Revert "Add rustc lint, warning when iterating over hashmaps" [#90380](https://github.com/rust-lang/rust/issues/90380)

#### Mixed

[master] Fix CVE-2021-42574 [#90462](https://github.com/rust-lang/rust/issues/90462)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=ff0e14829e1806ca0d4226595f7fdf3e8658758f&end=db14a17e69af2a2e241ce149a501a5281811fe06&stat=instructions:u) (up to -0.5% on `full` builds of `deeply-nested-async`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ff0e14829e1806ca0d4226595f7fdf3e8658758f&end=db14a17e69af2a2e241ce149a501a5281811fe06&stat=instructions:u) (up to 14.2% on `incr-unchanged` builds of `coercions`)
- Filed [issue #90514](https://github.com/rust-lang/rust/issues/90514) for follow up investigation of coercions regression.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.
