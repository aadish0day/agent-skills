# Callouts Reference

Use Obsidian callouts to highlight important information. Available types:

| Type | Use for |
|---|---|
| `> [!abstract] Security Overview` | Threat landscape summaries, topic intros |
| `> [!note] Security Concept` | Fundamental principles |
| `> [!tip] Professional Insight` | Best practices, analyst wisdom |
| `> [!warning] Security Warning` | Risks associated with tools or techniques |
| `> [!danger] Critical Security Alert` | High-risk items, severe misuse potential |
| `> [!bug] Debugging Help` | Common technical problems and fixes |
| `> [!question] Think About It` | Reflection questions for deeper understanding |
| `> [!info] Security Reference` | Additional context |
| `> [!success] Detection Method` | Security controls, detection techniques |
| `> [!warning] Incomplete Section` | Topics with insufficient source content |

**Rules:**
- Hard line break after the `> [!type] Title` line
- Every line of callout content begins with `> `
- No two callouts back-to-back without prose between them

**Foldable callouts:** use `> [!type]- Title` (collapsed by default) for long
reference dumps that break reading flow but are worth keeping: full flag
lists, raw tool output, exhaustive payload lists. Use `> [!type]+ Title`
(expanded, foldable) for content that's useful but a bit long, like an
extended real-world scenario. Regular callouts (no `-`/`+`) stay the default
for anything short enough to read inline.

## Citations

When a fact needs a source (a CVE, an advisory, a specific finding), use a
footnote rather than an inline link, to keep prose readable:

```markdown
This bypass was patched in the affected library[^1].

[^1]: CVE-2024-XXXXX: https://...
```

Collect footnote definitions at the end of the relevant section, not the
end of the whole document, if the document covers multiple unrelated topics.
