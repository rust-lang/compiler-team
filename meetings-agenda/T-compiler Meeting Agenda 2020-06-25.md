---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-06-25

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Design meeting tomorrow (Friday): Areas of the compiler [compiler-team#288](https://github.com/rust-lang/compiler-team/issues/288)
- Major Changes Proposals:
  - New accepted proposals
    - "Make `CONTRIBUTING.md` into a series of tutorials" [#296](https://github.com/rust-lang/compiler-team/issues/296)
    - "Preserve `PlaceContext` through projections" [#300](https://github.com/rust-lang/compiler-team/issues/300)
    - "Make lang-items private" [#301](https://github.com/rust-lang/compiler-team/issues/301)
    - "`#[deny(unsafe_op_in_unsafe_fn)]` in liballoc" [#306](https://github.com/rust-lang/compiler-team/issues/306)
  - Seconded proposals (in FCP)
    - "illumos toolchain builds" [#279](https://github.com/rust-lang/compiler-team/issues/279)
    - "Support const parameters in type dependent paths" [#304](https://github.com/rust-lang/compiler-team/issues/304)
    - "`#![deny(unsafe_op_in_unsafe_fn)]` in libcore and libstd" [#317](https://github.com/rust-lang/compiler-team/issues/317)
    - "-Zmir-opt-level Reform" [#319](https://github.com/rust-lang/compiler-team/issues/319)
    - "Move CONTRIBUTING.md to rustc-dev-guide and instead point to Getting Started" [#320](https://github.com/rust-lang/compiler-team/issues/320)
  - New proposals (not seconded)
    - "Add future-incompat entries to json diagnostic output" [#315](https://github.com/rust-lang/compiler-team/issues/315)
    - "MCP: Reorganize the rust-lang/rust repo directory structure" [#316](https://github.com/rust-lang/compiler-team/issues/316)
    - "Portable SIMD project group" [#321](https://github.com/rust-lang/compiler-team/issues/321)
  - Old proposals (not seconded)
    - "Integration of the Cranelift backend with rustc" [#270](https://github.com/rust-lang/compiler-team/issues/270)
    - "Decentralize queries" [#277](https://github.com/rust-lang/compiler-team/issues/277)
    - "--extern-location to specify where an --extern dependency is defined" [#303](https://github.com/rust-lang/compiler-team/issues/303)
    - "Move Rust provided objects, libraries and binaries meant for self-contained linkage to separate directory" [#310](https://github.com/rust-lang/compiler-team/issues/310)
    - "RISC-V Linux Tier 2 Host support" [#312](https://github.com/rust-lang/compiler-team/issues/312)
    - "Switch from libbacktrace to gimli" [#313](https://github.com/rust-lang/compiler-team/issues/313)

### WG checkins

@*WG-rls2.0* checkin by @**matklad**:
>#### [RFC2912](https://github.com/rust-lang/rfcs/pull/2912) progress:
>
>* protocol conformance problems mostly fixed (there are no incompats which are known to cause significant issues, there might be some de-jure bugs though)
>* all protocol extensions are documented at: https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/dev/lsp-extensions.md
>  * Upstream issues: https://github.com/microsoft/language-server-protocol/issues/created_by/matklad
>  * Subscribe to https://github.com/rust-analyzer/rust-analyzer/issues/4604 to receive notifications about new extensions.
>* shipping via rustup is in progress: https://github.com/rust-lang/rust/pull/72978
>  * currently soft-blocked on someone figuring out building from vendored sources (needs just impl work)
>* initial support of rust-analyzer in the official rust-lang extension (using rust-analyzer extension is still recommended though)
>
>#### Org progress:
>
>* @**Jonas Schievink** joined rust-analyzer.
>  We finally have a shared expert between rustc and rust-analyzer, :tada:
>* Rate of PRs exceeds review capacity.
>* Official help and discussion forum category: https://users.rust-lang.org/c/ide/14
>
>#### Impl progress:
>
>* Documentation for features is now generated from the source code, and contains links to the source code:
>  https://rust-analyzer.github.io/manual.html#features.
>* (as of yesterday) new semantic-less IR (`ItemTree`) to avoid repeated reparsing of files.
>* A bunch of perf & memory usage improvements.
>* Semantic syntax highlighting of doc comments.
>* Chalk updates and various assorted fixes to the type inference.
>* Better support for non-cargo based projects.
>* New (final hopefully?) implementation of Virtual File System

@*WG-self-profile* checkin by @**Wesley Wiser**:
> - Some other Rust projects have shown interest in using `measureme` in their crates.
>   Boa, a JavaScript interpreter written in Rust, has done the integration [with some cool results](https://github.com/boa-dev/boa/pull/317#issuecomment-636464496).
> - We've made a few small changes to the `summarize` command output to hide columns that are rustc specific when that data isn't present.
> - @**Wesley Wiser** has started working on a tool to "blame" compile time to `DefId`s.
>   - It's too early to really show anything off because it barely works at all.
>   - One major issue is that we can't see inside LLVM so ~80% of compilation time for crates tested so far is just blamed to LLVM. That's not particularly useful.

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Change how compiler-builtins gets many CGUs" [#73136](https://github.com/rust-lang/rust/pull/73136)
  - Fixes [#73135](https://github.com/rust-lang/rust/issues/73135), a `P-medium` performance regression.
  - Changes how compiler builtins are built.
  - Only 1 addition and 9 deletions to the compiler, and one new option in `Cargo.toml`.
- "Reoder order in which MinGW libs are linked to fix recent breakage" [#73184](https://github.com/rust-lang/rust/pull/73184)
  - "Recent upstream mingw-w64 changes made libmsvcrt depend on libmingwex breaking compilation in some cases when using external MinGW."
  - This one [was discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-06-18.20.2354818/near/201275224). We decided to wait a week.
  - According to @**Vadim Petrochenkov** ["CI has old mingw and this PR passed it."](https://github.com/rust-lang/rust/pull/73184#issuecomment-646078056)
- "Perform obligation deduplication to avoid buggy `ExistentialMismatch`" [#73485](https://github.com/rust-lang/rust/pull/73485)
  - Not merged yet into master.
  - Fixes a `P-high` stable regression from 1.33.0, #59326, rejecting previously valid code. See [MCVE](https://github.com/rust-lang/rust/issues/59326#issuecomment-645911137).
  - Changes from this PR are very minimal, with 13 additions and 3 deletions.
  - [Tested to incur no performance regression.](https://perf.rust-lang.org/compare.html?start=e55d3f9c5213fe1a25366450127bdff67ad1eca2&end=c9f613bb7aaebcb256e34b959196f56f62ca74c8)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- "rustdoc: Fix doc aliases with crate filtering" [#73644](https://github.com/rust-lang/rust/pull/73644)

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Perform obligation deduplication to avoid buggy `ExistentialMismatch`" [#73485](https://github.com/rust-lang/rust/pull/73485)
  - Was also beta nominated.
  - Not merged yet into master.
  - Fixes a `P-high` stable regression from 1.33.0, #59326, rejecting previously valid code. See [MCVE](https://github.com/rust-lang/rust/issues/59326#issuecomment-645911137).
  - Changes from this PR are very minimal, with 13 additions and 3 deletions.
  - [Tested to incur no performance regression.](https://perf.rust-lang.org/compare.html?start=e55d3f9c5213fe1a25366450127bdff67ad1eca2&end=c9f613bb7aaebcb256e34b959196f56f62ca74c8)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Implement `--extern-location`" [#72603](https://github.com/rust-lang/rust/pull/72603)
  - This was discussed 2 weeks ago
  - [an MCP is pending](https://github.com/rust-lang/compiler-team/issues/303) and waiting to be seconded
  - [According to @**nikomatsakis** it seems that it have reached a stopping point](https://github.com/rust-lang/compiler-team/issues/303#issuecomment-647584102)

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs wiating on libs-impl this time.

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [48 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [27 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 1 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 4 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 14 P-high, 44 P-medium, 4 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Slice index becomes wrong (beta regression)" [#73223](https://github.com/rust-lang/rust/issues/73223)
  - It's a regression from stable to beta
  - [PR is merged already on nightly](https://github.com/rust-lang/rust/pull/73262)
  - It's beta accepted, so this is waiting for the actual backport
- "ICE: MIR const-checker found novel structural match violation" [#73431](https://github.com/rust-lang/rust/issues/73431)
  - ICE when matching with a trait constant
  - Beta regression caused by [#67343](https://github.com/rust-lang/rust/pull/67343) (@**ecstatic-morse**)
  - [PR is merged already on nightly](https://github.com/rust-lang/rust/pull/73446)
  - It's beta accepted, so this is waiting for the actual backport
- "cannot create local mono-item for DefId" [#73537](https://github.com/rust-lang/rust/issues/73537)
  - [Labeled as `P-critical` to raise awareness](https://rust-lang.zulipchat.com/#narrow/stream/227806-t-compiler.2Fwg-prioritization/topic/I-prioritize.20.2373537.20cannot.20create.20local.20mono-item.20for.20DefId)
  - [This seems to be fixed seeing some of the latest comments](https://github.com/rust-lang/rust/issues/73537#issuecomment-649364509), still needs a test.

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No P-critical issues for libs-impl this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No P-critical issues for T-rustdoc this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- "Unreasonably long (and useless) error message doing modulo on non-existent variable: overflow evaluating the requirement `typenum::UInt<typenum::UInt…" [#72839](https://github.com/rust-lang/rust/issues/72839)
  - [PR is merged already](https://github.com/rust-lang/rust/pull/73005)
  - It's already beta accepted
  - So this is waiting for a beta backport

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- No unassigned P-high nightly regressions this time.

## Performance logs

[Triage done by njn](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs).
Latest revision: 6bb3dbfc6c6d8992d08431f320ba296a0c2f7498.

*Lots of improvements this week!* :tada:

Having done this for a few weeks now, I see that close to half of the PRs with significant performance effects are rollups.

Regressions
- None.

Improvements
- [Rollup of 9 pull requests](https://github.com/rust-lang/rust/pull/73563#issuecomment-647319856)
  ([instructions](https://perf.rust-lang.org/compare.html?start=f455e46eae1a227d735091091144601b467e1565&end=7058471adec80a2a1e6092443e08546768c9c894&stat=instructions:u), [max-rss](https://perf.rust-lang.org/compare.html?start=f455e46eae1a227d735091091144601b467e1565&end=7058471adec80a2a1e6092443e08546768c9c894&stat=max-rss)):
  Up to 33.6% instruction wins on a stress test, and up to 10.3% instructions
  wins on several real-world benchmarks. Also a max-rss win.
  [#72788](https://github.com/rust-lang/rust/pull/72788) may be the cause?
- [Cache flags and escaping vars for predicates](https://github.com/rust-lang/rust/pull/73180#issuecomment-647824906)
  ([instructions](https://perf.rust-lang.org/compare.html?start=a8cf3991177f30694200002cd9479ffbbe6d9a1a&end=1a4e2b6f9c75a0e21722c88a0e3b610d6ffc3ae3&stat=instructions:u)):
  Up to 4.9% wins across numerous benchmarks.
- [store `ObligationCause` on the heap](https://github.com/rust-lang/rust/pull/72962#issuecomment-647822868)
  ([instructions](https://perf.rust-lang.org/compare.html?start=f315c35a77e40bd11ce81fedc0556be0f410bbf4&end=c8a9c340de32cb70c8bad8af1a4474f805c5a969&stat=instructions:u)):
  Up to 3.5% wins across numerous benchmarks.
- [Upgrade Chalk](https://github.com/rust-lang/rust/pull/72936#issuecomment-647829776)
  ([instructions](https://perf.rust-lang.org/compare.html?start=349f6bfb11d73ebb6a272f9a3d00883484f8218c&end=a8cf3991177f30694200002cd9479ffbbe6d9a1a&stat=instructions:u)):
  Up to 1.5% wins across numerous benchmarks.
- [Rollup of 13 pull requests](https://github.com/rust-lang/rust/pull/73511#issuecomment-647828029)
  ([instructions](https://perf.rust-lang.org/compare.html?start=2d8bd9b74dc0cf06d881bac645698ccbcf9d9c5e&end=34c5cd9a64d8537236626c4ccbed39a924cd38e2&stat=instructions:u)):
  Up to 1.5% wins across numerous benchmarks.
- [Rollup of 16 pull requests](https://github.com/rust-lang/rust/pull/73528#issuecomment-647827323)
  ([instructions](https://perf.rust-lang.org/compare.html?start=34c5cd9a64d8537236626c4ccbed39a924cd38e2&end=033013cab3a861224fd55f494c8be1cb0349eb49&stat=instructions:u)):
  Up to 3.4% wins on `wg-grammar`, little change elsewhere.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Type mismatching cased by duplicate associated type resolution" [#59326](https://github.com/rust-lang/rust/issues/59326)
  - Unassigned P-high regression
  - Culprit likely to be [#56837](https://github.com/rust-lang/rust/pull/56837)
- "target_feature_11 allows bypassing safety checks through Fn* traits" [#72012](https://github.com/rust-lang/rust/issues/72012)
- "Incorrect compilation / STATUS_ACCESS_VIOLATION when linking with lld with target-cpu set" [#72145](https://github.com/rust-lang/rust/issues/72145)
  - Metabug: "Use lld by default on x64 msvc windows" [#71520](https://github.com/rust-lang/rust/issues/71520)
- "[regression] empty shebang parsing" [#73250](https://github.com/rust-lang/rust/issues/73250)
- "f32::powi on Windows returns different results between 1.44 and 1.45 beta" [#73420](https://github.com/rust-lang/rust/issues/73420)
  - Nominated with intention of raising awareness of this LLVM 10 change and to discuss briefly what to do. Do we want to add some relnotes?.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for libs-impl this time.