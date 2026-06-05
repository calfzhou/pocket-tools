# Pocket Tools

Small browser-native tools for inspecting, debugging, and converting everyday data.

## Tools

- [JSON Inspector](./json-inspector/) - inspect JSON or JSONC, decode multiline strings and embedded JSON strings, and export as pretty JSON or YAML.
- [Clipboard Debug](./clipboard-debug/) - paste content and inspect the raw text/html and text/plain clipboard data, with HTML sanitization and tag detection.
- [Homebrew Package Review](./homebrew-review/) - review local Homebrew packages from an uploaded collector JSON file, with requested/auto status, install dates, cleanup candidates, and a dependency map.

## Organization

The root `index.html` is the catalog page. Each tool lives in a top-level folder with its own `index.html`, keeping GitHub Pages URLs short, for example `/json-inspector/` on `tools.gocalf.com`. Add a deeper grouping layer only if the collection grows enough to need categories.

## GitHub Pages

This site is configured for the custom domain `tools.gocalf.com`. Tool URLs follow the top-level folder name:

```text
https://tools.gocalf.com/
https://tools.gocalf.com/<tool-name>/
```

The root `CNAME` file must remain present for GitHub Pages to keep the custom domain.
