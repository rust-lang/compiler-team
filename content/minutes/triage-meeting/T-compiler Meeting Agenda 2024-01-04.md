---
tags: weekly, rustc
type: docs
note_id: GbNOsH56RWudQ4drStxBHQ
---

# T-compiler Meeting Agenda 2024-01-04

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- No meetings scheduled for next week

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Start using clippy on rustc" [compiler-team#709](https://github.com/rust-lang/compiler-team/issues/709)
  - "Promote tier 3 `*-pc-windows-gnullvm` targets to tier 2" [compiler-team#710](https://github.com/rust-lang/compiler-team/issues/710)

### WG checkins

No checkins this week

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- [beta] Fix: Properly set vendor in i686-win7-windows-msvc target" [rustc#119544](https://github.com/rust-lang/rust/pull/119544)
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [31 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 41 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "🐛 Symbol multiply defined since nightly-2023-12-02 with custom builtins." [rust#118609](https://github.com/rust-lang/rust/issues/118609)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-01-02](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-01-02.md)

Overall, this week had very few regressions and a moderate amount of improvements. The two biggest improvements came in how metadata was being encoded including a change to only store StableCrateId once in DefPathTable which yielded a 0.3% average improvement across 79 different benchmarks.

Triage done by **@rylev**.
Revision range: [1ab783112..67b6975](https://perf.rust-lang.org/?start=1ab783112ab4e4807304dbd249b39771246013ef&end=67b6975051b83ef2bd28f06e8467470d570aceb3&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.3%, 1.5%]    | 8     |
| Regressions (secondary)  | 0.8%  | [0.2%, 1.3%]    | 23    |
| Improvements (primary)   | -0.6% | [-2.6%, -0.2%]  | 121   |
| Improvements (secondary) | -5.2% | [-62.5%, -0.2%] | 53    |
| All  (primary)           | -0.5% | [-2.6%, 1.5%]   | 129   |


2 Regressions, 3 Improvements, 1 Mixed; 0 of them in rollups
46 artifact comparisons made in total

#### Regressions

Emit better suggestions for `&T == T` and `T == &T` [#118431](https://github.com/rust-lang/rust/pull/118431) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=deace71034d4940d064619882e0297c4ad858b2e&end=2df6406b886757a3c1475957660a3a4ae6c786de&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 24.0% | [18.1%, 29.5%] | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 24.0% | [18.1%, 29.5%] | 3     |
- Blip in the perf infrastructure that was reversed in the [next run](https://perf.rust-lang.org/compare.html?start=2df6406b886757a3c1475957660a3a4ae6c786de&end=eee93d839654def74bee9c98c4e7785d29d993cb&stat=instructions:u)


rustc_lint: Enforce `rustc::potential_query_instability` lint [#119251](https://github.com/rust-lang/rust/pull/119251) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=67b6975051b83ef2bd28f06e8467470d570aceb3&end=e51e98dde6a60637b6a71b8105245b629ac3fe77&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.3%] | 2     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.3%] | 2     |
- Small regression that might just be worth it. There is discussion in [#119488](https://github.com/rust-lang/rust/pull/119488) on whether to do a partial revert, but so far the argument is being made to just accept the small regression.


#### Improvements

Suggest `=` to `==` in more cases, even in the face of reference mismatch [#119328](https://github.com/rust-lang/rust/pull/119328) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2df6406b886757a3c1475957660a3a4ae6c786de&end=eee93d839654def74bee9c98c4e7785d29d993cb&stat=instructions:u)

| (instructions:u)         | mean   | range            | count |
|:------------------------:|:------:|:----------------:|:-----:|
| Regressions (primary)    | -      | -                | 0     |
| Regressions (secondary)  | -      | -                | 0     |
| Improvements (primary)   | -19.2% | [-22.7%, -15.3%] | 3     |
| Improvements (secondary) | -      | -                | 0     |
| All  (primary)           | -19.2% | [-22.7%, -15.3%] | 3     |
- Reversal of perf infrastructure blip in previous run


Only store StableCrateId once in DefPathTable. [#119259](https://github.com/rust-lang/rust/pull/119259) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a7e97f1ef3ce44f060f338c79d7dcbfb91bbc8a&end=dc450f9dcb243368275598b506d04a54d7019a42&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.8%, 0.8%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.2%] | 78    |
| Improvements (secondary) | -0.4% | [-0.6%, -0.3%] | 16    |
| All  (primary)           | -0.3% | [-0.6%, 0.8%]  | 79    |


Shrink span encoding further [#119367](https://github.com/rust-lang/rust/pull/119367) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8d76d076665f862ec9619f2de68d6d9ca1db4601&end=fe2cfd45055abfde24cb372a311095c105265236&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 27    |
| Improvements (secondary) | -0.5% | [-0.6%, -0.3%] | 11    |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 27    |


#### Mixed

Implement constant propagation on top of MIR SSA analysis [#116012](https://github.com/rust-lang/rust/pull/116012) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=03b50195ab61a0dc9fc8de43d1de92769c4e6f23&end=8d76d076665f862ec9619f2de68d6d9ca1db4601&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 0.7%   | [0.2%, 1.9%]    | 10    |
| Regressions (secondary)  | 0.6%   | [0.2%, 1.1%]    | 15    |
| Improvements (primary)   | -0.6%  | [-2.6%, -0.2%]  | 26    |
| Improvements (secondary) | -31.2% | [-62.1%, -0.2%] | 8     |
| All  (primary)           | -0.2%  | [-2.6%, 1.9%]   | 36    |
- Change has positive impacts on runtime performance and the improvements outweigh the regressions


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

None this week

## Next week's WG checkins

TODO

Next meetings' agenda draft: [hackmd link](https://hackmd.io/9uykm3hKQkiNVxHG_w33vQ)
