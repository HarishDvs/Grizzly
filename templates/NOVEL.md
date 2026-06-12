# NOVEL.md — Project State File

<!--
Created by grizzly-init. One per project, at the project root.
This is the first file the assistant reads in every session.
Plain markdown, tool-agnostic. Fields marked (required) must be filled.
-->

## Identity
- **Title:** (required) working title
- **Author:**
- **Premise:** (required) one or two sentences, no more
- **Status:** outlining | drafting | revising | serializing

## Genre
- **Genre / subgenre:** (required) e.g. progression fantasy / dungeon-crawl
- **Format:** (required) serial (chapter-by-chapter release) | traditional novel
  <!-- This changes the pacing physics the assistant applies. Serials need
       per-chapter hooks and shorter payoff cadence; trad novels carry act
       structure. Genre packs key off this field. -->
- **Genre pack(s) in use:** path(s) under packs/, or "none"

## Point of view
- **POV scheme:** (required) e.g. third limited, single POV | rotating POV | first person
- **Tense:** past | present
- **POV characters:** list

## Benchmarks
<!-- Published works whose amplitude the author wants to be measured against.
     Used by the delivery pass: "is this beat flatter than the benchmark scene
     doing the same job?" 2-4 titles. -->
- **Benchmark titles:** (required)

## Paths
- **Manuscript folder:** where chapter files live, and the filename pattern
- **Codex folder:** default `codex/`
- **Voice spec:** default `VOICE.md`
- **Standards:** default `STANDARDS.md`

## Never-do list (project-level)
<!-- Anything the assistant must never do in this project, beyond the global
     rails. e.g. "never suggest renaming characters", "never propose POV changes". -->
-
