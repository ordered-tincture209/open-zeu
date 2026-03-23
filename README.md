# open-zeu

Local starter repo for running multiple AI project managers from one place.

## What You Get

- 4 demo projects: `PM1`, `PM2`, `PM3`, `PM4`
- Shared meta skills in `_skills/`
- Task backlogs in `projects/*/data.json`
- RDs in `projects/*/rds/`
- Local kanban UI in `ui/`
- Templates for adding more projects

## Quick Start

```bash
git clone <your-repo-url> open-zeu
cd open-zeu
cd ui
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python server.py
```

Open `http://localhost:8765`.

If port `8765` is busy:

```bash
OPEN_ZEU_PORT=8877 python server.py
```

## First Use

1. Open the repo root in Cursor, Claude Code, Codex, or OpenCode.
2. Read `AGENTS.md`.
3. Read one project file like `projects/pm1/AGENTS.md`.
4. Replace the demo task and demo RD with your real work.
5. Drag tasks across the board in the UI as they move.
6. Click the robot icon to inspect each PM's `AGENTS.md` and skills.

## Agent Setup

- Cursor: open the repo root. Start at `AGENTS.md`.
- Claude Code: open the repo root. `CLAUDE.md` points to `AGENTS.md`.
- Codex: open the repo root. Canonical instructions live in `AGENTS.md`.
- OpenCode: same rule. Start at `AGENTS.md`.

## Daily Flow

- `/prep` = clarify the task and tighten the RD
- `/run` = do the work in the target project
- `/wrap` = write down what changed and what matters

## Add A Project

```bash
./scripts/new-project.sh pm5 "PM5" "PM5" "New project area"
```

Then add the new project to `ui/server.py`.

## Notes

- `PM1`, `PM2`, `PM3`, and `PM4` are demo names. Rename them after cloning.
- This is local only.
- Optional MCP or memory tools are bring-your-own.
