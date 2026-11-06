---
name: handoff
description: Compact the current conversation into a handoff document for another agent to pick up. Use only when user runs /handoff.
argument-hint: "What will the next session be used for?"
---

Write a handoff document summarising the current conversation so a fresh agent can continue the work. When using a Git worktree, save it in `intermediates/` at the worktree root. Otherwise, create a dedicated directory under the user's OS temporary directory and save it there.

Include a "suggested skills" section in the document, naming which skills the next agent should call the Skill tool for.

Do not duplicate content already captured in other artifacts (specs, plans, ADRs, issues, commits, diffs). Reference them by URL or stable identifier instead. Do not include local filesystem paths in the document.

Redact any sensitive information, such as API keys, passwords, or personally identifiable information.

If the user passed arguments, treat them as a description of what the next session will focus on and tailor the doc accordingly.
