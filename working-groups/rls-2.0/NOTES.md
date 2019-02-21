# 2019-02-20

## Notes from "Design of syntax trees" meeting

[Zulip stream](https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/Design.20meeting.3A.20syntax.20trees)

We haven't nailed down the exact design, but we've covered the design space a
bit, and formulated interesting questions to evaluate designs:

* What are the requirements of IDEs? Full-fidelity trees, "common super type"
  of nodes for bottom-up traversals.
* Should queries reach *inside* of the syntax tree?
* In general, how incremental computation works with syntax trees? Offsets are
  bad for incremental (change a lot), parent pointers are bad for incremental
  (give access to too much context).
* Could we have "full-fidelity" mode for IDE and "compressed" mode for compiler?
* Do macros expand to the same tree type which is produced after parsing?

An action item from the meeting is to look closer into the Roslyn/Swift
libsyntax model: it seems to work for many languages and could be considered a
"default choice". Those languages don't have macros though.

We will be scheduling a video meeting to walk through Roslyn model, as it is
implemented in rust-analyzer now.
