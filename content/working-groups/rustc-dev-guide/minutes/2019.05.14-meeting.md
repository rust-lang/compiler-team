---
title: Rustc Dev Guide WG 2019-05-14 sync meeting
type: docs
---
# Rustc Dev Guide WG 2019-05-14 sync meeting

## Topics discussed:

- Define what’s the walkthrough section we want to add
- Triage missing rustc-dev-guide chapters
- How do we want to keep track of who is doing what? Does github Projects works
  nice for this?

## Plan for walkthrough/overview chapter

- Goal is to have a chapter which will walk through compilation of simple program
- Links to other chapters for details
- This overview differs from the existing queries chapter in that the latter is
  more focused on how to create your own queries.

Status:
- lokalmatador is giving this a try & will open a PR at some point

## rustc-dev-guide missing chapters

Topics that need to be added

- Monomorphization, Type Memory Layout, Codegen, LLVM
- Macros, hygiene, proc macros, custom derives, etc.
- Lexing and Parsing
- Walkthrough of a typical contribution
- The rest of
  - Name Resolution
  - Traits
    - Region Constraints
    - SLG solver
  - Type checking
  - MIR
    - Constants, Promoted Constants in MIR
    - Construction of MIR
    - Optimizations
    - Borrow Check: Moves and initialization
    - MIR Type check
    - Various parts of NLL
- A large collection of potential improvements in the form of issues on the repo

Status:

- Would be good to schedule a lecture on each missing topic
- less work for the experts
- Can then transcribe into a chapter
- @spastorino will arrange lectures, nikomatsakis will create zoom

## How do we want to keep track of who is doing what? Does github Projects works nice for this?

- planning to use github issues.
- Two issues were created to track existing work:
  - https://github.com/rust-lang/rustc-dev-guide/issues/319
  - https://github.com/rust-lang/rustc-dev-guide/issues/320
- discussed possible use of GH projects
- for now we will move TODO list to GH issues from dropbox