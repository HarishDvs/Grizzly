# Grizzly

**An open editor-in-a-skill for fiction writers.** Editors are expensive. AI is cheap
but writes slop. Grizzly's bet: the value of AI for fiction is not generation, it is
**diagnosis, structure, and memory**. The author keeps the pen.

> Status: pre-release, under active construction. See [PLAN.md](PLAN.md) for the
> full design and `sprints/TODO.md` for progress.

## What it is

A suite of writing-assistant skills (Claude Code at launch; the data layer is
tool-agnostic markdown) that:

- **Never writes your book for you.** Small, reviewable proposals only. No
  unsolicited rewrites, ever.
- **Diagnoses instead of generating.** Named findings with line references,
  surgical fixes side by side.
- **Remembers everything.** An extractive card codex (chapters, arcs, characters,
  threads) so a 200-chapter serial costs the same to work on as a novella.
- **Learns your voice, not the model's.** A per-author voice spec derived from
  your own passages anchors every suggestion.

## Layout

- `skills/` — the mode skills (init, draft, edit, review, audit, cards, plan, voice, brainstorm)
- `decks/` — the quality layers: AI-artifact blacklist, delivery pass, dread toolkit, technique deck
- `templates/` — state files and codex card templates
- `packs/` — genre packs (data, not code)
- `docs/` — format spec and an example codex built from a public-domain novel

MIT licensed.
