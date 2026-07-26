---
name: theme-master
description: Master catalog of 68 design system themes (bento, sleek, glassmorphism, neobrutalism, material, shadcn, etc.). Use when choosing, applying, or designing UI themes and design system tokens.
---

# Theme Master — Universal Design Systems Catalog

`theme-master` is the authoritative design system engine containing **68 production-ready visual themes**. It defines visual foundations, typography scales, color palettes, spacing grids, concentric border radii chains, and interaction protocols across web and mobile platforms.

---

## Auto-load (MANDATORY — do this immediately on activation)

Match the requested theme against the keyword table below and `read` the corresponding reference file before producing code or design specs.

**Master Catalog Baseline:**
`references/theme-styles-catalog.md`

**Theme Keyword → Reference File Matrix:**

| Theme Keyword | Reference File |
| --- | --- |
| agentic | `references/theme-agentic.md` |
| ant | `references/theme-ant.md` |
| artistic | `references/theme-artistic.md` |
| basic | `references/theme-basic.md` |
| bento | `references/theme-bento.md` |
| bold | `references/theme-bold.md` |
| brutalism | `references/theme-brutalism.md` |
| cafe | `references/theme-cafe.md` |
| claude | `references/theme-claude.md` |
| claymorphism | `references/theme-claymorphism.md` |
| clean | `references/theme-clean.md` |
| codex | `references/theme-codex.md` |
| colorful | `references/theme-colorful.md` |
| contemporary | `references/theme-contemporary.md` |
| corporate | `references/theme-corporate.md` |
| cosmic | `references/theme-cosmic.md` |
| creative | `references/theme-creative.md` |
| dithered | `references/theme-dithered.md` |
| doodle | `references/theme-doodle.md` |
| dramatic | `references/theme-dramatic.md` |
| editorial | `references/theme-editorial.md` |
| enterprise | `references/theme-enterprise.md` |
| expressive | `references/theme-expressive.md` |
| fantasy | `references/theme-fantasy.md` |
| fiction | `references/theme-fiction.md` |
| flat | `references/theme-flat.md` |
| friendly | `references/theme-friendly.md` |
| futuristic | `references/theme-futuristic.md` |
| geometric | `references/theme-geometric.md` |
| glassmorphism | `references/theme-glassmorphism.md` |
| gradient | `references/theme-gradient.md` |
| immersive | `references/theme-immersive.md` |
| impeccable | `references/theme-impeccable.md` |
| levels | `references/theme-levels.md` |
| lingo | `references/theme-lingo.md` |
| material | `references/theme-material.md` |
| matrix | `references/theme-matrix.md` |
| minimal | `references/theme-minimal.md` |
| modern | `references/theme-modern.md` |
| mono | `references/theme-mono.md` |
| neobrutalism | `references/theme-neobrutalism.md` |
| neon | `references/theme-neon.md` |
| neumorphism | `references/theme-neumorphism.md` |
| pacman | `references/theme-pacman.md` |
| paper | `references/theme-paper.md` |
| perspective | `references/theme-perspective.md` |
| power | `references/theme-power.md` |
| premium | `references/theme-premium.md` |
| professional | `references/theme-professional.md` |
| pulse | `references/theme-pulse.md` |
| refined | `references/theme-refined.md` |
| retro | `references/theme-retro.md` |
| riso | `references/theme-riso.md` |
| roku | `references/theme-roku.md` |
| sega | `references/theme-sega.md` |
| shadcn | `references/theme-shadcn.md` |
| sketch | `references/theme-sketch.md` |
| skeumorphism | `references/theme-skeumorphism.md` |
| sleek | `references/theme-sleek.md` |
| spacious | `references/theme-spacious.md` |
| square | `references/theme-square.md` |
| stitch | `references/theme-stitch.md` |
| storytelling | `references/theme-storytelling.md` |
| terracotta | `references/theme-terracotta.md` |
| tetris | `references/theme-tetris.md` |
| vibrant | `references/theme-vibrant.md` |
| vintage | `references/theme-vintage.md` |

---

## Product Domain → Recommended Theme Matrix

When starting a project or choosing a visual direction, consult this matrix to select the best-suited theme:

| Product Category | Primary Recommendation | Secondary Alternative | Signature Characteristics |
| :--- | :--- | :--- | :--- |
| **Fintech, Banking, Budgeting** | `bento` + `sleek` | `modern` | Modular card grids, deep teal `#0D7377`, tabular figures (`JetBrains Mono`), concentric radii. |
| **Enterprise SaaS & Dashboards** | `enterprise` / `ant` | `stitch` / `corporate` | High density, structured data tables, cool gray tints, clear visual hierarchy. |
| **Developer Tools & Terminal** | `codex` / `mono` | `matrix` / `dithered` | Monospace-first, dark background `#0F171E`, high contrast, crisp 0.5px hairlines. |
| **Tactile & Soft Interfaces** | `glassmorphism` | `claymorphism` / `neumorphism` | Backdrop blurs, soft translucent panels, ambient 3D depth, rounded shapes. |
| **High-Contrast & Youth** | `neobrutalism` | `brutalism` / `pulse` | Hard offset shadows (`4px 4px 0px`), thick 2–3px borders, punchy accent colors. |
| **Editorial & Publishing** | `editorial` / `claude` | `paper` / `terracotta` | Serif display headings, warm stone/ivory backgrounds, spacious margins. |
| **Gaming & Retro Arcade** | `sega` / `pacman` | `tetris` / `retro` | Pixel typography, hard 0px/square corners, retro 8-bit color blocks. |

---

## Mandatory Thinking Protocol (Design Engine Reasoning)

Before generating theme code or design tokens, execute these 5 steps in order:

1. **Frame Product Intent**: Define the primary user task (e.g. rapid expense entry, data analysis, content reading).
2. **Extract Theme Tokens**:
   - **Primary Accent**: 1 signature brand color + hover/pressed state.
   - **Neutral Ramp**: Cool/tinted background, card surface, and elevated dark layer (never raw `#000` / `#FFF`).
   - **Typography Scale**: Display face + Body face + Financial/Tabular face.
   - **Spacing Grid**: Base 4pt/8pt rhythm scale.
   - **Border Radii Chain**: Proportional scale (`Dialog 22px → Card 18px → Input 12px → Badge 6px`).
3. **Validate Accessibility (WCAG 2.2 AA)**:
   - Ensure minimum contrast ratio of `4.5:1` for normal text and `3:1` for large headings.
   - Require visible focus rings (`2px` outline offset) for keyboard navigation.
4. **Implement Micro-Interactions**:
   - Touch/Click Press: `scale: 0.96` (120ms duration, `Curves.easeOut`).
   - Viewport Entrance: Staggered fade & slide (`Curves.easeOutCubic`, 250–350ms).
5. **Self-Audit Against Anti-Slop Guidelines**:
   - Reject un-tinted gray backgrounds (`#808080`).
   - Reject arbitrary, non-concentric border radii.
   - Reject non-tabular figures in numerical data tables.

---

## Code Token Generation Pipeline

When generating code output for a theme:
- **Flutter**: Produce `ThemeData` override with custom `ColorScheme`, `TextTheme` (GoogleFonts), and `CardThemeData`.
- **Tailwind v4 / CSS**: Produce `@theme` block or CSS custom properties (`--primary`, `--surface`, `--radius-lg`).
- **React / TS**: Export typed design tokens with CVA (Class Variance Authority) component variants.
