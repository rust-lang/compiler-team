---
tags: weekly, rustc
type: docs
note_id: HcDfU1v8SAiAWtLQPIJkJw
---

# T-compiler Meeting Agenda 2024-03-14

## Announcements

- :loudspeaker: Next week release of stable 1.77 `rustc` :loudspeaker:
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-03-14T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: 3 months ago)
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: about 41 days ago)
  - "Add `--emit=` to emit nothing" [compiler-team#718](https://github.com/rust-lang/compiler-team/issues/718) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--emit.3D.60.20to.20emit.20nothing.20compiler-team.23718)) (last review activity: about 41 days ago)
  - "Dist rustc with overflow checks" [compiler-team#724](https://github.com/rust-lang/compiler-team/issues/724) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Dist.20rustc.20with.20overflow.20checks.20compiler-team.23724)) (last review activity: about 20 days ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking Issue for RFC 3013: Checking conditional compilation at compile time" [rust#82450](https://github.com/rust-lang/rust/issues/82450#issuecomment-1965328542)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457#issuecomment-1789204219)
  - "Stabilize `--env-set` option" [rust#119926](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
  - "Make casts of pointers to trait objects stricter" [rust#120248](https://github.com/rust-lang/rust/pull/120248#issuecomment-1981506568)
  - "sess: stabilize `-Zrelro-level` as `-Crelro-level`" [rust#121694](https://github.com/rust-lang/rust/pull/121694#issuecomment-1988156080)
  - "Add encoding for `f16` and `f128`" [rust#122106](https://github.com/rust-lang/rust/pull/122106#issuecomment-1983030121)
- Things in FCP (make sure you're good with it)
  - "Add `wasm_c_abi` `future-incompat` lint" [rust#117918](https://github.com/rust-lang/rust/pull/117918)
  - "debuginfo: Stabilize `-Z debug-macros`, `-Z collapse-macro-debuginfo` and `#[collapse_debuginfo]`" [rust#120845](https://github.com/rust-lang/rust/pull/120845)
- Accepted MCPs
  - "MCP: Low level components for async drop" [compiler-team#727](https://github.com/rust-lang/compiler-team/issues/727) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Low.20level.20components.20for.20async.20drop.20compiler-team.23727))
  - "Support debug fission using -Csplit-debuginfo=post-link" [compiler-team#721](https://github.com/rust-lang/compiler-team/issues/721)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703#)
  - "Put "checks that detect UB" under their own flag below `debug_assertions`" [compiler-team#725](https://github.com/rust-lang/compiler-team/issues/725) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Put.20.22checks.20that.20detect.20UB.22.20under.20their.20o.E2.80.A6.20compiler-team.23725))
  - "Separate incremental crate identity" [compiler-team#726](https://github.com/rust-lang/compiler-team/issues/726) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Separate.20incremental.20crate.20identity.20compiler-team.23726))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 57 days ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
    - concern: [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
- Finalized FCPs (disposition merge)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "more eagerly instantiate binders" [rust#119849](https://github.com/rust-lang/rust/pull/119849)
- Other teams finalized FCPs
  - "Lint singleton gaps after exclusive ranges" [rust#118879](https://github.com/rust-lang/rust/pull/118879)
  - "more eagerly instantiate binders" [rust#119849](https://github.com/rust-lang/rust/pull/119849)
  - "align_offset, align_to: no longer allow implementations to spuriously fail to align" [rust#121201](https://github.com/rust-lang/rust/pull/121201)
  - "`E0492: borrow of an interior mutable value may end up in the final value` during const eval when no inner mutability is involved" [rust#121250](https://github.com/rust-lang/rust/issues/121250)
  - "Propagate temporary lifetime extension into if and match." [rust#121346](https://github.com/rust-lang/rust/pull/121346)

### WG checkins

## Next week's WG checkins
- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Checkin text

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > #[diagnostic::on_unimplemented] shipped to stable!

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.77?] "Downgrade const eval dangling ptr in final to future incompat lint" [rust#122204](https://github.com/rust-lang/rust/pull/122204)
  - Authored by Felix: "Short term band-aid for issue #121610 (P-high regression in a crater run), downgrading the prior hard error to a future-incompat lint (tracked in issue #122153)."
  - already merged, nominated by Wesley
  - perf. run looks [neutral](https://github.com/rust-lang/rust/pull/122204#issuecomment-1996317393)
<!--
/poll Approve beta backport of #122204?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [66 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 4 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 15 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "rust-1.75.0 fails to compile with ICE on aarch64 and various ppc arches with LTO enabled - error: could not compile memchr" [rust#121124](https://github.com/rust-lang/rust/issues/121124)
  - Waiting on feedback from Gentoo folks ([issue](https://bugs.gentoo.org/924301#c17) is progressing)
- "regression: visibility qualifiers are not permitted" [rust#121607](https://github.com/rust-lang/rust/issues/121607)
  - fixed by #122004 (beta backport approved last week)
- "regression: encountered mutable pointer in final value" [rust#121610](https://github.com/rust-lang/rust/issues/121610)
  - Will be fixed by #122204 (beta nominated)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2024-03-11](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-03-11.md)

A mixed week, with a vast number of improvements (in large part due to PR
#122010, which undoes a prior regression; PR #120985, a host LLVM update).
But also three admittedly small-ish regressions which seemed unanticipated and
were still large enough that I did not feel comfortable rubber-stamping them
with a perf-regression-triaged marking.

Triage done by **@pnkfelix**.
Revision range: [41d97c8a..e919669d](https://perf.rust-lang.org/?start=41d97c8a5dea2731b0e56fe97cd7cb79e21cff79&end=e919669d42dfb8950866d4cb268c5359eb3f7c54&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 1.4%]   | 38    |
| Regressions (secondary)  | 1.1%  | [0.2%, 4.9%]   | 50    |
| Improvements (primary)   | -1.0% | [-4.8%, -0.2%] | 119   |
| Improvements (secondary) | -0.8% | [-2.2%, -0.4%] | 36    |
| All  (primary)           | -0.6% | [-4.8%, 1.4%]  | 157   |


2 Regressions, 5 Improvements, 9 Mixed; 5 of them in rollups
54 artifact comparisons made in total

#### Regressions

interpret: avoid a long-lived PlaceTy in stack frames [#121985](https://github.com/rust-lang/rust/pull/121985) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c9a75b3238b66592779d6b240dbf78eacefebb8&end=52f8aec14c616387c5f793687f2d9026de6c78ca&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 1     |
| Regressions (secondary)  | 3.0% | [0.2%, 4.5%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.3%] | 1     |

* primary regression was to html5ever doc-full; was anctipated during development and is presumed spurious.
* marking as triaged.

Detect unused struct impls pub trait [#121752](https://github.com/rust-lang/rust/pull/121752) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cd81f5b27ee00b49d413db50b5e6af871cebcf23&end=c69fda7dc664e62f8920a02a4e55d6207b212c24&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.5%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 0.5%] | 6     |

* primary regressions are all to serde and cranelift codegen for various profiles of incr-patched:println.
* the cycles measurement didn't observe any change at all, but that could be due to the difference being swamped by overall variance
* the [perf diff](https://perf.rust-lang.org/detailed-query.html?commit=c69fda7dc664e62f8920a02a4e55d6207b212c24&benchmark=serde-1.0.136-check&scenario=incr-patched%3A+println&base_commit=cd81f5b27ee00b49d413db50b5e6af871cebcf23&sort_idx=-11) highlights that the query `live_symbols_and_ignored_derived_traits` is the source of the perf regression, which is consistent with the idea that this lint has become more expensive since that's where we see the call to the newly-added `solve_rest_impl_items` (a worklist algorithm from the PR).
* leaving a note for the author about this; not marking as triaged.

#### Improvements

Rollup of 7 pull requests [#122111](https://github.com/rust-lang/rust/pull/122111) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bfe762e0ed2e95041cc12c02c5565c4368f2cc9f&end=7d3702e472b99be0f5de6608dd87af1df8f99428&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.3%] | 7     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.3%] | 5     |
| All  (primary)           | -0.4% | [-0.4%, -0.3%] | 7     |

* all 7 primary improvements are to html5ever.
* all 5 secondary improvements are to tt-muncher.

Rollup of 8 pull requests [#122117](https://github.com/rust-lang/rust/pull/122117) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7d3702e472b99be0f5de6608dd87af1df8f99428&end=d03b986db1f4146b58078c9dde5b0fa6d808f031&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.1% | [-3.9%, -0.4%] | 12    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -2.1% | [-3.9%, -0.4%] | 12    |

* all 12 primary improvements are to diesel
* this is because of PR #122107, which made the `non_local_definitions` lint allow-by-default
* this effectively had the reverse effect of PR #120393 (which added the aforementioned lint and caused regressions to 12 variations of diesel).

Merge `collect_mod_item_types` query into `check_well_formed` [#121500](https://github.com/rust-lang/rust/pull/121500) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=42825768b103c28b10ce0407749acb21d32abeec&end=74acabe9b042ea8c42862ee29aca2a8b7d333644&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.8%, -0.2%] | 4     |
| Improvements (secondary) | -0.5% | [-0.6%, -0.5%] | 2     |
| All  (primary)           | -0.6% | [-0.8%, -0.2%] | 4     |

* 3 significant primary improvements are to libc incr-patched:clone, and 1 less significant to bitmaps check incr-unchanged.

Avoid invoking the `intrinsic` query for DefKinds other than `Fn` or `AssocFn` [#122010](https://github.com/rust-lang/rust/pull/122010) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=01d73d4041969cde4a79bf9793521ef323248a24&end=4d4bb491b65c300835442f6cb4f34fc9a5685c26&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.0%, -0.2%] | 74    |
| Improvements (secondary) | -0.7% | [-2.1%, -0.2%] | 26    |
| All  (primary)           | -0.5% | [-1.0%, -0.2%] | 74    |

* undoes the vast bulk of the broad perf regression injected by PR #120675

Dep node encoding cleanups [#122064](https://github.com/rust-lang/rust/pull/122064) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5bc7b9ac8ace5312e1d2cdc2722715cf58d4f926&end=094a6204f590e6b4770b5f26359dd17a07897adf&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 19    |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 12    |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 19    |


#### Mixed

Optimize write with as_const_str for shorter code [#122059](https://github.com/rust-lang/rust/pull/122059) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=79d246112dc95bbd67848f7546f3fd1aca516b82&end=9fb91aa2e70bfcc1c0adaad79711f0321ea81ece&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.1%  | [0.3%, 1.9%]   | 2     |
| Improvements (primary)   | -0.8% | [-1.2%, -0.4%] | 2     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -0.8% | [-1.2%, -0.4%] | 2     |

* (secondary) regressions are to deep-vector debug-full (which may be spurious based on the graph) and wg-grammar debug-incr-unchanged
* since @nnethercote was already involved in related efforts here (e.g. PR #121001) and this resulting refinement, I'm going to mark this as triaged.

Replace the default branch with an unreachable branch If it is the last variant [#120268](https://github.com/rust-lang/rust/pull/120268) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9fb91aa2e70bfcc1c0adaad79711f0321ea81ece&end=14fbc3c00525b41a3a3ee2c90e9ab6fd3b05274f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.8%]   | 4     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 7     |
| Improvements (primary)   | -0.8% | [-1.2%, -0.3%] | 5     |
| Improvements (secondary) | -0.9% | [-2.2%, -0.3%] | 3     |
| All  (primary)           | -0.1% | [-1.2%, 1.8%]  | 9     |

* primary regressions are to cargo opt-full (1.76%), cargo debug-incr-patched:println (0.40%), libc doc-full (0.50%), hyper doc-full (0.19%).
* the regression to cargo opt-full [was anticipated](https://github.com/rust-lang/rust/pull/120268#issuecomment-1943896894) by rust-timer runs during development; but other follow-up rust-timer runs did not always include the same regression.
* the PR itself notes that there are known performance problems in LLVM with unreachable branches (see e.g. [llvm#78578](https://github.com/llvm/llvm-project/issues/78578)). It is not clear to me whether the above regressions are related to that.
* posted comment [asking](https://github.com/rust-lang/rust/pull/120268#issuecomment-1992182505) PR author for more info. Not marking as triaged.

Rollup of 8 pull requests [#122182](https://github.com/rust-lang/rust/pull/122182) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=14fbc3c00525b41a3a3ee2c90e9ab6fd3b05274f&end=1b2c53a15dba7962cfc284c3b6d61a0341ffa27a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.3%  | [1.3%, 1.3%]   | 1     |
| Regressions (secondary)  | 0.8%  | [0.2%, 1.3%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.7%, -0.2%] | 17    |
| Improvements (secondary) | -0.5% | [-0.9%, -0.2%] | 15    |
| All  (primary)           | -0.3% | [-0.7%, 1.3%]  | 18    |

* sole primary regression is to image opt-full
* improvements obviously outweigh the regressions
* ... but oh, there is also a bootstrap regression that may be of concern: "Bootstrap: 648.483s -> 652.903s (0.68%)"
* kobzol has hypothesized that PR #122099 may be the cause of the bootstrap regression.
* after some discussion on the rollup PR, decided to mark as triaged; the author
  may well choose to do some followup, but we will not hound them about it. :)

Replace `TypeWalker` usage with `TypeVisitor` in `wf.rs` [#122150](https://github.com/rust-lang/rust/pull/122150) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9d272a1b0501f96da0ed10caa1b2eb6dbb653686&end=b054da815501bafb24a08284151d32862f7a3a13&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.7%  | [0.3%, 1.3%]   | 6     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 6     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 3     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 6     |


* six (secondary) regressions (to variants of unify-linearly and regression-31157) were anticipated during development
* we were also expecting a broader set of 34 primary improvements. But the mean primary improvement we expected was -0.3%, which was unchanged.
* marking as triaged

Rollup of 12 pull requests [#122241](https://github.com/rust-lang/rust/pull/122241) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b054da815501bafb24a08284151d32862f7a3a13&end=8401645716b26a8b4c6974dc0680e55e81e9e8a1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.2%, 1.6%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 2     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -0.3% | [-0.3%, -0.3%] | 2     |

* sole regressions are to (secondary) regression-31157 debug-incr-full (1.56%), which might be spurious based on the graph, and tt-muncher opt-incr-unchanged (0.19%), which I don't consider worth getting worried about.
* marking as triaged.

Update host LLVM on x64 Linux to LLVM 18 [#120985](https://github.com/rust-lang/rust/pull/120985) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8401645716b26a8b4c6974dc0680e55e81e9e8a1&end=25ee3c6a2f429a97ff4ad239e3f42409cd71fe0a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 1.0%]   | 88    |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.5%]   | 21    |
| Improvements (primary)   | -1.0% | [-1.6%, -0.4%] | 54    |
| Improvements (secondary) | -0.8% | [-1.2%, -0.6%] | 8     |
| All  (primary)           | -0.2% | [-1.6%, 1.0%]  | 142   |

* These performance changes were anticipated, and the improvements outweigh the regressions.
* Marking as triaged.

Rollup of 8 pull requests [#122256](https://github.com/rust-lang/rust/pull/122256) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=25ee3c6a2f429a97ff4ad239e3f42409cd71fe0a&end=2d24fe591f30386d6d5fc2bb941c78d7266bf10f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 1.6%]   | 21    |
| Regressions (secondary)  | 0.6%  | [0.3%, 1.6%]   | 7     |
| Improvements (primary)   | -0.7% | [-1.0%, -0.5%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.4%  | [-1.0%, 1.6%]  | 24    |

* Nadrieril has isolated this to the rolled up PR #120504 and has reported it on that PR.
* (already marked as triaged)
* It might be addressed by follow-up PR #122396 (which is undergoing evaluation now).

Distinguish between library and lang UB in assert_unsafe_precondition [#121662](https://github.com/rust-lang/rust/pull/121662) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2d24fe591f30386d6d5fc2bb941c78d7266bf10f&end=768408af123a455fb27ad8af8055becd5b95d36f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.3%, 1.7%]   | 4     |
| Regressions (secondary)  | 1.1%  | [1.1%, 1.1%]   | 1     |
| Improvements (primary)   | -0.9% | [-1.7%, -0.4%] | 4     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | 0.1%  | [-1.7%, 1.7%]  | 8     |

* primary regressions are to cranelift-codegen opt-full (1.74%), cargo opt-full (1.33%), clap opt-full (1.18%), and exa debug-incr-unchanged (0.28%).
* the [rust-timer run](https://github.com/rust-lang/rust/pull/121662#issuecomment-1966015546) was "only" expected to regress 5 benchmarks, largely a *different* set, by a mean of 0.5%, not the 1.1% reported above.
* not marking as triaged

Stop using LLVM struct types for byval/sret [#122050](https://github.com/rust-lang/rust/pull/122050) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c69fda7dc664e62f8920a02a4e55d6207b212c24&end=a6d93acf5fdeb020ab86cc0d30d5672c23a7dba6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.9%  | [0.5%, 3.3%]   | 2     |
| Improvements (primary)   | -2.1% | [-2.4%, -1.9%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -2.1% | [-2.4%, -1.9%] | 2     |

* already marked as triaged as the reported regressions are clearly spurious based on the performance graph

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Stabilize `extended_varargs_abi_support`" [rust#116161](https://github.com/rust-lang/rust/pull/116161)
  - Waiting on T-lang (discussed [last week](https://github.com/rust-lang/rust/pull/116161#issuecomment-1983829513))
  - Will probably remove T-compiler nomination until then ...

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "[AIX] Remove AixLinker's debuginfo() implementation" [rust#117118](https://github.com/rust-lang/rust/pull/117118) (last review activity: 4 months ago)
  - @**Wesley Wiser** can you rubber stamp this one? It comes from the AIX target maintainer, seems fine ([last week comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-03-07/near/425346860))
- "tidy watcher" [rust#114209](https://github.com/rust-lang/rust/pull/114209)
  - cc: @**Wesley Wiser** (or re-roll?)
- "Require `type_map::stub` callers to supply file information" [rust#104342](https://github.com/rust-lang/rust/pull/104342) (last review activity: 2 months ago)
  - cc: @**Wesley Wiser**
- "Fix gce ICE when encountering ill-formed consts" [rust#119060](https://github.com/rust-lang/rust/pull/119060) (last review activity: 2 months ago)
  - cc: @**Michael Goulet (compiler-errors)**
- "dump-ice-to-disk/check.sh: convert needless bashism in a /bin/sh script." [rust#119992](https://github.com/rust-lang/rust/pull/119992) (last review activity: about 58 days ago)
  - cc: @**nils (Nilstrieb)**

## Next week's WG checkins

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
- Impl Trait initiative by @**oli**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/XOZqRee1QzmCEsaqQENWUQ)
