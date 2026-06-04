# Pocket Tools

Small browser-native tools for inspecting, debugging, and converting everyday data.

## Tools

- [JSON Inspector](./json-inspector/) - inspect JSON or JSONC, decode multiline strings and embedded JSON strings, and export as pretty JSON or YAML.

## Organization

Each tool lives in a top-level folder with an `index.html` file:

```text
pocket-tools/
  CNAME
  index.html
  json-inspector/
    index.html
```

This keeps GitHub Pages URLs short, for example `/json-inspector/` on `tools.gocalf.com`. Add a deeper grouping layer only if the collection grows enough to need categories.

## GitHub Pages

This site is configured for the custom domain:

```text
https://tools.gocalf.com/
https://tools.gocalf.com/json-inspector/
```

The root `CNAME` file must remain present for GitHub Pages to keep the custom domain.
