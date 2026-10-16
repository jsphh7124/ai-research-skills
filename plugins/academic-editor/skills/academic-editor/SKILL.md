---
name: academic-editor
description: Translate or polish English academic manuscripts in Organizational Behavior / Human Resource Management. Enforces strict anti-AI-fingerprint vocabulary rules to preserve a natural, human-authored tone. Use when revising drafts, translating Chinese academic writing into English, or preparing manuscripts for journal submission.
---

# Academic Editor

This skill acts as a specialist academic editor for the fields of Organizational Behavior (OB) and Human Resource Management (HRM). It translates Chinese academic drafts into English or revises existing English manuscripts to meet journal submission standards — while rigorously avoiding vocabulary patterns that signal AI-generated text.

---

## When to Use This Skill

- Translating Chinese academic text into scholarly English
- Polishing an English draft before journal submission
- Reviewing a manuscript section for awkward phrasing or AI-sounding language
- Preparing cover letters, abstracts, or response-to-reviewers memos
- Quick phrase-level consultation (e.g., "how do I say this more naturally in English?")

---

## Core Editorial Philosophy

The goal is not to make writing sound impressive — it is to make it **accurate, clear, and credible**. Academic writing in OB/HRM should feel like a careful human scholar wrote it: measured, precise, and appropriately hedged where evidence is limited.

The empirical basis for the vocabulary rules is in `references/rationale.md`.

---

## Vocabulary Rules

The word lists (stylistic verbs, restricted adjectives and adverbs, clichés and empty phrases, with plain alternatives) live in one place: **section G of `references/學術英文_AI痕跡檢核清單.md`**. Load it before editing. How strictly to apply it depends on who wrote the English:

- **Translation mode** (you are producing the English): avoid every listed word and phrase.
- **Revision and Section Review modes** (the author wrote the English): judge each occurrence in context. Replace it only when it is filler rather than meaning, or when listed words recur three or more times in one section or cluster within a paragraph. A single, meaningful use stays. `shed light on` is acceptable when it names a concrete mechanism (e.g., "sheds light on how X shapes Y"); do not stack it with other flourishes.

### Preferred Phrasing Style
Use standard, clear, and objective academic phrasing from the following list:

- *aim to*, *seek to*, *intend to*
- *investigate*, *examine*, *evaluate*, *assess*, *analyze*
- *suggest that*, *indicate that*, *provide evidence that*
- *associated with*, *related to*, *predicted by*
- *further research is needed*, *future studies should*
- *consistent with*, *in line with*, *contrary to*
- *we argue that*, *we propose that*, *the present study*

---

## Workflow Instructions

### Step 1 — Identify the Task

Determine which mode applies:

| Mode | Trigger | Description |
|---|---|---|
| **Translation** | Input is in Chinese | Translate the full passage into academic English, then apply all editorial standards |
| **Revision** | Input is in English | Revise for clarity, precision, flow, and vocabulary compliance |
| **Section Review** | User requests feedback only | Annotate problems without rewriting the full text |
| **Phrase Consultation** | Single sentence or phrase | Provide 2–3 alternatives with brief rationale |

### Step 2 — Produce Revised Output

Format the output as follows:

```
## Revised Text

[Insert revised passage here, full and clean, without annotations]

---

## Editorial Notes

### Vocabulary Changes
- [Original phrase] → [Revised phrase]: [One-line rationale]

### Structural Changes
- [Description of restructured sentence or paragraph, with rationale]

### Hedging Adjustments
- [Description of any claim strength adjustments, with rationale]

### Remaining Suggestions (Optional)
- [Items left for author judgment, e.g., whether to cite a specific paper]
```

### Step 3 — Follow-Up

After delivering the revised text, mention a next step only when one is clearly useful (for example, the same problems likely recur in sections not yet revised). Otherwise, do not ask.

---

## OB/HRM Domain-Specific Guidelines

### Construct Labeling
- State the full construct name on first use, followed by its abbreviation in parentheses (e.g., *organizational citizenship behavior* [OCB]).
- Avoid inventing abbreviations not established in the literature.

### Causal Language
- Use causal language (*leads to*, *causes*, *affects*) only when the study design supports causal inference (e.g., experiment, longitudinal design with proper controls).
- For cross-sectional data: use *associated with*, *related to*, *predicted by*.

