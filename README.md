# Grizzly

**An open editor-in-a-skill for fiction writers.**

Editors are expensive. AI is cheap but writes slop. Grizzly's bet: the value of AI
for fiction is not generation, it is **diagnosis, structure, and memory**. The
author keeps the pen.

## Why another AI writing tool

Every AI writing product fails writers the same way: it produces prose, the prose
has a voice, and the voice is the model's, not the author's. Grizzly inverts the
design:

- **It never writes your book for you.** Output is small, reviewable proposals: a
  few lines, side-by-side fixes, named findings. Never an unsolicited rewrite.
  This is the core safety mechanism that keeps your voice alive, enforced in every
  mode.
- **It diagnoses instead of generating.** "Emotion label, line 34. Buried landing:
  your chapter's key beat is told in its flattest sentence." Findings with
  locations, severity tiers, and honest verdicts. No praise padding.
- **It remembers everything.** An extractive card codex (chapters, arcs,
  characters, threads) is built once and maintained as you write, so a
  200-chapter serial costs the same to work on as a novella, and continuity
  errors get caught against recorded facts.
- **It learns your voice, not the model's.** Setup derives a voice spec
  (`VOICE.md`) from your own passages: sentence rhythm, how your dialogue carries
  weight, what your narrator never does. Every suggestion anchors against it.

## What's inside

| Piece | What it does |
|---|---|
| `skills/grizzly` | Core: orientation, mode routing, the non-negotiable rails |
| `skills/grizzly-init` | Setup wizard: interview + voice-spec derivation |
| `skills/grizzly-cards` | The codex maker; bootstraps existing manuscripts |
| `skills/grizzly-edit` | Surgical line editing, diagnosis-first |
| `skills/grizzly-draft` | Beat-by-beat drafting on strict rails |
| `skills/grizzly-review` | Five-pass review: continuity, pacing, voice drift, hygiene, delivery |
| `skills/grizzly-audit` | Cold-read simulation: dread map, visualization check, hook check |
| `skills/grizzly-plan` | Arc and chapter structure, technique-deck integration |
| `skills/grizzly-brainstorm` | Costed directions anchored in your canon |
| `skills/grizzly-voice` | Voice spec derivation, updates, drift reports |
| `decks/` | The quality layers: AI-tell blacklist, delivery pass, dread toolkit, technique deck |
| `packs/` | Genre packs: progression fantasy, webnovel serial, romance |
| `docs/SPEC.md` | The tool-agnostic format spec |
| `docs/example-codex/` | A working codex built from *Treasure Island* |

## Quickstart (Claude Code)

1. Copy the folders under `skills/` into your project's `.claude/skills/` (or your
   user-level skills directory).
2. Keep `decks/`, `templates/`, and `packs/` somewhere the assistant can read
   (simplest: copy the whole repo next to your manuscript).
3. Say "set up grizzly for my novel". The init wizard interviews you, derives your
   voice spec from your own writing samples, and scaffolds the codex.
4. Have chapters already? Ask for a codex bootstrap; it cards your manuscript
   chapter by chapter.

The data layer (state files, codex, decks, packs) is plain markdown; see
`docs/SPEC.md` to adapt Grizzly to other harnesses.

## The three quality layers

Most tools conflate these. Grizzly runs them separately, because they fail
differently:

1. **Hygiene** (the blacklist): catches AI tells: em dashes, "not X but Y",
   emotion labels, cinematic filler, rule-of-three fragments.
2. **Delivery** (the six checks): catches the opposite failure, the spotless flat
   draft. Every scene needs the one place it lands.
3. **Architecture** (the technique deck): named structural moves: false peace,
   perspective fracture, escalation ladders, hook taxonomy, and when to use them.

## Status

Pre-release. Core, codex, modes, three packs, and the spec are in place; the
technique deck and broader pack library are growing. See `sprints/TODO.md`.

Built dogfood-first against a private reference manuscript that never enters this
repo (every example here is invented or public-domain, enforced by a sanitization
gate in CI-style review).

MIT licensed. Contributions welcome: see [CONTRIBUTING.md](CONTRIBUTING.md).
