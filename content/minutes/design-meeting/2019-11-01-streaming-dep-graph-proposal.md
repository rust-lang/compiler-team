# "Streaming dep graph" proposal

## Summary of the proposal

Currently, incremental compilation begins by loading the old dependency graph and then -- as execution proceeds -- building a new dependency graph in memory. At the end of compilation, this new graph is written out.

PR [#60035] proposes to change how the new graph is handled. Instead of building the graph in memory and writing it out at the end, we "stream" out a series of changes to the dep-graph as we go. When parallel compilation is enabled, this streaming can proceed in a background thread.

### Advantages

This has the following advantages:

* Lower peak memory usage
    * e.g. style-servo-check has a 30% reduction in memory usage in the [May 7th perf results][perf-may-7-max-rss] and there are no cases of memory usage increasing
* Avoids blocking on writing out the dep-graph at the end of compilation, which improves performance, especially for smaller compilations
    * the magnitude here is a bit unclear
    * the [May 7th perf run][perf-may-7] shows up to 8% regressions in instruction count, but up to 5% wins in CPU time (and wallclock time), perhaps related to parallelism? --Niko. That is because loading the dep graph is slower, but it happens on a background thread.
* Avoids the work of re-writing unchanged portions of the dep-graph.
        * (pnkfelix notes that in the most extreme cases, e.g. of rebuilding a touched but unchanged files, this can be significant.)

[perf-may-7-max-rss]: https://perf.rust-lang.org/compare.html?start=eeedd3a6e15d43d0cd3e860f36be737cb2c941ca&end=cfe977fc791e1a9305d2b79e47b448dfa50abb4a&stat=max-rss

Dicussion of goals from Zulip conversation:

* [starts around here](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179630511)
* writing out the dep graph occurs in parallel with LLVM right now
    * but if there is nothing for LLVM to do, that doesn't help
* [clean incremental runs ought to be "worst case" measurements for current system](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179631067)
    * no changes, nothing for LLVM to do to mask latency
* existing measurements suggest:
    * up to 30% wins for peak memory usage -- example, style-servo-check
    * [up to 9% wins for CPU](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179631529) -- example, regex
* motivating example:
    * unused-warnings-check, where clean incremental costs more than clean


## PR Thread

Some key comments from the PR thread (which is long)

* perf comparisons (I'm not sure on the differences between these -Niko) (Only the last one has a GC, but I don't think that perf triggers that anyway. Also the PR is still WIP so perf is probably not completely representative -Zoxc)
    * [perf comparison from Apr 17][perf-apr-17]
    * [perf comparison from Apr 20][perf-apr-20]
    * [perf comparison from Apr 22][perf-apr-22]
    * [perf comparison from May 7][perf-may-7]
* [mw expresses concerns][mw]
    * generally, that the change looks potentially quite good, but adds a lot of complexity, and we need to have good docs and more discusion -- this meeting is part of that!
* [nnethercote advocates in favor on the basis of memory usage][nnethercote]
    * "A Firefox developer was complaining recently that compilation of Stylo within Firefox was causing OOMs because memory usage was exceeding 3.5 GiB. I did some profiling runs with Massif and DHAT, and for incremental builds the dep graph dominates the memory profiles -- most of the top entries involve the dep graph."

[perf-apr-17]: https://github.com/rust-lang/rust/pull/60035#issuecomment-484182697
[perf-apr-20]: https://github.com/rust-lang/rust/pull/60035#issuecomment-485084601
[perf-apr-22]: https://github.com/rust-lang/rust/pull/60035#issuecomment-485478028
[perf-may-7]: https://github.com/rust-lang/rust/pull/60035#issuecomment-489976439
[mw]: https://github.com/rust-lang/rust/pull/60035#issuecomment-497641996
[nnethercote]: https://github.com/rust-lang/rust/pull/60035#issuecomment-513986697
[#60035]: https://github.com/rust-lang/rust/pull/60035

## Questions regarding implementation

### What does the on-disk and in-memory format of the data look like? 

A great answer to this question would be something that can be used as module-level documentation for 
     
https://github.com/rust-lang/rust/blob/master/src/librustc/dep_graph/serialized.rs

In particular, if we are only saving updates, do we have to do more work each time? We do have to do more work when loading the dep graph as garbage is accumulated. How do we collect old data?

* [Zulip discussion from meeting starts here](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179628890)
* [On-disk format is a list of actions](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179629046)
    * each `Action` is read in and "applied" to an empty dep-graph when rustc starts
    * note that some actions may overwrite the effects of previous actions
        * [comment](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179629175)
* How do we manage the allocation of edge vectors?
    * current PR uses `Box<[Index]>` to store edges, but this can be wasteful
    * old approach of using a single vector of indices was efficient but hard to update
        * but we could just waste the space and rely on a GC
    * could move to arena allocation (e.g., `&'tcx [Index]`), though it shares some downsides with edge vector
* Maybe we can [read the data in *backwards* to avoid the update?](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179630107)
    * maybe, would have to work on the serialization format
    * currently using LEB128 but this is not obviously the best
        * and there were some speedups from avoiding it elsewhere

### What form of garbage collection do we do

As we are storing updates, there can be garbage data of two kinds:

* Graph nodes that were overwritten with a new set of dependencies in the latest compilation
* Graph nodes that were never used in the latest compilation (e.g., type-checking nodes for functions that were deleted)

How do we remove these two kinds of old nodes? Is this mechanism conservative or precise?

The garbage collection algorithm reads the dep graph and records the location of information we want to keep. It then clears the file and writes only the useful information back. It is precise and happens in the background thread. The cost of garbage collection is similar to loading the dep graph, so it's unlikely we'll block on it.

* [discussion in Zulip around here](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179631874)
    * current GC just removes actions from the list of actions
    * it does not compress `DepNodeIndex` ranges
        * this implies that the size of the graph will grow if fragmentation occurs
        * but we do make an effort to re-use dep-node-indices
* GC comes after loading and become new actions can be appended
* full pipeline including GC ([link](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179632407))
* but [how do we remove "unreachable" nodes?](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179632559)
    * [they wind up with no red/green color at the end of compilation](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179632665)
    * and [we can iterate over the nodes and "remove" those that have no color](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179632721)

## Tradeoffs

### What will happen if/when we want to move to a rust-analyzer like model, with live updates?

It seems like this model is just incompatible with that. I think this implies that we would want multiple 'modes' of operation.

Does this model imply an in-memory dep graph only? -Zoxc

### Are there performance regressions to be expected with this approach?

There's a possibility of dep node indices getting fragmentated. This is shared with [#62038](https://github.com/rust-lang/rust/pull/62038).

### Are file sizes in the same ballpark as before?

They start in the same ballpark and will grow from there. We can control how large they grow by how often we run the GC. We can also throw in some compression to get then down further. We won't have to pay for the cost of compressing the entire dep graph each time, only changes. We still have to decompress the entire thing, but that happens in the background thread.

### Have other approaches been evaluated? What are they?

One obvious alternative would be to stream the entire graph as it is updated, and not deltas. This sidesteps the GC issue, but has the same shortcomings as our current approach when it comes to 'partial updates'. I think this PR started out as this, but then it grew a bit -Zoxc

* mw raised an idea in the design meeting ([link](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-11-01/near/179632896)):
    * (I'd be interested in how an alternative approach (that also does DepNodeIndex compaction and graph node GC) does: Still rewrite the whole dep-graph, but "stream" it to disk in the background. That should be doable with minimal changes and might have most of the benefits.)

### Is there an approach that enables less processing being needed?

Perhaps storing a list of where dep node indices are stored in the file. That would allow the loading to skip to the relevant parts of the file and avoid the garbage slowing down as it accumulates.

## Future features

### Does this approach scale to partial updates of the dep-graph?

Definition: "Partial updates" refers to smaller incremental runs that don't re-perform the entire compilation. This can occur in the case of compilation errors. It also occurs in an IDE scenario, where e.g. the latest query may be to find the completions at a particular point. The challenge here is that there may be parts of the previous compilation that were not required for the particular query that was just executed, but which would still be worth caching in the future. Our current setup doesn't handle this case.

I don't see a reason why not -Zoxc

## Open Questions

* [how much of a problem is dep-node index fragmentation?](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179633355)
* does this resolve the perf issues around unused-warnings performance that [pnkfelix described?](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179631644)
* is there a "reasonably small diff" that modifies current design to stream out graph and gets a lot of the benefits, as [mw suggested here](https://zulip-archive.rust-lang.org/131828tcompiler/85965designmeeting20191101.html#179632833)?
    * the basic idea would be: instead of building the new dep-graph in memory and encode it in the end, have a background thread that we send new nodes to and the writes them to disk. Everything else would be the same: The entire file would be re-written, including the unchanged parts. The on-disk format would maybe change in that there would be a seperate file for each of the 4 arrays in SerializedDepGraph, so they can grow independently. Alternatively (but this might be a bigger change), there would only be a single file with variable sized (DepNode, Fingerprint, [DepNodeIndex]) entries.
    * this approach should also lower memory usage and there is no DepNodeIndex fragmentation, but it also does more work than an append only approach
