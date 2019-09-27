---
title: Place Interning
type: docs
---

# Place projection interning meeting 2019-09-27

[Zulip stream](https://rust-lang.zulipchat.com/#narrow/stream/189540-t-compiler.2Fwg-mir-opt/topic/Place's.20projection.20interning.20design.20meeting.20.3F)

## Ideas to pursue at some later point or in parallel

- removing the field from the projections
- get rid of static from `PlaceBase`
    - I (oli-obk) think this would be good to pursue ealier than later since it'll just eliminate an annoying piece that we don't really care about most of the time
- intern entire places at the MIR level
    - interning `(base, Vec<projection>)` means less re-use overall though
    - nice hack: rfirst 128 (eddyb suggests 2^16) locals or so can be mapped to themselves
        - could even be extended for whatever the most common projections are if that proves useful
            - insert gratuitous reference to random compression methods here

## Ideas rejected

- intern the `Vec<Projection>` to a `&[Projection]`
    - **Rejected:** List is better because it is smaller, and we can use a `PlaceRef` for cases where you want to do subslicing
    - Although `&[Projection]` would mean that `a.b.c` and `a.b.c.d` could sometimes share memory, if we were clever enough

## Candidates to pursue first

- intern the `Vec<Projection>` to a `List<Projection>` (probably the right first step)
    - challenges:
        - construction
        - `MutVisitor`
- intern the `Vec<Projection>` to a per-MIR integer (unlikely to be the first first step)
    - maybe we can retain `MutVisitor` in its current design if MIR still owns the `Projection` arrays
    - maybe an interesting intermediate step to start from, as it removes one of the challenges, and just leaves us with construction
    - but it comes with its *own* challenges, like now you can't just take a `Place` and get its data without a MIR (you have to do `mir.projection_data(index)`)

But both of these require tweaking construction.

## Construction

General place for modifying MIR building is to convert to a `PlaceBuilder`, as outlined [in this Zulip comment](https://rust-lang.zulipchat.com/#narrow/stream/189540-t-compiler.2Fwg-mir-opt/topic/Place's.20projection.20interning.20design.20meeting.20.3F/near/176746025).

We need to work out the precise steps to do this, and we may want to do some efficiency tweaks like `SmallVec` to avoid iterating in the common cases.

This is also something [we can pursue before doing *any* interning](https://rust-lang.zulipchat.com/#narrow/stream/189540-t-compiler.2Fwg-mir-opt/topic/Place's.20projection.20interning.20design.20meeting.20.3F/near/176747691), so it's the logical next step.
