---
tags: weekly, rustc
type: docs
note_id: uDPdSPqLTReGUGYL2yp4EA
---

# T-compiler Meeting Agenda 2024-02-29

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-02-29T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 43 days ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Old MCPs (not seconded, take a look)
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: 2 months ago)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: about 27 days ago)
  - "Promote tier 3 arm64e-apple-darwin target to tier 2" [compiler-team#717](https://github.com/rust-lang/compiler-team/issues/717) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20arm64e-apple-darwin.20target.E2.80.A6.20compiler-team.23717)) (last review activity: about 27 days ago)
  - "Add `--emit=` to emit nothing" [compiler-team#718](https://github.com/rust-lang/compiler-team/issues/718) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--emit.3D.60.20to.20emit.20nothing.20compiler-team.23718)) (last review activity: about 27 days ago)
  - "Dist rustc with overflow checks" [compiler-team#724](https://github.com/rust-lang/compiler-team/issues/724) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Dist.20rustc.20with.20overflow.20checks.20compiler-team.23724)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking Issue for RFC 3013: Checking conditional compilation at compile time" [rust#82450](https://github.com/rust-lang/rust/issues/82450)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
  - "Add `wasm_c_abi` `future-incompat` lint" [rust#117918](https://github.com/rust-lang/rust/pull/117918)
  - "Stabilize `--env-set` option" [rust#119926](https://github.com/rust-lang/rust/pull/119926)
  - "debuginfo: Stabilize `-Z debug-macros`, `-Z collapse-macro-debuginfo` and `#[collapse_debuginfo]`" [rust#120845](https://github.com/rust-lang/rust/pull/120845)
- Things in FCP (make sure you're good with it)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703))
  - "Support debug fission using -Csplit-debuginfo=post-link" [compiler-team#721](https://github.com/rust-lang/compiler-team/issues/721) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20debug.20fission.20instead.20of.20dwarf.20split.20.E2.80.A6.20compiler-team.23721))
  - "Put "checks that detect UB" under their own flag below `debug_assertions`" [compiler-team#725](https://github.com/rust-lang/compiler-team/issues/725) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Put.20.22checks.20that.20detect.20UB.22.20under.20their.20o.E2.80.A6.20compiler-team.23725))
  - "Separate incremental crate identity" [compiler-team#726](https://github.com/rust-lang/compiler-team/issues/726) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Separate.20incremental.20crate.20identity.20compiler-team.23726))
  - "MCP: Low level components for async drop" [compiler-team#727](https://github.com/rust-lang/compiler-team/issues/727) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Low.20level.20components.20for.20async.20drop.20compiler-team.23727))
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking Issue for cfg-target-abi" [rust#80970](https://github.com/rust-lang/rust/issues/80970)
  - "change equate for binders to not rely on subtyping" [rust#118247](https://github.com/rust-lang/rust/pull/118247)
  - "Tracking Issue for `min_exhaustive_patterns`" [rust#119612](https://github.com/rust-lang/rust/issues/119612)
  - "Stabilize the `#[diagnostic]` namespace and `#[diagnostic::on_unimplemented]` attribute" [rust#119888](https://github.com/rust-lang/rust/pull/119888)
  - "Implement RFC 3373: Avoid non-local definitions in functions" [rust#120393](https://github.com/rust-lang/rust/pull/120393)
  - "make non-PartialEq-typed consts as patterns a hard error" [rust#120805](https://github.com/rust-lang/rust/pull/120805)

### WG checkins

- Impl Trait initiative by @**oli** ([previous checkin](https://hackmd.io/zW1EBQGZQ2yVhGBlvlPPpg?view=#WG-checkins)):
  > Checkin text

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/QQzvErTHQF6o8btLDH3oPw?view=#WG-checkins)):
  > Checkin text

## Backport nominations

Note: we are ~20 days from the release cut, if you have anything to backport feel free to label as such!

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 4 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 15 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "regression: visibility qualifiers are not permitted" [rust#121607](https://github.com/rust-lang/rust/issues/121607)
  - Regression in a beta crater run, affects a number of correlated crates, not particularly widespread nor updated but the minimal repro looks pretty simple ([comment](https://github.com/rust-lang/rust/issues/121607#issuecomment-1963084636))
  - Fine to also downgrade the `P-` label
  - @**León Orell Liehr (fmease)** already posted a patch #120698, assigned to @**Michael (compiler-errors) Goulet** for review (thanks to both!)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "Severe perf regression in optimized debug builds due to extra UB checks" [rust#121245](https://github.com/rust-lang/rust/issues/121245)
  - [from last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-02-22/near/422843279), meeting time ran out, postponed to today
  - suggestion from Wesley to land Nils' PR #121114 ([comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-02-22/near/422851025))

## Performance logs

> [triage logs for 2024-02-7](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-02-27.md)

A rare week where regressions out powered improvements to make the compiler roughly half a percent slower on average on nearly 100 benchmarks. Some regressions have fixes in the pipeline, but some remain elusive or were introduced to address correctness issues.

Triage done by **@rylev**.
Revision range: [5af21304..71ffdf7f](https://perf.rust-lang.org/?start=5af2130440c198afefbe5b8099342057cf272ef4&end=71ffdf7ff7ac6df5f9f64de7e780b8345797e8a0&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.2%, 4.4%]   | 69    |
| Regressions (secondary)  | 1.4%  | [0.2%, 4.9%]   | 66    |
| Improvements (primary)   | -1.1% | [-3.3%, -0.2%] | 28    |
| Improvements (secondary) | -0.6% | [-1.5%, -0.2%] | 33    |
| All  (primary)           | 0.4%  | [-3.3%, 4.4%]  | 97    |


4 Regressions, 6 Improvements, 5 Mixed; 2 of them in rollups
58 artifact comparisons made in total

#### Regressions

Always evaluate free constants and statics, even if previous errors occurred [#121087](https://github.com/rust-lang/rust/pull/121087) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5af2130440c198afefbe5b8099342057cf272ef4&end=cce6a6e22e715bd74455f2560a956ab920c3a914&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.4%, 2.0%] | 4     |
| Regressions (secondary)  | 1.0% | [0.3%, 5.2%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.4%, 2.0%] | 4     |
- Regressions in primary benchmarks are real and addressed in #121387
- Regressions in secondary benchmarks seem to be all noise.


Use intrinsics::debug_assertions in debug_assert_nounwind [#120863](https://github.com/rust-lang/rust/pull/120863) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=29f87ade9d78d233e85ef6ca2d6153d0d4fd38d6&end=2b43e75c98cc5ae32328c8b49657bcd882eb5e75&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.3%, 1.7%]   | 13    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.7%  | [-0.4%, 1.7%]  | 14    |
- Pinged the author on what next steps are. Regression is in codegen which would be expected given the nature of the change, but it's unclear how one would address the issue.


wasm: Store rlib metadata in wasm object files [#120588](https://github.com/rust-lang/rust/pull/120588) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0987e41d1ccbae7a8a55fdcde4af0ea76ebfe2d3&end=7168c13579a550f2c47f7eea22f5e226a436cd00&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 3.1% | [3.0%, 3.3%] | 4     |
| Regressions (secondary)  | 1.5% | [0.2%, 2.9%] | 33    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 3.1% | [3.0%, 3.3%] | 4     |
- Regressions seem legit but nothing in self profiling stands out as a likely culprit. 
- Asked the author for more investigation.


Subtree update of `rust-analyzer` [#121581](https://github.com/rust-lang/rust/pull/121581) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=710048f790ebc9ebfac6039c6733570f8084c9de&end=43fdd4916d19f4004e23d422b5547637ad67ab21&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.7%, 0.8%] | 4     |
| Regressions (secondary)  | 0.4% | [0.2%, 0.7%] | 23    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.7%, 0.8%] | 4     |
- This is all noise - regressions revert in the next run.


#### Improvements

Improve codegen diagnostic handling [#121129](https://github.com/rust-lang/rust/pull/121129) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=026b3b8e955e0571db39aa96fc9d7aba25cc4d66&end=f70f19fef41cfdda75c92f163434c29ad046cf09&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -5.1% | [-5.1%, -5.1%] | 1     |
| All  (primary)           | -     | -              | 0     |


remove `sub_relations` from the `InferCtxt` [#119989](https://github.com/rust-lang/rust/pull/119989) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d9ae43c7879c83f08ea2e886b55ea0f6839c9ead&end=397937d812852f9bbeb671005cb399dbcb357cde&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 28    |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] | 28    |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 28    |


Rollup of 7 pull requests [#121549](https://github.com/rust-lang/rust/pull/121549) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6bdb8a4a96945527677f4b3dc7161875834189a4&end=381d69953bb7c3390cec0fee200f24529cb6320f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.8% | [-2.8%, -2.8%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -2.8% | [-2.8%, -2.8%] | 1     |


Use `br` instead of a conditional when switching on a constant boolean [#120650](https://github.com/rust-lang/rust/pull/120650) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2ae1bb671183a072b54ed8ed39abfcd72990a3e7&end=89d8e3116ccb7f55760825b731de4f4e0fd76770&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-2.2%, -0.1%] | 19    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.9% | [-2.2%, -0.1%] | 19    |


speed up `x install` by skipping archiving and compression [#118724](https://github.com/rust-lang/rust/pull/118724) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=43fdd4916d19f4004e23d422b5547637ad67ab21&end=26cd5d862e22c013ecb3396b177d3af80e95c836&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.8%, -0.6%] | 4     |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] | 24    |
| All  (primary)           | -0.7% | [-0.8%, -0.6%] | 4     |


Use generic `NonZero` in tests. [#121461](https://github.com/rust-lang/rust/pull/121461) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0ecbd0605770f45c9151715e66ba2b3cae367fcb&end=0250ef2571185b05701ed9d74fc904c17508a397&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -3.6% | [-3.6%, -3.6%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -3.6% | [-3.6%, -3.6%] | 1     |


#### Mixed

Rollup of 8 pull requests [#121345](https://github.com/rust-lang/rust/pull/121345) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2b43e75c98cc5ae32328c8b49657bcd882eb5e75&end=bb594538fc6e84213a6b8d5e165442570aa48923&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.4%, 1.1%]   | 9     |
| Regressions (secondary)  | 1.7%  | [1.7%, 1.7%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.8%, -0.2%] | 6     |
| Improvements (secondary) | -0.8% | [-2.1%, -0.3%] | 17    |
| All  (primary)           | 0.2%  | [-0.8%, 1.1%]  | 15    |
- Lots of seemingly risky PRs in this roll up. Need to run through them.


match lowering: eagerly simplify match pairs [#120904](https://github.com/rust-lang/rust/pull/120904) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2dc0170233689435f988579a2080f27b02027d21&end=4e650749337bd4b0b464ebb5252d122b7cb98c8d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 3     |
| Improvements (primary)   | -2.0% | [-3.1%, -0.2%] | 7     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -2.0% | [-3.1%, -0.2%] | 7     |
- Improvements far outweigh the regressions so I don't think this needs further investigation.


compiler: clippy::complexity fixes [#121523](https://github.com/rust-lang/rust/pull/121523) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8f359beca4e58bc3ae795a666301a8f47023044c&end=6bdb8a4a96945527677f4b3dc7161875834189a4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.5%  | [0.2%, 2.7%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.2% | [-1.2%, -1.2%] | 1     |
| All  (primary)           | 1.5%  | [0.2%, 2.7%]   | 2     |
- The large regression that caused this to be marked overall as a regression is just noise.


Add `#[rustc_no_mir_inline]` for standard library UB checks [#121114](https://github.com/rust-lang/rust/pull/121114) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=89d8e3116ccb7f55760825b731de4f4e0fd76770&end=e9f95949138125bb1b98ed213a41b9aa825bacf5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.2%]   | 33    |
| Regressions (secondary)  | 1.5%  | [0.3%, 5.5%]   | 12    |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 3     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 8     |
| All  (primary)           | 0.4%  | [-0.3%, 1.2%]  | 36    |
- Consider necessary for fixing some pathological performance cases as well as addressing another critical issue. (See [this analysis](https://github.com/rust-lang/rust/pull/121114#issuecomment-1962316858) for more detail.)


Implement RFC 3373: Avoid non-local definitions in functions [#120393](https://github.com/rust-lang/rust/pull/120393) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c0b1fcd2914caaf1c3a1071028fb74b70c519e9&end=b0d3e04ca9f848c5fce3ad4bab6153009be06db0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.2%  | [0.5%, 4.2%]   | 12    |
| Regressions (secondary)  | 0.7%  | [0.1%, 1.8%]   | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.8%, -0.1%] | 27    |
| All  (primary)           | 2.2%  | [0.5%, 4.2%]   | 12    |
- [#121625](https://github.com/rust-lang/rust/pull/121625) is meant to try to address this.
- Given the complex nature of the change, I imagine a revert is not desirable even if performance can't be gained back.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "debuginfo: Stabilize `-Z debug-macros`, `-Z collapse-macro-debuginfo` and `#[collapse_debuginfo]`" [rust#120845](https://github.com/rust-lang/rust/pull/120845)
  - posted in a past meeting ([comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-02-15/near/421688818))
  - @**Jack Huey** left some [comments](https://github.com/rust-lang/rust/pull/120845#issuecomment-1943753599)
  - nominated by @**Vadim Petrochenkov**, opened an FCP. Anything more to discuss or can the nomination be removed?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "compiler: allow transmute of ZST arrays with generics" [rust#114009](https://github.com/rust-lang/rust/pull/114009) (last review activity: 7 months ago)
  - cc @**Wesley Wiser** (or are you ok with passing this to someone else?)
- "Create the previous dep graph index on a background thread" [rust#116375](https://github.com/rust-lang/rust/pull/116375) (last review activity: 4 months ago)
  - cc: **cjgillot**
- "Fix ICE from zero-length span when suggesting to remove trailing semi-colon from final statement in block" [rust#118953](https://github.com/rust-lang/rust/pull/118953) (last review activity: 2 months ago)
  - cc @**cjgillot**

## Next week's WG checkins

Skipping next week

Next meetings' agenda draft: [hackmd link](https://hackmd.io/pr4gaVUvQv2UNLSVHbptzQ)
