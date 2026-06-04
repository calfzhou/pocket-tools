# Agent Guidance

This repository hosts small browser-native tools through GitHub Pages.

## Project Shape

- The root `index.html` is the catalog page.
- Each tool lives in a top-level folder with its own `index.html`, for example `json-inspector/index.html`.
- Avoid adding a `tools/` grouping layer unless the repo grows enough to need categories.
- Prefer static, dependency-free HTML/CSS/JavaScript. Add a build step only when a tool clearly needs it.

## Tool Guidelines

- Keep each tool usable by opening its `index.html` directly in a browser when possible.
- Design for GitHub Pages URLs like `/pocket-tools/json-inspector/`.
- Do not embed real user data, internal URLs, tokens, logs, IDs, or private samples. Use synthetic examples that demonstrate the feature.
- If a tool uses browser permissions such as clipboard access, explain that in the tool UI or its README.
- Preserve user privacy by doing all processing locally in the browser unless the tool explicitly documents a network call.

## Editing Conventions

- Keep changes scoped to the relevant tool folder plus the root catalog/README when needed.
- Use plain JavaScript and CSS unless an existing tool already uses a framework.
- Prefer accessible controls with labels, keyboard support, and readable light/dark contrast.
- Validate embedded JavaScript after edits.
- Update the root `index.html` and `README.md` when adding, renaming, or removing a tool.

## GitHub Pages

The expected Pages setup is:

- Source: deploy from a branch
- Branch: `main`
- Folder: `/root`

Public URLs should remain short and stable:

```text
https://calfzhou.github.io/pocket-tools/
https://calfzhou.github.io/pocket-tools/<tool-name>/
```
