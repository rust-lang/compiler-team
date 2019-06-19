# Async Foundations Working Group
![working group status: active][status]

This working group is focused around implementation/design of the "foundations" for Async I/O.
This includes the `async-await` language feature but also the core `Future` trait and adapters.

- **Leads:** [@cramertj][cramertj] and [@nikomatsakis][nikomatsakis].
- **Meeting Notes:** [All]({{< relref "/docs/working-groups/async-await/NOTES" >}})
- **FAQ:** [All] ({{< relref "/docs/working-groups/async-await/FAQ" >}})

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?

This is the overall roadmap for this group:

- ✅ Stabilize the `Future` trait
- ⚒️ Deliver an "minimal viable product" (MVP) introducing `async fn` inherent functions and async blocks.
- ⚒️ Write the [async book](https://github.com/rust-lang/async-book), which introduces how the core language features in support of Async I/O and teaches you how to use them.
- Future extensions (ordering not yet fixed):
  - Stabilize core parts of the futures trait
  - Support async fn in traits
  - Support async closures (and possibly an `AsyncFn` trait)
  - Support consuming async streams conveniently (e.g., `for await` loops or some similar thing)
  - Support authoring async streams conveniently via async generators
  - Support async drop 

# How can I get involved?

We have a [short triage meeting every week](https://calendar.google.com/event?action=TEMPLATE&tmeid=NjQzdWExaDF2OGlqM3QwN2hncWI5Y2o1dm5fMjAxOTA2MTFUMTcwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&tmsrc=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com&scp=ALL), which you can find on the [compiler calendar][cc]. Feel free to drop in on the meeting, or to jump in on the Zulip at any time and introduce yourself. You can be added to the GitHub and Zulip group for the working group if you are interested in being pinged when there are available tasks.

[cc]: https://github.com/rust-lang/compiler-team#meeting-calendar

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/rust`][repo]
- **Zulip stream:** [`#wg-async-foundations`][zulip] on Zulip
- **Videos:** Video meetings and mentoring sessions are recorded and posted to this [YouTube playlist](https://www.youtube.com/watch?v=xe2_whJWBC0&list=PL85XCvVPmGQgGNOAwhOKIfCL6TuRLJlWy).
- **Labeling:** See [triage-links.md](triage-links.md) for a description of the issue labels we use

[repo]: https://github.com/rust-lang/rust
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/187312-t-compiler.2Fwg-async-await

[nikomatsakis]: https://github.com/nikomatsakis
[cramertj]: https://github.com/cramertj
