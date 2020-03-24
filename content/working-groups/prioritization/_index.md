---
title: Prioritization Working Group
type: docs
---

# Prioritization Working Group
![working group status: active][status]

 Triaging bugs, mainly deciding if bugs are critical (potential release blockers) or not.

- **Leads:**  [@spastorino][spastorino] and [@wesleywiser][wesleywiser]

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge
[spastorino]: https://github.com/spastorino
[wesleywiser]: https://github.com/wesleywiser

## What is the goal of this working group?

This working group aims to accomplish the following:

- Processing 'nominations' and routing bugs to folks who can fix them
- Identifying *critical* bugs and monitoring them to ensure they are
  making progress
- Identifying the agenda for compiler team triage meetings
  - Critical issues that are not making progress
  - Beta/Stable nominations to be backported
  - Issues where bugs are nominated for needing wider discussion
- Tracking deferred things and ensuring they are picked up again
  - Future compatibility warnings

## How do people bring things to the working group's attention?

If something seems "obviously criticial", people can tag it as
`P-critical` (see below). But if unclear, use `I-nominated` as today to
bring it to the group's attention.

However, as we already have problems where the "intent" of a nomination
is unclear, we may wish to consider replacing `I-nominated` with more
specific `N-*` labels that identify the reason the issue was nominated:

* `N-critical` -- nominated as a potential critical issue
* `N-compiler` -- nominated for discussion by compiler team
* `N-lang` etc

## How can I get involved?

If you are interested in getting involved in this working group, come
and say hi in the Zulip stream but mainly try to attend to our meetings
on wednesday at 6pm UTC. Check out the [Rust compiler
calendar](https://rust-lang.github.io/compiler-team/#meeting-calendar).
You can also be added to the Zulip group for the working group if you
are interested in being pinged when there are things that you may want
to be involved with.

## Process

We have our pre-triage meetings on wednesday at 6pm UTC. Check out the
[Rust compiler
calendar](https://rust-lang.github.io/compiler-team/#meeting-calendar).

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/rust`][rust-repo]
- **Zulip stream:** [`#t-compiler/wg-prioritization`][zulip] on Zulip

[rust-repo]: https://github.com/rust-lang/rust
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/227806-t-compiler.2Fwg-prioritization
