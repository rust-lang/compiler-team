---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-04-01

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- No Steering Meeting tomorrow (2021-04-02), as it is holiday in many countries.

### MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Update the existing musl targets to be dynamically linked." [compiler-team#422](https://github.com/rust-lang/compiler-team/issues/422)
  - "Rename -Cllvm-args to something backend agnostic" [compiler-team#421](https://github.com/rust-lang/compiler-team/issues/421)
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
  - "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Lang Item for Transmutability" [compiler-team#411](https://github.com/rust-lang/compiler-team/issues/411)
  - "Switch JSON serialization from rustc_serialize to serde" [compiler-team#418](https://github.com/rust-lang/compiler-team/issues/418)
  - "Lint large assignments and locals" [compiler-team#420](https://github.com/rust-lang/compiler-team/issues/420)
  - "Adding diesel to the cargotest suite" [rust#81507](https://github.com/rust-lang/rust/pull/81507)
  - "reduce threads spawned by ui-tests" [rust#81942](https://github.com/rust-lang/rust/pull/81942)
- Accepted MCPs
  - "Filter out query machinery from compiler backtraces by default" [compiler-team#410](https://github.com/rust-lang/compiler-team/issues/410)
  - "MCP: Embed the `hir_id` of the _awaited expression_ into `DesugaringKind`" [compiler-team#413](https://github.com/rust-lang/compiler-team/issues/413)
- Finalized FCPs (disposition merge)
  - "Implement indexing slices with pairs of core::ops::Bound<usize>" [rust#77704](https://github.com/rust-lang/rust/pull/77704)
  - "Stabilize or_patterns (RFC 2535, 2530, 2175)" [rust#79278](https://github.com/rust-lang/rust/pull/79278)
  - "Make NonNull::as_ref (and friends) return refs with unbound lifetimes" [rust#80771](https://github.com/rust-lang/rust/pull/80771)
  - "Stabilize `assoc_char_funcs` and `assoc_char_consts`" [rust#82919](https://github.com/rust-lang/rust/pull/82919)
  - "Stabilize `bufreader_seek_relative`" [rust#82992](https://github.com/rust-lang/rust/pull/82992)
  - "Deprecate RustcEncodable and RustcDecodable." [rust#83160](https://github.com/rust-lang/rust/pull/83160)

### WG checkins

@*WG-mir-opt* checkin by @**oli**:
> * Partook in the shrinkmem sprint
> * mir-opt-level=2 is now automatically activated in release mode
> * shaved off a few percentages of max-rss by adjusting MIR datastructures
> * ran some experiments to pinpoint an MVP for MIR inlining

@*WG-polonius* checkin by @**lqd**
> Nothing especially newsworthy since the last check-in, only a little progress has been made since then.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix the `unsafe_block_in_unsafe_fn`s stabilized version" [rust#83736](https://github.com/rust-lang/rust/pull/83736)
  - opened by @**Yuki Okushi|217081** 
  - reviewed by @**Joshua Nelson** 
  - fixes issue [#83735](https://github.com/rust-lang/rust/issues/83735), a wrong claim about `unsafe_block_in_unsafe_fn` being stabilized in 1.51.0
- No stable nominations for `T-compiler` this time.

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No backport nominations for `T-libs-impl` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- :beta: "Fix Self keyword doc URL conflict on case insensitive file systems (until definitely fixed on rustdoc)" [rust#83678](https://github.com/rust-lang/rust/pull/83678)
  - opened by @**GuillaumeGomez** 
  - approved by @**Joshua Nelson** 
  - Fixes [#80504](https://github.com/rust-lang/rust/issues/80504) and prevents [#83154](https://github.com/rust-lang/rust/issues/83154) and related [rust-lang/rustup#2694](https://github.com/rust-lang/rustup/issues/2694)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "add dynamically-linked musl targets" [rust#82556](https://github.com/rust-lang/rust/pull/82556)
  - [actionables from the meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202021-03-26.20musl.20linking.20compiler-team.23416)
    - Written an [MCP](https://github.com/rust-lang/compiler-team/issues/422), verify whether we can give warnings, and have the team sign it off
    - Finally a blog post to give a heads up and guidance [comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202021-03-26.20musl.20linking.20compiler-team.23416/near/231979422)

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 91 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- "Double free in Vec::from_iter specialization when drop panics" [rust#83618](https://github.com/rust-lang/rust/issues/83618)
  - Opened by @**Yechan Bae**
  -  @**The 8472|239181** submitted PR [#83629](https://github.com/rust-lang/rust/pull/83629)
  - PR assigned for review to @**Mara**

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "WASI: path_open regression in Rust 1.51 when using LTO" [rust#82758](https://github.com/rust-lang/rust/issues/82758)
  - fixed by @**simulacrum** in PR [#82804](https://github.com/rust-lang/rust/pull/82804), PR should be in 1.51 stable
  - is there an actionable for this issue?
- "`probe-stack=inline-asm` generates wrong DWARF information" [rust#83139](https://github.com/rust-lang/rust/issues/83139)
  - partially mitigated by @**pnkfelix** in PR [#82412](https://github.com/rust-lang/rust/pull/83412), which reverts PR [#77885](https://github.com/rust-lang/rust/pull/77885)
  - from the PR comment: after we resolve [#83139](https://github.com/rust-lang/rust/issues/83139) (potentially by backporting a fix to LLVM or by deciding that one cannot rely on the quality of our DWARF output in the manner described in #83139), we can change this back

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2021-04-01 Triage Log](https://github.com/rust-lang/rustc-perf/blob/7af0553b65a918cf4b19fa289a85bd97abf3f43b/triage/2021-04-01.md)

A somewhat negative weak for performance where regressions outweigh improvements. Sadly, a lot of the regressions don't seem very straight-forward to understand, and so more investigation will be necessary.

Triage done by **@rylev**: 2 Regressions, 2 Improvements, 3 Mixed, 2 of them in rollups

#### Regressions

implement `feature(const_generics_defaults)` [#75384](https://github.com/rust-lang/rust/issues/75384)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=db492ecd5ba6bd82205612cebb9034710653f0c2&end=5b33de3340c7b36646af46303a30f7066b4bd7db&stat=instructions:u) (up to 1.1% on `incr-unchanged` builds of `ucd-check`)
- A small regression in incremental compilation in one particular benchmark `ucd`. The query affected is `generate_crate_metadata` which tracks with the fact that incremental compilation is affected.
- A quick scan of the changes doesn't reveal anything suspicious as encoding of metadata has changed only a little bit and should only be impacted when encoding something with default const generics.

Use `EvaluatedToOkModuloRegions` whenever we erase regions [#83220](https://github.com/rust-lang/rust/issues/83220)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f5fe425c925ef36d5f4c18cfa44173fc42de31b8&end=07e0e2ec268c140e607e1ac7f49f145612d0f597&stat=instructions:u) (up to 1.8% on `full` builds of `hyper-2-check`)
- A moderate regression in trait obligation evaluation which this code directly impacts. 
- A performance run was performed, but the impact was deemed acceptable. The author and reviewer [were pinged](https://github.com/rust-lang/rust/pull/83220#issuecomment-811752366) about why the performance is acceptable.

Refactor `Binder` to track bound vars [#76814](https://github.com/rust-lang/rust/issues/76814)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a5029ac0ab372aec515db2e718da6d7787f3d122&end=4fdac23f3171e2f8864d359a21da600dd3faafc9&stat=instructions:u) (up to 3.9% on `incr-unchanged` builds of `externs-check`)
- Moderate regression in trait resolution queries which this code directly impacts. While a performance run was made, it was never discussed in the PR. The author and reviewer [were pinged](https://github.com/rust-lang/rust/pull/76814#issuecomment-811758311).

#### Improvements

- Rollup of 9 pull requests [#83432](https://github.com/rust-lang/rust/issues/83432)
- Rollup of 8 pull requests [#83580](https://github.com/rust-lang/rust/issues/83580)

#### Mixed

- Remove assignments to ZST places instead of marking ZST return place as unused [#83177](https://github.com/rust-lang/rust/issues/83177)
- Import small cold functions [#82980](https://github.com/rust-lang/rust/issues/82980)
- Reduce the impact of Vec::reserve calls that do not cause any allocation [#83357](https://github.com/rust-lang/rust/issues/83357)

#### Nags requiring follow up

- The [issue](https://github.com/rust-lang/rust/pull/82964#issuecomment-800663588) from two weeks ago has stalled.
- Follow-ups from this week:
    - https://github.com/rust-lang/rust/pull/83220#issuecomment-811752366
    - https://github.com/rust-lang/rust/pull/76814#issuecomment-811758311
    - https://github.com/rust-lang/rust/pull/82980#issuecomment-811767001
    - https://github.com/rust-lang/rust/pull/83357#issuecomment-811770400

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "`undefined reference to` linker error when using dylibs" [rust#82151](https://github.com/rust-lang/rust/issues/82151)
  - (mentioned in [past meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-03-18.20.2354818/near/230879756))
- "add dynamically-linked musl targets" [rust#82556](https://github.com/rust-lang/rust/pull/82556)
  - (see item in S-waiting-on-team)

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
