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
- **Steering meeting:** We have a steering meeting every three weeks
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
tasks all focused around one area and have designed channels for help and advice. All of the active
working groups are listed below:


Name                                               | Leads                                                   | Short Description                                                | Start Date    | Status       | Zulip Stream                          | Meetings                                  | Labels       |
----                                               | -----                                                   | -----------------                                                | ----------    | ------       | ------------                          | --------                                  | ------       |
[Non-lexical lifetimes (NLL)](working-groups/nll/) | [@nikomatsakis][nikomatsakis] and [@pnkfelix][pnkfelix] | Implementing non-lexical lifetimes                               | June 2017     | Winding down | [#t-compiler/wg-nll][nll_stream]      | Wednesdays, 20:30 UTC in Zulip (optional) | A-NLL, NLL-* |
[Traits](working-groups/traits/) | [@nikomatsakis][nikomatsakis] | Improving the trait-system design + implementation | February 2019 | Active       | [#t-compiler/wg-traits][traits_stream] | N/A                                      | N/A          |
[RLS 2.0](working-groups/rls-2.0/)                 | [@matklad][matklad]                                     | Experimenting with a new compiler architecture tailored for IDEs | February 2019 | Active       | [#t-compiler/wg-rls2.0][rls20_stream] | N/A                                       | N/A          |

[nikomatsakis]: https://github.com/nikomatsakis
[matklad]: https://github.com/matklad
[pnkfelix]: https://github.com/pnkfelix

[nll_stream]: https://rust-lang.zulipchat.com/#narrow/stream/122657-t-compiler.2Fwg-nll
[rls20_stream]: https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0
[traits_stream]: https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits

## Code of Conduct and licensing

All interactions on this repository (whether on issues, PRs, or
elsewhere) are governed by the [Rust Code of
Conduct](CODE_OF_CONDUCT.md).

Further, all content on this repository is subject to the standard
[Rust](LICENSE-MIT) [licensing](LICENSE-APACHE).
