---
title: Async Foundations working group
type: docs
---
# Async Foundations Working Group
![working group status: active][status]

This working group is focused around implementation/design of the "foundations" for Async I/O.
This includes the `async-await` language feature but also the core `Future` trait and adapters.

- **Leads:** [@cramertj][cramertj] and [@nikomatsakis][nikomatsakis].
- **Triage Links and Labels:** See [triage-links.md](./triage-links) for a description of the issue labels we use
- **Zulip stream:** [`#wg-async-foundations`][stream] on Zulip
- **Videos:** Video meetings and mentoring sessions are recorded and posted to this [YouTube playlist](https://www.youtube.com/watch?v=xe2_whJWBC0&list=PL85XCvVPmGQgGNOAwhOKIfCL6TuRLJlWy).

[repo]: https://github.com/rust-lang/rust
[nikomatsakis]: https://github.com/nikomatsakis
[cramertj]: https://github.com/cramertj

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?

### Current focus

The **current focus** of the group is polishing the async-await
feature and working on the async book. 

### Overall roadmap and progress

- ✅ Stabilize the `Future` trait
- ✅ Deliver a "minimal viable product" (MVP) introducing `async fn` inherent functions and async blocks.
- ⚒️ Polish the async-await feature, improving diagnostics, spurious errors, and other corner cases.
- ⚒️ Write the [async book](https://github.com/rust-lang/async-book), which introduces how the core language features in support of Async I/O and teaches you how to use them.

### Future areas

Possible future areas for consideration include:

- Stabilize other core traits in std, such as `AsyncRead`
- Support async fn in traits
- Support async closures (and possibly an `AsyncFn` trait)
- Support consuming async streams conveniently (e.g., `for await` loops or some similar thing)
- Support authoring async streams conveniently via async generators
- Support async drop 

However, we've decided to largely defer this sort of work until we've
finished off more of the polish work on async-await.

# How to get involved

We are currently working to systematically polish the `async-await`
feature. If you'd like to get involved, take a look at the list of
[focus issues][AsyncAwait-Focus] to see if there is one there is
something unassigned that you would like to work on. Otherwise, drop
in on the [Zulip stream][stream] and say hi, or come to our triage
meeting (also held on Zulip).

## Focus issues

We are using a "focus" system to try and move systematically through a
lot of issues. The idea is that we divide issues into three
categories, each of which is indicated by a GitHub label:

- [AsyncAwait-Focus] -- issues that we are currently focused on. We
  try to keep around 3-5 of these at any given time. If these are
  unassigned, we will try to assign them.
- [AsyncAwait-OnDeck] -- issues that we intend to focus on soon.
  We try to keep around "one page" of such issues. When a focus issue
  is closed, or if it seems stalled, we will pick from this list.
- [AsyncAwait-Other] -- issues that we've looked at and decided not to focus
  on (yet). We gradually move issues from this pool to the "on deck" pool.

[AsyncAwait-Focus]: https://github.com/search?q=org%3Arust-lang+is%3Aissue+label%3AAsyncAwait-Focus+is%3Aopen&type=Issues
[AsyncAwait-OnDeck]: https://github.com/search?q=org%3Arust-lang+is%3Aissue+label%3AAsyncAwait-OnDeck+is%3Aopen&type=Issues
[AsyncAwait-Other]: https://github.com/search?q=org%3Arust-lang+is%3Aissue+label%3AAsyncAwait-Other+is%3Aopen&type=Issues

## Triage meeting

We have a [short triage meeting every week][event], which you can find
on the [compiler calendar][cc]. The meeting is help on [the
`#wg-async-foundations` Zulip stream][stream] and is open to all. The
meeting agenda is as follows:

- Review [uncategoried issues], assigning a `AsyncAwait-*` label 
- Review focus issues to check we are making progress
- Promote issues from OnDeck to Focus as needed
- Promote issues from Other to OnDeck as needed

[uncategorized issues]: https://github.com/search?q=org%3Arust-lang+is%3Aissue+label%3AA-async-await+is%3Aopen+-label%3AAsyncAwait-Focus+-label%3AAsyncAwait-Other+-label%3AAsyncAwait-OnDeck&type=Issues
[A-async-await]: https://github.com/search?q=org%3Arust-lang+is%3Aissue+label%3AA-async-await+is%3Aopen&type=Issues

[event]: https://rust-lang.zulipchat.com/#narrow/stream/187312-wg-async-foundations
[cc]: ../../#meeting-calendar
[stream]: https://rust-lang.zulipchat.com/#narrow/stream/187312-wg-async-foundations
[z]: https://rust-lang.zulipchat.com

