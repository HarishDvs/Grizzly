# The AI-Artifact Blacklist

The tells that make prose read as machine-generated. Treat every entry as a hard
stop: never write them when drafting, flag every instance when editing. The author's
`STANDARDS.md` may relax or extend individual entries; these are the defaults.

All examples below are invented for this document.

---

## 1. The punctuation tell: the em dash

The model reaches for the em dash constantly. Default to a period, a comma, or a
full stop and a new sentence. If a dash is genuinely the right call, that is the
author's decision to make, never the assistant's default.

- Tell: `She opened the letter — and the seal was already broken.`
- Fix: `She opened the letter. The seal was already broken.`

## 2. Cinematic filler

Stock camera-direction that describes nothing specific:

- "the room went silent" / "the silence stretched" / "silence fell"
- "his gaze swept the room" / "her eyes scanned" / "he met her eyes"
- "the weight of the words" / "the weight settled" / "a heavy silence"
- "something shifted" / "the air changed" / "time seemed to slow"

Fix: name the specific sound that stopped, the specific object the eyes landed on,
the specific thing that moved. Or cut the line; it usually carries no information.

- Tell: `The kitchen went silent.`
- Fix: `The kettle clicked off and nobody reached for it.`

## 3. Exhausted metaphors

The model's go-to images. Avoid unless the author has established one as a
deliberate motif: poison, storm, blade, fire, ice, "darkness swallowing",
"weight settling", "a cold that spread", "ice in his veins", "fire in her chest".

Fix: reach for a concrete image rooted in the story's own world and the POV
character's occupation or history, never a generic one. A ferryman fears the river,
not "the storm inside him."

## 4. Rule-of-three fragments

`Fast. Sharp. Violent.` Three staccato fragments in a row is the single most
recognizable AI rhythm. One fragment for emphasis is fine. Three stacked is a tell.

## 5. Negative parallelism and its cousins

The worst offender family. Write the positive thing directly.

- "not X, but Y": `It wasn't anger, it was arithmetic.` → just show the arithmetic.
- "X held nothing but Y": `The hall held nothing but the sound of dripping.` →
  a dressed-up "the room went silent." Name the one concrete thing or cut.
- "did not so much as [verb]" / "without so much as": a flat statement is cleaner
  (`He did not turn around.`).
- "no longer X" / "never quite Y" used to gesture at a feeling instead of showing it.

## 6. Padding tells (the decorative survivors)

These slip in on a second pass, dressing up a line that should be cut or left plain:

- **Inserted simile padding a fragment:** `Faint now. A candle drowning in its own
  wax.` The fragment already did the work. Cut the image.
- **The wistful relative clause:** "waiting on an order none of them could have
  spoken aloud" / "a name no one remembered" / "a thing he could not have
  explained." Interpretive narrator-voice. Cut the clause or replace it with the
  concrete action.
- **Fragment-then-dramatic-image cadence** repeated. (Short fragment, then a lyrical
  line.) It is the AI rhythm even when each line is clean. Vary it.

## 7. Generic emotion nouns as filler

"fear", "anger", "sadness", "tension", "frustration" named flatly. Show the
consequence in the body or the action, never the label.

- Tell: `Fear moved through the column of men.`
- Fix: `Down the column, men checked straps that were already tight.`

## 8. Emotion labeling (the parent sin of #7)

Never state what a character feels as a report. Show it through action, gesture,
silence, or the physical body.

- Tell: `Mara felt uneasy.` / `Relief tried to rise in him.`
- Fix: `Mara set the ledger down.` / `He let go of the rail.`

## 9. Narratorial intrusion

Do not narrate noticing, realizing, or seeing as a reporting frame. Fold perception
into the scene directly.

- Tell: `He noticed the door was open.` / `She realized she had made a mistake.`
- Fix: `The door was open.` / Show the behavior that follows the mistake.

---

## How to apply this deck

- **Drafting:** apply from the first line. Then run the second pass: re-read your
  own draft as if a stranger wrote it, against this list, before the author sees it.
  The fix you just made is where the next tell hides (you cut an em dash and
  replaced it with a rule-of-three; you removed a negation and added "the weight
  of it"). Catch the survivors silently.
- **Editing:** flag instances with line references. Prefer cutting to rephrasing;
  a filler line usually carries no information, so deleting it loses nothing.
- **Always pair with the delivery pass** (`decks/delivery-pass.md`). A draft with
  zero tells can still be dead on the page; clean is the floor, not the goal.
