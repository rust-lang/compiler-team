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

# 2019-02-25

Notes: [+RLS 2.0 Draft Roadmap](https://paper.dropbox.com/doc/RLS-2.0-Draft-Roadmap-QCp2fFoPcfL3FUSlqDHxw)

Main theme for the meeting was to brainstorm what the “deliverables” for the RLS 2.0 might be, what the current challenges with existing design are and how we should tackle them in the short-to-mid-term.

At first we discussed whether we should aim for an end-to-end language server or for extracting and refactoring specific bits of compiler’s pipeline. There was a consensus that we should aim to do _both_ in parallel but with the _end-to-end_ solution being a **primary** target for this working group for now.

The former would focus on separating and abstracting away the current model of name resolution and macro expansion. While it makes sense to think of the boundaries for the purposes of refining further design work, abstracting away a library that could be additionally shared by the compiler is something we won’t focus on now or might be a better target for a separate working group altogether.

In order to work towards the end-to-end solution, we agreed to initially _limit the scope of correctly supported language features_ inside an IDE.

## Discussed scope
### Macro expansion

One particular thorny area is macro expansion.

We don’t know ahead of time what kind of items might be produced by a macro or how it might affect name resolution during the process, so for now we assume that macros are “well-defined”. More concretely, anything that can influence name resolution (e.g. macros generating named items and/or shadowing) will _not_ be guaranteed to be correctly supported at first. However, at minimum we need to support macros generating `impl`s.

_Procedural macros_ are also tricky to get right. In addition to also not being able to tell about their output kind, these are _procedural_ (who would’ve thought?) and that brings along its own set of problems. These are basically a `rustc`-specific “programs” that take and produce a structural token stream, which means these are inherently tied to the internal compiler ABI and could potentially be side-effectful.

For now we will ignore potential side-effects but still need to figure out how to possibly solve the ABI issues. One idea is to provide a shim that would translate between the internal `rustc_private` and some form of “public” token API.

### Type inference

Another area we’d like to focus on is the type system.

Currently, Rust Analyzer, on which we build our effort, ships its own type checker and inference engine that is capable of inferring the 80% of the types inside Rust Analyzer itself [[1](https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/Type.20inference.20progress)].

While it is unrealistic to extract the full type-inference engine from the compiler and share it, it might make sense to work towards integrating with Chalk - the standalone trait engine that is aimed to be integrated eventually with `rustc`.

## Summary

In short, we decided to primarily work towards an end-to-end effort, which aims to _correctly_ support a _subset_ of the language features in the short term. However, as time goes, we plan on achieving feature parity with the compiler in the long run and merge the resulting code upstream.

# 2019-04-11

## Notes from "Macro By Example" meeting

[Zulip stream](https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/MBE.20discussion)

We've discussed current state and next steps for macro handling in rust-analyzer. One conclusion was that we are not going to shoot directly at librarifying macro expansion code and sharing it with rustc: we already have chalk and name resolution in-flight. Instead, the focus is explicitly on supporting the most common cases, so that we can check hypothesis that incremental IDE-style macro expansion is feasible.

We also try to produce a "clean" interface for macro expansion, even if it means not handling all complexities of existing macro system. Specifically, both mbe and proc macros will use `TokenTree` abstract data type, modeled after `proc_macro2::TokenTree` for both input and output. In `TokenTree`, tokens have identities (u32 ids) and additional information about spans and hygiene is stored in side-tables keyed by these identities.

We've also formulated three short-term action items:

* making parser work with iterator of tokens (currently it requires a slice), which should help with parsing token-trees without flattening them first
* making existing IDE features work correctly in the presence of macros, specifically, making sure that goto definition uses correct span in the original file
* extending the existent macro-expander prototype to handle more cases
