#!/usr/bin/env bash

set -eu

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

require_file() {
  if [ ! -f "$1" ]; then
    echo "missing required file: $1" >&2
    exit 1
  fi
}

require_markdown_in_dir() {
  if ! find "$1" -maxdepth 1 -type f -name '*.md' | grep -q .; then
    echo "missing markdown content in: $1" >&2
    exit 1
  fi
}

cd "$REPO_ROOT"

require_file "$REPO_ROOT/README.md"
require_file "$REPO_ROOT/docs/architecture.md"
require_file "$REPO_ROOT/docs/boundary.md"
require_file "$REPO_ROOT/docs/getting-started.md"
require_file "$REPO_ROOT/docs/examples.md"
require_file "$REPO_ROOT/docs/activation.md"
require_file "$REPO_ROOT/scripts/README.md"
require_file "$REPO_ROOT/tests/README.md"
require_file "$REPO_ROOT/config/README.md"
require_file "$REPO_ROOT/examples/README.md"
require_file "$REPO_ROOT/examples/basic-docs-update.md"

require_markdown_in_dir "$REPO_ROOT/architecture"
require_markdown_in_dir "$REPO_ROOT/wizard"
require_markdown_in_dir "$REPO_ROOT/alpine"
require_markdown_in_dir "$REPO_ROOT/uhome"

if rg -n '/Users/fredbook/Code|~/Users/fredbook/Code' \
  "$REPO_ROOT/README.md" \
  "$REPO_ROOT/docs" \
  "$REPO_ROOT/tests" \
  "$REPO_ROOT/examples" \
  "$REPO_ROOT/config"; then
  echo "private local-root reference found in uDOS-docs" >&2
  exit 1
fi

echo "uDOS-docs checks passed"
