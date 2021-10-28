---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-04-08

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow, at 10 AM EST, is the T-compiler planning meeting for the upcoming cycle

- New MCPs (take a look, see if you like them!)
  - "A --temps-dir option for specifying where the intermediate files are written" [compiler-team#423](https://github.com/rust-lang/compiler-team/issues/423)
- Old MCPs (not seconded, take a look)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  - "Eagerly construct bodies of THIR" [compiler-team#409](https://github.com/rust-lang/compiler-team/issues/409)
  - "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
  - "Rename -Cllvm-args to something backend agnostic" [compiler-team#421](https://github.com/rust-lang/compiler-team/issues/421)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Lang Item for Transmutability" [compiler-team#411](https://github.com/rust-lang/compiler-team/issues/411)
  - "Switch JSON serialization from rustc_serialize to serde" [compiler-team#418](https://github.com/rust-lang/compiler-team/issues/418)
  - "Lint large assignments and locals" [compiler-team#420](https://github.com/rust-lang/compiler-team/issues/420)
  - "Update the existing musl targets to be dynamically linked." [compiler-team#422](https://github.com/rust-lang/compiler-team/issues/422)
- Accepted MCPs
  - "Filter out query machinery from compiler backtraces by default" [compiler-team#410](https://github.com/rust-lang/compiler-team/issues/410)
- Finalized FCPs (disposition merge)
  - "Allow qualified paths in struct construction (both expressions and patterns)" [rust#80080](https://github.com/rust-lang/rust/pull/80080)
  - "Stabilize cmp_min_max_by" [rust#81047](https://github.com/rust-lang/rust/pull/81047)
  - "Adding diesel to the cargotest suite" [rust#81507](https://github.com/rust-lang/rust/pull/81507)
  - "Stabilize `peekable_peek_mut`" [rust#81938](https://github.com/rust-lang/rust/pull/81938)
  - "reduce threads spawned by ui-tests" [rust#81942](https://github.com/rust-lang/rust/pull/81942)
  - "Add strong_count mutation methods to Rc" [rust#83476](https://github.com/rust-lang/rust/pull/83476)

### WG checkins

@*WG-rfc-2229* checkin by @**Matthew Jasper** and @**nikomatsakis**:
> * Feature mostly works and is avaiable under #![feature(capture_disjoint_fields)]
> * We have handled all edge cases we are aware of including patterns, FRU syntax, references in move closures, handling unsafe
> * Migration lint for drop reordering is supported under #[deny(disjoint_capture_drop_reorder)] and is supported using rust fix.
> * On going work to support migration for auto-traits, and diagnostics


@*WG-polymorphization* checkin by @**davidtwco**:
> There's nothing to report from the polymorphization working group.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No backport nominations for `T-compiler` this time.

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No backport nominations for `T-libs-impl` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- :beta: "Fix Self keyword doc URL conflict on case insensitive file systems (until definitely fixed on rustdoc)" [rust#83678](https://github.com/rust-lang/rust/pull/83678)
  - opened by @**GuillaumeGomez** 
  - approved by @**Joshua Nelson**
  - Fixes [#80504](https://github.com/rust-lang/rust/issues/80504) and prevents [#83154](https://github.com/rust-lang/rust/issues/83154) and related [rust-lang/rustup#2694](https://github.com/rust-lang/rustup/issues/2694)
  - mentioned last week -> postponed backport decision after checking if patch actually fixes the issue (@**Joshua Nelson** [confirms PR fixes the issue](https://github.com/rust-lang/rustup/issues/2694#issuecomment-812918127))
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "add dynamically-linked musl targets" [rust#82556](https://github.com/rust-lang/rust/pull/82556)
  - [actionables from the meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202021-03-26.20musl.20linking.20compiler-team.23416)
    - Written an [MCP](https://github.com/rust-lang/compiler-team/issues/422), verify whether we can give warnings, and have the team sign it off
    - Finally a blog post to give a heads up and guidance [comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202021-03-26.20musl.20linking.20compiler-team.23416/near/231979422)
    - [mentioned last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-04-01.20.2354818/near/232763387): give feedback to author before closing the issue and move on

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 4 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 88 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "`probe-stack=inline-asm` generates wrong DWARF information" [rust#83139](https://github.com/rust-lang/rust/issues/83139)
  - partially mitigated by @**pnkfelix** in PR [#82412](https://github.com/rust-lang/rust/pull/83412), which reverts PR [#77885](https://github.com/rust-lang/rust/pull/77885)
  - from the PR comment: after we resolve [#83139](https://github.com/rust-lang/rust/issues/83139) (potentially by backporting a fix to LLVM or by deciding that one cannot rely on the quality of our DWARF output in the manner described in #83139), we can change this back

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2021-04-06 Full triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-04-06.md)

A pretty major week for [memory usage improvements](https://perf.rust-lang.org/?start=4896450e7e0a522486b4d3a8d360ac4e1d2072a0&end=d32238532138485c80db4f2cd596372bce214e00&absolute=false&stat=max-rss), while wall time performance
largely stayed neutral, with an average of ~20% gains on memory usage for
release builds, and 5% on check builds, due to an update in the default allocator
used (to a more recent jemalloc).

Triage done by **@simulacrum**: 1 Regressions, 4 Improvements, 0 Mixed

#### Regressions

add OR_PATTERNS_BACK_COMPAT lint [#83468](https://github.com/rust-lang/rust/issues/83468)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a207871d5c22f89093085da89becbb636a45ef89&end=36bcf4069717b9dff90270d13b53a3b130329960&stat=instructions:u) (up to 1.2% on `incr-patched: println` builds of `coercions-debug`)
- Relatively small hit on a number of benchmarks. Likely largely unavoidable.

#### Improvements

- Stream the dep-graph to a file instead of storing it in-memory [#82780](https://github.com/rust-lang/rust/pull/82780)
- panic early when `TrustedLen` indicates a `length > usize::MAX` [#83726](https://github.com/rust-lang/rust/issues/83726)
- Use tikv-jemallocator in rustc/rustdoc in addition to jemalloc-sys when enabled. [#83152](https://github.com/rust-lang/rust/issues/83152)

#### Nags requiring follow up

- The [issue](https://github.com/rust-lang/rust/pull/82964#issuecomment-800663588) from three weeks ago has stalled.
  Likely this needs someone to mentor the author, or to take over the
  investigation.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "`undefined reference to` linker error when using dylibs" [rust#82151](https://github.com/rust-lang/rust/issues/82151)
  - (postponed from previous [meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-03-18.20.2354818/near/230879756))
- "add dynamically-linked musl targets" [rust#82556](https://github.com/rust-lang/rust/pull/82556)
  - (see item in S-waiting-on-team)
- "Add default search path to `Target::search()`" [rust#83800](https://github.com/rust-lang/rust/pull/83800)
  - `I-nominated` by @**nagisa**: [see comment](https://github.com/rust-lang/rust/pull/83800#issuecomment-813990895)

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.