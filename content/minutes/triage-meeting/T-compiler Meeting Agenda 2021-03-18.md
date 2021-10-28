---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-03-18

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow (Friday 18 March) we will have a retrospective on the March memshrink sprint. see [compiler-team#412](https://github.com/rust-lang/compiler-team/issues/412)
- Next week 25.03 the new stable release 1.51 is out

### MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issdues/419)
- Old MCPs (not seconded, take a look)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  - "Eagerly construct bodies of THIR" [compiler-team#409](https://github.com/rust-lang/compiler-team/issues/409)
  - "Lang Item for Transmutability" [compiler-team#411](https://github.com/rust-lang/compiler-team/issues/411)
- Pending FCP requests (check your boxes!)
  - "Adding diesel to the cargotest suite" [rust#81507](https://github.com/rust-lang/rust/pull/81507)
  - "reduce threads spawned by ui-tests" [rust#81942](https://github.com/rust-lang/rust/pull/81942)
- Things in FCP (make sure you're good with it)
  - "Filter out query machinery from compiler backtraces by default" [compiler-team#410](https://github.com/rust-lang/compiler-team/issues/410)
  - "MCP: Embed the `hir_id` of the _awaited expression_ into `DesugaringKind`" [compiler-team#413](https://github.com/rust-lang/compiler-team/issues/413)
  - "Switch JSON serialization from rustc_serialize to serde" [compiler-team#418](https://github.com/rust-lang/compiler-team/issues/418)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Emit errors/warns on some wrong uses of rustdoc attributes" [rust#80300](https://github.com/rust-lang/rust/pull/80300)
  - "Implement Extend and FromIterator for OsString" [rust#82121](https://github.com/rust-lang/rust/pull/82121)
  - "slice: Stabilize IterMut::as_slice." [rust#82771](https://github.com/rust-lang/rust/pull/82771)

### WG checkins

- @*WG-diagnostics* checking by @**Esteban Küber** and @**oli**:
> Checkin text

- @*WG-rustc-dev-guide* checkin by @**Santiago Pastorino** and @**Joshua Nelson**:
>- Continuing to work on a walkthrough of the compiler
>  - Added support for `-Z unpretty=ast` to the compiler [rust-lang/rust#82304](https://github.com/rust-lang/rust/pull/82304)
>  - Added support for `-Z unpretty=thir` [rust-lang/rust#82860](https://github.com/rust-lang/rust/pull/82860)
>  - Working on adding support for `-Z unpretty=hir` to playground [rust-playground#683](https://github.com/integer32llc/rust-playground/pull/683)
>  - At some point we would like to add `-Z dump-metadata` or similar
>
>### Most notable changes
>
>- Add article on using WPA to profile rustc memory usage on Windows [#1074](https://github.com/rust-lang/rustc-dev-guide/pull/1074)
>- Switch from Travis to GHA [#1073](https://github.com/rust-lang/rustc-dev-guide/pull/1073)
>- Fix date-check comment formatting [#1066](https://github.com/rust-lang/rustc-dev-guide/pull/1066)
>- Add Oxide paper to bibliography [#1056](https://github.com/rust-lang/rustc-dev-guide/pull/1056)
>- Use more accurate estimate of generated LLVM IR with llvm-lines [#1049](https://github.com/rust-lang/rustc-dev-guide/pull/1049)
>- Update docs from date triage for 2021-02 [#1048](https://github.com/rust-lang/rustc-dev-guide/pull/1048)
>
>### Most notable WIPs
>
>- Fix rust compiler meeting info [#1087](https://github.com/rust-lang/rustc-dev-guide/pull/1087)
>- rewrite ty.md [#1057](https://github.com/rust-lang/rustc-dev-guide/pull/1057)
>- improve glossary page [#1053](https://github.com/rust-lang/rustc-dev-guide/pull/1053)
>- Add a section on keeping things up to date in the git section [#1031](https://github.com/rust-lang/rustc-dev-guide/pull/1031)
>- Document lang items [#978](https://github.com/rust-lang/rustc-dev-guide/pull/978)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- :beta: "Fix io::copy specialization using copy_file_range when writer was opened with O_APPEND" [rust#82417](https://github.com/rust-lang/rust/pull/82417)
  - opened by @**The 8472|239181**
  - approved by @**Mara**
  - Fixes [#82410](https://github.com/rust-lang/rust/issues/82410), `P-critical` regression when streaming one file into another and the writer is in append mode
- :stable: "Fix io::copy specialization using copy_file_range when writer was opened with O_APPEND" [rust#82417](https://github.com/rust-lang/rust/pull/82417)
  - issue is also nominated for beta backport
- :beta: "std: Fix a bug on the wasm32-wasi target opening files" [rust#82804](https://github.com/rust-lang/rust/pull/82804)
  - backport of a fix by @**Alex Crichton**
  - fixes [#82758](https://github.com/rust-lang/rust/issues/82758), a P-high regression breaking loading files when compiling for `--release` and LTO enabled
  - assigned to @**Mara**
  - waiting for approval


[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- :beta: "Fix "run" button position in error index" [rust#82979](https://github.com/rust-lang/rust/pull/82979)
  - opened by @**GuillaumeGomez**
  - approved to @**Nemo157**
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "add dynamically-linked musl targets" [rust#82556](https://github.com/rust-lang/rust/pull/82556)
  - opened by @**Ariadne Conill**
  - assigned to @**nagisa**, raises some concerns [on the behaviour consistency](https://github.com/rust-lang/rust/pull/82556#issuecomment-787088016)
  - assigned also to @**Vadim Petrochenkov**, [provides a great summary on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/227806-t-compiler.2Fwg-prioritization/topic/2021-03-03.20meeting.20agenda/near/228681359), suggests to [enable dynamic linking on nightly](https://github.com/rust-lang/rust/pull/82556#issuecomment-787431717) to see what breaks
  - [@richfelker](https://github.com/richfelker) (author and mantainer of musl) recommends [proper naming to avoid confusion](https://github.com/rust-lang/rust/pull/82556#issuecomment-788172193)
  - @**Wesley Wiser** opened a [compiler-team#416](https://github.com/rust-lang/compiler-team/issues/416) meeting proposal

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 37 P-high, 89 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "`probe-stack=inline-asm` generates wrong DWARF information" [rust#83139](https://github.com/rust-lang/rust/issues/83139)
  - issue is labelled as high/critical on [reporter's end](https://github.com/tikv/tikv/issues/9765), breaks compiling their cpu profiler
  - reporter mentions root cause to be PR [#77885](https://github.com/rust-lang/rust/pull/77885)
  - reporter also is testing [an LLVM patch](https://github.com/rust-lang/rust/issues/83139#issuecomment-801225600) from @**nagisa** which seemingly fixes the problem
  - could this be a release blocker?

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "WASI: path_open regression in Rust 1.51 when using LTO" [rust#82758](https://github.com/rust-lang/rust/issues/82758)
- "major performance regression between Rust 1.50 and beta when using target-cpu=native" [rust#83027](https://github.com/rust-lang/rust/issues/83027)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-03-18](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-03-16.md)

Added two benchmarks over the past week to the perf suite - diesel and stm32f4,
which are intended to add to the level of tracking for rustdoc and, for both, a
focus on compiler trait machinery.

Performance results for this week are mixed, but overall largely positive.

Triage done by **@simulacrum**.

3 Regressions, 3 Improvements, 4 Mixed

#### Regressions

Shorten `rustc_middle::ty::mod` [#82964](https://github.com/rust-lang/rust/issues/82964)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=066f01d81bfbed746f6b6cf27a0426d829e8e832&end=b3ac52646f7591a811fa9bf55995b24fd17ece08&stat=instructions:u) (up to 4.0% on `full` builds of `deeply-nested-check`)
- Largely limited to diesel-doc builds, but a big regression there; left a nag
  to followup. Likely caused by a change to inlining.

Allow calling *const methods on *mut values [#82436](https://github.com/rust-lang/rust/issues/82436)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=4d76b4ca52a65d63ab83d82d6630f1df8ec05a93&end=f42888c15fd370b8bca4c5646ffc3aac3005dca8&stat=instructions:u) (up to 11.3% on `incr-full` builds of `packed-simd-check`)
- Unfortunate and unexpected regression. Left a nag.

Turn `-Z incremental-verify-ich` on by default [#83007](https://github.com/rust-lang/rust/issues/83007)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=56f74c52c1bb627ada01992787116054bf1e66e9&end=e7e1dc158c3de232750b568163f6941a184ee8be&stat=instructions:u) (up to 15.1% on `incr-unchanged` builds of `issue-46449-debug`)
- Expected mitigation, essentially part of a soundness fix (though due to other
  bugs in the compiler - this just adds asserts that catches those).

#### Improvements

- Eagerly construct bodies of THIR [#82495](https://github.com/rust-lang/rust/issues/82495)
- Iterate on crate_inherent_impls for metadata. [#83082](https://github.com/rust-lang/rust/issues/83082)
- Tweaks to stable hashing [#83064](https://github.com/rust-lang/rust/issues/83064)

#### Mixed

- Store HIR attributes in a side table [#79519](https://github.com/rust-lang/rust/issues/79519)
- Enable MemorySSA in MemCpyOpt [#82806](https://github.com/rust-lang/rust/issues/82806)
- Don't implement mem::replace with mem::swap. [#83022](https://github.com/rust-lang/rust/issues/83022)
- Rebase and fixup #80493: Remove MIR assignments to ZST types [#83118](https://github.com/rust-lang/rust/issues/83118)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "`undefined reference to` linker error when using dylibs" [rust#82151](https://github.com/rust-lang/rust/issues/82151)
  - mentioned in PR `S-waiting-on-team`

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- "Use getrandom for generating HashMap seed" [rust#80149](https://github.com/rust-lang/rust/pull/80149)
  - Opened by @**Artyom Pavlov**
  - assigned to @**Steven Fackler**, [raises a question](https://github.com/rust-lang/rust/pull/80149#issuecomment-776352953) about the policy for adding `getrandom` as new std dependency
  - @**dhardy** describes how [the evaluation process could be](https://github.com/rust-lang/rust/pull/80149#issuecomment-776352953)
  - @**Mara** labeled for T-libs-impl discussion
- "Is there a gentler way to land the assert_matches macro?" [rust#82913](https://github.com/rust-lang/rust/issues/82913)
  - opened by @**anp** [raises a question](https://github.com/rust-lang/rust/issues/82913#issue-825041783) about the level of breakage `assert_matches!()` introduces
  - [Discussed in T-libs meeting](https://github.com/rust-lang/rust/issues/82913#issuecomment-801429887), outcome is to remove it from the `prelude` and re-add it in the next edition
  - @**simulacrum** leaves this nominated to allow release team to chime in and comment

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
