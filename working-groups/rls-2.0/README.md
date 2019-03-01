# Scope and purpose

Discover ideal architecture for IDE-compiler by starting a "from scratch" implementation. Especially, how to handle the two hardest things:

* name resolution/macro expansion
* trait resolution

Quantify how hard would be to port existing rustc to the IDE architecture.

## Secondary Goals

* provide better RLS experience by making a "better racer"
* facilitate rustc librarification by discovering and prototyping separable libraries
* facilitate specification of the language, by producing "more declarative" implementation

## Deliverables

* a language server which provides compiler-based code completion for a subset of the Rust language.
* "design knowledge": which approaches do and do not work in IDE contexts.
* (optional) improvements to existing tooling, like replacing racer in RLS with something more powerful, or making rustfmt capable of dealing with incomplete code.

# Current status

An initial language-server is implemented in the [rust-analyzer].

[rust-analyzer]: https://github.com/rust-analyzer/rust-analyzer

# How to participate

## Chat forum

On [the rust-lang Zulip][z], in [the `#t-compiler/wg-rls-2.0` stream][s].

[z]: https://rust-lang.zulipchat.com/
[s]: https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0


## Meetings

We don't have a regular meeting schedule yet, check [Zulip][s] to learn about
the next one.


## rust-analyzer

Currently the bulk of work is happening in the [rust-analyzer] repository.
It has [E-mentor] issues and a [guide].


[E-mentor]: https://github.com/rust-analyzer/rust-analyzer/issues?q=is%3Aissue+is%3Aopen+label%3AE-mentor
[guide]: https://github.com/rust-analyzer/rust-analyzer/blob/master/guide.md


## Getting up to speed

There's some documentation in rust-analyzer repository which should be useful.
There's a YouTube [playlist] with videos which cover various subsystems of the
analyzer.

[playlist]: https://www.youtube.com/playlist?list=PL85XCvVPmGQho7MZkdW-wtPtuJcFpzycE