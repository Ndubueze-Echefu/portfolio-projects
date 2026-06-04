# AI Agent Guide for Portfolio Projects

This guide helps AI agents understand the structure and navigate all projects in this portfolio.

## 📁 Project Structure

### Personal Projects

#### **MUGEN Projects** (`Personal Projects/MUGEN Projects/`)
- **Description**: Ikemen GO — a fight game engine based on MUGEN, built in Go
- **Key Files**:
  - `Ikemen_GO.command` — Mac/Linux launcher
  - `Run_on_Windows.exe` — Windows launcher
  - `README.md` — Project documentation
  - `chars/` — Character definitions
  - `stages/` — Stage/arena definitions
  - `data/` — Game data and configuration
  - `external/` — External dependencies
  - `sound/` — Audio assets
- **Tech Stack**: Go, MUGEN scripting language
- **How to Work With It**: 
  - Read the README.md first for context
  - Character and stage files are typically script-based
  - Check `data/` for configuration and game rules
  - Modify launchers only if cross-platform compatibility is the goal

---

### School Projects

#### **Computer Architecture** (`School Projects/Computer Archetecture/`)
- **Contains**: Project 1, Project 2
- **Description**: Academic projects related to computer architecture
- **How to Work With It**:
  - Check each project folder for its own README or documentation
  - Likely contains assembly code, hardware simulations, or low-level programming
  - Respect academic integrity—these are coursework

#### **Computer Science 2** (`School Projects/Computer Science 2/`)
- **Contains**: Final Homework - Tic Tac Toe
- **Description**: A Tic Tac Toe implementation (likely the capstone assignment)
- **How to Work With It**:
  - Look for main entry point (typically `main.java`, `main.py`, `index.js`, etc.)
  - Check for tests or test cases
  - Respect the assignment requirements—these are graded work

#### **Data Structures and Algorithms** (`School Projects/Data Structures and Algorithms/`)
- **Contains**: 
  - `Sample Flight Plan System` — Application using data structures
  - `Structured Report.docx` — Documentation/report
  - `source_code/` — Implementation code
- **Description**: Academic projects demonstrating data structure and algorithm usage
- **How to Work With It**:
  - Start with the structured report for context
  - `source_code/` contains the implementations
  - These projects likely involve:
    - Sorting/searching algorithms
    - Tree, graph, or linked list implementations
    - Algorithm complexity analysis

#### **Database Systems** (`School Projects/Database Systems/`)
- **Contains**: Database-Systems-Milestone-3
- **Description**: Database project (appears to be Milestone 3 of a multi-phase assignment)
- **How to Work With It**:
  - This is a multi-milestone project; check if earlier milestones exist elsewhere
  - Likely contains:
    - SQL scripts for schema design
    - Database implementation code
    - Data files or sample datasets
  - Look for documentation on requirements and design decisions

---

## 🛠️ General Guidance for Agents

### Before You Start

1. **Read Documentation First** — Always check for README.md or structured reports
2. **Respect Project Status** — School projects are graded work; be mindful of academic integrity
3. **Check for Dependencies** — Look for `package.json`, `requirements.txt`, `build.gradle`, etc.
4. **Understand the Goal** — What is this project trying to accomplish?

### Common Tasks

#### Exploring a New Project
```
1. Look for README.md or similar documentation
2. Identify the programming language and tech stack
3. Find the main entry point or executable
4. Check for tests or examples
5. Review folder structure to understand organization
```

#### Modifying Code
```
1. Understand the existing code structure first
2. Make changes incrementally and test
3. For school projects: ensure changes maintain original requirements
4. For personal projects: feel free to experiment and improve
```

#### Building/Running Projects
```
1. Check for build scripts (Makefile, build.sh, etc.)
2. Look for executable files (.exe, .command, shell scripts)
3. Check for dependency installation files (package.json, requirements.txt)
4. Follow the README instructions for setup
```

### Project-Specific Tips

- **MUGEN Projects**: Go-based, requires understanding of MUGEN scripting if modifying gameplay
- **Computer Architecture**: May require assembly knowledge or hardware simulation tools
- **CS 2 (Tic Tac Toe)**: Classic game logic; likely includes AI or game state management
- **Data Structures**: Focus on algorithms and complexity; may have performance benchmarks
- **Database Systems**: Multi-milestone project; check design documents and schema

---

## 📝 File Organization

```
portfolio-projects/
├── Personal Projects/
│   └── MUGEN Projects/           # Fight game engine
├── School Projects/
│   ├── Computer Archetecture/    # Hardware/assembly projects
│   ├── Computer Science 2/       # Tic Tac Toe game
│   ├── Data Structures and Algorithms/  # DSA coursework
│   └── Database Systems/         # DB project (Milestone 3)
├── README.md                      # Portfolio overview
└── AGENTS.md                      # This file
```

---

## 💡 Tips for Success

1. **Search Effectively** — Use the glob pattern `**/*.md` to find all documentation
2. **Respect History** — These projects show growth and learning; don't erase context
3. **Test Before Committing** — Ensure changes don't break existing functionality
4. **Ask Questions** — If unclear about a project's purpose, check the docs first
5. **Keep It Organized** — Maintain folder structure and naming conventions

---

*Last Updated: 2026-06-03*
*This guide is designed to help AI agents navigate and work with projects efficiently and respectfully.*
