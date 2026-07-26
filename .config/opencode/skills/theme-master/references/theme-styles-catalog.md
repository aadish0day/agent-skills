# UI/UX Master — Theme Design Systems & Style Signatures Catalog

This reference combines all visual theme styles and design system signatures with UI/UX Master guidelines. When a brief calls for a specific theme or aesthetic, consume the matching design tokens and constraints below.

---

## 1. Bento (`bento`)
- **Intent**: Modular grid layout using card-like blocks, clear visual hierarchy, soft spacing, and scannable visual contrast.
- **Visual Foundations**:
  - Grid: Multi-span card blocks (1x1, 2x1, 2x2, 3x2).
  - Typography: Primary/Display: Inter | Financial/Data: JetBrains Mono (12/14/16/20/24/32).
  - Color Tokens: Primary `#0D7377`, Secondary `#80A1C1`, Surface `#F8FAFA` / `#1A2332`, Text `#111827` / `#E8EDF2`.
  - Spacing Scale: 4 / 8 / 12 / 16 / 24 / 32.
  - Border Radii: Outer Container `22px` → Cards `18px` → Icons/Chips `10px` → Badges `6px`.

## 2. Glassmorphism (`glassmorphism`)
- **Intent**: Translucent frosted glass layers, soft background blur, and luminous subtle borders for depth and modern elegance.
- **Visual Foundations**:
  - Backdrop Blur: `backdrop-filter: blur(12px) saturate(180%)`.
  - Background Tint: White at 8–12% alpha (Light) / Dark at 15–25% alpha (Dark).
  - Border: 0.5px hairline with 12–20% white/black border glow.
  - Shadows: Multi-layer ambient ambient drop-shadow with soft blur (`16–24px`).

## 3. Sleek & Modern Fintech (`sleek` / `modern`)
- **Intent**: Linear / YNAB / Stripe-inspired precision, high density, tight typography tracking, and dark-mode-first aesthetic.
- **Visual Foundations**:
  - Palette: Deep Teal `#0D7377`, Muted Amber `#D97706`, Slate Dark `#0F171E`, Elevated `#1A2332`.
  - Typography: Headings: DM Sans (tight tracking `-0.3px` to `-0.5px`) | Financial: JetBrains Mono with `FontFeature.tabularFigures()`.
  - Shadows: Layered box shadows replace z-elevation. Hairline 0.5px outlines at 30% opacity.

## 4. Neobrutalism (`neobrutalism`)
- **Intent**: High-contrast, bold black borders (`2px`–`4px`), hard offset shadows (`4px` offset, 0 blur), vibrant pop accents, and tactile press states.
- **Visual Foundations**:
  - Palette: High-saturation primary accents, solid black borders `#000000`, crisp off-white or tinted backgrounds.
  - Shadows: Hard offset `4px 4px 0px #000000` (no blur).
  - Press Effect: Physical 4px push translation on active press (`transform: translate(2px, 2px)`).

## 5. Material Design 3 & Shadcn (`material` / `shadcn`)
- **Intent**: Clean, functional, component-driven design systems prioritizing accessibility, dynamic theming, and consistent token mappings.
- **Visual Foundations**:
  - Tokens: Primary, OnPrimary, PrimaryContainer, OnPrimaryContainer, Surface, OnSurface, SurfaceVariant, Outline.
  - Components: Card, Dialog, BottomSheet, FloatingActionButton, Chips, SegmentedControl.
  - Radii & Geometry: Concentric radii chain (Dialog `22px` → Card `16px` → Input/Button `12px` → Badge `6px`).

## 6. Minimal & Clean (`minimal` / `clean`)
- **Intent**: Maximum whitespace, restrained monochromatic palette, high typography contrast, and total elimination of decorative visual clutter.
- **Visual Foundations**:
  - Palette: Achromatic black, slate, parchment off-white, with a single functional accent color.
  - Dividers: Minimal 0.5px subtle hairlines or pure whitespace separation.

---

## Combined Theme Selection Protocol

When building or refining any UI component:
1. **Identify Theme**: Match the brief to one of the theme styles above (or combine Bento + Sleek for modern dashboard layouts).
2. **Apply UI/UX Master Rules**:
   - Enforce WCAG 2.2 AA accessibility, visible focus rings, and high contrast.
   - Use tabular numbers (`JetBrains Mono`) for all financial and metric data.
   - Implement smooth cubic micro-interactions (`Curves.easeOutCubic`, 120–250ms).
   - Ensure clear empty states, error states, and loading skeletons for all async data widgets.
