---
title: Triage-links
type: docs
---
Async-await meetings are labeled according to the following scheme:

- `T-compiler`, `A-async-await` -- on every issue
- `AsyncAwait-Blocking`: this blocks our MVP stabilization
    - minor diagnostic issues do not quality, but we are presently aiming for "simple code should work as expected"
    - naturally anything where it would be backwards incompat to fix is a blocker (i.e., if lang semantics are affected)
- `AsyncAwait-Deferred`: this does *not* block our MVP stabilization
- `AsyncAwait-Unclear`: we should discuss (can be applied together with the other two to consider a change in status)

In our weekly meeting, a key part is triage. Here are some useful links:

- [Uncategorized issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AA-async-await+-label%3AAsyncAwait-Blocking+-label%3AAsyncAwait-Deferred++-label%3AAsyncAwait-Unclear)
- [Review blocking issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AA-async-await+label%3AAsyncAwait-Blocking+)
- [Review unclear issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AA-async-await+label%3AAsyncAwait-Unclear+)