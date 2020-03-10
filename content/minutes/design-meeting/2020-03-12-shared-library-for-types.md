---
title: 2020-03-12 shared library to represent Rust types
type: docs
---

# Shared library to represent Rust types

## Notes from the meeting

The later sections of this document were largely prepared before the discussion.
This section contains notes from the discussion itself.
You can [also read the complete discussion in our zulip-archive](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html).

### Conclusions

* [consensus from folks in the meeting:](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189906358)
    * are "cautiously optimistic" about this approach, and open to us trying to create PRs that move rustc in this direction
    * are ok with having a rusc-ty library that is published to crates.io
* but there remains disagreement about the big picture question of how stable API boundaries can/should be between libraries, whether they should live in their own repos, and whether they should use unstable features (but that was not the direct topic of this meeting, so that's ok)
* [sketch of a plan for how to do the transition](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189906441):
    1. ty.kind -> ty.kind()
    2. ty.kind()-> ty.kind(tcx)
    3. Add a type alias and make kind work on I: Interner
    4. Start using Ty<I> more (This is a lot of PRs)

### Key or interesting points

Some key or unique points that were raised during the discussion:

* [abstracting more over the concrete representation of types permits experimentation for performance reasons](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189902761)
* impact of more generics:
    * [more generics may increase compilation time](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189902837), although [this is not clear](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189902975), and we also get the [advantage that we can write libraries that do not depend on most of rustc](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189903076). They would use traits like the proposed `Intrner` trait or chalk's `RustIrDatabase` trait to isolate out their dependencies.
    * [we won't be able to use pattern matching](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189902911)
    * generics also permit [logically separating out different sets of types](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189903514) in your code (e.g., inputs and outputs), even if they both ultimately share the same representation
* interactions with MIR
    * [types include constants](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189905039), which reference MIR, is that a problem?
        * no, [because types reference MIR through def-ids](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189905156)
    * rustc-ty feels like a dependency that could be used to build a rustc-mir that just defines MIR (but independently from rustc)
* to do the transition:
    * [two main parts](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189904385) that are somewhat independent:
        * reshape `TyKind` to a more chalk-like hierarchy
        * introduce the interner, which can be done via a series of PRs like [`ty.kind -> ty.kind() -> ty.kind(tcx)`](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189904318), and as described in the proposal below
    * one question was whether we [should we do more of the experimentation in rust-analyzer or chalk first](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189904326); but doing the work on rustc means we will [encounter the interesting side-cases](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189904326). Still, we have done the work on chalk already and [should start migrating rust-anayzer to share representation with chalk, too](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189904518)

### Deferred questions

Some bikeshed or other detailed questions were raised but largely deferred:

* rustc today uses `ty.kind` to get the "kind" of type, chalk uses `ty.data()` -- which name is preferred?
* [we may want to support flags also on "lists of types"](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189903142)
* what to [name the crate](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189904735)
* should the library [use unstable features](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189904914) and [how stable should it be](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189905312)?
    * this was largely deferred but we did get into some of the interesting details, particularly on the question of stability
    * being more stable (even just noting when there are semver-relevant changes) requires us to take on some more overhead
        * maintaing version numbers, maybe a [changelog](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189905621)
    * avoiding nightly means we can't dogfood features, some of which don't see that much usage in the ecosystem
    * but:
        * it would be great it [rustc development](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189905824) felt much like working on any other rust project, e.g. using cargo + stable
        * and having libraries that people can build on would eventually enable [more complex tooling like Roslyn](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189905590); people want this, think Mirai
        * if we can find meaningful boundaries between crates, [maintaing semver shouldn't be so hard](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189905511) ([but can we?](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189905601))
    * ultimately we [deferred the question](https://zulip-archive.rust-lang.org/131828tcompiler/05771designmeeting20200306.html#189905940) to discuss more explicitly and with more experience

## Context

As part of library-ification, we need a library to represent Rust types. The intent is that this library can be used by chalk, rustc, rust-analyzer, and any other projects which need to represent Rust types.

Goals:

* Do not hard-code the use of interning. Interning is a good fit for batch compilation but not such a good fit for IDEs, which need to be able to gradually release memory on an ongoing basis.
* Ergonomic library that is pleasant to work with.
* Simplify Rust's types to "their essence", while retaining full information

## Goals for this meeting

* Discuss the "high-level plan" for the design
* Discuss the roadmap and initial steps to work towards this goal

## Non-goals

* We do not need to decide the fine details of the type (e.g., what variants there are, what to name the methods, etc) at this time. We will work those out through PRs and refactorings.
* Figure out the mono-repo vs poly-repo question and where the shared crate should ultimately live (I sketch some interim solutions below)

## Proposed end-goal: crate structure

This idea is part of a broader 'library-ification' effort. The goal is to build up independent crates for the various parts of rustc, like the trait system, type checker, name resolution, etc, that can be shared by both rustc and rust-analyzer. 

This particular meeting is talking about what might be part of a crate that describes Rust types, which we'll just call `ty` for now. This crate would be the foundation for a lot of other crates:

```
                          "rust-analyzer"
                               ^
                               |
ty --> "trait system" -----+---+--> "rustc"
 |          ^              |
 |          |              |
 +---> "type checker" -----+
```

In other words, we are talking about ultimately replacing [the `Ty<'tcx>` type that rustc uses today](https://doc.rust-lang.org/nightly/nightly-rustc/rustc/ty/type.Ty.html) with a type defined in this `ty` crate, modeled roughly after chalk's [`Ty`] type.

## Proposed end-goal: the basic pattern for representing types

The proposed design is described in some detail [in the chalk book](http://rust-lang.github.io/chalk/book/types.html), so you may wish to read there. However, I do want to emphasize that the *fine details* (e.g., exactly which variants we should have) should not be considered normative.

[`Ty`]: (http://rust-lang.github.io/chalk/chalk_ir/struct.Ty.html)

In the proposed design, Rust types will ultimately be represented by a struct that looks like this, based on [`chalk_ir::Ty`][`Ty`]:

```rust
pub struct Ty<I: Interner> {
    interned: I::InternedType
}

impl<I: Interner> Ty<I> { ... }
```

Clearly, `Ty<I>` itself says very little. It is just a "shell" that wraps around the interned representation, which is defined via the `Interner` trait:

```rust
trait Interner {
    type InternedType;
    
    fn intern_ty(&self, data: TyData<Self>, flags: TyFlags) -> Self::InternedType;
    fn lookup_ty_data<'ty>(&self, ty: &'ty Self::InternedType) -> &'ty TyData<Self>;
    fn lookup_ty_flags<'ty>(&self, ty: &'ty Self::InternedType) -> TyFlags;
}
```

To actually *use* a type, you wish to invoke the `data()` method (you have to supply a reference to the interner):

```rust
impl<I: Interner> Ty<I> {
    pub fn data(&self, interner: &I) -> &TyData<I> {
        interner.lookup_ty_data(&self.interned)
    }

    pub fn flags(&self, interner: &I) -> &TyFlags<I> {
        interner.lookup_ty_flags(&self.interned)
    }
}
```

This method returns a reference to a [`TyData`], which is the actual `enum` that defines the type variants. The definition that follows is taken from Chalk:

[`TyData`]: http://rust-lang.github.io/chalk/chalk_ir/enum.TyData.html

```rust
enum TyData<I: Interner> {
    Apply(ApplicationTy<I>),
    Placeholder(PlaceholderIndex),
    Dyn(DynTy<I>),
    Alias(AliasTy<I>),
    Function(Fn<I>),
    BoundVar(usize),
    InferenceVar(InferenceVar),
}
```

As noted before, don't focus too closely on the precise set of variants. Chalk aimed for a very minimal set, and the idea was to [justify each variant](http://rust-lang.github.io/chalk/book/types/rust_types.html#justification-for-each-variant) by explaining clearly why some bit of code might want to look for types of that variant, but I expect that we'll ultimately want to find some "sweet spot" in between rustc's approach (lots of variants) and chalk's approach (minimal set).

**The key thing to discuss here:**

* A `Ty<I>` type with an `I: Interner` parameter that defines its representation

## Interner in Rustc

The interner in Rustc would be `TyCtxt<'tcx>`, and hence we'd have something like

```rust
impl<'tcx> Interner for TyCtxt<'tcx> {
  type InternedType = &'tcx TyData<Self>;
  
  fn intern_ty(&self, data: TyData<Self>) -> &'tcx TyData<Self> {
      self.interners.allocate(data)
  }
}
```

## How to get there from here

Presently, rustc, chalk, and rust-analyzer each have their own type definitions. The goal is eventually that all three projects should share the same crate that defines the type definitions, using the above generic style. But how do we get to that goal? And where should that crate live? This ultimately plays into the mono- vs poly-repo discussion and I would rather not go there in this meeting. It seems like we can address the questions a bit later when we have made more progress.

Until then, I propose that we gradually refactor rustc so that the types in rustc approach the goal described above and ultimately factor out a `rustc-ty` crate that contains just the type definitions (and some supporting types). This should be a crate that can be published on crates.io (as well as living in tree). chalk can then depend on this crate. Once that is done, we could consider whether the crate should move to chalk (which would be moving towards polyrepo) or whether it should remain in tree, or whether we adopt some other, hybrid solution ([as discussed here](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/toolstate.20breakage)).

In more detail:

* Rework the `TyS` API so that you access the variants by `ty.data(tcx)` and not `ty.kind` (similarly flags)
* Introduce an `Interner` trait into rustc and refactor from `type Ty<'tcx> = &'tcx TyS<'tcx>` to `type Ty<'tcx> = ty::Ty<TyCtxt<'tcx>>'`
* Extract the type stuff into a `rustc-ty` crate
    * this should have no dependencies on other parts of rustc and be something we can publish to crates.io
* Make chalk depend on that crate

### chalk integration

Note that while the above work is proceeding, we may **also** want to experiment with "chalk integration". This would be done by having `-Zchalk` cause rustc to translate its types (however they may be represented) into the minimal chalk-ir types on demand. As rustc's types come to match chalk-ir types (and/or chalk-ir types change to match rustc types), this would be a simpler and simpler translation and would eventually become a no-op once rustc + chalk share the same type definitions.

## Where should this crate live?

This crate will start to re-raise the question of poly- vs mon-repo. I would like to dodge that particular discussion for now. What I've proposed above has a `rustc-ty` crate living in tree. This is obviously the right place to start, but ultimately I think we should consider the idea of having "type related code" living in a separate rust-lang repo (like rust-lang/chalk), which might ultimately include the representation of types, the trait solving code, and perhaps the type checker (and depend on some other repo which provides the HIR that gets type-checked). But obviously this would carry coordination costs and all of this seems far enough way I'd rather not discuss it in this meeting.
