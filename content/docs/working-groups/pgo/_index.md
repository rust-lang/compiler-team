# Profile-Guided Optimization (PGO) Working Group
![working group status: active][status]

This working group aims to implement profile-guided optimization (PGO) in the
Rust compiler.

- **Leads:** [@michaelwoerister][michaelwoerister]
- **Meeting Notes:** [All]({{< relref "/docs/working-groups/pgo/NOTES" >}})
- **FAQ:** [FAQ]({{< relref "/docs/working-groups/pgo/FAQ" >}})

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?
This working group aims to accomplish the following:

- Implement and stabilize profile-guided optimization in `rustc` (https://github.com/rust-lang/rust/issues/59913)

# How can I get involved?
If you are interested in getting involved in this working group, send a message in the Zulip
stream.

- **Desired experience level:** LLVM + PGO expert `;)`
- **Relevant repositories:** [`rust-lang/rust`][repo]
- **Zulip stream:** [`#t-compiler/wg-profile-guided-optimization`][zulip] on Zulip

[repo]: https://github.com/rust-lang/rust
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/187830-t-compiler.2Fwg-profile-guided-optimization

## Are there any resources so I can get up to speed?
There are some resources available for those interested in contributing to get some background
and context:

- Tracking issue: https://github.com/rust-lang/rust/issues/59913
- Clang's [documentation on PGO](https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization).
  Contains lots of useful information on PGO in LLVM.
- @emilio's [initial PR](https://github.com/rust-lang/rust/pull/48346) for adding experimental
  support for PGO.
- A presentation on [Profile-based Indirect Call Promotion in LLVM](https://llvm.org/devmtg/2015-10/slides/Baev-IndirectCallPromotion.pdf), an optimization enabled by PGO

## Do I need to attend any meetings?
No.

[michaelwoerister]: https://github.com/michaelwoerister

