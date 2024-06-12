---
tags: weekly, rustc
type: docs
note_id: XC-GJ4ubTbCwR8KLjXdx7A
---

# T-compiler Meeting Agenda 2024-05-09

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-05-09T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 3 months ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: 2 months ago)
  - "Only emit forward compatible v0 symbol names with graceful degradation" [compiler-team#737](https://github.com/rust-lang/compiler-team/issues/737) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Only.20emit.20forward.20compatible.20v0.20symbol.20na.E2.80.A6.20compiler-team.23737)) (last review activity: about 34 days ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: about 27 days ago)
  - "Add --print=check-cfg" [compiler-team#743](https://github.com/rust-lang/compiler-team/issues/743) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20--print.3Dcheck-cfg.20compiler-team.23743)) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - merge: [Retire the mailing list and make all decisions on zulip (compiler-team#649)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
    - no pending checkboxs
    - concerns: [automatic-sync (by compiler-errors)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660) [single-point-of-failure-via-stream-archival (by pnkfelix)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
  - merge: [Show files produced by `--emit foo` in json artifact notifications (rust#122597)](https://github.com/rust-lang/rust/pull/122597#issuecomment-2063945502)
    - @_**|123586** @_**|116107** @_**|125294** @_**|119031** @_**|248906** @_**|426609** @_**|116118** @_**|232957**
    - no pending concerns
  - merge: [allow overwriting the output of `rustc --version` (rust#124339)](https://github.com/rust-lang/rust/pull/124339#issuecomment-2075414901)
    - @_**|123586** @_**|125250** @_**|248906** @_**|124287** @_**|426609** @_**|116118** @_**|216206** @_**|232957**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730))
  - "Add `--emit=thin-link-bitcode` to enable distributed ThinLTO users" [compiler-team#735](https://github.com/rust-lang/compiler-team/issues/735) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zemit-thin-lto-index.3D.3Cpath.3E.60.20to.20ena.E2.80.A6.20compiler-team.23735))
  - "Support `-Cforce-frame-pointers=non-leaf`" [compiler-team#744](https://github.com/rust-lang/compiler-team/issues/744) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20.60-Cforce-frame-pointers.3Dnon-leaf.60.20compiler-team.23744))
  - "Warn (or error) when `Self` ctor from outer item is referenced in inner nested item" [rust#124187](https://github.com/rust-lang/rust/pull/124187)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 3 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
- Finalized FCPs (disposition merge)
  - "Make casts of pointers to trait objects stricter" [rust#120248](https://github.com/rust-lang/rust/pull/120248)
  - "Allow coercing functions whose signature differs in opaque types in their defining scope into a shared function pointer type" [rust#124297](https://github.com/rust-lang/rust/pull/124297)
- Other teams finalized FCPs
  - "Allow coercing functions whose signature differs in opaque types in their defining scope into a shared function pointer type" [rust#124297](https://github.com/rust-lang/rust/pull/124297)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Adjust `#[macro_export]`/doctest help suggestion for non_local_defs lint" [rust#124568](https://github.com/rust-lang/rust/pull/124568)
  - authored by @_**Urgau**
  - partially fixes #124534, a rustdoc lint triggered in rustdoc comments
  - t-rustdoc r+'d too
  - possibly there will be future work to handle this ([comment](https://github.com/rust-lang/rust/pull/124568#issuecomment-2090439661))
<!--
/poll Approve beta backport of #124568?
approve
decline
don't know
-->
- :beta: "Do not ICE on foreign malformed `diagnostic::on_unimplemented`" [rust#124683](https://github.com/rust-lang/rust/pull/124683)
  - authored by @_**Esteban Küber**
  - fixes #124651, regression on 1.78 stable, the ICE triggered when using a malformed `diagnostic::on_unimplemented`
  - Michael mentions that this should be ported together with #124675 (next backport)
<!--
/poll Approve beta backport of #124683?
approve
decline
don't know
-->
- :beta: "Fix more ICEs in `diagnostic::on_unimplemented`" [rust#124875](https://github.com/rust-lang/rust/pull/124875)
  - authored by @_**Michael Goulet (compiler-errors)**
  - fixes more ICEs on #124651
  - PR is open but r+d
  - Michael mentions that this should be ported together with #124683 (previous backport :))
<!--
/poll Approve beta backport of #124875?
approve
decline
don't know
-->
- :stable: "Do not ICE on foreign malformed `diagnostic::on_unimplemented`" [rust#124683](https://github.com/rust-lang/rust/pull/124683)
  - backport on stable of the ICE fix mentioned before
<!--
/poll Approve stable backport of #124683?
approve
approve but does not justify new dot release
decline
don't know
-->
- :stable: "Fix more ICEs in `diagnostic::on_unimplemented`" [rust#124875](https://github.com/rust-lang/rust/pull/124875)
  - backport on stable of the ICE fix mentioned before
<!--
/poll Approve stable backport of #124875?
approve
approve but does not justify new dot release
decline
don't know
-->

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
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-05-07](https://github.com/rust-lang/rustc-perf/blob/6774c877ace0a2d9138b2b06ef0aabf6c2317a43/triage/2024-05-06.md)

Largely uneventful week; the most notable shifts were considered false-alarms
that arose from changes related to cfg-checking (either cargo enabling it, or
adding cfg's like `rustfmt` to the "well-known cfgs list").

Triage done by **@pnkfelix**.
Revision range: [c65b2dc9..69f53f5e](https://perf.rust-lang.org/?start=c65b2dc935c27c0c8c3997c6e8d8894718a2cb1a&end=69f53f5e5583381267298ac182eb02c7f1b5c1cd&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.0%  | [0.2%, 19.5%]  | 65    |
| Regressions (secondary)  | 1.3%  | [0.2%, 4.5%]   | 103   |
| Improvements (primary)   | -0.9% | [-2.2%, -0.2%] | 24    |
| Improvements (secondary) | -0.7% | [-1.4%, -0.4%] | 23    |
| All  (primary)           | 1.9%  | [-2.2%, 19.5%] | 89    |


3 Regressions, 2 Improvements, 3 Mixed; 5 of them in rollups
30 Untriaged Pull Requests
54 artifact comparisons made in total

#### Regressions

Rollup of 7 pull requests [#124675](https://github.com/rust-lang/rust/pull/124675) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0d7b2fb797f214ea7514cfeaf2caef8178d8e3fc&end=befabbc9e5f6e82e659f9f52040ee0dd40593d8a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.2%, 1.2%] | 11    |
| Regressions (secondary)  | 0.8% | [0.4%, 1.3%] | 17    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.2%, 1.2%] | 11    |

* all primary regressions are to doc-full scenarios, and the 1.2% is to helloworld.
* not worth teasing apart a rollup PR.
* marking as triaged.

Update cargo [#124684](https://github.com/rust-lang/rust/pull/124684) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=09cd00fea4aecaa6707f122d7e143196b8a12ee2&end=2c4bf249bd47f232de3c1e78ffe69b40c29bfcca&stat=instructions:u)

| (instructions:u)         | mean | range         | count |
|:------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 2.4% | [0.2%, 19.1%] | 83    |
| Regressions (secondary)  | 1.6% | [0.2%, 5.7%]  | 92    |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)           | 2.4% | [0.2%, 19.1%] | 83    |


* syn (mostly check builds, but also a debug incr-unchanged and opt incr-unchanged) had regressions ranging from 7.24% all the way up to 19.11%.
* The most plausible hypothesis is that this is due to an explosion in the number of warnings emitted for this benchmark. (The number of warnings went from ~200 up to 1800, according to Urgau's analysis).
* This means the code ends up becoming, at least in part, a benchmark of the lint machinery, regardless of whether that is our intent or not.
* see also [rustc-perf#1819](https://github.com/rust-lang/rustc-perf/issues/1819) "Consider passing -Awarnings (or similar) to avoid false alarms from lint *reporting*"
* marking as triaged.

Rollup of 3 pull requests [#124784](https://github.com/rust-lang/rust/pull/124784) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=96f1da82687f499dd3f57006ae71548714532382&end=d287f3e4eeaf680e8fe875f1ec75cca68f357d30&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 5     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.4%] | 5     |

* all regressions were to syn, to various incr-unchanged and incr-patched:println scenarios.
* current hypothesis is that this is due to PR #124742, which adds `rustfmt` to the well-known cfgs list.
* that hypothesis implies that this is a (mostly-)false alarm, much like #124684.
* marking as triaged

#### Improvements

Rollup of 10 pull requests [#124646](https://github.com/rust-lang/rust/pull/124646) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=79734f1db8dbe322192dea32c0f6b80ab14c4c1d&end=561b5dea1e7e5c21f0fb550ca579229ceb878297&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-2.8%, -0.2%] | 24    |
| Improvements (secondary) | -0.9% | [-1.6%, -0.3%] | 9     |
| All  (primary)           | -1.0% | [-2.8%, -0.2%] | 24    |

* the bulk of the improvements are to variations of html5ever and serde_derive.
* skimming over the rollup list, I cannot identify an immediate root cause for improvement
* but for now will treat it like a happy accident

Some hir cleanups [#124401](https://github.com/rust-lang/rust/pull/124401) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d2d24e395a1e4fcee62ca17bf4cbddb1f903af97&end=09cd00fea4aecaa6707f122d7e143196b8a12ee2&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.2%, -0.1%] | 3     |
| Improvements (secondary) | -1.1% | [-2.0%, -0.2%] | 2     |
| All  (primary)           | -0.1% | [-0.2%, -0.1%] | 3     |

* all improvements are to variations of typenum
* the hir cleanups in question are largely to store `AnonConst` (e.g. for array lengths) in the HIR arena, and then move the ConstArg span over to AnonConst span instead.
* inspection of typenum didn't show any particular cases that seemed like the would stress `AnonConst`; maybe the benefit comes more from the places where we now pass a span by value instead of passing a pointer to it.

#### Mixed

Account for immutably borrowed locals in MIR copy-prop and GVN [#123602](https://github.com/rust-lang/rust/pull/123602) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=befabbc9e5f6e82e659f9f52040ee0dd40593d8a&end=d2d24e395a1e4fcee62ca17bf4cbddb1f903af97&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.9%]   | 10    |
| Regressions (secondary)  | 0.8%  | [0.2%, 2.6%]   | 4     |
| Improvements (primary)   | -0.5% | [-1.1%, -0.2%] | 6     |
| Improvements (secondary) | -0.5% | [-1.0%, -0.3%] | 8     |
| All  (primary)           | 0.0%  | [-1.1%, 0.9%]  | 16    |

* html5ever opt-full regressed by 0.92%; libc in various incremental scenarios regressed by 0.30% to 0.39%.
* the libc changes were anticipated in the perf build prior to merge; html5ever opt-full was not predicted there.
* pnkfelix hypothesizes that this just reflects some extra-work from the compiler attempting to do the copy-propagation and global-value-numbering mir-optimizations on a larger set of immutably-borrowed locals, and is acceptable given the expected benefits.
* marking as triaged

Rollup of 8 pull requests [#124703](https://github.com/rust-lang/rust/pull/124703) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7dd170fccb3be6b1737af5df14dd736b366236c1&end=d7ea27808deb5e10a0f7384e339e4e6165e33398&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.6%]   | 4     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.0% | [-1.5%, -0.5%] | 4     |
| All  (primary)           | 0.5%  | [0.2%, 0.6%]   | 4     |

* image opt-full regressed by 0.63%; html5ever debug-{incr-full,full} by ~0.5%, html5ever opt-incr-unchaged by 0.21%
* already triaged by Kobzol, who hypothesizes that PR #124700 modified some inlining decisions.

Rollup of 4 pull requests [#124716](https://github.com/rust-lang/rust/pull/124716) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a851da73cdeb02e2c62d301aa6bd98e515a50da&end=d568423a7a4ddb4b49323d96078a22f94df55fbd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.5%]   | 6     |
| Improvements (primary)   | -0.8% | [-0.8%, -0.8%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.8% | [-0.8%, -0.8%] | 1     |


* all regressions are secondary (specifically on unused-warnings benchmark)
* regression identified by Kobzol as caused by [PR #124584](https://github.com/rust-lang/rust/pull/124584) "Various improvements to entrypoint code"
* seems like noise to pnkfelix
* marked as triaged

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "New rustc nightly suggests adding a `build.rs` to use conditional compilation" [rust#124800](https://github.com/rust-lang/rust/issues/124800)
  - @wesleywiser responded on the thread in this [comment](https://github.com/rust-lang/rust/issues/124800#issuecomment-2098802667)
  - a summary from `@epage` of T-cargo *(last)* discussion on the topic in this [comment](https://github.com/rust-lang/rust/issues/124800#issuecomment-2100964458)
    - with a question for T-compiler:
      > If we go with lint configuration, any thoughts or concerns about Cargo "owning" lint configuration under `[lints.rust]` where Cargo translates the configuration into CLI flags for rustc, leaving rustc to be more generic? 
  - Probably moving the discussion to next meeting of discuss this async

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

None

## Next week's WG checkins

Probably none
