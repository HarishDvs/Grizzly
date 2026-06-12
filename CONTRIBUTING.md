# Contributing to Grizzly

Contributions are welcome, especially genre packs, deck entries, and adapters for
other harnesses. A few things are load-bearing and non-negotiable.

## The rails are the product

Any PR that weakens these is rejected regardless of quality:

1. The assistant never returns a finished, fully-rewritten scene unsolicited.
2. Preserve-lines are untouchable.
3. No inventing plot, characters, or world elements to fill space.
4. Diagnosis-first editing; cutting preferred to rephrasing.
5. Self-check against the blacklist and delivery pass before showing output.

These exist because the alternative, however helpful it feels, erodes the author's
voice. That erosion is the problem this project exists to prevent.

## Prose examples

- Invent examples fresh, or cite public-domain works (name them).
- Never paste text from any private or copyrighted manuscript.
- Examples must pass the blacklist themselves: no em dashes, no AI-tell phrasing,
  in any shipped example or rail text.

## Genre packs

One file: `packs/<name>/PACK.md`. Required sections: the reader promise, pacing
norms, structural conventions, a trope ledger (trope + what to watch for), failure
modes (review flags). Packs are data: no harness syntax, no executable content.
A pack adjusts structure-level defaults; it never dictates sentence-level style
(that is VOICE.md's job; see the precedence chain in `docs/SPEC.md`).

## Deck entries

Every technique entry needs all five: **name, mechanism (cause → reader effect),
when to use, example (one line, named published work or invented), failure mode.**
Entries that are vibes without mechanism get cut.

## Adapters

The data layer is the spec (`docs/SPEC.md`); `skills/` is the Claude Code adapter.
Adapters for other harnesses live in their own top-level directory, must consume
the same data files unchanged, and must keep the five conduct invariants above.

## Process

- One concern per PR.
- New skill text follows the existing register: plain, direct, no praise padding.
- If you change what a card or state file means, update `docs/SPEC.md` in the
  same PR.
