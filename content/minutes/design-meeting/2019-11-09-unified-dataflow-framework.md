---
title: Unify Dataflow Frameworks (#202)
type: docs
---

# Design Meeting 2019-11-08

[Zulip Stream](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-11-08)

# Agenda

- Design doc: https://hackmd.io/@39Qr_z9cQhasi25sGjmFnA/Skvd9rztS


- Explain the current state of things
    - We currently have two wholly separate APIs for dataflow, one for bit-vector problems and one that allows arbitrary transfer functions but still restricts the lattice to a powerset of indices.
    - I want to merge these two to make code more DRY.
    - The prototype implementation is described pretty thoroughly in the design doc, but maybe go over it a bit?

- Discuss the [prototype implementation][proto] in general
    - The prototype is not very ambitious. It mostly preserves the existing `BitDenotation` API  but extends it to arbitrary transfer functions.
    - Do we want to maintain the status quo? Have two separate implementations forever? Once arbitrary lattices are supported, maybe they won’t fit as nicely into the same API.
        - OTOH, adding backwards analysis would have to be done in two places.
    - There have been more ambitious changes attempted. Perhaps we want to do one of these instead? Or at least incorporate some of their ideas into a framework that hews closer to the existing one.
        - nagisa worked on a [new dataflow framework][nagisa] that works for arbitrary lattices and transfer functions back in 2016.
        - eddyb was looking into a simultaneous forwards/backwards [dataflow-like thing][eddyb] for NRVO.

- Discuss the prototype in detail (If we decide we still want to go this way)
    - How do we feel about the `{before_,}*_effect` naming convention? It takes a bit of getting used to, and doesn’t extend nicely to backwards dataflow.
        - OTOH, having a canonical `statement_effect` which most implementers want to use and a secondary, prefixed effect which is only rarely used is good.
    - Should we be passing a `mir::Statement` to the `statement` effect methods? What about `mir::Body` to `bits_per_block`?
    - Should we use specialization to implement this?’
    - Should the `Analysis` methods take `&self` or `&mut self`?
        - Some may depend on the results of an earlier dataflow analysis and want to hold a cursor.
        - However, transfer functions should be pure for a given MIR, so maybe forcing those analyses to use interior mutability is appropriate.
    - Are we okay with a `ResultsCursor` becoming the common way to inspect results?
    - How do we implement a zipped `ResultsVisitor`?

- Discuss what extensions to the framework we want to prioritize
    - Backwards dataflow (currently implemented by hand to do check liveness in generators)
    - Arbitrary lattices (would make MIR const-propagation more powerful)
        - OTOH, the current linear const-propagation gets most of the benefits without the overhead of dataflow.
    - Optimizations:
        - Don’t cache block transfer functions on acyclic MIR (reduces memory usage)
        - Extended basic blocks? @Mark-Simulacrum

# Minutes
- Background on the need for arbitrary transfer functions for dataflow and const qualification.
- Alternatives to the prototype:
    - Perhaps we could express these more advanced dataflow problems in datalog/datafrog?
        - nikomatsakis wanted to test more in the polonius repo before committing to this upstream.
- The need for `apply_call_return_effect`:
    - We need some version of this, but not necessarily the current version.
    - API details
        - Skipped most of these, since they can be figured out later.
        - mir_borrowck might benefit from `ResultsCursor` now that it is implemented.
- Optimizations/extensions
    - Some interest in not caching block transfer functions for acyclic MIR.
      - This is pretty easy, I will prioritize this.
    - Probably not going to do EBBs anytime soon.

# Conclusions
- There was consensus on pursuing some version of the prototype instead of something more radical.
    - Details will be hashed out in a PR to come.
    - @ecstaticmorse will pursue this.

[proto]: https://github.com/rust-lang/rust/pull/65672
[nagisa]: https://github.com/rust-lang/rust/pull/35608
[eddyb]: https://github.com/rust-lang/rust/pull/47954
