# Triage Meeting
The compiler **triage meeting** is the place for tracking regressions, progress on urgent bugs and
checking-in with the compiler team's working groups. Each meeting, two working groups (rotating)
check-in with their progress and blockers.

The meeting takes place every week. See the [compiler team calendar](../README.md#meeting-calendar)
for the next scheduled meeting (normally weekly).

The triage meeting takes place on [Zulip](chat-platform.md). Look for a topic like
"#54818 weekly meeting YYYY-MM-DD" or "weekly meeting YYYY-MM-DD" (with the proper date, of course).

## Working group check-in
Each week, two working groups check-in with the compiler team at the weekly triage meeting. To
determine which groups need to check-in without maintaining a schedule that will need regularly
updated or completely changed when new working groups are added, there exists a simple-ish formula
to work out which groups should check-in:

```
index = (week * 2) % EVEN(num_working_groups)
```

..where `week` is the week number (0-indexed) and `EVEN(..)` rounds to the next even number.
`index` can then be used to look up `index` and `index + 1` in the table at the
[root of this repository](https://github.com/rust-lang/compiler-team). An example of this,
implemented in Rust, [can be found on the playground][playground].

[playground]: https://play.rust-lang.org/?version=stable&mode=debug&edition=2018&gist=65523dd3337153c1c5ce798bbf78e37f

Alternatively, paste the following Javascript into the console (opened with `F12` in Firefox and
Chrome) while at the [root of this repository](https://github.com/rust-lang/compiler-team), this
will print the names of the working groups that are due to check-in:

```javascript
var today = new Date();
var year = new Date(today.getFullYear(), 0, 1);
var week = Math.floor(((today - year) / 86400000) / 7);
var wgs = Array.prototype.filter.call(document.querySelectorAll("article.markdown-body table td a"), el => el.pathname.includes("master/working-groups")).map(el => el.text);
var count = wgs.length % 2 === 0 ? wgs.length : wgs.length + 1;
[(week * 2) % count, (week * 2) % count + 1].map(i => wgs[i])
```
