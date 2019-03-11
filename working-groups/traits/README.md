# Scope and purpose

The **traits** working group is dedicated to improving the trait
system implementation in rustc. The end goal is to transition the
compiler to use a [Chalk-style] solver, but along the way we hope to
make targeted fixes to the existing solver where needed.

[Chalk-style]: https://github.com/rust-lang-nursery/chalk

# Current status

- Preliminary Chalk integration in Rustc is complete.
- Currently doing a lot of documentation work.
- Developing a plan for what to do next. 

# How to participate

## Chat forum

On [the rust-lang Zulip][z], in [the `#t-compiler/wg-traits` stream][s].

[z]: https://rust-lang.zulipchat.com/
[s]: https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits

**Dedicated repository:** The [wg-traits
repository](https://github.com/rust-lang/wg-traits) contains draft
RFCs and other documents.

## Weekly triage meeting

There is a weekly triage meeting which you will find on the [compiler
meeting calendar][c]. The purpose of this meeting is to take stock of
where we are and figure out what to do next. The meeting takes place
on [Zulip][z] in a dedicated topic of the [the `#t-compiler/wg-traits`
stream][s].

[c]: https://github.com/rust-lang/compiler-team#meeting-calendar
