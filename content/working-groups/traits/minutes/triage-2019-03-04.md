---
title: Triage meeting on 2019-03-04
type: docs
---
# Triage meeting on 2019-03-04

## Info

[Zulip thread.](https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/weekly.20meeting.202019-03-04)

## Summary

We followed up on the goals from last time.

### Lifetime problems around async-await

We [discussed](https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/weekly.20meeting.202019-03-04/near/159939976)
how we found a way to resolve the `async fn` complications by changing
the async fn desugaring, and hence don't need any deep trait
action. We are [still interested](https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/weekly.20meeting.202019-03-04/near/159940028)
in trying to find a way to solve the "captures problem" for impl
Trait, however, and alexreg and nikomatsakis may do some follow-up
there.

### Explore use cases for lazy normalization

Some investigation occurred. [Current plan](https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/weekly.20meeting.202019-03-04/near/159940188)
to continue documenting the way that the current normalization code
plays out and to hold some sort of meeting to document that and walk
through it. That meeting will hopefully happen this week and will be
recorded.

### Explorse use cases for GATs

[Not a lot of progress here.](https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/weekly.20meeting.202019-03-04/near/159940294) (Yet!)

Once we **do** make progress, though, the [logical next
step](https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/weekly.20meeting.202019-03-04/near/159940943)
is probably to try and model those use cases some in Chalk, as well as
to investigate more deeply how rustc could be extended to handle the
cases natively (without blocking on full chalk integration).

### Dig into the chalk transition

We [have a meeting scheduled for tomorrow](https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/weekly.20meeting.202019-03-04/near/159940496) with the RLS 2.0 folks, planning to talk about how the type checker is working in that context.

[**We are thinking that integrating Chalk first into the RLS 2.0
project may be a better idea than starting with
rustc**](https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/weekly.20meeting.202019-03-04/near/159940552),
particularly as it can help get RLS 2.0 to a "working product" faster,
but also because we may be able to use that to pursue the idea of
sharing more code between chalk + compiler than we could readily do
with rustc. Specifically, we should be able to have:

- a library to share the definition of types between chalk + RLS 2.0
- shared code for lowering traits + impls into logical rules

We also talked about other possible work on chalk, in particular the
idea of chalk-specific refactorings but also building a [benchmarking
harness](https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/weekly.20meeting.202019-03-04/near/159940894)
for the `chalk-engine` crate.

## Miscellaneous discussion

There are a few other things we talked about this week:

- [the idea of a research intern working on chalk and what they might
do](https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/weekly.20meeting.202019-03-04/near/159941464)
- [how we might support `async fn` in traits without full GAT support](https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/weekly.20meeting.202019-03-04/near/159942222)

## Plans for the coming week

We settled on the following plans for the coming week:

So plans for this week are:

- Describe how normalization works today and hold a (recorded) call to
  try and explain it to others. Trace through some of the examples
  where lazy norm would be helpful. (nikomatsakis)
- Explore the use cases for GATs (aturon, centril)
- Discuss RLS 2.0 type checker and contemplate how to integrate chalk
  into it (nikomatsakis, scalexm)
- Maybe discuss other chalk improvements? (e.g., benchmarking harness) (nikomatsakis) 
- Maybe discuss the "lifetime capture" problem in impl Trait? (nikomatsakis, alexreg)