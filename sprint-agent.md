# Grizzly Sprint Agent

## Role Split
- **Claude** → planning, implementation, review (single-agent for now)
- Cross-AI delegate slot intentionally empty; re-enable if a second agent
  becomes available (see MyGate sprint-agent for the delegate pattern)

---

## Startup (every session)

Local mode (pre-GitHub):

```
Read sprints/TODO.md and sprints/COMPLETED.md from the repo root.
```

GitHub mode (after first push), same as MyGate:

```bash
gh api repos/<owner>/Grizzly/contents/sprints/TODO.md --jq '.content' | base64 -d > /tmp/TODO.md
gh api repos/<owner>/Grizzly/contents/sprints/COMPLETED.md --jq '.content' | base64 -d > /tmp/COMPLETED.md
```

Parse TODO for all unchecked `- [ ]` items. Cross-reference COMPLETED, skip done.
Print the queue ordered P0 → P1 → P2 → P3, confirm before starting.

---

## Reference Docs (fetch on-demand only — never preload)

| File | When to read |
|------|--------------|
| `PLAN.md` | Start of any phase, or when scope is unclear |
| `decks/blacklist.md` | Writing any prose example or rail |
| `decks/delivery-pass.md` | Building review/audit/draft skills |
| `templates/*` | Building grizzly-init or grizzly-cards |
| `docs/SPEC.md` | Any cross-skill format decision |
| `sprints/sanitize-list.local.md` | EVERY review step (see Sanitization Gate) |
| Private skill backup (`~/.claude/skill-backups/grizz-2026-06-12/SKILL.md`) | Extracting universal material (GZ-003); read-only source, never copy verbatim world content |

---

## Per-Task Loop

```
1. PLAN
   Read only the reference doc(s) this task needs.
   Identify exact target file(s). Write the change description first.

2. IMPLEMENT
   Write/edit the files. All examples invented or public-domain.
   No em dashes anywhere in shipped prose examples or rails.

3. REVIEW
   Run the Review Checklist below, including the Sanitization Gate.
   Issues → back to step 2. Clean → proceed.

4. COMMIT
   git commit -m "GZ-###: <one-line summary>"
   One commit per task. Push only after sanitize gate passes.

5. UPDATE sprints/TODO.md
   - [ ] → - [x] for the completed item.
   Append one line to sprints/COMPLETED.md with commit hash + date.
```

---

## Sanitization Gate (runs in every REVIEW, and on the full tree before any push)

The private reference manuscript must never enter this repo. The term list lives in
`sprints/sanitize-list.local.md` (gitignored, local only, never committed).

```powershell
# from repo root
powershell -File tools/sanitize-gate.ps1
```

Zero hits required (exit 0). Short/common terms in the list (flagged with `# manual`)
are excluded from grep and printed for an eye check instead.

---

## Review Checklist

- [ ] Sanitize gate passes: no private-novel names, places, systems, plot, or lines
- [ ] No em dashes in any prose example, template, or rail text
- [ ] All prose examples invented fresh or from public-domain sources (named)
- [ ] Nothing outside `skills/` uses harness-specific syntax (tool-agnostic layer)
- [ ] Every mode skill preserves the rails: smallest unit, proposal not delivery,
      self-lint before showing, preserve-line registry respected
- [ ] New deck/pack entries have: mechanism, when-to-use, example, failure mode
- [ ] `sprints/TODO.md` updated in the same commit

---

## Hard Rules

- Never commit `*.local.md` or anything matching the sanitize list
- Never paste text from the private reference manuscript into any repo file,
  including as "before" examples in editing demos — invent equivalents
- Never skip a P0 for a P1/P2
- One commit per task, no batching
- The generation-minimal principle (author keeps the pen) is non-negotiable in
  every mode skill; a PR that weakens it is rejected regardless of quality
- Decks, packs, templates stay plain markdown: no tool calls, no harness syntax

---

## Session End

```
1. Run the Sanitization Gate on the full tree.
2. Verify TODO/COMPLETED are current; commit them.
3. (GitHub mode) push, then print remaining unchecked count:
   gh api repos/<owner>/Grizzly/contents/sprints/TODO.md --jq '.content' | base64 -d | grep -c '\- \[ \]'
```
