#!/usr/bin/env bash
set -euo pipefail

# Run this on the macOS host where /Users/solutionhlp exists.
# Purpose:
#   1. Ensure /Users/solutionhlp/Documents/agent-workspace exists.
#   2. Ensure /Users/solutionhlp/.hermes/workspace/~ is a symlink to it.
#   3. Copy the moai-novel project into agent-workspace/moai-novel.

SRC_DEFAULT="$HOME/.hermes/workspace/moai-novel"
TARGET="/Users/solutionhlp/Documents/agent-workspace"
LINK_PARENT="/Users/solutionhlp/.hermes/workspace"
LINK="$LINK_PARENT/~"
BACKUP_ROOT="$HOME/.hermes/backups/moai-novel-migration-$(date +%Y%m%d-%H%M%S)"

SRC="${1:-$SRC_DEFAULT}"

if [[ ! -d "$SRC" ]]; then
  echo "ERROR: source project not found: $SRC" >&2
  echo "Usage: $0 /path/to/moai-novel" >&2
  exit 1
fi

mkdir -p "$TARGET" "$LINK_PARENT" "$BACKUP_ROOT"

if [[ -e "$TARGET/moai-novel" || -L "$TARGET/moai-novel" ]]; then
  mkdir -p "$BACKUP_ROOT"
  mv "$TARGET/moai-novel" "$BACKUP_ROOT/moai-novel.before"
  echo "Backed up existing target project to: $BACKUP_ROOT/moai-novel.before"
fi

cp -a "$SRC" "$TARGET/moai-novel"

if [[ -L "$LINK" ]]; then
  current="$(readlink "$LINK")"
  if [[ "$current" != "$TARGET" ]]; then
    mv "$LINK" "$BACKUP_ROOT/workspace-tilde-link.before"
    ln -s "$TARGET" "$LINK"
  fi
elif [[ -e "$LINK" ]]; then
  mv "$LINK" "$BACKUP_ROOT/workspace-tilde-path.before"
  ln -s "$TARGET" "$LINK"
else
  ln -s "$TARGET" "$LINK"
fi

echo "Migration complete."
echo "Source: $SRC"
echo "Target project: $TARGET/moai-novel"
echo "Symlink: $LINK -> $(readlink "$LINK")"
echo "Backup root: $BACKUP_ROOT"

find "$TARGET/moai-novel" -maxdepth 4 -print | sort
