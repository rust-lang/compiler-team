---
title: rust-analyzer and libraryification
type: docs
---
# rust-analyzer and libraryification

- [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13)
- Proposal issue: [rust-lang/rust#160](https://github.com/rust-lang/compiler-team/issues/160)
- Additional notes: [hackmd document](https://hackmd.io/_ixQrAr5TKafV9m8eSU_VA?view)

# Summary

Goal of the meeting is to update on rust-analyzer plans and discuss
taking the next step towards extracting "standalone libraries" that
can be shared between rustc and rust-analyzer.

## Update on rust-analyzer

Rust-analyzer has [made big strides](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175627272) and now includes 

- name resolution
- a partial type checker
- preliminary integration with chalk for trait solving
- as well as a shared lexer with rustc

## What does library-ification mean?

The goal is not just to create multiple crates, but to **identify
reusable components that could be combined to build new tools, new
compilers, etc.**

Some guidelines we came up with:

- separating out the IR definition from the logic
- trying to separate infrastructure (e.g., the query system "plumbing", or diagnostic printing)
- trying to draw boundaries that let us express tests as "input files", ideally ones that are independent from the details of the implementation, which are expected to change
- the crates should hande cases like [invalid or incomplete AST](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175630428)

Note that it [is ok for these libaries to depend on one
another](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175629334),
but we would [prefer to keep the dependencies rather
shallow](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175629771),
and where possible [to split out IR definition from
logic](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175629853).

## Testing

The [distinction between unit/integration
tests](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175628172)
comes into relief here.  We want to avoid tests that will bitrot too
easily, and yet one of the advantages of separate libraries is the
ability to write more targeted tests. 

One way to help with this is to have our libraries support ["something
like LLVM's model, where everything is a transformation from data to
data"](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175628482). [This
can make unit tests more
stable](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175628498). [Chalk
kind of works like
this,](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175628667)
and [we are experimenting with taking advantage of this in
rust-analyzer](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175628698).

## Some contested topics

**Stable vs nightly.** rust-analyzer prefers everything to build on
stable, [to make contribution
easier](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175627657). However,
nightly builds [enable
dogfooding](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175627843),
though we must be careful drawling too many lessons from that because
[compilers are an unusual
use-case](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175627848) ([but sometimes that's enough](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175628012)).

**Mono. vs poly repo.** Mono repos make it easier to make "atomic"
commits. They may make it [easier to audit the effects of language
changes](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175628271). A
lot depends ultimately on workflow. Polyrepos enable us to [sidestep
bors queue
times](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175627863). We
didn't definitely settle much here, except that there is [no reason to
rush to
polyrepos](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175630946):
particularly when extracting libaries from rustc, we should stick with
a monorepo setup until things mature.

## Initial libraries

We discussed a bit three possible places to start:

- lexer/parser
- name resolution
- traits + type constraint solving

We concluded that name resolution would be nice, but we don't have
anyone to spearhead that project right now. 

The meeting also included a fair amount of discussion about the
specifics of what lexer/parser extraction might mean ([starting around
here](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-13/near/175631511)),
which eventually moved to a [separate Zulip
topic](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/frontend.20library-ification).
