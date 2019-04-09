# pipelining Working Group
![working group status: active][status]

- **Leads:** [@alexcrichton][alexcrichton], [@nnethercote][nnethercote]
- **Meeting Notes:** [All](NOTES.md)

[nnethercote]: https://github.com/nnethercote
[alexcrichton]: https://github.com/alexcrichton
[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?
This working group aims to accomplish the following:

- Enable Cargo to invoke rustc in a pipelined fashion. Specifically enabling
  Cargo to start compiling dependants of a crate as soon as metadata becomes
  available, rather than waiting until the entire compilation is done before
  proceeding.

# How can I get involved?

If you are interested in getting involved in this working group, you are welcome
to introduce yourself in the Zulip stream. This working group is relatively
small in scope, though, so we may not have work for everyone to take on!

- **Desired experience level:** Experienced
- **Relevant repositories:** [`rust-lang/rust`][repo]
- **Zulip stream:** [`#t-compiler/wg-pipelining`][zulip] on Zulip

[repo]: https://github.com/rust-lang/rust
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/195180-t-compiler.2Fwg-pipelining

## What if I don't have much time?

We're not quite at the point where we can test out support in rustc, but when
that's ready we can fill in some instructions here!

## Are there any resources so I can get up to speed?

There are some resources available for those interested in contributing to get
some background and context:

- [Initial Cargo issue](https://github.com/rust-lang/cargo/issues/6660)
- [Tracking issue on rustc side of things](https://github.com/rust-lang/rust/issues/58465)
- [Old cargo tracking issue](https://github.com/rust-lang/cargo/issues/4831)
