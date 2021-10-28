---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-06-18

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Major Changes Proposals:
  - New accepted proposals
    - "Preserve `PlaceContext` through projections" [#300](https://github.com/rust-lang/compiler-team/issues/300)
    - "Make lang-items private" [#301](https://github.com/rust-lang/compiler-team/issues/301)
  - Seconded proposals (in FCP)
    - "illumos toolchain builds" [#279](https://github.com/rust-lang/compiler-team/issues/279)
    - "Make `CONTRIBUTING.md` into a series of tutorials" [#296](https://github.com/rust-lang/compiler-team/issues/296)
    - "Support const parameters in type dependent paths" [#304](https://github.com/rust-lang/compiler-team/issues/304)
    - "`#[deny(unsafe_op_in_unsafe_fn)]` in liballoc" [#306](https://github.com/rust-lang/compiler-team/issues/306)
  - New proposals (not seconded)
    - "Move Rust provided objects, libraries and binaries meant for self-contained linkage to separate directory" [#310](https://github.com/rust-lang/compiler-team/issues/310)
    - "RISC-V Linux Tier 2 Host support" [#312](https://github.com/rust-lang/compiler-team/issues/312)
    - "Switch from libbacktrace to gimli" [#313](https://github.com/rust-lang/compiler-team/issues/313)
  - Old proposals (not seconded)
    - "Integration of the Cranelift backend with rustc" [#270](https://github.com/rust-lang/compiler-team/issues/270)
    - "Decentralize queries" [#277](https://github.com/rust-lang/compiler-team/issues/277)
    - "--extern-location to specify where an --extern dependency is defined" [#303](https://github.com/rust-lang/compiler-team/issues/303)

- Unilateral beta backport approvals
    - "Make novel structural match violations not a `bug`" [#73446](https://github.com/rust-lang/rust/pull/73446)
    - "Don't create impl candidates when obligation contains errors" [#73005](https://github.com/rust-lang/rust/pull/73005)

### WG checkins

@*WG-prioritization* checkin by @**spastorino**:
>- We are now executing our process fully async and have bi-weekly planning/steering meetings to think about things to improve.
>- We've prioritized all `I-unsound 💥` issues for `T-compiler` and `libs-impl`.
>  - From now on, new issues tagged with `I-unsound 💥` will automatically add `I-prioritize` and then request prioritization to the wg.
>- There are not unprioritized regressions anymore :tada:
>  - We've prioritized all `regression-from-stable-to-stable` issues for `T-compiler` and `libs-impl`.
>  - From now on new issues tagged with `regression-from-stable-to-stable` will automatically add `I-prioritize` and then request prioritization to the wg.
>  - Same happens for `regression-from-stable-to-beta` and `regression-from-stable-to-nightly`.
>- We are in the process of automating most of our procedure.

@*WG-rfc-2229* checkin by @**nikomatsakis**:
> * We've created a repository to track the issues and work, [rust-lang/project-rfc-2229](https://github.com/rust-lang/project-rfc-2229)
> * Currently doing some core refactorings, improving the "HIR place" datastructure to /IU be sufficiently precise, and refactoring how closures represent captures to use that instead of individual variables


## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Ensure stack when building MIR for matches" [#72941](https://github.com/rust-lang/rust/pull/72941)
  - [Fixes stack overflow](https://github.com/rust-lang/rust/issues/72933)
- "Fix link error with #[thread_local] introduced by #71192" [#73065](https://github.com/rust-lang/rust/pull/73065)
  - Fixes an error introduced by "[Make TLS accesses explicit in MIR #71192 ](https://github.com/rust-lang/rust/pull/71192)"
- "Reoder order in which MinGW libs are linked to fix recent breakage" [#73184](https://github.com/rust-lang/rust/pull/73184)
  - "Recent upstream mingw-w64 changes made libmsvcrt depend on libmingwex breaking compilation in some cases when using external MinGW."
- "Allow inference regions when relating consts" [#73225](https://github.com/rust-lang/rust/pull/73225)
  - Fixes ICE "generator_interior.rs impossible case reached" [#73050](https://github.com/rust-lang/rust/issues/73050)
- "Disable the `SimplifyArmIdentity` pass" [#73262](https://github.com/rust-lang/rust/pull/73262)
  - This is the beta nomination for a `P-critical` issue.
- "linker: Never pass `-no-pie` to non-gnu linkers" [#73384](https://github.com/rust-lang/rust/pull/73384)
  - Fixes "linking error: unknown agrument `-no-pie`" [#73370](https://github.com/rust-lang/rust/issues/73370)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
There are no issues this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
There are no issues this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
There are no issues this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
There are no issues this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
There are no issues this time.

:back: / :shrug: / :hand:

## PR's S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Implement `--extern-location`" [#72603](https://github.com/rust-lang/rust/pull/72603)
  - This was already discussed last week
  - [an MCP is pending](https://github.com/rust-lang/compiler-team/issues/303)

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
There are no issues this time.

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [49 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [26 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 1 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 4 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 14 P-high, 45 P-medium, 4 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Slice index becomes wrong (beta regression)" [#73223](https://github.com/rust-lang/rust/issues/73223)
  - It's a regression from stable to beta
  - [PR is merged already on nightly](https://github.com/rust-lang/rust/pull/73262)
  - It's beta nominated
- "ICE: could not fully normalize" [#73249](https://github.com/rust-lang/rust/issues/73249)
  - It's a regression from stable to nightly
  - [It has a PR already r+ed](https://github.com/rust-lang/rust/pull/73257)
- "ICE: MIR const-checker found novel structural match violation" [#73431](https://github.com/rust-lang/rust/issues/73431) 
  - ICE when matching with a trait constant
  - Beta regression caused by [#67343](https://github.com/rust-lang/rust/pull/67343) (@**ecstatic-morse**)
  - Breaks previously accepted code, should be fixed and backported before it gets to stable

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
There are no issues this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
There are no issues this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- "Unreasonably long (and useless) error message doing modulo on non-existent variable: overflow evaluating the requirement `typenum::UInt<typenum::UInt..." [#72839](https://github.com/rust-lang/rust/issues/72839)
  - [PR is merged already](https://github.com/rust-lang/rust/pull/73005)
  - It's already beta accepted
  - So this is waiting for a beta backport

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
There are no issues this time.

## Performance logs

[Triage done by njn](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

Some bustage involving Cargo meant that some merges in this period didn't get measured.

Regressions:
- [Rollup of 10 pull requests](https://github.com/rust-lang/rust/pull/73367#issuecomment-644456094) ([instructions](https://perf.rust-lang.org/compare.html?start=ce6d3a73b514e9649e57cee812ad129bb2112016&end=d4ecf31efc2309fb6df8c2a8af9aaf8176ab1c8d&stat=instructions:u)):
  Regressed up to 3.5% on multiple benchmarks. Maybe [#71824](https://github.com/rust-lang/rust/pull/71824) is the cause?
- [Disable the `SimplifyArmIdentity` pass](https://github.com/rust-lang/rust/pull/73262#issuecomment-644451010) ([instructions](https://perf.rust-lang.org/compare.html?start=7c78a5f97de07a185eebae5a5de436c80d8ba9d4&end=f4fbb93113aa4f0a0cd08e74afb35381bbfbc7f0&stat=instructions:u)):
  A small regression on a couple of benchmarks from disabling a buggy pass,
  which may be re-enabled in the future?
- A small regression occurred for `syn-opt`, but I can't tell which PR was
  responsible because the improvement occurred in one of the merges that wasn't
  measured due to the Cargo bustage.

Improvements:
- Some huge improvements occurred for `clap-rs-opt`, but I can't tell which PR was responsible because the improvement occurred in one of the merges that wasn't measured due to the Cargo bustage.
- [Rollup of 8 pull requests](https://github.com/rust-lang/rust/pull/73316#issuecomment-644453724) ([instructions](https://perf.rust-lang.org/compare.html?start=1fb612bd15bb3ef098fd24c20d0727de573b4410&end=06e47688bf15d0215edbe05b21603062f6d2eb5d&stat=instructions:u)):
  A small improvement on `many-assoc-items`, and a tiny regression on a couple of other benchmarks.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Type mismatching cased by duplicate associated type resolution" [#59326](https://github.com/rust-lang/rust/issues/59326)
  - Unassigned P-high regression
  - Culprit likely to be [#56837](https://github.com/rust-lang/rust/pull/56837)
- "Incorrect compilation / STATUS_ACCESS_VIOLATION when linking with lld with target-cpu set" [#72145](https://github.com/rust-lang/rust/issues/72145)
  - Metabug: "Use lld by default on x64 msvc windows" [#71520](https://github.com/rust-lang/rust/issues/71520)
- "mv std libs to std/" [#73265](https://github.com/rust-lang/rust/pull/73265)
  - PR to move the stdlib crates to the `std/` folder
  - [Proposes](https://github.com/rust-lang/rust/pull/73265#issuecomment-643416610) the following directory structure: `std/<crate>/src/*.rs` (i.e. one `src/` folder per crate)
- "f32::powi on Windows returns different results between 1.44 and 1.45 beta" [#73420](https://github.com/rust-lang/rust/issues/73420)
  - Nominated with intention of raising awareness of this LLVM 10 change and to discuss briefly what to do. Do we want to add some relnotes?.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
There are no issues this time.