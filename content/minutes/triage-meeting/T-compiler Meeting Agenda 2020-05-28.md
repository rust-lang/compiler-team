---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-05-28

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow (Friday 29th) we have a [design meeting: Compiler team 2020-2021 roadmap](https://github.com/rust-lang/compiler-team/issues/287)
- Major Changes Proposals:
  - Seconded proposals (in FCP)
    - "Reintegrate chalk into rustc" [#289](https://github.com/rust-lang/compiler-team/issues/289)
    - "RFC 2229 implementation plan" [#292](https://github.com/rust-lang/compiler-team/issues/292)
    - "create windows working group" [#293](https://github.com/rust-lang/compiler-team/issues/293)
    - "Remove Spans from HIR" [#294](https://github.com/rust-lang/compiler-team/issues/294)
    - "move leak-check to during coherence, candidate eval" [#295](https://github.com/rust-lang/compiler-team/issues/295)
    - "Introduce `ty_error`/`ty_error_with_message`/`ty_error_const` to construct error type or const" [#297](https://github.com/rust-lang/compiler-team/issues/297) (NEW)
  - New proposals (not seconded)
    - "Make `CONTRIBUTING.md` into a series of tutorials" [#296](https://github.com/rust-lang/compiler-team/issues/296)
  - Old proposals (not seconded)
    - "Integration of the Cranelift backend with rustc" [#270](https://github.com/rust-lang/compiler-team/issues/270)
    - "Decentralize queries" [#277](https://github.com/rust-lang/compiler-team/issues/277)
    - "illumos toolchain builds" [#279](https://github.com/rust-lang/compiler-team/issues/279)

## Beta-nominations

No beta nominations this time for `T-compiler` and `libs-impl`.

## Stable-nominations

No stable nominations this time for `T-compiler` and `libs-impl`.

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "Print environment variables accessed by rustc as special comments into depinfo files" [#71858](https://github.com/rust-lang/rust/pull/71858)
  - In FCP, disposition to merge.

No PR’s waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [5 P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [40 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+)
  - [17 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
  - Both P-high are assigned.
- [3 P-critical, 1 P-high, 3 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
  - There is only 1 P-critical assigned.
- [73 regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)
  - [21 of those are not prioritized](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-stable+-label%3AP-critical+-label%3AP-high+-label%3AP-medium+-label%3AP-low).

There are 3 more `P-critical` issues and 1 less `P-high` issues in comparison with last week.

### P-critical

- "Unsoundness due to variance of trait objects WRT associated types" [#71550](https://github.com/rust-lang/rust/issues/71550)
  - This issue is assigned to @spastorino and has an [PR open](https://github.com/rust-lang/rust/pull/71896).
  - Crater run from the fix suggested 16 non-spurious regressions.
  - Niko suspects we should land the PR, at the start of a release cycle.
- "Trait object with non-static lifetime is accepted where static lifetime is expected and required" [#72315](https://github.com/rust-lang/rust/issues/72315)
  - This issue is related to the previous one, and fixed by the same PR.
- "LLVM error: "Instruction does not dominate all uses!" on Windows" [#72470](https://github.com/rust-lang/rust/issues/72470)
  - It is also a regression
      - supposedly injected by [PR #71840](https://github.com/rust-lang/rust/pull/71840)
      - (assign to matthew jasper?)
  - Rejects valid code.
  - It's windows only.
  - This seems to indicate incorrect MIR being generated.
- "Incorrect non-exhaustive pattern error" [#72476](https://github.com/rust-lang/rust/issues/72476)
  - It is also a regression.
      - supposedly injected by [PR #71930](https://github.com/rust-lang/rust/pull/71930)
      - (assign to Nadrieril?)
      - Has [an open PR](https://github.com/rust-lang/rust/pull/72506) that likely will fix the issue.
  - Rejects valid code.
  - Really quickly detected (2 days).
  - Seems to be a problem when pattern matching on structs/enums which contain a projection.
- "error: expected identifier when building time-macros-impl v0.1.1" [#72545](https://github.com/rust-lang/rust/issues/72545)
  - It is also a regression.
  - Detected on day one.
  - Affects at least time, wasm-bindgen and syn.
  - It was also reported as https://github.com/rust-lang/rust/issues/72608

### Unassigned P-high regressions

- "ICE in _match.rs:1184:21 when building "gfx-backend-metal" on Nightly" [#72467](https://github.com/rust-lang/rust/issues/72467)
  - There's [a PR](https://github.com/rust-lang/rust/pull/72506) that may fix this issue.

## Performance logs

Triage done by njn.

Regressions
- [Update to LLVM 10](https://github.com/rust-lang/rust/pull/67759) ([instructions](https://perf.rust-lang.org/compare.html?start=0aa6751c19d3ba80df5b0b02c00bf44e13c97e80&end=82911b3bba76e73afe2881b732fe6b0edb35d5d3&stat=instructions:u)):
  Lots of grumbling about this. wg-prioritization will consider at their next meeting?
- [Intern predicates](https://github.com/rust-lang/rust/pull/72055) ([instructions](https://perf.rust-lang.org/compare.html?start=9310e3bd4f425f84fc27878ebf2bda1f30935a63&end=d9417b385145af1cabd0be8a95c65075d2fc30ff&stat=instructions:u)):
  @lcnr has promised a follow-up to at least partly fix it, currently in
  [#72494](https://github.com/rust-lang/rust/pull/72494).

Improvements
- [Remove ReScope](https://github.com/rust-lang/rust/pull/72362 ([instructions](https://perf.rust-lang.org/compare.html?start=3137f8e2d141d7d7c65040a718a9193f50e1282e&end=52b605c8cb2f730e607de0777a694cd1b9bb3e15&stat=instructions:u))
- [Dumb NRVO](https://github.com/rust-lang/rust/pull/72205) ([instructions](https://perf.rust-lang.org/compare.html?start=963bf528292d8f97104515e32908e30c2467b6a8&end=7f79e98c0356642db62e5113327e436c951e843d&stat=instructions:u))

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- Should we backout LLVM 10?
  - Update to LLVM 10 [#67759](https://github.com/rust-lang/rust/pull/67759)
  - It's generating slower code.
- "tag/niche terminology cleanup" [#72497](https://github.com/rust-lang/rust/pull/72497)

[libs-impl I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)

- "`nth_back()` for `Zip` returns wrong values" [#68536](https://github.com/rust-lang/rust/issues/68536)
- "Backtrace is <unknown> for dynamic library loaded through dlopen using absolute file path for rust >= 1.37.0 on OSX" [#67599](https://github.com/rust-lang/rust/issues/67599)

## WG checkins

@**WG-rustc-dev-guide** checkin by @**spastorino**:

>Accomplished:
>
>- [Overview chapter is now merged](https://github.com/rust-lang/rustc-dev-guide/pull/633)
>    - [You can view it here](https://rustc-dev-guide.rust-lang.org/overview.html)
>- Resolved tech debt:
>    - [Added some notes from estabank about diagnostics](https://github.com/rust-lang/rustc-dev-guide/pull/524)
>    - [Added more notes from ehuss about diagnostics](https://github.com/rust-lang/rustc-dev-guide/pull/716)
>    - [Added some guidelines from ehuss on CLI flags](https://github.com/rust-lang/rustc-dev-guide/pull/717)
>    - [Clean up the trait-solving chapters](https://github.com/rust-lang/rustc-dev-guide/pull/679)
>    - [Make it possible to link to specific items in the glossary](https://github.com/rust-lang/rustc-dev-guide/pull/662)
>    - [Finally finished the macro expansion chapter from discussions with petrochenkov (this is a long-standing hole)](https://github.com/rust-lang/rustc-dev-guide/pull/683)
>    - [Added some (limited) notes about parallel compilation](https://github.com/rust-lang/rustc-dev-guide/pull/695)
>    - [Added and updated notes on `rustc_interface` (thanks to georgewfraser)](https://rustc-dev-guide.rust-lang.org/rustc-driver.html)
>    - [Resolved some old TODOs around the type system](https://github.com/rust-lang/rustc-dev-guide/pull/697)
>    - [Added "Debugging rustc type layouts" (thanks Ralf!)](https://github.com/rust-lang/rustc-dev-guide/pull/720)
>- [39 merged PRs](https://github.com/rust-lang/rustc-dev-guide/pulls?page=1&q=is%3Aclosed+closed%3A%3E2020-04-08)
>- [15 closed issues (a few were very long-standing)](https://github.com/rust-lang/rustc-dev-guide/issues?q=is%3Aissue+is%3Aclosed+closed%3A%3E2020-04-08+)
>
>We've also had a few discussions to flesh out the guide vs forge content.
>
>Next steps:
>
>- Focus on triaging issues in the repo for a full sprint
>    - Try to close/consolidate old issues, resolve low-hanging fruit
>- Do a second pass about the organization of the guide
>    - Re-visit part 1, decide what we want to keep vs the forge vs the compiler-team repo
>    - Want to have a "Getting started" section at the front that has relatively straight-forward list of commands to do common things; move some content there from CONTRIBUTING.md
>    - Thinking about an instrospection section that contains debugging/profiling/walkthrough/tools/etc.

@**WG-llvm** checkin by @**nagisa**:

> No updates

