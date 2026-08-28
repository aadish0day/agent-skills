# Prose Style Reference

This applies only to explanatory prose — the sentences in "What is it?", "Why
does it matter?", "How does it compare?", "When does it apply?", callout bodies,
and any freestanding paragraph. It does not apply to tables, code blocks, command
breakdowns, diagrams, or headings, where uniformity and fixed structure are
correct.

**Commit, don't hedge.** State how a technique works or when to use it directly.
Qualify once with the actual exception, not a general "may vary" hedge.
❌ "This could potentially allow an attacker to access data in some cases."
✅ "This lets an attacker read arbitrary files if the app passes user input
straight to the filesystem. It doesn't work if the app whitelists paths."

**Be specific, not categorical.** Prefer the concrete mechanism, tool, or CVE
over a vague category.
❌ "Many web apps are vulnerable to this."
✅ "Any endpoint that reflects a `redirect_url` param without validating the
host is vulnerable."

**Vary sentence length.** Don't let every explanatory sentence land at the same
12-20 word cadence. A short sentence can land the point; a longer one can carry
the mechanism.
❌ "SQL injection happens when user input reaches a query unsanitized. It lets
an attacker alter query logic. This can expose or modify data. It is a
long-standing and well-documented vulnerability class."
✅ "SQL injection happens when user input reaches a query unsanitized. The
attacker rewrites the query's logic instead of just supplying a value —
turning a lookup into a data dump, or a login check into an unconditional
pass."

**Keep paragraphs tight.** Cap explanatory paragraphs at roughly 3-4 sentences.
If a "What is it?" or "Why does it matter?" answer is running longer, that's
usually a sign it's covering two ideas — split it, or let a table or list
carry the enumerable part instead of prose.

**No passive voice for actions with a clear actor.** Name who does what.
❌ "The payload is crafted to bypass the filter."
✅ "The attacker crafts the payload to bypass the filter."
Passive voice is fine when the actor is genuinely unknown or irrelevant
("the flaw was patched in version 2.3").

**Cut scaffolding.** No "In today's threat landscape..." openers, no "Moreover/
Furthermore" between paragraphs, no "In summary" closers. Start on the concept.
Stop when the explanation is done.

**Avoid buzzwords.** delve, tapestry, landscape, robust, seamless, leverage,
holistic, game-changer, unlock, elevate, foster, empower - use the plain
technical term instead.

**Watch for lazy security-writing tells.** "Attack surface," "threat actor,"
"in the wild," and "zero-day" are legitimate terms — but reaching for them
as filler instead of naming the actual thing is a tell. If "threat actor"
means a script kiddie running a known exploit, say that. If "in the wild"
means one confirmed incident, say that instead of implying broad exploitation.

Keep this in the instructor voice already established in the main skill: direct,
technical, opinionated where the material calls for an opinion (e.g. "prefer X
over Y here because Z"), not performatively casual.
❌ "Some analysts prefer Nmap for this, though other tools may also work
depending on the situation."
✅ "Use Nmap for the initial sweep. Masscan is faster on large ranges but
sacrifices accuracy you'll want back for service detection."
