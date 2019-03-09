#### *<p align="center">This page is an example template and not the actual NLL working group.</p>*
#### *<p align="center">Don't forget to add this new working group to the end of the table at the root of this repository!</p>*

# Non-Lexical Lifetimes (NLL) Working Group
![working group status: active][status]

This working group aims to implement non-lexical lifetimes (NLL), as described in RFC 2094:

> Extend Rust's borrow system to support non-lexical lifetimes -- these are lifetimes that are
> based on the control-flow graph, rather than lexical scopes. The RFC describes in detail how
> to infer these new, more flexible regions, and also describes how to adjust our error messages.
> The RFC also describes a few other extensions to the borrow checker, the total effect of which is
> to eliminate many common cases where small, function-local code modifications would be required
> to pass the borrow check.

- **Leads:** [@nikomatsakis][nikomatsakis] and [@pnkfelix][pnkfelix]
- **Meeting Notes:** [All](NOTES.md)

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?
This working group aims to accomplish the following:

- Implement a new borrow checker based on the MIR that supports non-lexical lifetimes.
- Handle the migration from the existing AST-based borrow checker.

# How can I get involved?
If you are interested in getting involved in this working group, you should try to attend a meeting and
introduce yourself or send a message in the Zulip stream. You can be added to the GitHub and Zulip
group for the working group if you are interested in being pinged when there are available tasks.

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/rust`][repo] (specifically `src/librustc_mir/borrow_check`)
- **Zulip stream:** [`#t-compiler/wg-nll`][zulip] on Zulip

[repo]: https://github.com/rust-lang/rust
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/122657-t-compiler.2Fwg-nll

## What if I don't have much time?
If you don't have time to contribute code, consider using `#![feature(nll)]` to help find bugs
with NLL. If you do, we'd love it if you could file an issue.

## Are there any resources so I can get up to speed?
There are some resources available for those interested in contributing to get some background
and context:

- MIR is an intermediate representation used within the compiler. NLL is implemented as a new
  borrow checker implemented on the MIR. You can read about the MIR in
  the [relevant rustc-guide chapter](https://rust-lang.github.io/rustc-guide/mir/index.html).
- You can read about the major phases and internals of the MIR borrow checker in
  it's [rustc-guide chapter](https://rust-lang.github.io/rustc-guide/borrow_check.html).
- NLL was originally specified
  in [RFC 2094](https://github.com/rust-lang/rfcs/blob/master/text/2094-nll.md).
- [@nikomatsakis][nikomatsakis]'s blog posts on NLL are also useful for getting familiar with the
  goals of NLL and some initial implementation ideas.
   * [Introduction][introduction], [NLL based on liveness][liveness] and
     [NLL adding the outlives relation][outlives].

[introduction]: http://smallcultfollowing.com/babysteps/blog/2016/04/27/non-lexical-lifetimes-introduction/
[liveness]: http://smallcultfollowing.com/babysteps/blog/2016/05/04/non-lexical-lifetimes-based-on-liveness/
[outlives]: http://smallcultfollowing.com/babysteps/blog/2016/05/09/non-lexical-lifetimes-adding-the-outlives-relation/

## Do I need to attend any meetings?
The NLL working group meets regularly for triage and discussion of high priority issues - see
the [compiler team meeting calendar](../README.md#meeting-calendar) for the most up to date
time. Attendance is not mandatory but recommended as this can be a good opportunity to ask any
questions and find new issues to work on.

## What do all these NLL labels mean?
The NLL working group monitors the [**A-NLL**][A-NLL] label for issues relating to NLL.

The follow extra labels are used during the working group's prioritization and triage, in roughly
priority order:

- [**NLL-sound**][NLL-sound] labels bugs around examples of code that is meant to be rejected by
  NLL. Usually such bugs are either ICE'ing or being erroneously accepted by NLL. *NLL-sound*
  things tend to be higher priority than *NLL-complete* things, at least at the moment.
- [**NLL-performant**][NLL-performant] is for cases where NLL is causing *slow, slow, slow*
  compile times.
- [**NLL-complete**][NLL-complete] labels bugs around examples of code that is meant to be
  accepted by NLL. Usually such bugs are either ICE'ing or being erroneously rejected by NLL.
- [**NLL-reference**][NLL-reference] labels any issues relating to documenting NLL's behaviour
  into the language reference.
- [**NLL-diagnostics**][NLL-diagnostics] labels cases where the diagnostics emitted by NLL
  specifcally needs improvement. Usually it is/was used for cases where NLL is a regresion
  w.r.t diagnostics when compared to AST-borrowck (but at this point its really more of a
  catch-all for any diagnostic issue originating from the NLL code base).

Other NLL labels also exist:

- [**NLL-fixed-by-NLL**][NLL-fixed-by-NLL] labels bugs that are problems solely with the
  AST-borrowck -- they are bugs that we intend to close once everyone migrates over to NLL.
- [**NLL-polonius**][NLL-polonius] labels bugs related to the Polonius subproject - see the
  Polonius working group for more information on these.

[A-NLL]: https://github.com/rust-lang/rust/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3AA-NLL
[NLL-sound]: https://github.com/rust-lang/rust/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3ANLL-sound
[NLL-performant]: https://github.com/rust-lang/rust/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3ANLL-performant
[NLL-complete]: https://github.com/rust-lang/rust/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3ANLL-complete
[NLL-reference]: https://github.com/rust-lang/rust/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3ANLL-reference
[NLL-diagnostics]: https://github.com/rust-lang/rust/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3ANLL-diagnostics
[NLL-fixed-by-NLL]: https://github.com/rust-lang/rust/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3ANLL-fixed-by-NLL
[NLL-polonius]: https://github.com/rust-lang/rust/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3ANLL-polonius

[nikomatsakis]: https://github.com/nikomatsakis
[pnkfelix]: https://github.com/pnkfelix
