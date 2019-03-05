# compiler-team

A home for compiler team planning documents, meeting minutes, and
other such things. If you're interested in learning about how
**rustc** works -- as well as advice on building the compiler, preparing a PR,
and other similar topics -- check out the [rustc-guide].

[rustc-guide]: https://rust-lang.github.io/rustc-guide/

## Quick facts

- **Where to find us:** We are primarily present on [Zulip](about/chat-platform.md), though some of us also monitor Discord.
- **Want to attend a meeting or follow along?** See the "meeting calendar" section below.
- **Looking for technical information about how the compiler works?**
  Check out the [rustc-guide](https://rust-lang-nursery.github.io/rustc-guide/).

## Meeting Calendar

Unless otherwise noted, all our meetings are open to the public and
held on Zulip. There are two main team-wide meetings that we hold as a
regular basis. There are also a variety of working group meetings. The
team-wide meetings are as follows:

- **Triage meeting:** We have a weekly triage meeting to discuss and
  track regressions and urgent changes. This meeting is held on Zulip
  and open to anyone.
- [**Steering meeting:**](https://github.com/rust-lang/rust/issues/58850) We have a steering meeting every three weeks
  to track and plan our larger goals. This meeting is held on Zulip
  and open to anyone.

Our meeting calendar is publicly available from the following links:

  - [CalDav Link][caldav]
    -- use this if you use Google Calendar
  - [ICS file, for use outside from google calendar][ics]
    -- you probably want this otherwise

[caldav]: https://calendar.google.com/calendar?cid=NnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ
[ics]: https://calendar.google.com/calendar/ical/6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com/public/basic.ics

## Content

- [Minutes from steering meetings](minutes/steering-meeting): The
  compiler [steering meeting](about/steering-meeting.md) is where we
  do high-level discussion. These minutes summarize our conversations.

## Working Groups
Much of the ongoing work and initiatives from the compiler team are performed by working groups.
Working groups are a great way for new contributors to get involved as they provide a stream of
tasks all focused around one area and have designated channels for help and advice. All of the
active working groups are listed below:


Name                                               | Leads                                                                                | Short Description                                                | Start Date    | Status       | Zulip Stream                                       | Regular meetings                | Labels        |
----                                               | -----                                                                                | -----------------                                                | ----------    | ------       | ------------                                       | --------                        | ------        |
[Async-await Implementation](working-groups/async-await/)         | [@nikomatsakis][nikomatsakis] and [@cramertj][cramertj]                              | Implementing async-await                                         | February 2019 | Active       | [#t-compiler/wg-async-await][async-await_stream]   | N/A                             | A-async-await |
[LLVM](working-groups/llvm/)                 | Preliminarily [@nagisa][nagisa]                                     | Working with LLVM upstream to represent Rust in its development | N/A | Incubating       | N/A | N/A                                       | A-LLVM |
[Meta](working-groups/meta/)                       | [@nikomatsakis][nikomatsakis], [@davidtwco][davidtwco] and [@spastorino][spastorino] | How compiler team organizes itself                               | February 2019 | Active       | [#t-compiler/wg-meta][meta_stream]                 | N/A                             | N/A           |
[Non-lexical lifetimes (NLL)](working-groups/nll/) | [@nikomatsakis][nikomatsakis] and [@pnkfelix][pnkfelix]                              | Implementing non-lexical lifetimes                               | June 2017     | Winding down | [#t-compiler/wg-nll][nll_stream]                   | [Weekly, in Zulip][] (optional) | A-NLL, NLL-*  |
[Traits](working-groups/traits/)                   | [@nikomatsakis][nikomatsakis]                                                        | Improving the trait-system design + implementation               | February 2019 | Active       | [#t-compiler/wg-traits][traits_stream]             | [Weekly, in Zulip][] (optional) | A-traits      |
[Self-Profile](working-groups/self-profile/)       | [@michaelwoerister][michaelwoerister] and [@wesleywiser][wesleywiser]                                            | Improving the `-Z self-profile` feature                          | March 2019    | Active       | [#t-compiler/wg-self-profile][self-profile_stream] | N/A                             | N/A
[RLS 2.0](working-groups/rls-2.0/)                 | [@matklad][matklad]                                                                  | Experimenting with a new compiler architecture tailored for IDEs | February 2019 | Active       | [#t-compiler/wg-rls2.0][rls20_stream]              | N/A                             | N/A           |
[Parallel-rustc](working-groups/parallel-rustc/)   | [@Zoxc][Zoxc] and [@michaelwoerister][michaelwoerister]                              | Making parallel compilation the default for rustc                | February 2019 | Active       | [#t-compiler/wg-parallel-rustc][parallel-rustc_stream] | N/A                             | A-parallel-queries |
[Profile-Guided Optimization](working-groups/pgo/) | [@michaelwoerister][michaelwoerister]                              | Implementing profile-guided optimization for rustc                | February 2019 | Active       | [#t-compiler/wg-profile-guided-optimization][pgo_stream] | N/A                             | N/A |
[rfc-2229](working-groups/rfc-2229/) | [@blitzerr][blitzerr] and [@nikomatsakis][nikomatsakis]                             |  Make a closure capture individual fields of the variable rather than the entire composite variable           | March 2019 | Active       | [#t-compiler/wg-rfc-2229][rfc-2229-stream] | N/A                             | N/A |

[nikomatsakis]: https://github.com/nikomatsakis
[cramertj]: https://github.com/cramertj
[matklad]: https://github.com/matklad
[pnkfelix]: https://github.com/pnkfelix
[davidtwco]: https://github.com/davidtwco
[spastorino]: https://github.com/spastorino
[wesleywiser]: https://github.com/wesleywiser
[michaelwoerister]: https://github.com/michaelwoerister
[nagisa]: https://github.com/nagisa
[Zoxc]: https://github.com/Zoxc
[blitzerr]: https://github.com/blitzerr

[Weekly, in Zulip]: #meeting-calendar
[nll_stream]: https://rust-lang.zulipchat.com/#narrow/stream/122657-t-compiler.2Fwg-nll
[meta_stream]: https://rust-lang.zulipchat.com/#narrow/stream/185694-t-compiler.2Fwg-meta
[rls20_stream]: https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0
[traits_stream]: https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits
[async-await_stream]: https://rust-lang.zulipchat.com/#narrow/stream/187312-t-compiler.2Fwg-async-await
[self-profile_stream]: https://rust-lang.zulipchat.com/#narrow/stream/187831-t-compiler.2Fwg-self-profile
[pgo_stream]: https://rust-lang.zulipchat.com/#narrow/stream/187830-t-compiler.2Fwg-profile-guided-optimization
[parallel-rustc_stream]: https://rust-lang.zulipchat.com/#narrow/stream/187679-t-compiler.2Fwg-parallel-rustc
[rfc-2229-stream]: https://rust-lang.zulipchat.com/#narrow/stream/189812-t-compiler.2Fwg-rfc-2229


## Procedures

The [procedures directory](procedures) contains descriptions of various
rustc procedures.

## Code of Conduct and licensing

All interactions on this repository (whether on issues, PRs, or
elsewhere) are governed by the [Rust Code of
Conduct](CODE_OF_CONDUCT.md).

Further, all content on this repository is subject to the standard
[Rust](LICENSE-MIT) [licensing](LICENSE-APACHE).
