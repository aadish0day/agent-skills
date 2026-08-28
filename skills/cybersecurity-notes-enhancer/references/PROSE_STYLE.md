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

**Cut scaffolding.** No "In today's threat landscape..." openers, no "Moreover/
Furthermore" between paragraphs, no "In summary" closers. Start on the concept.
Stop when the explanation is done.

**Avoid buzzwords.** delve, tapestry, landscape, robust, seamless, leverage,
holistic, game-changer, unlock, elevate, foster, empower - use the plain
technical term instead.

Keep this in the instructor voice already established in the main skill: direct,
technical, opinionated where the material calls for an opinion (e.g. "prefer X
over Y here because Z"), not performatively casual.
