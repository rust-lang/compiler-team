---
title: Parselib Working Group
type: docs
---
# Parselib Working Group
![working group status: active][status]

The goal of the working group is to librarify rustc parser and share it between
rustc and rust-analyzer.

- **Leads/members:** See [rust-lang/team][team]

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?
This working group aims to accomplish the following:

- Core goal: rust-analyzer and rustc use the same code for parsing Rust -- a
  shared parser which is production ready (like rustc) and can build
  full-fidelity syntax trees for code with syntax errors (like rust-analyzer).

- Stretch goal: produce a "nice enough" parser library which can be used even
  outside of rustc or rust-analyzer.

- Non goal: produce a shared syntax tree representation.

# How can I get involved?
At the moment, there list of action items is pretty short -- we are still
figuring out what to do, concretely. If you're interested in getting involved
then feel free to pop into the Zulip stream.

- **Desired experience level:** Familiarity with rustc and rust-analyzer parsers.
- **Relevant repositories:** [`rust-lang/rust`][rust], [`rust-lang/wg-grammar`][wg-grammar], [`rust-analyzer/rust-analyzer`][rust-analyzer], [`rust-analyzer/ungrammar`][ungrammar].
- **Zulip stream:** [`#t-compiler/wg-parselib`][zulip] on Zulip

[rust]: https://github.com/rust-lang/rust
[wg-grammar]: https://github.com/rust-lang/wg-grammar
[rust-analyzer]: https://github.com/rust-analyzer/rust-analyzer
[ungrammar]: https://github.com/rust-analyzer/ungrammar
[team]: https://github.com/rust-lang/team/blob/master/teams/wg-parselib.toml

[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/254930-t-compiler.2Fwg-parselib
