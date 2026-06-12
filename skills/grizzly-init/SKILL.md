---
name: grizzly-init
description: Set up a new Grizzly writing project. Use when the user wants to start using Grizzly on a novel, when no NOVEL.md exists in the project, or when the user asks to onboard an existing manuscript. Creates NOVEL.md, VOICE.md, STANDARDS.md and the codex scaffold through a guided interview.
---

# Grizzly Init — Project Setup Wizard

Creates the project state files through a short interview plus analysis of the
author's own writing. Do the steps in order. Don't skip the voice derivation; it is
the highest-leverage step in the whole suite.

## Step 1 — Locate the project

Ask where the manuscript lives (or will live) and confirm the filename pattern for
chapters. All state files go at the project root. If state files already exist,
stop and ask whether to update instead (route to grizzly-voice for VOICE.md).

## Step 2 — The interview (NOVEL.md)

Ask, in one batch, only what the template needs:

1. Title, one-to-two-sentence premise, current status.
2. Genre and subgenre.
3. **Format: serial or traditional novel.** Explain why it matters in one line
   (serials need per-chapter hooks and a shorter payoff cadence).
4. POV scheme and tense.
5. **Benchmark titles:** 2-4 published works the author wants their scenes measured
   against for amplitude. If they hesitate, ask what they read and admire in-genre.
6. Anything the assistant must never do in this project (the never-do list).

Fill `templates/NOVEL.md` and write it to the project root. Show it; let the author
correct before saving.

## Step 3 — Voice derivation (VOICE.md)

Ask for 2-3 passages of the **author's own prose**, 300+ words each, that they
consider their best representative work. Published or not doesn't matter; AI-assisted
passages do (decline them politely; the spec must be derived from the author's hand).

Analyze the passages for every field in `templates/VOICE.md`:

- Sentence-length distribution (count a sample; don't guess). Fragment frequency
  and function.
- Paragraph shape and scene-transition style.
- Narrator distance, and what the narrator never does in these samples.
- Dialogue: information load, tag style, subtext habits.
- How emotion enters (hands, objects, silence, action). Cite the actual instances.
- How violence or high intensity enters, if present in the samples.
- Register and diction: words that recur, words that would break the texture.
- Imagery density and source domains.

Then propose 3-6 **anchor lines** from their samples and ask the author to confirm
or swap them. Write VOICE.md. Tell the author this file is theirs to edit and can
be re-derived later with grizzly-voice as their style evolves.

If the author has no samples yet (brand-new writer), say plainly that VOICE.md will
start thin: seed it with their preferences by interview, mark it `provisional`, and
re-derive after they have 2-3 chapters of their own.

## Step 4 — Standards (STANDARDS.md)

Copy `templates/STANDARDS.md` with its seeded defaults. Walk the author through the
nine defaults briefly; let them strike or amend any. Add their project-specific
rules to Author Additions. Save.

## Step 5 — Codex scaffold

Create `codex/` with `chapters/`, `arcs/`, `characters/`, and an `_Index.md` from
the codex templates. If a manuscript already exists, offer grizzly-cards bootstrap
mode to card it chapter by chapter, and note the cost saving (cards make long
manuscripts cheap to work on; bootstrap once, then maintain by the drift rule).

## Step 6 — Genre pack

If a pack under `packs/` matches the declared genre/format, record it in NOVEL.md.
Packs adjust defaults (pacing norms, hook conventions); they never override
VOICE.md.

## Step 7 — Close

Summarize what was created, in one short list. Tell the author the entry points:
draft, edit, review, audit, plan, brainstorm, cards. Do not demo anything on their
manuscript unasked.
