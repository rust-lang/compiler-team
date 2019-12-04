---
title: Read-Eval-Print-Loop (REPL) Extensions
type: docs
---

* [Zulip stream][] or read on the [Zulip archive][].

[Zulip stream]: https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-11-29/near/182183477
[Zulip archive]: https://zulip-archive.rust-lang.org/131828tcompiler/72407designmeeting20191129.html

# Agenda

- Design doc: https://hackmd.io/GJokfI0wQ0i4SIgRbFTmfw

- Big picture overview and questions

- Essential changes to support REPL extensions

# Big picture overview of design, and on-the-fly questions about it

- Read (to an AST), Compile (AST to MIR), Eval (the MIR to a value), Print (the value). and Loop.
- Question: Is this going to be a tool analogous to miri, where check-in's that break it may not break CI immediately, but rather will just file follow-up bugs?
  - Answer 1: it has to be a tool; it depends on miri (or a fork of miri)
  - Answer 2: it will be even less than a submodule (where a CI automatically files follow-up bugs): There
    won't be any automatic filing of follow-up bugs (alexreg has said
    they will handle maintenance manually); this is how miri and
    clippy had initially started. It could become a swubmodule later.

- Question: Does this mean if we (rustc developers) make breaking
  changes to the compiler, we won't necessarily know, right? (Unless
  explicit tests are added to rustc test suite.)
- Answer 1: Yes, but this is considered acceptable
- Answer 2: We can annotate relevant points in `rustc` with `// REPL` comments,
  (e.g. to avoid them being made private or removed due to lack of use in rustc).

- Design doc is split into (interleaved) essential and non-essential changes

- For remainder of meeting, we reviewed each essential change at a high level,
  and asked participatnts about their thoughts on that change.

# Add an “interpreter mode” to the compiler interface

- E.g. conditionally prevents dead user variable elimination.
- for example, when you do `let x = ...` in the repl, you want `x` to be kept around for the future repl inputs.
- Question: Are there other contexts where one would the dead-user-variable-elim optimization disable?
- Answer 1: Probably not
- Answer 2: Patching a running binary, perhaps

- Question: What deos it mean to prepend local variables from previous evaluation sessions?
- Answer: For each live variable add `#[rustc_repl_alive] let var: type;`

- Conclusion: No one objects to the addition of the "interpreter mode" flag

# Slightly expanded miri API


- "Added insert_alloc method to machine, used by REPL for restoring memory when deserialising previous evaluation session."
  - There was some debate about exactly where this would need to go, but
    everyone agreed that the functionality was necessary.

- "Added hooks before_statement, after_statement, before_stack_push (renamed existing method), after_stack_push, before_stack_pop, after_stack_pop (renamed existing method)."
  - no objections to these additions

- "Made stack pop behaviour more flexible, so as to allow the cleanup flag to be independent of wherever the action is null or a “goto”."
  - Question: What are the stack pop changes?
  - Answer: it's important that we can exit a block / pop off the stack but still not perform cleanup (so as to be able to serialise the values of the locals when execution is done).
  - Question: Is the cleanup the running of destructors?
  - Answer: more like clearing the local's memory
  - no objections to this addition

# Any remainning conerns from stake holders?

We reviewed some vague misgivings with certain design decisions, but
no one had strong objections.

Its not typical to accept changes like this for supporting other projects,
but it is also not unheard of (e.g. miri, priroda, clippy).

Conclusion: people are generally okay with moving forward with what
alexreg laid out, at least the Essential portion
