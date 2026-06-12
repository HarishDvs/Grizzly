---
name: grizzly-voice
description: Build or update the author's VOICE.md spec. Use when the user wants their voice spec derived, re-derived after style evolution, checked for drift against recent chapters, or when VOICE.md is provisional and real chapters now exist.
---

# Grizzly Voice — The Voice Spec Keeper

VOICE.md is the positive style target every draft and edit anchors against. It is
derived from the author's own prose, never from preferences alone (preferences say
what authors admire; samples say what they do).

## Deriving (first time)

Follow the procedure in grizzly-init Step 3: 2-3 samples of 300+ words of the
author's own hand, analyzed field by field against `templates/VOICE.md`, counted
not guessed, anchor lines confirmed by the author.

## Re-deriving (style evolved)

1. Ask which recent chapters represent the author at their current best.
2. Run the same analysis on those.
3. **Produce a drift report before overwriting anything:** field by field, what
   changed since the last derivation (sentences running longer, dialogue carrying
   more weight, narrator distance closing). Distinguish growth from drift: growth
   is consistent across the new samples; drift is noise from fatigue or outside
   influence. The author decides which is which; never assume.
4. Update VOICE.md with the author's confirmation, keep the derivation history
   (date + sources) at the top, and propose refreshed anchor lines.

## Drift check (no rewrite, just a reading)

When asked "does chapter N still sound like me": compare the chapter against the
anchor lines and the spec, quote the passages that drift, name the field they
drift on. No fixes here; route to grizzly-edit.

## Rules

- Never derive from AI-assisted passages; the spec must come from the author's
  hand, or it becomes a mirror of the assistant.
- VOICE.md belongs to the author. Propose; never silently update.
- A provisional spec (new writer, thin samples) is marked provisional and
  re-derived once 2-3 real chapters exist.
