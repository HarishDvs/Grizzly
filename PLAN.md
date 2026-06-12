# Grizzly — An Open Editor-in-a-Skill for Fiction Writers

> Editors are expensive. AI is cheap but writes slop. Grizzly's bet: the value of AI
> for fiction is not generation, it is **diagnosis, structure, and memory**. The
> author keeps the pen.

## The Thesis

Every AI writing product fails writers the same way: it produces prose, the prose has
a voice, and the voice is the model's, not the author's. Grizzly inverts this.

1. **Generate as little as possible.** Small, reviewable units. Never a finished
   scene unsolicited. This is the core safety mechanism that keeps the author's
   voice alive, not a preference.
2. **Diagnose instead of rewrite.** Named findings with line references, surgical
   fixes proposed side by side, the author accepts or rejects each one.
3. **Remember everything.** A codex of extractive cards (chapters, arcs, characters,
   threads) so a 200-chapter serial never has to be reloaded into context. The card
   system is the scalability trick AND the continuity engine.
4. **Positive voice, not just negative rules.** A per-author voice spec built at
   setup, so the assistant writes toward the author's style instead of merely
   avoiding tells.

## Architecture

```
grizzly/
├── skills/                   # harness layer (Claude Code skills at launch)
│   ├── grizzly/              # core: orientation, mode routing, shared rails
│   ├── grizzly-init/         # project setup wizard + voice spec builder
│   ├── grizzly-draft/        # beat-by-beat drafting on rails
│   ├── grizzly-edit/         # surgical line editing
│   ├── grizzly-review/       # comprehensive manuscript review
│   ├── grizzly-audit/        # reader-experience simulation
│   ├── grizzly-cards/        # codex card maker + drift sync + bootstrap
│   ├── grizzly-plan/         # arc & chapter planning w/ technique deck
│   ├── grizzly-voice/        # build / update the voice spec
│   └── grizzly-brainstorm/   # ideation mode
├── packs/                    # genre packs (data, not code; tool-agnostic)
├── templates/                # codex card + state file templates (tool-agnostic)
├── decks/                    # blacklist, delivery checks, technique deck (tool-agnostic)
├── docs/                     # SPEC.md, example codex (public-domain), guides
└── sprints/                  # TODO.md / COMPLETED.md (sprint-agent workflow)
```

**Tool-agnostic by design:** everything outside `skills/` is plain markdown with no
harness-specific syntax. Any agent runtime that can read files can adopt the codex
format, the decks, and the packs. `skills/` is one adapter; others can be added.

### Project state files (created by init, in the user's vault or repo)

- `NOVEL.md` — premise, genre + subgenre, POV scheme, serial vs trad, status.
- `VOICE.md` — the author's voice spec, derived from their own sample passages.
- `STANDARDS.md` — the author's prose rules (seeded from defaults, author-editable).
- `codex/` — chapters/, arcs/, characters/ + `_Index.md`, with thread tracking and
  a preserve-line registry (lines the assistant may never touch).

## The Six Pillars

1. **Init wizard + voice spec.** Interview plus analysis of the author's own
   passages: sentence-length distribution, how dialogue carries information, how
   violence and emotion enter, what the narrator never does, register. Output:
   `VOICE.md`. Every draft and edit anchors against it.
2. **The codex.** Extractive cards, never interpretive. Chapter cards (events,
   threads opened/paid, preserve-lines), arc cards, character cards. Drift rule:
   editing a chapter updates its card. Bootstrap mode cards an existing manuscript.
3. **Three separated quality layers.** Hygiene (the AI-artifact blacklist + author
   standards), delivery (does the scene land), architecture (named structural moves
   from the technique deck). Conflating these is why other tools either nitpick
   or flatten.
4. **Review suite.** `grizzly-review` runs continuity, pacing, voice-drift, hygiene,
   and delivery passes with severity-tiered findings (blocker / major / minor / nit).
   `grizzly-audit` is distinct: a cold first-read simulation reporting the reader's
   EXPERIENCE (dread map, safety map, character-visualization check, prediction
   check, hook check). Review finds errors; audit finds the boring chapter nobody
   can explain.
5. **Genre packs.** Reader promises, pacing norms, chapter conventions, trope
   ledger, failure modes. Packs modify defaults; they never override `VOICE.md`.
6. **Modes on rails.** Smallest coherent unit, proposal not delivery, self-lint
   before showing, prefer cutting to rephrasing, never touch preserve-lines, never
   invent plot or characters to fill space.

## Development model

Built and dogfooded against a private reference manuscript that never enters this
repo. All examples in the repo are invented or public-domain. Sprint workflow in
`sprint-agent.md`; task queue in `sprints/TODO.md`.

## License

MIT.
