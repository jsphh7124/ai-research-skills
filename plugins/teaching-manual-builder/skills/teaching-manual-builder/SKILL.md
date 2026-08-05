---
name: teaching-manual-builder
description: Create a narrative-driven teaching manual (教師手冊) for a textbook chapter — a full instructor's script with lecture lines, discussion prompts, activities, and timing. Use when the user asks for a 教師手冊, lesson plan, or instructor's guide (e.g., "幫我設計教學計畫", "create a teaching manual for Chapter X").
---

# Teaching Manual Builder (教師手冊產生器)

A systematic framework for creating comprehensive, narrative-driven teaching manuals for graduate-level courses targeting working professionals (碩士在職專班).

## When to Use This Skill

- When the user requests a teaching plan, lesson plan, or instructor's manual for any textbook chapter
- When the user wants to convert academic content into a structured classroom experience
- When the user needs a detailed "how to teach" guide, not just an outline

## Prerequisites

Before building a teaching manual, you must have:
1. **Source content**: The full text of the chapter (in Markdown or readable format)
2. **Target audience**: Confirmed as 碩士在職專班 (Master's program for working professionals) unless otherwise specified
3. **Duration**: Confirmed as 120 minutes unless otherwise specified

## Step 1: Content Analysis

Read the entire chapter and extract:
- **Learning Objectives (LOs)**: List all LOs from the chapter
- **Core concepts**: Every key term and theory
- **Classic studies**: All research studies mentioned with authors and years
- **Real-world applications**: Examples that connect to workplace scenarios
- **Cross-chapter connections**: References to concepts from other chapters

## Step 2: Narrative Arc Design

Design the teaching sequence as a **story**, not a lecture outline. The manual MUST follow this dramatic structure:

### Structure Template

```
序幕 (Prologue): Hook / Experiential activity (0:00 - 0:10)
  - Must include a hands-on activity that creates surprise or cognitive dissonance
  - Establishes the central question of the chapter

第一幕 (Act 1): Foundation concepts (0:10 - 0:35)
  - Build from intuitive understanding to formal concepts
  - Minimum 1 discussion question tied to workplace experience

第二幕 (Act 2): Complexity and pitfalls (0:35 - 1:05)
  - Show how the foundational concepts can go wrong or become more nuanced
  - Minimum 1 structured classroom activity (5-10 min)
  - Minimum 2 discussion questions with expected responses

第三幕 (Act 3): Cultural / contextual factors (1:05 - 1:20)
  - Cross-cultural perspectives on the chapter's themes
  - Connect to students' multicultural work experiences

第四幕 (Act 4): Advanced applications and metacognition (1:20 - 1:45)
  - Higher-order thinking, practical strategies, implications
  - Minimum 1 brief hands-on activity

終幕 (Epilogue): Integration and reflection (1:45 - 2:00)
  - Full chapter review using a unifying metaphor or visual
  - Personal reflection writing activity
  - Preview of next chapter
```

**IMPORTANT**: The sequence does NOT need to follow the textbook's order. Reorganize for narrative flow and pedagogical effectiveness.

## Step 3: Writing the Manual

The manual must be written as a **complete instructor's script**, not an outline. For each segment, include ALL of the following:

### Required Elements for Every Segment

1. **Timestamp**: Exact minute range (e.g., `0:10 - 0:18`)
2. **Lecture script**: Written in blockquote format (`> "..."`) — the exact words the instructor can say. These should be natural, conversational, and include:
   - Rhetorical questions that engage students
   - Analogies and metaphors drawn from everyday or workplace life
   - Transition phrases that connect to the previous segment
3. **Discussion questions**: Formatted as blockquotes with:
   - The exact question to ask
   - Expected student responses (in parentheses)
   - Follow-up / probing questions (追問)
4. **Activity instructions**: Step-by-step with:
   - Materials needed
   - Exact verbal instructions
   - Timing for each sub-step
   - How to debrief
5. **Board/slide notes**: What to write on the whiteboard or show on slides

### Formatting Rules

- Use `>` blockquotes for all instructor speech
- Use **bold** for concept names on first mention, with English term in parentheses
- Use Chinese-first-English-in-parentheses format: 基模 (Schema)
- Structure: H1 for title, H2 for acts, H3 for segments, H4 for sub-segments
- Include a preparatory section (課前準備) listing all materials and suggested slides

### Content Rules

- **All key terms from the chapter MUST appear** in the manual
- **All classic studies** must be described with enough detail for the instructor to narrate them without looking at the textbook
- **Workplace connections**: Every major concept must include at least one workplace-relevant discussion point or example
- **No placeholders**: Every activity, question, and transition must be fully written out
- **Progressive complexity**: Concepts build on each other; later concepts reference earlier ones

## Step 4: Supporting Materials

At the end of the manual, include:

1. **應急方案 (Contingency Plan)**: A table listing which 2-3 segments can be cut if time runs short, how many minutes each saves, and why those are the best candidates for cutting
2. **Key term table**: All terms from the chapter with English translations and one-sentence definitions

## Step 5: Quality Checklist

Before delivering, verify:
- [ ] Every LO from the chapter is addressed
- [ ] Every key term from the chapter appears
- [ ] At least 3 structured discussion questions with expected responses
- [ ] At least 2 classroom activities with step-by-step instructions
- [ ] All classic studies are narrated (not just cited)
- [ ] Workplace relevance is established for every major concept
- [ ] Transitions between all segments are explicitly scripted
- [ ] Total timing adds up to the target duration (default: 120 min)
- [ ] Contingency plan is included
- [ ] Opening activity creates genuine surprise or engagement

## Output Location

Save the completed manual as an artifact:
- Filename: `chapter{N}_teaching_plan.md`
- Location: Artifact directory

## Example

For a reference implementation, see:
- `examples/chapter3_teaching_plan.md` — a complete 120-minute manual for Chapter 3 (Social Cognition) of Aronson et al.'s Social Psychology textbook

## Design Philosophy

The core philosophy behind this skill:

1. **Story over structure**: Students remember narratives, not bullet points
2. **Experience before theory**: Let students feel a phenomenon before naming it
3. **Workplace as laboratory**: Working professionals' daily experiences ARE the case studies
4. **Scripted spontaneity**: The instructor should FEEL natural, but the manual leaves nothing to chance
5. **Cumulative architecture**: Every segment references previous ones; by the finale, the whole chapter is one connected story
