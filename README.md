# Pocket Tools

[Open Pocket Tools](https://tools.gocalf.com/)

Small browser-native tools for inspecting, debugging, and converting everyday data. Tools run locally in your browser unless a page explicitly says otherwise.

## Tools

- [JSON Inspector](./json-inspector/) - inspect JSON or JSONC, decode multiline strings and embedded JSON strings, and export as pretty JSON or YAML.
- [Clipboard Debug](./clipboard-debug/) - paste content and inspect the raw text/html and text/plain clipboard data, with HTML sanitization and tag detection.
- [Homebrew Package Review](./homebrew-review/) - review local Homebrew packages from an uploaded collector JSON file, with requested/auto status, install dates, cleanup candidates, and a dependency map.
- [Agent Stream Viewer](./agent-stream-viewer/) - paste a raw agent SSE stream and read it as a clean step-by-step transcript, hiding session, intent, and usage noise.

## Privacy

These tools are designed for local, browser-side inspection. For tools that need machine-local data, such as Homebrew Package Review, the page asks you to generate a local data file and upload it into the page instead of sending it to a server.
