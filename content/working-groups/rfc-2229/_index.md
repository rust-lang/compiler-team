---
title: rfc-2229 Working Group
type: docs
---
# rfc-2229 Working Group
![working group status: active][status]

- **Leads:** [@blitzerr][Blitzerr], [@nikomatsakis][Niko]
- **Meeting Notes:** 
    - [2019.03.05 Roadmap Plan]({{< relref "/working-groups/rfc-2229/minutes/2019.03.05-roadmap-plan.md" >}})
- **FAQ:** [FAQ]({{< relref "/working-groups/rfc-2229/FAQ" >}})

## Status

This working group is currently **paused until 2020**. This is
basically because the participants didn't really have time to keep
pushing things forward. We intend to start up again after having
finished off a few smaller items.

The final status was as follows:

The
[blitzerr/upvar-tys-squashed](https://github.com/blitzerr/rust/tree/upvar-tys-squashed)
branch (mirrored at [nikomatsakis's
fork](https://github.com/nikomatsakis/rust/tree/upvar-tys-squashed))
contains the first step to modify how closure's upvars are captured.
In particular, instead of having individual generic parameters per
upvar, we instead capture a tuple of generic parameters. The branch is
quite out of date and these refactored needs to be "rebased" atop
master. The branch also had (relatively minor) effects on the
diagnostic output which ought to be resolved.

We were also working on
[#60205](https://github.com/rust-lang/rust/issues/60205), which had
the goal of refactoring freevar access in the compiler to go through
the type checker. This never really got started.

## What is the goal of this working group?
This working group aims to accomplish the following:

- Finish, optimize, and test the implementation of [RFC-2229].
  RFC 2229 changes the way closure-capture works so that we no longer capture
  entire individual variables, instead capture the actual path to fields of the
  variable, that is used. This helps to eliminate borrow check errors.
- Produce documentation of how the closures in Rust are implemented in the
  [rustc-dev-guide] along the way. Currently, the rustc-dev-guide does not have a
  section on closures. We would like to change it.

# How can I get involved?
If you are interested in getting involved in this working group, you are welcome to
introduce yourself in the Zulip stream. You can be added to the GitHub and Zulip
group for the working group if you are interested in being pinged when there are available tasks.

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/rust`][repo]
- **Zulip stream:** [`#t-compiler/wg-rfc-2229`][zulip] on Zulip

## Are there any resources to get up to speed?
There are a few videos recorded by [niko][Niko] that give an excellent overview
of how rustc implements closures and a detailed code walk-through. The videos
can be found [here][playlist].

## Can I contribute in ways other than code ?
Definitely, you can. If you would like to have a deep understanding of closures
but don't intend to write any code, help us add a section to the [rustc-dev-guide].
One way to do that will be to watch these [videos][playlist] and to summarize
the closure implementation details discussed there in a new closure section of
the rustc-dev-guide.

# Roadmap
The project roadmap can be found [here][roadmap].

[Niko]: https://github.com/nikomatsakis
[Blitzerr]: https://github.com/blitzerr
[rustc-dev-guide]: https://rustc-dev-guide.rust-lang.org/
[repo]: https://github.com/rust-lang/rust
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/189812-t-compiler.2Fwg-rfc-2229
[RFC-2229]: https://github.com/rust-lang/rfcs/blob/master/text/2229-capture-disjoint-fields.md
[NOTES]: minutes/
[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge
[roadmap]: https://paper.dropbox.com/doc/RFC-2229-Roadmap--AYuUod8hbXrktRttb95fprjHAg-cJKrePDCZR54T5kVbuoQk
[playlist]: https://www.youtube.com/playlist?list=PL85XCvVPmGQh__bxYIxaVifbIOajnrNcQ&disable_polymer=true
