---
title: Notes
type: docs
---
# Self-Profile Meeting Notes
This document contains meeting notes from the self-profile working group.

## 2019-03-05: [Meeting][meeting20190305]
**Written by:** [@wesleywiser][wesleywiser]

**Purpose of meeting**: Initial meeting to get organized and decide on some next steps.

**Agenda**:
- Current status update
- Where to track work?
- What does an Minimum Viable Product (MVP) look like?
- Next work items?

### Current Status

After a few rounds of experimentation, we have a `-Z self-profile` option available in the nightly compliler.
The profiler measures a few kinds of things such as when queries start and stop, when the incremental cache is hit and when a cache miss occurs, and when queries are blocked by a parallel query (when the compiler is built in parallel mode).
The profiler currently writes this data in a rather verbose JSON format to a file in the working directory.
This is very slow.

#### Team updates:

- [@michaelwoerister][michaelwoerister] is [drafting a tracking issue for our MVP](https://github.com/rust-lang/rust/issues/58967).
- [@wesleywiser][wesleywiser] is [currently working on replacing some custom LLVM codegen timing data with the profiler](https://github.com/rust-lang/rust/pull/58488).

### Where to track work?

[We decided to track just the MVP in a tracking issue on GitHub.](https://rust-lang.zulipchat.com/#narrow/stream/187831-t-compiler.2Fwg-self-profile/topic/meeting.202019-03-05/near/159997283)
[The overall roadmap is a bit nebulous at the moment and we felt it would be most productive to focus on getting something usuable on perf.rust-lang.org ASAP.](https://rust-lang.zulipchat.com/#narrow/stream/187831-t-compiler.2Fwg-self-profile/topic/meeting.202019-03-05/near/159997637)

### What does an MVP look like?

[Our first MVP will be targeted at getting profiling data available on perf.rust-lang.org.](https://rust-lang.zulipchat.com/#narrow/stream/187831-t-compiler.2Fwg-self-profile/topic/meeting.202019-03-05/near/159998652)

As a rough outline, perf.rust-lang.org will allow the user to click on a crate from the comparison page and they will be shown a comparison of query performance from both runs.
[This will be displayed like the NLL Dashboard page but with individual queries on the left instead of crate names.](https://rust-lang.zulipchat.com/#narrow/stream/187831-t-compiler.2Fwg-self-profile/topic/meeting.202019-03-05/near/159998182)

There's a number of steps to getting to this point which will be fleshed out in the tracking issue.

### Next work items?

In order to get to the MVP, dumping the raw events to disk during compilation needs to get a lot faster.
Currently, we're using JSON for this because it's easy to parse without sharing a lot of code between the compiler and out-of-tree crates.
[We're going to switch this to a compact binary format and create a crate that will form the stable interface that out-of-tree crates can consume.](https://rust-lang.zulipchat.com/#narrow/stream/187831-t-compiler.2Fwg-self-profile/topic/meeting.202019-03-05/near/159999234)
More detail is available in the [tracking issue](https://github.com/rust-lang/rust/issues/58967).

[meeting20190305]: https://rust-lang.zulipchat.com/#narrow/stream/187831-t-compiler.2Fwg-self-profile/topic/meeting.202019-03-05
[michaelwoerister]: https://github.com/michaelwoerister
[wesleywiser]: https://github.com/wesleywiser