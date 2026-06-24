#!/usr/bin/env sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
SOURCE_DIR="$SCRIPT_DIR/source-hunter"

if [ ! -f "$SOURCE_DIR/SKILL.md" ]; then
  echo "Cannot find source-hunter/SKILL.md next to install.sh" >&2
  exit 1
fi

if [ "${1:-}" != "" ]; then
  TARGET_DIR="$1"
elif [ "${CODEX_HOME:-}" != "" ]; then
  TARGET_DIR="$CODEX_HOME/skills"
else
  TARGET_DIR="$HOME/.codex/skills"
fi

INSTALL_DIR="$TARGET_DIR/source-hunter"
mkdir -p "$TARGET_DIR"

if [ -e "$INSTALL_DIR" ]; then
  STAMP=$(date +"%Y%m%d-%H%M%S")
  BACKUP_DIR="$TARGET_DIR/source-hunter.backup.$STAMP"
  mv "$INSTALL_DIR" "$BACKUP_DIR"
  echo "Existing source-hunter backed up to: $BACKUP_DIR"
fi

cp -R "$SOURCE_DIR" "$INSTALL_DIR"

echo "Installed source-hunter to: $INSTALL_DIR"
echo 'Try: Use $source-hunter to collect verified, high-quality sources for this topic: context engineering for AI agents.'
