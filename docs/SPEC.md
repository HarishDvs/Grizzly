# Grizzly Format Specification

The Grizzly data layer is plain markdown with YAML frontmatter. No harness-specific
syntax, no tool calls, no executable content. Any agent runtime (or human) that can
read files can adopt these formats. `skills/` is one adapter (Claude Code skills);
others can be written against this spec without touching the data layer.

## 1. Project state files (project root)

### NOVEL.md
Required fields: title, premise (1-2 sentences), genre/subgenre, format
(`serial` | `traditional`), POV scheme, benchmark titles (2-4 published works for
the delivery pass's amplitude comparison). Optional: status, genre packs in use,
manuscript/codex paths, a project-level never-do list. Template:
`templates/NOVEL.md`.

### VOICE.md
The author's positive style spec, derived from 2-3 samples (300+ words each) of
the author's own prose, never from AI-assisted text. Fields: derivation record
(sources + date), sentence rhythm, paragraph shape, narrator distance and
prohibitions, dialogue conventions, how emotion enters, how violence enters,
diction/register, imagery, and 3-6 author-confirmed anchor lines. May be marked
`provisional`. Template: `templates/VOICE.md`.

### STANDARDS.md
The author's prose rules. Ships seeded with nine defaults (no emotion labeling,
no contrast-negation, no narratorial intrusion, em-dash avoidance, sensory before
stakes, false peaks, named subjects on dramatic beats, sudden violence, banned
mood words); every rule is author-editable. Contains the preserve-lines policy.
Template: `templates/STANDARDS.md`.

## 2. The codex (`codex/`)

```
codex/
├── _Index.md      # orientation map: arc table, chapter table, character roster,
│                  # open-threads list
├── chapters/      # one card per chapter
├── arcs/          # one card per named storyline
└── characters/    # one factual card per significant character
```

### Invariants (the two laws)
1. Cards are **extractive**: what is on the page, never interpretation.
2. The manuscript is the **source of truth**; a card that disagrees with its
   chapter is a bug in the card.

### Chapter card frontmatter
`chapter` (int), `title`, `arc`, `pov`, `status` (`drafted`|`revised`),
`timeline`, `characters` (on-page list), `mentioned` (off-page list),
`locations`, `threads`. Body sections: Logline (one sentence), Events (numbered,
in order, with continuity-bearing concrete details), Opens, Pays off, Adjacent
(prev/next links), Preserve (verbatim untouchable lines), Notes.

### Arc card frontmatter
`arc`, `type`, `chapters` (list), `status` (`ongoing`|`resolved`), `characters`,
`threads`. Body: What it is, Spine (beat per chapter), Status, Key threads,
Leads into.

### Character card frontmatter
`character`, `role`, `affiliation`, `status` (`alive`|`dead`|`unknown`, with
as-of chapter), `first-appearance`. Body: Who they are (factual), Facts (each
citing the chapter that fixed it), Arc involvement, Voice notes, Open questions.

### Linking
Wiki-style links: `[[Card Name]]`, `[[Arc - X]]`, `[[Thread - X]]`. Threads are
lightweight: they need no card file; they exist as links from Opens to Pays off,
with the unpaid set listed in `_Index.md`.

### The drift rule
Any session that changes a chapter's events updates that chapter's card before the
session ends. Sync direction is always chapter → card.

## 3. Decks (`decks/`)

Reference documents consumed by the modes. Current decks: `blacklist.md` (AI-tell
families with examples), `delivery-pass.md` (the six landing checks + benchmark
method), `dread-toolkit.md` (atmosphere techniques), `techniques.md` (structural
moves). Deck entries follow: **name, mechanism, when to use, example, failure
mode.** All examples must be invented or cite public-domain / published works in
one line; never reproduce manuscript text.

## 4. Genre packs (`packs/<name>/PACK.md`)

A pack declares: the reader promise, pacing norms, structural conventions, a trope
ledger (trope + what to watch for), and failure modes (review flags). Packs adjust
mode defaults (pacing, hooks, beat expectations). Precedence, lowest to highest:
**pack < STANDARDS.md < VOICE.md < an explicit author instruction.** A pack never
dictates sentence-level style.

## 5. Conduct invariants (any adapter MUST keep these)

1. The assistant never returns a finished, fully-rewritten scene unsolicited;
   default output is small, reviewable proposals.
2. Preserve-lines are never edited, expanded, softened, or moved.
3. The assistant never invents plot, characters, or world elements to fill space.
4. Edits are diagnosis-first with line references; cutting preferred to rephrasing.
5. The assistant self-checks its own output against the blacklist and delivery
   pass before showing it.

An adapter that drops these is not a Grizzly implementation; they are the product.
