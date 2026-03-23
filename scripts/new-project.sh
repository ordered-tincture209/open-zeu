#!/bin/bash

set -euo pipefail

SLUG="${1:-}"
NAME="${2:-}"
PM="${3:-}"
DESC="${4:-}"

if [ -z "$SLUG" ] || [ -z "$NAME" ] || [ -z "$PM" ]; then
  echo 'Usage: ./scripts/new-project.sh <slug> "<Display Name>" "<PM Name>" "<Description>"'
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
TEMPLATE_DIR="$ROOT_DIR/_templates/project-template"
PROJECT_DIR="$ROOT_DIR/projects/$SLUG"

if [ -d "$PROJECT_DIR" ]; then
  echo "Project already exists: $PROJECT_DIR"
  exit 1
fi

cp -R "$TEMPLATE_DIR" "$PROJECT_DIR"
mkdir -p "$PROJECT_DIR/rds/completed" "$PROJECT_DIR/skills" "$PROJECT_DIR/output"
touch "$PROJECT_DIR/output/.gitkeep" "$PROJECT_DIR/rds/completed/.gitkeep"

replace() {
  if [[ "$OSTYPE" == darwin* ]]; then
    sed -i '' "$1" "$2"
  else
    sed -i "$1" "$2"
  fi
}

for file in "$PROJECT_DIR/AGENTS.md" "$PROJECT_DIR/memory.md"; do
  replace "s|{{PROJECT_NAME}}|$NAME|g" "$file"
  replace "s|{{PROJECT_DESCRIPTION}}|${DESC:-$NAME}|g" "$file"
  replace "s|{{PROJECT_SLUG}}|$SLUG|g" "$file"
  replace "s|{{PM_NAME}}|$PM|g" "$file"
done

echo ""
echo "Created: $PROJECT_DIR"
echo ""
echo "Next:"
echo "1. Fill in $PROJECT_DIR/AGENTS.md"
echo "2. Add $SLUG to ui/server.py"
echo "3. Add your first task and RD"
