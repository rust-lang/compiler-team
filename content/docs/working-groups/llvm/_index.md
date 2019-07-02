# LLVM Working Group

![working group status: incubating][status]

[status]: https://img.shields.io/badge/status-incubating-yellow.svg?style=for-the-badge

This working group encompasses work in LLVM upstream fixing the issues and implementing features
that matter to Rust:

- **Leads:** Preliminarily [@nagisa][nagisa]
- **Meeting Notes:** [All]({{< relref "/docs/working-groups/llvm/NOTES" >}})
- **FAQ:**[All]({{< relref "/docs/working-groups/llvm/FAQ" >}})
 

[nagisa]: https://github.com/nagisa

# How can I get involved?
If you are interested in getting involved in this working group, you should introduce yourself or
send a message in the Zulip stream. You can be added to the GitHub and Zulip group for the working
group if you are interested in being pinged when there are available tasks.

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/rust`][repo], [`rust-lang/llvm-project`][llvm-downstream]
- **Zulip stream:** [`#t-compiler/wg-llvm`][zulip] on Zulip

[repo]: https://github.com/rust-lang/rust
[llvm-downstream]: https://github.com/rust-lang/llvm-project
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/187780-t-compiler.2Fwg-llvm

## Are there any resources so I can get up to speed?

### LLVM Specific Documentation:

- You can find documentation on LLVM at the [LLVM documentation index]. Some cherry picked resources
  are listed below:
  - [Getting Started with the LLVM System] describes how to configure and build LLVM from source.
  - The [Intro to LLVM] chapter of "The Architecture of Open Source Applications" provides a
    great introduction to LLVM.
  - The [LLVM Language Reference] describes the LLVM intermediate representation in great detail,
    but remains quite readable.
  - Before submitting your first patch upstream to LLVM, consider reading [Contributing to LLVM] and
    [Code Reviews with Phabricator].

### Rust Specific Documentation:

- You might want to read the [codegen section] of the [rustc guide] for more information on codegen
  and debugging LLVM in `rustc`.


## Do I need to attend any meetings?

Currently the working group is incubating, pending more time available from the people spearheading
the effort, and no meetings are being held in the meantime.

## How to find things to do?

[A-LLVM][a-llvm] label in the `rust-lang/rust` repository categorises the issues which have
something to do with how LLVM works. For the time being this is the best place to start.

[a-llvm]: https://github.com/rust-lang/rust/issues?q=is%3Aopen+is%3Aissue+label%3AA-LLVM
[LLVM documentation index]: https://llvm.org/docs/
[LLVM Language Reference]: https://llvm.org/docs/LangRef.html
[Contributing to LLVM]: https://www.llvm.org/docs/Contributing.html
[Code Reviews with Phabricator]: https://llvm.org/docs/Phabricator.html
[Getting Started with the LLVM System]: https://www.llvm.org/docs/GettingStarted.html
[Intro to LLVM]: http://www.aosabook.org/en/llvm.html
[codegen section]: https://rust-lang.github.io/rustc-guide/codegen.html
[rustc guide]: https://rust-lang.github.io/rustc-guide/