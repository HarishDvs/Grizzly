---
name: grizzly-cards
description: Create, update, or bootstrap the project codex (chapter cards, arc cards, character cards). Use when a chapter is finished or edited, when continuity cards need updating, when the user asks to card a chapter, or to onboard an existing manuscript into the codex.
---

# Grizzly Cards — The Codex Maker

The codex is the project's memory: extractive cards that let any session answer
continuity and planning questions without reloading the manuscript. Templates live
in `templates/codex/`. The index (`codex/_Index.md`) is the orientation map; keep
it current with every card change.

## The two laws

1. **Extractive, never interpretive.** Cards record what is on the page: events,
   names, counts, objects, exact preserve-lines. Never motives the text doesn't
   state, never quality judgments, never speculation. If the author wants analysis,
   that's a review, not a card.
2. **The chapter file is the source of truth.** A card that disagrees with its
   chapter is a bug. Fix the card, never the chapter.

## Creating a chapter card

1. Read the full chapter text once.
2. Fill the chapter-card template: frontmatter, one-line logline, events in order
   (numbered; include the concrete details continuity will later depend on: counts,
   injuries, promises, objects changing hands), threads opened, threads paid,
   adjacency links.
3. Ask the author if any lines in this chapter should be marked **preserve**
   (untouchable verbatim). Copy them into the card exactly.
4. Add the chapter row to `_Index.md`, and update any arc card whose spine this
   chapter extends.
5. New named characters get a character card (or a stub with first-appearance).

## Updating (the drift rule)

When a chapter's events change in any session, its card updates **in the same
session**. No exceptions; a stale card is worse than no card because it is trusted.
Sync direction is always chapter → card. Also check: did the edit alter anything
another card states (a character fact, a thread payoff)? Update those too, and the
index's open-threads list.

## Thread hygiene

Every `Opens` entry should eventually appear in some chapter's `Pays off`. The
index keeps the running list of open threads. When asked, produce a thread-debt
report: every opened thread not yet paid, with the chapter it was planted in. This
list is the project's anti-plot-hole device.

## Bootstrap mode (existing manuscripts)

For onboarding a manuscript that already has chapters:

1. Confirm scope with the author (all chapters, or a range), the filename pattern,
   and where `codex/` should live. Scaffold it from the templates if absent.
2. Work in passes of one chapter at a time, in order: read the chapter, write its
   card, update the index row, then move on. Don't hold multiple full chapters in
   context; the cards are the memory.
3. Build arc cards as they become visible (an arc usually announces itself by
   chapter 2-3 of its span). Confirm arc names with the author; arcs are the one
   place naming is interpretive, so the author decides.
4. Character cards for anyone who acts in more than one chapter; stubs for the rest.
5. After the last chapter: compile the open-threads list into the index, then give
   the author a short report: chapters carded, arcs identified, threads open, and
   anything that looked like a continuity conflict between chapters (report only;
   fixing is the author's call).
6. Long manuscripts: checkpoint every 10 chapters with a one-line progress note so
   the session can resume cleanly if interrupted.

Preserve-line marking during bootstrap: ask once per arc (not per chapter) whether
the author wants to flag untouchable lines, to keep the pass moving.
