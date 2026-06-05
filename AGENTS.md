# Agent Guidance

This repository hosts small browser-native tools through GitHub Pages.

`README.md` is for users of the public site. Keep it concise: link to the site, list available tools, and explain user-facing privacy expectations.

`AGENTS.md` is for AI/developer maintenance guidance. Put repository structure, implementation conventions, deployment assumptions, and commit rules here instead of expanding the README with maintainer details.

## Project Shape

- The root `index.html` is the catalog page.
- Each tool lives in a top-level folder with its own `index.html`, for example `json-inspector/index.html`.
- Avoid adding a `tools/` grouping layer unless the repo grows enough to need categories.
- Prefer static, dependency-free HTML/CSS/JavaScript. Add a build step only when a tool clearly needs it.

## Tool Guidelines

- Keep each tool usable by opening its `index.html` directly in a browser when possible.
- Design for custom-domain GitHub Pages URLs like `/json-inspector/`.
- Do not embed real user data, internal URLs, tokens, logs, IDs, or private samples. Use synthetic examples that demonstrate the feature.
- If a tool uses browser permissions such as clipboard access, explain that in the tool UI or its README.
- Preserve user privacy by doing all processing locally in the browser unless the tool explicitly documents a network call.

## Editing Conventions

- Keep changes scoped to the relevant tool folder plus the root catalog/README when needed.
- Keep `README.md` user-facing. Avoid detailed repository trees, deployment checklists, or AI/developer instructions there.
- Use plain JavaScript and CSS unless an existing tool already uses a framework.
- Prefer accessible controls with labels, keyboard support, and readable light/dark contrast.
- Validate embedded JavaScript after edits.
- Update the root `index.html` and `README.md` when adding, renaming, or removing a tool.

## Git Conventions

- Use semantic commit messages following Conventional Commits, for example `feat: add json inspector`, `fix: correct clipboard parsing`, or `docs: update tool list`.

## GitHub Pages

The expected Pages setup is:

- Source: deploy from a branch
- Branch: `main`
- Folder: `/root`

Public URLs should remain short and stable:

```text
https://tools.gocalf.com/
https://tools.gocalf.com/<tool-name>/
```

Keep the root `CNAME` file set to `tools.gocalf.com`.
