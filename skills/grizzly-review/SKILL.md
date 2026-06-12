---
name: grizzly-review
description: Comprehensive quality review of one or more chapters. Use when the user asks for a full review, quality check, violation scan, or pre-publication pass. Runs five passes with severity-tiered findings. For "why is this boring" use grizzly-audit instead.
---

# Grizzly Review — The Five-Pass Review

A structured review with severity-tiered findings, modeled on code-review culture:
honest, specific, no praise padding. Scope is whatever the author names (a chapter,
a range, the manuscript).

## The five passes

Run in this order; report in this order. Where the harness supports parallel
sub-agents, passes 1-4 can fan out (one agent per pass) and pass 5 synthesizes;
otherwise run sequentially.

1. **Continuity** (against the codex): events, facts, injuries, possessions, names,
   timeline. Every finding cites both the chapter line and the card fact it
   contradicts. Also: threads this chapter was supposed to advance per the arc
   card, and didn't.
2. **Pacing** (against NOVEL.md format and any genre pack): scene lengths, where
   the chapter sags, payoff cadence, hook position. Serial and trad chapters obey
   different physics; use the declared format.
3. **Voice drift** (against VOICE.md): passages that don't sound like the anchor
   lines. Quote the off-voice line, name what drifted (rhythm, register, narrator
   distance). This pass exists because long projects drift slowly and the author
   can't hear it from inside.
4. **Hygiene** (against decks/blacklist.md + STANDARDS.md): tells and standards
   violations, each with line reference. Counts alone are useless; every instance
   gets a location.
5. **Delivery** (against decks/delivery-pass.md): the landing of each scene, named
   or found missing. The benchmark comparison where a beat underperforms.

## Severity tiers

- **blocker** — breaks the book: continuity contradiction, a scene that defeats an
  established plot point, a preserve-line altered.
- **major** — hurts the chapter: buried landing, dead hook in a serial, sustained
  voice drift, a sagging middle.
- **minor** — hurts the line: individual tells, standards violations.
- **nit** — taste, flagged only if cheap to fix. Say "nit" so the author can skip.

## Report format

Findings grouped by severity, then by position. Each: location, what, why it
matters, and (for minor/nit) the one-line proposed fix. Blockers and majors get
no inline fixes; they get a recommendation and a routing (grizzly-edit for lines,
grizzly-plan for structure).

End with: the verdict in two sentences, the three highest-leverage actions, and
what was checked and found clean (one line; so silence isn't ambiguous).

## Rules

- Never start fixing during a review. Review, report, stop.
- If the author asks for a review of their own favorite chapter, review it exactly
  as hard. Calibrated honesty is the product.
- A finding you cannot locate precisely is not a finding; drop it or go verify.
