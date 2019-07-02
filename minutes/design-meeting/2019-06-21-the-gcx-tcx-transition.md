# Planning the `'gcx, 'tcx` transition

- [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019.2E06.2E14)

# Summary

- Discuss the end-state for `tcx`
- Plan the steps we will take to get there and time frame

# Motivation

Now that we have removed the per-inference context interners, we plan to transition the compiler to a different naming scheme. This is a major shift and something we should plan carefully.

Also, it's an opportunity to consider an alternate naming scheme -- `tcx` and `'tcx` is not known to be particularly popular.

# Details

## Names for tcx

- Given the new, query-focused compiler design, there have been proposals to rename tcx to something like `QueryCx`. The lifetime name `'tcx` is also not particularly evocative.
    - One obvious proposal would be `qcx` and `'qcx` though this is not obviously better.
    - `q: QueryContext<'query>` or something like that is also viable though longer
    - (eddyb) `qx: QueryCx<'q>` (if we want to make it about queries)
    - `db: RustcDb<'db>` (if we want to go the salsa route)

## Transition plan

eddyb has a plan I sort of understand:

- ~~transition `TyCtxt<'_, 'tcx, 'tcx>`-using code first, to `TyCx<'tcx>` (name doesn't matter as long as it's unique for easy replacement later)~~
- ~~then start moving `'gcx,'tcx` code one InferCtxt user at a time, by making InferCtxt creation allow both `'tcx,'tcx` and `'gcx,'tcx`~~
- **UPDATE**: brute force was easier: https://github.com/rust-lang/rust/pull/61817 (see PR description for how it was done)
  - what's left to discuss is whether we want this solution

There are some question marks around timing:

- What will it be like to rebase a major PR over these changes?
- Any major PRs outstanding we want to block on?


# Challenges

- Bikeshed :)

# Key design questions

Unclear

# Notes from meeting

- PRs thus far:
    - ban unused lifetimes: [#61735](https://github.com/rust-lang/rust/pull/61722)
    - remove the `'a` [#61722](https://github.com/rust-lang/rust/pull/61722)
    - centralize to `TyCtxt<'tcx>` [#61817](https://github.com/rust-lang/rust/pull/61817)
- Create [#61838](https://github.com/rust-lang/rust/issues/61838) to serve as a tracking issue
- So, to make the transition:
    - generally rewrite `TyCtxt<..>` to `TyCtxt<'tcx>` or `TyCtxt<'_>`
    - typically, rewrite `TyCtxt<'_, '_, 'tcx>` to `TyCtxt<'tcx>`
        - note that if you have `TyCtxt<'_, 'tcx, '_>`, rewrite to `TyCtxt<'tcx>`
    - replace unused lifetimes with `'_`, typically
    - note: when adapting your code, you should never need to introduce a new lifetime, you're only removing them
        - if you find yourself adding a `'gcx` to some impl, that's wrong =)
- Possible future naming:
    - We are not thrilled with `TyCtxt<'tcx>` and are considering some alternatives:
        - `qx: QueryCx<'q>`
            - couple with `x` being the suffix we use for "contexts" in general (this convention was adopted in trans, but not elsewhere)
        - `db: RustcDb<'db>` (or perhaps `db: Database<'db>`)
            - used in salsa, it's the central storage for compiler state; but there are concerns that db doesn't fit "computation"
            - if we do more modules, then `RustcDb` might also be `ParsingDb` (for parsing-related queries), `TypeckDb` (for type-related queries), etc
            - though there are some impl concerns around that; salsa style modules do impose 
                - dyn dispatch for each call, even cache hits; or,
                - monomorphization costs
        - `rs: Rust<'rs>`
        - `rx: Rust<'rx>`
            - this is the "rust compiler", so maybe that should be the basis of the name?
        - `s: Session<'s>`
            - related to existing `tcx.sess`
            - session of "what"?
    - Reasoning to change:
        - tcx is sort of cryptic, can we find a name that gives people a better intuition?
        - the name "tcx" suggests "type context", but this context is far more general and is used in parts of the compiler (e.g., parsing, macros) that have nothing to do with types
- Conclusion on naming:
    - let's let it sit for a bit, not high priority
