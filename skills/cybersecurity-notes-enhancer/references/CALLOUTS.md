# Callouts Reference

Use Obsidian callouts to highlight important information. Available types:

| Type | Use for |
|---|---|
| `> [!abstract] Security Overview` | A topic-opening summary, written before any subsections exist. Only at the start of a major topic, never mid-section. |
| `> [!note] Security Concept` | A core principle the reader must hold onto to understand what follows — not general background (that's just prose). |
| `> [!tip] Professional Insight` | A practitioner habit or shortcut that isn't obvious from theory alone — the kind of thing you'd only know from doing the work. |
| `> [!warning] Security Warning` | A concrete risk of misuse, damage, or legal exposure from a specific tool or technique described nearby. |
| `> [!danger] Critical Security Alert` | Severe, high-stakes misuse potential — reserve for genuinely severe cases, not routine warnings. If unsure between `warning` and `danger`, use `warning`. |
| `> [!bug] Debugging Help` | A specific error message or failure mode and its fix — not general troubleshooting advice. |
| `> [!question] Think About It` | A reflection prompt with no answer given, meant to make the reader pause and reason it through. |
| `> [!success] Detection Method` | How defenders would actually catch this — a control, log signature, or detection technique. |

`info` and `abstract` overlapped in practice — `info` is retired. If content
doesn't fit `note`, `tip`, or one of the others above, it's probably just
prose and doesn't need a callout at all.

**Meta-flag (not a content callout):**

`> [!warning] Incomplete Section` — used only to flag that a topic had
insufficient source content to enhance. This marks a gap in the *document*,
not a security fact, so don't count it against the density limit below.

**Rules:**
- Hard line break after the `> [!type] Title` line
- Every line of callout content begins with `> `
- No two callouts back-to-back without prose between them
- **Density limit:** no more than roughly one callout per 150-200 words of
  a section. If every other paragraph is becoming a callout, that's a sign
  most of them should just be prose — callouts lose their signal when
  overused.

**Foldable callouts:** use `> [!type]- Title` (collapsed by default) for long
reference dumps that break reading flow but are worth keeping: full flag
lists, raw tool output, exhaustive payload lists. Use `> [!type]+ Title`
(expanded, foldable) for content that's useful but a bit long, like an
extended real-world scenario. Regular callouts (no `-`/`+`) stay the default
for anything short enough to read inline.

## Good vs. Bad Example

**Bad** — this is just a fact, dressed up as a callout for no reason:

> [!info] Security Reference
> Nmap was created by Gordon Lyon and first released in 1997.

That line belongs in prose, not a callout — it's trivia, not something the
reader needs to act on or retain with emphasis.

**Good** — this earns the callout because it's a risk the reader would
otherwise miss:

> [!warning] Security Warning
> An aggressive `-T5` timing scan on a production network can trigger
> IDS/IPS alerts or destabilize fragile embedded devices. Confirm scope
> and get explicit sign-off before running it outside a lab.

## Citations

When a fact needs a source (a CVE, an advisory, a specific finding), use a
footnote rather than an inline link, to keep prose readable:

```markdown
This bypass was patched in the affected library[^1].

[^1]: CVE-2024-XXXXX: https://...
```

Collect footnote definitions at the end of the relevant section, not the
end of the whole document, if the document covers multiple unrelated topics.
