---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-03-04

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- New MCPs (take a look, see if you like them!)
  - "Filter out query machinery from compiler backtraces by default" [compiler-team#410](https://github.com/rust-lang/compiler-team/issues/410)
- Old MCPs (not seconded, take a look)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
- Pending FCP requests (check your boxes!)
  - "Adding diesel to the cargotest suite" [rust#81507](https://github.com/rust-lang/rust/pull/81507)
  - "add dynamically-linked musl targets" [rust#82556](https://github.com/rust-lang/rust/pull/82556)
- Things in FCP (make sure you're good with it)
  - "Eagerly construct bodies of THIR" [compiler-team#409](https://github.com/rust-lang/compiler-team/issues/409)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking Issue for ASCII methods on OsStr" [rust#70516](https://github.com/rust-lang/rust/issues/70516)
  - "Tracking Issue for str_split_once" [rust#74773](https://github.com/rust-lang/rust/issues/74773)
  - "Lint for unused borrows as part of `UNUSED_MUST_USE`" [rust#76894](https://github.com/rust-lang/rust/pull/76894)
  - "[librustdoc] Only split lang string on `,`, ` `, and `\t`" [rust#78429](https://github.com/rust-lang/rust/pull/78429)
  - "Stabilize `unsafe_op_in_unsafe_fn` lint" [rust#79208](https://github.com/rust-lang/rust/pull/79208)
  - "Make rustdoc lints a tool lint instead of built-in" [rust#80527](https://github.com/rust-lang/rust/pull/80527)

### WG checkins

@*WG-rls2.0* by @**matklad** 
We've finished our first 6 weeks "sprint" ([tracking issue](https://github.com/rust-analyzer/rust-analyzer/issues/7325#issuecomment-788222235)) with mixed results
- rust-analyzer now supprts items declared inside function bodies
- we are preparing to enable proc-macro suport by default. In particular, rust-analyzer suppors asynchronous execution of build scripts and loading of proc-macro.
- we've switched macro-by-example parser to use a proper NFA, getting closer to parity with rustc at the cost of 2x worser expansion performance :(
- "new mutable immutable syntax trees" work is still not finished, but it has progressed enough to rewrite one assist to confirm that the new API works and is significantly more ergonomic. 

@*WG-self-profile* by @**Wesley Wiser**:
> - We released `measureme@9.1` last week :tada: ([release notes](https://github.com/rust-lang/measureme/releases/tag/9.1.0))
>   - The biggest feature is @eddyb's support for hardware performance counters
>   - We've updated rustc to use the new version
>   - This has unblocked [@eddyb's PR](https://github.com/rust-lang/rust/pull/78781) to use hardware performance counters for `-Zself-profile`

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix popping singleton paths in when generating E0433" [rust#82259](https://github.com/rust-lang/rust/pull/82259)
  - opened by [osa1](https://github.com/osa1)
  - fixes [#82156](https://github.com/rust-lang/rust/issues/82156), a `P-medium` ICE instead of emitting a syntax error when calling `super()`
  - approved by @**Vadim Petrochenkov** 
- :stable: "Fix popping singleton paths in when generating E0433" [rust#82259](https://github.com/rust-lang/rust/pull/82259)
  - see above: safe for stable backport?
- :beta: "libtest: Fix unwrap panic on duplicate TestDesc" [rust#82274](https://github.com/rust-lang/rust/pull/82274)
  - opened by @**Anders Kaseorg** 
  - approved by @**simulacrum**, [raises a question](https://github.com/rust-lang/rust/pull/82274#issuecomment-781635206) about this patch that is addressed in the follow-up PR [#82300](https://github.com/rust-lang/rust/pull/82300)
- :beta: "Revert LLVM D81803 because it broke Windows 7" [rust#82605](https://github.com/rust-lang/rust/pull/82605)
  - opened by @**cuviper**
  - approved by   @**Nikita Popov** 
  - fix a critical issue [#82605](https://github.com/rust-lang/rust/pull/82605) blocking build any archives on Windows 7 (issue [#81051](https://github.com/rust-lang/rust/issues/81051))

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- :beta: "[beta] Fix TcpListener::accept() on x86 Android on beta by disabling the use of accept4." [rust#82476](https://github.com/rust-lang/rust/pull/82476)

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "reduce threads spawned by ui-tests" [rust#81942](https://github.com/rust-lang/rust/pull/81942)
  - opened by @**The 8472|239181** (@**The 8472|330154**?) 
  - @**simulacrum** [raises concerns about](https://github.com/rust-lang/rust/pull/81942#issuecomment-778685649) maintaining the complexity cost, suggests more eyeballs on this PR
  - @**nagisa** [raise a concern](https://github.com/rust-lang/rust/pull/81942#issuecomment-782762020) that this could break tests sensible to the absence of a `-Ccodegen-units` flag
  - CI seems to not pass consistently
- "add dynamically-linked musl targets" [rust#82556](https://github.com/rust-lang/rust/pull/82556)
  - opened by @**Ariadne Conill** 
  - assigned to @**nagisa**, raises some concerns [on the behaviour consistency](https://github.com/rust-lang/rust/pull/82556#issuecomment-787088016) 
  - assigned also to @**Vadim Petrochenkov**, [provides a great summary on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/227806-t-compiler.2Fwg-prioritization/topic/2021-03-03.20meeting.20agenda/near/228681359), suggests to [enable dynamic linking on nightly](https://github.com/rust-lang/rust/pull/82556#issuecomment-787431717) to see what breaks
  - [@richfelker](https://github.com/richfelker) (author and mantainer of musl) recommends [proper naming to avoid confusion](https://github.com/rust-lang/rust/pull/82556#issuecomment-788172193)
  - discussion is still ongoing, revolves around clarifying the `--target` behaviour and what people expect when compiling for MUSL

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [65 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 39 P-high, 86 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- "Side effect handling in specialized zip implementation causes buffer overflow" [rust#82282](https://github.com/rust-lang/rust/issues/82282)
  - unsound buffer overflow caused [by violating the safety requirement of `TrustedRandomAccess` trait](https://github.com/rust-lang/rust/issues/82282#issuecomment-781805170)
  - @**Giacomo Stevanato** provides a patch [rust#82289](https://github.com/rust-lang/rust/pull/82289) to fix this, approved by @**Mara** 
- "Zip may call __iterator_get_unchecked twice with the same index" [rust#82291](https://github.com/rust-lang/rust/issues/82291)
  - related to the above issue, unsoundness could be exploited to get two mutable references to the same data and cause an use-after-free bug
  - @**Giacomo Stevanato** provides another patch [#82292](https://github.com/rust-lang/rust/issues/82292), pending approval
- "std::io::copy returns Bad File Descriptor with writer files in append mode in 1.50" [rust#82410](https://github.com/rust-lang/rust/issues/82410)
  - happens when streaming one file into another and the writer is in append mode, only when using `BufWriter`/`BufReader`
  - @**The 8472|239181** provides a patch [#82417](https://github.com/rust-lang/rust/pull/82417), pending review

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [Triage full logs](https://github.com/rust-lang/rustc-perf/blob/6e54a651ae4721eefd8b99341ad60a1b2d9f76c8/triage/2021-03-02.md)

Quiet week, a couple regressions and several nice improvements.

Triage done by **@simulacrum**.

2 Regressions, 3 Improvements, 0 Mixed, 0 of them in rollups

#### Regressions

Use correct param_env in conservative_is_privately_uninhabited [#82159](https://github.com/rust-lang/rust/issues/82159)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a8486b64b0c87dabd045453b6c81500015d122d6&end=1fdadbf13aecd190b277ea2aa1b125d2ed986d55&stat=instructions:u) (up to 1.2% on `incr-unchanged` builds of `regression-31157-opt`)
- Seems like a necessary bugfix.

Detect match statement intended to be tail expression [#81458](https://github.com/rust-lang/rust/issues/81458)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d95d30486180387a875b14633aea4e4dd8f960da&end=cecdb181ade91c0a5ffab9a148dba68fc7d00ee3&stat=instructions:u) (up to 5.6% on `incr-patched: println` builds of `unicode_normalization-check`)
- Unexpected regresssion, left [nag](https://github.com/rust-lang/rust/pull/81458#issuecomment-789003548).

#### Improvements

- Prevent to compute Item attributes twice [#82265](https://github.com/rust-lang/rust/issues/82265)
- Miscellaneous inlining improvements [#82559](https://github.com/rust-lang/rust/issues/82559)
- Remove storage markers if they won't be used during code generation [#78360](https://github.com/rust-lang/rust/issues/78360)

#### Nags requiring follow up

Detect match statement intended to be tail expression [#81458](https://github.com/rust-lang/rust/issues/81458)
- https://github.com/rust-lang/rust/pull/81458#issuecomment-789003548

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "`fn() -> Out` is a valid type for unsized types `Out`, and it implements `FnOnce<(), Output = Out>`" [rust#82633](https://github.com/rust-lang/rust/issues/82633)
  - opened by @**Frank Steffahn** 
  - issue bisection seems to point to PR [#73905](https://github.com/rust-lang/rust/pull/73905)
  - issue seems to [reproducible on stable since long](https://github.com/rust-lang/rust/issues/82633#issuecomment-789168223) (so not a regression) but to be unsound on nightly
  - something to investigate a bit closer 

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.