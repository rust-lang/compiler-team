# Crate Policies
This document describe the guidelines for splitting the compiler up into crates and using
third-party crates in the compiler. These guidelines were originally discussed at the Rust All
Hands 2019 by the compiler team and others.

## Where should compiler crates live?
As library-ification progresses and parts of the compiler are extracted into separate reusable
crates, these new crates should be hosted in the `rust-lang` organization.

## Who owns these crates?
It is desired that a compiler team member has loose ownership over a crate so that there is someone
who is responsible for making sure that new versions are published and that pull requests are
reviewed.

## What should these crates be named?
When naming a crate, it is worth considering that a `rustc_` prefix could result in
compiler-specific changes being made where this isn't appropriate as the crate was actually
intended to be general-purpose.

## What should be included in a out-of-tree crate?
A maintenance policy should be included to set appropriate expectations for anyone who may wish to
use the crate. This enables killing dead code, and being able to make changes on a whim, where
appropriate, when this is required by a change in the compiler.

Various other infrastructure should be put in place, such as `bors-ng` and `highfive`,  to ensure
that the process is similar for in-tree and out-of-tree pull requests. Similarly, integration tests
should be run in CI and performance measured by `perf.rust-lang.org`. It may be worth consulting
with the infrastructure team to set these up.

## Can I include a third-party crate?
It is desirable that a third-party crate being included in the compiler is well-maintained and that,
where possible, a compiler team member is added as a maintainer. It may be worth consulting with the
rest of the compiler team before making this decision.
