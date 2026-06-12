# Grizzly — Sprint TODO

Queue ordered P0 → P3. One commit per task. Sanitize gate on every review.

## P0 — Foundation & Sanitization

- [x] GZ-001 Repo scaffold: folder tree (`skills/`, `packs/`, `templates/`, `decks/`,
      `docs/`, `sprints/`), `.gitignore` (ignores `*.local.md`), MIT `LICENSE`,
      README stub pointing at PLAN.md
- [x] GZ-002 Sanitization gate: populate `sprints/sanitize-list.local.md` with all
      private-novel terms (names, places, factions, system words, title words);
      verify the gate script from sprint-agent.md runs clean on the scaffold
- [x] GZ-003 Extract universal core from the private skill backup
      (`~/.claude/skill-backups/grizz-2026-06-12/SKILL.md`): mode rails, blacklist,
      delivery pass, atmosphere/dread toolkit. Re-invent every example so zero
      world-specific content survives (the atmosphere section currently uses
      private world elements as examples; the TECHNIQUES are universal, the
      examples are not). Output feeds GZ-004/005/007.
- [x] GZ-004 `decks/blacklist.md`: AI-artifact blacklist with genre-neutral invented
      examples (punctuation tells, cinematic filler, exhausted metaphors,
      rule-of-three, negative parallelism + cousins, padding tells, emotion nouns)
- [x] GZ-005 `decks/delivery-pass.md`: the six delivery checks + the purple-drift vs
      flat-drift reconciliation; benchmark-comparison method described
      genre-neutrally (user supplies their own benchmark titles in NOVEL.md)
- [x] GZ-006 `decks/dread-toolkit.md`: atmosphere techniques abstracted (adaptation
      gap, negative space, scale against the body, tonal whiplash, grimness through
      systems, survival rules as horror, attrition, information asymmetry,
      environmental pressure, earned-warmth specificity), all examples invented
- [x] GZ-007 `templates/`: NOVEL.md, VOICE.md, STANDARDS.md templates with field
      documentation; STANDARDS.md ships seeded with sensible defaults the author
      can edit (no emotion labeling, no contrast-negation, etc.)
- [ ] GZ-008 `skills/grizzly/SKILL.md`: core orientation; load order (NOVEL →
      VOICE → STANDARDS → codex index → cards on demand); mode routing; the
      author-keeps-the-pen rails; tone & collaboration rules
- [ ] GZ-009 `skills/grizzly-init/SKILL.md`: setup wizard; genre/subgenre + serial
      vs trad interview; voice-sample analysis procedure (derive VOICE.md from 2-3
      passages of the author's writing: sentence-length distribution, dialogue
      load, how violence/emotion enters, narrator prohibitions, register); writes
      all state files + empty codex

## P1 — The Codex (the moat)

- [ ] GZ-010 `templates/codex/`: chapter card, arc card, character card, `_Index.md`
      templates; extractive-only rule; thread open/pay linking; preserve-line
      registry; status field (drafted/revised); frontmatter spec
- [ ] GZ-011 `skills/grizzly-cards/SKILL.md`: create + update flows; the drift rule
      (chapter edit → card update in the same session); index maintenance
- [ ] GZ-012 grizzly-cards bootstrap mode: card an existing manuscript
      chapter-by-chapter; batching guidance for long serials; token-economy notes
      (cards make a 200-chapter serial cost the same to work on as a novella)
- [ ] GZ-013 `docs/example-codex/`: demo codex built from a public-domain novel
      (e.g. Treasure Island, first 6 chapters); doubles as documentation and the
      README walkthrough material

## P2 — Mode Skills

- [ ] GZ-020 `skills/grizzly-edit/SKILL.md`: diagnosis-first; named findings with
      line refs; surgical fixes side by side; prefer cutting to rephrasing; second
      pass (self-lint) + delivery pass mandatory; preserve-lines untouchable
- [ ] GZ-021 `skills/grizzly-draft/SKILL.md`: smallest coherent unit; stay inside
      the author's material; anchor on VOICE.md + a nearby passage; second pass +
      delivery pass; proposal-not-delivery presentation
- [ ] GZ-022 `skills/grizzly-audit/SKILL.md`: cold first-read simulation; reports
      experience not errors: dread map, safety map, character-visualization check,
      prediction check (confirmed boringly vs broken), hook check; output format
      with chapter-position references
- [ ] GZ-023 `skills/grizzly-review/SKILL.md`: multi-pass review (continuity vs
      codex, pacing, voice drift vs VOICE.md, hygiene vs blacklist+STANDARDS,
      delivery); severity tiers blocker/major/minor/nit; honesty calibration (no
      praise padding); optional parallel sub-agent fan-out where the harness
      supports it, sequential fallback where it does not
- [ ] GZ-024 `skills/grizzly-plan/SKILL.md`: arc/chapter planning; every scene needs
      plot function + character function; gap detection; POV selection reasoning;
      technique-deck integration (propose 1-2 named moves per arc, not a list)
- [ ] GZ-025 `skills/grizzly-brainstorm/SKILL.md`: clarify before listing; 2-3
      distinct directions; anchor in existing canon via codex; continuity-break
      flagging
- [ ] GZ-026 `skills/grizzly-voice/SKILL.md`: re-derive or update VOICE.md as the
      author's style evolves; drift report (what changed since last derivation)

## P3 — Technique Deck, Packs, Polish

- [ ] GZ-030 Technique deck research pass: webnovel/LN craft discussion (Royal Road
      forums, progression-fantasy threads, fan analyses of pacing and dread in
      benchmark serials), classic structure craft; distill into
      `decks/techniques.md`: 15-25 named moves, each with mechanism, when-to-use,
      benchmark example, failure mode (includes: false peace, perspective fracture
      with omissions/contradictions, early kill vs normalcy bait, escalation
      ladders, information debt, interlude POVs, chapter-end hook taxonomy)
- [ ] GZ-031 `packs/progression-fantasy/`: reader promises, power-system pacing,
      payoff cadence, trope ledger, failure modes
- [ ] GZ-032 `packs/webnovel-serial/`: serialization physics (per-chapter hooks,
      arc length, cliff cadence, reader-retention beats) vs trad act structure
- [ ] GZ-033 `packs/romance/`: beat conventions, promise/payoff structure, heat
      level handling, trope ledger
- [ ] GZ-034 `docs/SPEC.md`: tool-agnostic spec for state files + codex format +
      deck/pack format; explicit statement that `skills/` is one adapter and the
      data layer is harness-independent
- [ ] GZ-035 README (thesis up front, quickstart, example-codex walkthrough) +
      CONTRIBUTING.md (how to submit packs/decks; the rails are non-negotiable)
- [ ] GZ-036 Dogfood pass: run the full suite on the private reference manuscript
      locally; log gaps and friction back into this TODO (findings stay local,
      never committed)
- [ ] GZ-037 Init git repo, run sanitize gate on full tree, first push to GitHub

## Later / Ideas (unprioritized)

- [ ] GZ-040 More packs: mystery-thriller, litrpg, cozy, horror
- [ ] GZ-041 Revision log per chapter (lightweight history inside cards)
- [ ] GZ-042 Thread-debt report: all opened-unpaid threads across the codex
- [ ] GZ-043 Cross-harness adapters beyond Claude Code skills
