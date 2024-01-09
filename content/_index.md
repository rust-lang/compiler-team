---
title: Introduction
type: docs
---
# compiler-team

A home for compiler team planning documents, meeting minutes, and
other such things. If you're interested in learning about how
**rustc** works -- as well as advice on building the compiler, preparing a PR,
and other similar topics -- check out the [rustc-dev-guide].

[rustc-dev-guide]: https://rustc-dev-guide.rust-lang.org/

## Quick facts

- **Where to find us:** We are primarily present on [Zulip](about/chat-platform), though some of us also monitor Discord.
- **Want to attend a meeting or follow along?** See the "meeting calendar" section below.
- **Looking for technical information about how the compiler works?**
  Check out the [rustc-dev-guide](https://rustc-dev-guide.rust-lang.org/).

## Meeting Calendar

Our meeting calendar is publicly available from the following links:

  - [Web Link][embed]
    -- use this to view the calendar or to import into Google Calendar
  - [ICS file, for use outside from google calendar][ics]
    -- use this if you want to import into different calendar software

Unless otherwise noted, all our meetings are open to the public and
held on Zulip, in the [t-compiler/meetings stream](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings).
There are two main team-wide meetings that we hold on a
regular basis. There are also a variety of working group meetings.

### Triage meeting

We have a [weekly triage meeting][triage] to discuss and track regressions and
urgent changes. This meeting is held on Zulip and open to anyone.

### Steering meeting

We also have a [regular steering meeting][steering] where we discuss
proposed designs, changes to our process, and other topics. The topics
are scheduled at a planning meeting that occurs every four weeks.

- **Have an idea?** Click here to propose a topic to be scheduled by [filing an issue][propose] with the correct template.
- **To see the current scheduled meetings**, check out the [meeting calendar](#meeting-calendar).

[triage]: about/triage-meeting
[steering]: about/steering-meeting
[embed]: https://calendar.google.com/calendar/embed?src=mfbugia4q2487tj9h08aimhd8e38dc8k%40import.calendar.google.com
[ics]: https://rust-lang.github.io/calendar/compiler.ics
[propose]: https://github.com/rust-lang/compiler-team/issues/new/choose

## Working Groups

Much of the ongoing work and initiatives from the compiler team are performed by working groups.
Working groups are a great way for new contributors to get involved as they provide a stream of
tasks all focused around one area and have designated channels for help and advice. All of the
active working groups are listed below:


Name                                                      | Status       | Short Description                                                                                  | Zulip Stream
----                                                      | ------       | -----------------                                                                                  | ------------
[Async-await Implementation](working-groups/async-await/) | Active       | Implementing async-await                                                                           | [#t-compiler/wg-async-await][async-await_stream]
[Diagnostics](working-groups/diagnostics/)                | Active       | Use crates.io crates for diagnostics rendering and make emitting diagnostics nicer.                | [#t-compiler/wg-diagnostics][diagnostics_stream]
[Rustc Dev Guide](working-groups/rustc-dev-guide/)        | Active       | Make the compiler easier to learn by ensuring that rustc-dev-guide is "complete"                   | [#t-compiler/wg-rustc-dev-guide][rustc-dev-guide_stream]
[LLVM](working-groups/llvm/)                              | Incubating   | Working with LLVM upstream to represent Rust in its development                                    | [#t-compiler/wg-llvm][llvm_stream]
[Meta](working-groups/meta/)                              | Paused       | How compiler team organizes itself                                                                 | [#t-compiler/wg-meta][meta_stream]
[MIR Optimizations](working-groups/mir-opt/)              | Active       | Write MIR optimizations and refactor the MIR to be more optimizable.                               | [#t-compiler/wg-mir-opt][mir-opt-stream]
[Non-Lexical Lifetimes (NLL)](working-groups/nll/)        | Retired      | Implementing non-lexical lifetimes                                                                 | [#t-compiler/wg-nll][nll_stream]
[Parallel-rustc](working-groups/parallel-rustc/)          | Paused       | Making parallel compilation the default for rustc                                                  | [#t-compiler/wg-parallel-rustc][parallel-rustc_stream]
[Polonius](working-groups/polonius/)                      | Active       | Exploring the integration of the "NLL 2.0"-like ["Polonius analysis"][Polonius] into rustc         | [#t-compiler/wg-polonius][polonius_stream]
[Polymorphization](working-groups/polymorphization/)      | Active       | Implement an analysis to detect when functions can remain polymorphic during code generation.      | [#t-compiler/wg-polymorphization][polymorphization_stream]
[Prioritization](working-groups/prioritization/)          | Active       | Triaging bugs, mainly deciding if bugs are critical (potential release blockers) or not.           | [#t-compiler/wg-prioritization][prioritization_stream]
[Profile-Guided Optimization](working-groups/pgo/)        | Retired      | Implementing profile-guided optimization for rustc                                                 | [#t-compiler/wg-profile-guided-optimization][pgo_stream]
[RFC 2229](working-groups/rfc-2229/)                      | Retired       | Make a closure capture individual fields of the variable rather than the entire composite variable | [#t-compiler/wg-rfc-2229][rfc-2229-stream]
[RLS 2.0](working-groups/rls-2.0/)                        | Active       | Experimenting with a new compiler architecture tailored for IDEs                                   | [#t-compiler/wg-rls2.0][rls20_stream]
[Rustc pipelining](working-groups/pipelining/)            | Retired      | Enable Cargo to invoke rustc in a pipelined fashion, speeding up crate graph compiles.             | [#t-compiler/wg-pipelining][pipelining-stream]
[Self-Profile](working-groups/self-profile/)              | Active       | Improving the `-Z self-profile` feature                                                            | [#t-compiler/wg-self-profile][self-profile_stream]
[Traits](working-groups/traits/)                          | Active       | Improving the trait-system design + implementation                                                 | [#t-compiler/wg-traits][traits_stream]

[Weekly, in Zulip]: #meeting-calendar
[nll_stream]: https://rust-lang.zulipchat.com/#narrow/stream/122657-t-compiler.2Fwg-nll
[llvm_stream]: https://rust-lang.zulipchat.com/#narrow/stream/187780-t-compiler.2Fwg-llvm
[meta_stream]: https://rust-lang.zulipchat.com/#narrow/stream/185694-t-compiler.2Fwg-meta
[rls20_stream]: https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0
[traits_stream]: https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits
[async-await_stream]: https://rust-lang.zulipchat.com/#narrow/stream/187312-t-compiler.2Fwg-async-await
[self-profile_stream]: https://rust-lang.zulipchat.com/#narrow/stream/187831-t-compiler.2Fwg-self-profile
[pgo_stream]: https://rust-lang.zulipchat.com/#narrow/stream/187830-t-compiler.2Fwg-profile-guided-optimization
[parallel-rustc_stream]: https://rust-lang.zulipchat.com/#narrow/stream/187679-t-compiler.2Fwg-parallel-rustc
[rfc-2229-stream]: https://rust-lang.zulipchat.com/#narrow/stream/189812-t-compiler.2Fwg-rfc-2229
[mir-opt-stream]: https://rust-lang.zulipchat.com/#narrow/stream/189540-t-compiler.2Fwg-mir-opt
[pipelining-stream]: https://rust-lang.zulipchat.com/#narrow/stream/195180-t-compiler.2Fwg-pipelining
[polonius_stream]: https://rust-lang.zulipchat.com/#narrow/stream/186049-t-compiler.2Fwg-polonius
[polymorphization_stream]: https://rust-lang.zulipchat.com/#narrow/stream/216091-t-compiler.2Fwg-polymorphization
[rustc-dev-guide_stream]: https://rust-lang.zulipchat.com/#narrow/stream/196385-t-compiler.2Fwg-rustc-dev-guide
[Polonius]: https://github.com/rust-lang/polonius
[diagnostics_stream]: https://rust-lang.zulipchat.com/#narrow/stream/147480-t-compiler.2Fwg-diagnostics
[prioritization_stream]: https://rust-lang.zulipchat.com/#narrow/stream/227806-t-compiler.2Fwg-prioritization

## Procedures

The [procedures directory](procedures) contains descriptions of various
rustc procedures.

## Code of Conduct and licensing

All interactions on this repository (whether on issues, PRs, or
elsewhere) are governed by the [Rust Code of
Conduct](about/code_of_conduct/).

Further, all content on this repository is subject to the standard
[Rust](https://github.com/rust-lang/compiler-team/blob/master/LICENSE-MIT) [licensing](https://github.com/rust-lang/compiler-team/blob/master/LICENSE-APACHE).
