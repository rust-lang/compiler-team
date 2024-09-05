---
tags: weekly, rustc
type: docs
note_id: YJn8yQCVTfqDpW_nVTUfow
---

# T-compiler Meeting Agenda 2024-08-22

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-08-22T22:00:00+01:00>
- wg-rust-analyzer steering meeting on Zulip (https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/Steering.20meeting) <time:2024-08-23T17:00:00+01:00>
- wg-macros triage meeting Zulip (https://rust-lang.zulipchat.com/#narrow/stream/410876-wg-macros.2Ftriage) <time:2024-08-23T18:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 6 months ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 4 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 3 months ago)
  - "Don't track `--emit=` options as part of crate SVH" [compiler-team#769](https://github.com/rust-lang/compiler-team/issues/769) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Don.27t.20track.20.60--emit.3D.60.20options.20as.20part.20of.20.E2.80.A6.20compiler-team.23769)) (last review activity: about 6 days ago)
  - "Opt-in flag for absolute paths in diagnostics" [compiler-team#770](https://github.com/rust-lang/compiler-team/issues/770) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Opt-in.20flag.20for.20absolute.20paths.20in.20diagnos.E2.80.A6.20compiler-team.23770)) (last review activity: about 6 days ago)
  - "`--msrv=version` option so the compiler can take MSRV into account when linting" [compiler-team#772](https://github.com/rust-lang/compiler-team/issues/772) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-C.20msrv.3Dversion.60.20option.20so.20the.20compiler.20.E2.80.A6.20compiler-team.23772)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Add `--print host-triple` to print host target triple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "Don't warn empty branches unreachable before edition 2024" [rust#129103](https://github.com/rust-lang/rust/pull/129103)
- Things in FCP (make sure you're good with it)
  - "Enable `deny(unreachable_pub)` on `rustc_*` crates" [compiler-team#773](https://github.com/rust-lang/compiler-team/issues/773) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23773))
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 7 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.
- Other teams finalized FCPs
  - "Stabilize opaque type precise capturing (RFC 3617)" [rust#127672](https://github.com/rust-lang/rust/pull/127672)
  - "Stabilize `unsafe_attributes`" [rust#128771](https://github.com/rust-lang/rust/pull/128771)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [67 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 2 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 7 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE: `adding a def'n for node-id NodeId(18) and def kind AnonConst but a previous def'n exists`" [rust#128016](https://github.com/rust-lang/rust/issues/128016)
  - Reverted in beta by #128760
  - First attempt to fix was in #128844 (now closed), new plan is described in issue #129023 (cc @**Noah Lev (camelid)**)
  - PR with a feature gate option by @_**Boxy** in #129246, @_**Vadim Petrochenkov** prefers reverting ([comment](https://github.com/rust-lang/rust/pull/129246#issuecomment-2299050629)) #125915
  - Discussion in progress
- "regression: adding a def'n for node-id NodeId(597) and def kind AnonConst but a previous def'n exists" [rust#128901](https://github.com/rust-lang/rust/issues/128901)
  - Basically same reasoning as above

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: overflow evaluating the requirement" [rust#128887](https://github.com/rust-lang/rust/issues/128887)
  - Discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-08-15/near/462565514), seems fine to accept that breakage

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "Generated WebAssembly unexpectedly requires reference types" [rust#128475](https://github.com/rust-lang/rust/issues/128475)
  - "this change is expected". Documentation PR in progress in #128511 (I-compiler-nominated; see below for the nomination)

## Performance logs

> [triage logs for 2024-08-19](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-08-19.md)

A fairly noisy week (though most of that has been dropped from this report).
Overall we saw several improvements, and ended the week on a net positive.
Memory usage is down around 1.5-3% over the course of the week, primarily due
to [RawVec polymorphization](https://github.com/rust-lang/rust/pull/126793) and
[CloneToUninit impl expansion](https://github.com/rust-lang/rust/pull/126877).

Triage done by **@simulacrum**.
Revision range: [9cb1998e..4fe1e2bd](https://perf.rust-lang.org/?start=9cb1998ea15e179482504e07cad8fa121e169a32&end=4fe1e2bd5bf5a6f1cb245f161a5e9d315766f103&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.7%]   | 124   |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.4%]   | 103   |
| Improvements (primary)   | -1.3% | [-4.3%, -0.2%] | 50    |
| Improvements (secondary) | -1.4% | [-3.3%, -0.2%] | 15    |
| All  (primary)           | -0.1% | [-4.3%, 1.7%]  | 174   |

1 Regressions, 1 Improvements, 3 Mixed; 1 of them in rollups
53 artifact comparisons made in total

#### Regressions

Fix problems with assoc expr token collection [#128725](https://github.com/rust-lang/rust/pull/128725) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b7d074d766d00a32fa8b2e4fa3813dd7d4d64e6&end=be0ea0c99a00bc365d9f80f1c90f747967a2e152&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.3%] | 5     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.5%] | 5     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.3%] | 5     |

Appears to be a real change in behavior (pre-merge showed fewer regressions)
but this is a correctness fix, so accepting them. 

#### Improvements

Rework MIR inlining debuginfo so function parameters show up in debuggers. [#128861](https://github.com/rust-lang/rust/pull/128861) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=026e9ed3f0c5b3ee6233fd23b5e497cb94cf6434&end=3139ff09e9d07f7700f8d15ed25a231e29c43627&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.3%  | [2.3%, 2.3%]   | 1     |
| Improvements (primary)   | -1.2% | [-1.4%, -1.1%] | 6     |
| Improvements (secondary) | -1.2% | [-1.3%, -1.2%] | 2     |
| All  (primary)           | -1.2% | [-1.4%, -1.1%] | 6     |

An improvement on many current benchmarks; the one regression is a spurious change.

#### Mixed

Apply "polymorphization at home" to RawVec [#126793](https://github.com/rust-lang/rust/pull/126793) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=41dd149fd6a6a06795fc6b9f54cb49af2f61775f&end=13f8a57cfb57d527abe797230beabb64758bb888&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.5%]   | 89    |
| Regressions (secondary)  | 0.4%  | [0.1%, 1.3%]   | 96    |
| Improvements (primary)   | -1.1% | [-3.8%, -0.2%] | 54    |
| Improvements (secondary) | -1.2% | [-2.9%, -0.3%] | 13    |
| All  (primary)           | -0.1% | [-3.8%, 1.5%]  | 143   |

An improvement on many current benchmarks, though some regressions. Overall a
net positive. Also reduced memory usage by about 1% for many of our benchmarks,
which is a great win!

Support reading thin archives in ArArchiveBuilder [#128936](https://github.com/rust-lang/rust/pull/128936) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3139ff09e9d07f7700f8d15ed25a231e29c43627&end=d2b5aa6552c8acf67f38a2ad92062a32ec542f08&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 14    |
| Regressions (secondary)  | 0.4%  | [0.4%, 0.4%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.3% | [-2.3%, -2.3%] | 1     |
| All  (primary)           | 0.3%  | [0.2%, 0.4%]   | 14    |

Regressions looks genuine, though relatively rare in our benchmark suite. It
might be worth doing some profiling of the Rust archive writer to see if
there's opportunities for optimization since it presumably hasn't received much
attention so far.

Rollup of 6 pull requests [#129202](https://github.com/rust-lang/rust/pull/129202) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9b318d2e93ce35e7ba32d8cfa96a1dbe63a7bed1&end=0f26ee4fd95a1c046582dfb18892f520788e2c2c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.1%, 2.2%]   | 5     |
| Improvements (primary)   | -0.9% | [-1.7%, -0.3%] | 4     |
| Improvements (secondary) | -1.4% | [-2.2%, -0.6%] | 2     |
| All  (primary)           | -0.9% | [-1.7%, -0.3%] | 4     |

Regression on match-stress looks genuine but likely doesn't merit deeper
investigation given that this is in a rollup (and I don't see obvious
match-stress-implicating PRs in the list).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "[DRAFT] #[contracts::requires(...)]" [rust#128045](https://github.com/rust-lang/rust/pull/128045)
  - nominated by @**Jieyou Xu** ([comment](https://github.com/rust-lang/rust/pull/128045#issuecomment-2267121847)):
  - Currently our attribute infra don't support `#[namespaced::attr(<arbitrary_inner_expr>)]`, without falling back to raw token handling. @apiraino & jieyouxu: this should be a design meeting.
  - Looking for suitable reviewers for the attribute handling -> HIR/MIR lowering parts. jieyouxu can help look at attribute handling, but would like another reviewer to look at the HIR/MIR parts (since oli is now on leave).
- "Document WebAssembly target feature expectations" [rust#128511](https://github.com/rust-lang/rust/pull/128511)
  - nominated by @**Jieyou Xu**
  - Context: [LLVM 19 update](https://github.com/rust-lang/rust/pull/127513) caused wasm proposals (think target features but in wasm) to become enabled-by-default (`reference-types` and `multivalue`) -> noticed by user in https://github.com/rust-lang/rust/issues/128475.
  - Expected that more wasm proposals will become enabled-by-default over time.
  - PR amends target docs for Tier 2 targets `wasm32-unknown-unknown`, `wasm32-wasip1-threads`, `wasm32-wasip1`, `wasm32-wasip2`
      - Amends baseline enabled-by-default wasm proposals
      - Documents how to produce Minimal Viable Product (MVP) wasm without these wasm proposals.
  - Does it need an FCP signoff?
  - What's a path forward with respect to more wasm proposals (see [comment](https://github.com/rust-lang/rust/pull/128511#issuecomment-2298009886)) becoming enabled-by-default in future LLVM updates, causing the wasm32 target baseline expectations to be follow?
- "type_id is not sufficiently collision-resistant" [rust#129014](https://github.com/rust-lang/rust/issues/129014)
  - Meeting proposal opened in [compiler-team#774](https://github.com/rust-lang/compiler-team/issues/774)
- "Emit specific message for time<=0.3.35" [rust#129343](https://github.com/rust-lang/rust/pull/129343)
  - nominated by @**Jieyou Xu**
  - Context: `time` inference regression
  - PR would add targeted detection logic for `time` involving the regressed method and emit a note to recommend updating `time`
  - Current impl does not try to probe for time version (otherwise we'd have to probe Cargo.toml etc.)
  - Do we want to merge this crate-specific diagnostic note?
  - Alternative: full revert of #99969 by @**Esteban Küber** in #129379 but ... it's complicated (see [comment](https://github.com/rust-lang/rust/pull/129379#issuecomment-2304349704))
- "Revert "alloc: implement FromIterator for Box<str>"" [rust#129379](https://github.com/rust-lang/rust/pull/129379)
  - See point above. tbh @_**apiraino** agrees with @_**Josh Stone (cuviper)** in [comment](https://github.com/rust-lang/rust/pull/129379#issuecomment-2303431546) that this is a t-libs-api decision

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

Skipping this week

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/exhhhyzVQj2DC6qLuLFG4g)