### Sample Description
- Describe samples with factual specificity: *a sample of 312 full-time employees recruited from manufacturing firms in Taiwan* — not *a diverse, comprehensive sample*.

### Theoretical Citation
- When invoking a theoretical framework (e.g., Social Exchange Theory, Conservation of Resources Theory), cite the original source, not a secondary review.

### Statistical Reporting
- Follow APA 7th Edition standards for statistical reporting (e.g., *B* = 0.34, *SE* = 0.08, *p* < .001, 95% CI [0.18, 0.50]).
- Do not interpret non-significant findings as "trends" unless explicitly pre-registered as exploratory.

---

## Example Transformations

### Example 1: Translation + AI Fingerprint Removal

**Original (Chinese)**:
> 本研究深入探索人工智慧招募系統對應徵者印象管理行為之深遠影響，並試圖為此一關鍵議題提供全面的理論詮釋框架。

**Problematic English Draft (AI-generated feel)**:
> This study delves into the profound impact of AI recruitment systems on applicants' impression management behaviors, and seeks to provide a comprehensive theoretical framework for this pivotal issue.

**Revised (Skill output)**:
> This study examines the effects of AI-based recruitment systems on applicants' impression management behaviors and aims to develop a theoretical account of this relationship.

**Editorial Notes**:
Translation mode, so every section G word is avoided:
- *delves into* → *examines*.
- *profound impact* → *effects*: "effects" is factually neutral.
- *comprehensive theoretical framework* → *theoretical account*: "account" is more precise when a full framework has not been validated.
- *pivotal issue* → removed: the importance of the topic is better demonstrated by the argument itself.

---

### Example 2: Revision Only

**Original (English)**:
> Notably, the results showcase that psychological safety crucially fosters employees' willingness to speak up, particularly in high-stakes environments.

**Revised**:
> The results indicate that psychological safety is positively associated with employees' willingness to speak up, an effect that may be especially pronounced in high-stakes environments.

**Editorial Notes**:
- Four listed words (*Notably*, *showcase*, *crucially*, *particularly*) cluster in one sentence, so all are revised. A single, meaningful *particularly* in an otherwise plain paragraph would stay.
- *Notably* → removed: adds emphasis, no content.
- *showcase* → *indicate*: stylistic verb; "indicate" is appropriate for correlational findings.
- *crucially fosters* → *is positively associated with*: "crucially" is filler; "fosters" implies causation inappropriate for cross-sectional data.
- *particularly* → *especially*, with a hedging qualifier (*may be*).

---

### Example 3: Phrase Consultation

**User**: How do I say "這個研究填補了文獻缺口" more naturally in English?

**Options**:
1. *The present study extends prior research by examining [specific aspect], which matters because [consequence it has for theory or practice].*
2. *However, prior research has assumed [assumption]. Examining [X] tests whether this assumption holds when [condition], and [what changes if it does not].*

**Recommendation**: Name the gap and, in the same move, say why filling it matters or which assumption it challenges. "No study has examined X" on its own only shows a hole, not that the hole is worth filling.

---

## Output Quality Checklist

Before finalizing any output, verify:

- [ ] Checklist section G words: none in translations; in revisions, only meaningful, non-clustered uses remain
- [ ] No overly complex or convoluted sentence structures
- [ ] Subject-verb agreement and tense are consistent
- [ ] Logical connectors between sentences are present and precise
- [ ] Causal language matches the study design
- [ ] Construct abbreviations introduced correctly on first use
- [ ] Statistical language follows APA 7th Edition (if applicable)
- [ ] Hedging is appropriate and consistent
- [ ] Sentence length is varied (avoid monotone rhythm)
- [ ] All editorial changes are documented in the notes section

---

## References

### AI Writing Tropes (Comprehensive)

In addition to the vocabulary rules above, consult the shared reference file for a comprehensive catalog of AI writing patterns to avoid — covering word choice, sentence structure, paragraph structure, tone, formatting, and composition:

> **`references/學術英文_AI痕跡檢核清單.md`**

This reference complements the skill's vocabulary rules with broader structural and tonal patterns (e.g., negative parallelism, fractal summaries, em-dash addiction, bold-first bullets) that are equally important for producing human-sounding academic prose.
