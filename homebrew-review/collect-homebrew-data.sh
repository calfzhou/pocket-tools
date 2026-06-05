#!/usr/bin/env bash
set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "Error: Homebrew is not installed or brew is not on PATH." >&2
  exit 1
fi

OUT="${1:-homebrew-package-data-$(date +%Y%m%d_%H%M%S).json}"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "Collecting installed Homebrew formula metadata..."
HOMEBREW_NO_AUTO_UPDATE=1 brew info --json=v2 --installed > "$TMP/installed.json"

echo "Collecting installed casks..."
HOMEBREW_NO_AUTO_UPDATE=1 brew list --cask > "$TMP/casks.txt" || true

echo "Collecting outdated status..."
if ! HOMEBREW_NO_AUTO_UPDATE=1 brew outdated --json=v2 > "$TMP/outdated.json"; then
  printf '{"formulae":[],"casks":[]}\n' > "$TMP/outdated.json"
fi

casks_json="$(
  awk '
    BEGIN { printf "[" }
    {
      gsub(/\\/,"\\\\")
      gsub(/"/,"\\\"")
      printf "%s\"%s\"", sep, $0
      sep=","
    }
    END { print "]" }
  ' "$TMP/casks.txt"
)"

prefix="$(brew --prefix | sed 's/\\/\\\\/g; s/"/\\"/g')"

{
  printf '{\n'
  printf '  "schemaVersion": 1,\n'
  printf '  "generatedAt": "%s",\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  printf '  "brewPrefix": "%s",\n' "$prefix"
  printf '  "installed": '
  cat "$TMP/installed.json"
  printf ',\n  "outdated": '
  cat "$TMP/outdated.json"
  printf ',\n  "casks": %s\n' "$casks_json"
  printf '}\n'
} > "$OUT"

echo "Wrote $OUT"
echo "Open the Homebrew Package Review page and drop this JSON file into it."
