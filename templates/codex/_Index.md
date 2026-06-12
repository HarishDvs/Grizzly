# Codex Index

<!--
The orientation file for the project codex. The assistant reads this FIRST every
session, then pulls only the specific cards a task needs. Full chapter text is read
only for line edits.

RULES (apply to every card in this codex):
- Cards are EXTRACTIVE: they record what is on the page, never interpretation.
- The chapter file is always the source of truth; cards summarize it.
- Drift rule: when a chapter's events change, its card updates in the same session.
- No AI-tell punctuation or phrasing inside cards (cards get quoted into prose work).
-->

## How this codex works
- `chapters/` — one card per chapter (events in order, threads opened/paid, preserve-lines).
- `arcs/` — one card per mini-arc (a named storyline spanning chapters).
- `characters/` — one factual card per significant character.
- Two tiers of connection: **Arc** = a named storyline spanning chapters;
  **Thread** = a single setup that pays off later. Cards link them with
  `[[Arc - X]]` and `[[Thread - X]]`.

## Arcs
| Arc | Chapters | Status |
|---|---|---|
| | | ongoing / resolved |

## Chapters
| # | Title | Logline | Arc | Status |
|---|---|---|---|---|
| | | | | drafted / revised |

## Characters
- (grouped by faction/household/affiliation)

## Open threads to watch (unresolved)
- (every planted setup not yet paid off; this list is the anti-plot-hole device)
