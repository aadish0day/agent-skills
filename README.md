# Agent Skills

A collection of reusable skills and commands for AI coding agents — built for **Google Antigravity**, **OpenCode**, and **Claude Code**.

Skills are structured markdown directories (`SKILL.md` + YAML frontmatter + references/scripts) that provide specialized, on-demand domain expertise to AI agents.

---

## ⚡ Supported Agents

| Agent | Global Location | Project Location | Format |
|---|---|---|---|
| **Google Antigravity** | `~/.gemini/config/skills/<name>/` | `.gemini/skills/` | Standard `SKILL.md` |
| **OpenCode** | `~/.config/opencode/skills/<name>/` | `.opencode/skills/` | Standard `SKILL.md` |
| **Claude Code** | `~/.claude/skills/<name>/` | `.claude/skills/` | Standard `SKILL.md` |
| **Generic Coding Agents** | Custom config path | `.agents/skills/` | Standard `SKILL.md` |

---

## 🚀 Quick Start

### 1. Clone the repository
```bash
git clone https://github.com/aadish0day/agent-skills.git
cd agent-skills
```

### 2. Install globally across all agents
Run the unified installer:
```bash
./setup.sh
```

This symlinks the repository directly into:
- `~/.gemini/config/skills/` (Antigravity)
- `~/.config/opencode/skills/` and `~/.config/opencode/commands/` (OpenCode)
- `~/.claude/skills/` and `~/.claude/commands/` (Claude Code)

Any updates or `git pull` in this repo will automatically update all installed agents.

---

## 📦 Available Skills

| Skill | Description |
|---|---|
| **`banner-design`** | Design banners for social media, ads, website heroes, and print with multiple art styles and AI visuals. |
| **`brand`** | Brand voice, visual identity, messaging frameworks, asset management, and style guide compliance. |
| **`copywriting`** | High-conversion marketing copy for homepages, landing pages, pricing, and feature pages. |
| **`cybersecurity-notes-enhancer`** | Transform raw cybersecurity notes into comprehensive, Obsidian-ready learning resources with diagrams, callouts, and attack breakdowns. |
| **`design`** | Comprehensive design suite: logos (55 styles), CIP mockups, HTML presentations, and vector assets. |
| **`design-system`** | Token architecture (primitive → semantic → component), Tailwind v4, CSS vars, and component specs. |
| **`excalidraw-diagram`** | Generate Excalidraw diagrams from text (Obsidian `.md`, Standard `.excalidraw`, Animated modes). |
| **`flutter-expert`** | Flutter development with Dart 3, state management, animations, and cross-platform architecture. |
| **`frontend-design`** | Anti-generic, intentional frontend interfaces with Tailwind CSS v4, shadcn/ui, and Motion. |
| **`git-workflow`** | Complete Git assistant: Conventional Commits, branch naming, safe pushes, rebasing, and PR reviews. |
| **`llm-council`** | Peer-reviewed decision making using a Karpathy-style 5-member AI council. |
| **`mermaid-visualizer`** | Generate syntax-validated Mermaid diagrams (flows, sequence, architecture, mindmaps). |
| **`obsidian-markdown`** | Create and edit Obsidian Flavored Markdown (wikilinks, callouts, embeds, frontmatter properties). |
| **`slides`** | Strategic HTML presentations with Chart.js, responsive layouts, and design tokens. |
| **`theme-master`** | Catalog of 68 design system themes (bento, sleek, glassmorphism, neobrutalism, shadcn, etc.). |
| **`ui-styling`** | Accessible UIs with shadcn/ui, Tailwind CSS utility patterns, and theme customization. |
| **`ui-ux-master`** | Complete UI/UX design & layout toolkit: responsive grids, signature motion, microinteractions, and polish. |
| **`ui-ux-pro-max`** | Extensive design database with 67 styles, 161 palettes, 57 font pairings, and 22 tech stack presets. |

---

## ⌨️ Slash Commands

Pre-configured slash commands for quick explicit invocation in OpenCode and Claude Code:

- `/git-workflow` — Run Git assistant workflows (commits, PRs, rebasing)
- `/ui-ux-master` — Run UI/UX design and review workflows
- `/cybersecurity-notes-enhancer` — Clean and enrich raw cybersecurity notes into structured docs
- `/excalidraw-diagram` — Generate Excalidraw diagram files
- `/mermaid-visualizer` — Create formatted Mermaid diagrams
- `/obsidian-markdown` — Format or build Obsidian markdown notes

---

## 🛠️ Skill Directory Structure

Each skill lives in its own folder under `skills/<name>/`:

```text
skills/<skill-name>/
├── SKILL.md                 # Required: Entry point with YAML frontmatter
├── references/              # Optional: On-demand markdown references
├── scripts/                 # Optional: Helper utilities and CLI scripts
└── templates/               # Optional: Code templates or scaffolding
```

### `SKILL.md` Format

```markdown
---
name: git-workflow              # Required: kebab-case, matching directory name
description: |-                  # Required: Specific trigger description for agent routing
  General git workflow assistant covering commit message writing,
  branching strategy, rebasing vs merging, and PR/MR descriptions.
license: MIT                     # Optional
metadata:
  version: 1.0.0
---

# Skill Instructions

Instructions and workflows that the agent reads when this skill is activated.
```

---

## 🤝 Contributing

Contributions of new skills or enhancements to existing ones are welcome! Ensure each skill includes a clear `SKILL.md` with accurate trigger descriptions and self-contained documentation.

