# Scope and purpose

The **traits** working group is dedicated to improving the trait
system implementation in rustc. This working group is a collaboration
between the [lang team] and the compiler team. We have a number of inter-related
goals:

- designing new trait-related language features;
- documenting and specifying the semantics of traits in Rust today; and,
- improving the trait solver implementation in rustc.

[lang team]: https://github.com/rust-lang/lang-team/

A big part of this work is transitioning the compiler to use a
[Chalk-style] solver, but along the way we hope to make targeted fixes
to the existing solver where needed.

[Chalk-style]: https://github.com/rust-lang-nursery/chalk

# How to participate

## Chat forum

On [the rust-lang Zulip][z], in [the `#t-compiler/wg-traits` stream][s].

[z]: https://rust-lang.zulipchat.com/
[s]: https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits

## Weekly triage meeting

There is a weekly triage meeting which you will find on the [compiler
meeting calendar][c]. The purpose of this meeting is to take stock of
where we are and figure out what to do next. The meeting takes place
on [Zulip][z] in a dedicated topic of the [the `#t-compiler/wg-traits`
stream][s].

[c]: https://github.com/rust-lang/compiler-team#meeting-calendar

## Dedicated repository

Documents related to the wg-traits working group are stored on a
dedicated repository, [rust-lang/wg-traits]. This repository contains
meeting minutes, regular updates, as well as draft RFCs and other
documents.

[rust-lang/wg-traits]: https://github.com/rust-lang/wg-traits

