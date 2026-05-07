
## Agentic Code Documentation System using JAC (Jaseci)

Codebase Genius is an AI-powered agentic system built using **JAC (Jaseci)** that automatically scans source code, analyzes program structure, and generates human-readable documentation.

The project demonstrates how autonomous agents can collaborate to understand a software codebase and produce structured documentation with minimal human intervention.

---

# Features

- Autonomous repository scanning
- Code structure analysis
- Function and class extraction
- Agent-based workflow orchestration
- Automatic documentation generation
- Markdown documentation output
- Extensible architecture for multiple programming languages

---

# Technologies Used

## Agentic Framework
- JAC (Jaseci)
- Jaseci Walkers
- Agent-based orchestration

## Backend
- Python 3.12

## Code Analysis
- Python AST (Abstract Syntax Tree)

## Output Format
- Markdown

---

# System Architecture

```text
Codebase
   ↓
Scanner Agent
   ↓
Analyzer Agent
   ↓
Documentation Agent
   ↓
Generated Documentation
Project Structure
Bash
codebase-genius/
│── jac/
│   └── codebase_genius.jac
│
│── actions/
│   └── code_actions.py
│
│── sample_repo/
│   └── example.py
│
│── output/
│   └── documentation.md
│
│── README.md
Agent Workflow
1. Repo Scanner Agent
Scans the repository and identifies source code files.
2. Code Analyzer Agent
Parses source files and extracts:
Functions
Classes
Code structure
Logic flow
3. Documentation Agent
Generates developer-friendly explanations and documentation.
Installation
1. Clone Repository
Bash
git clone https://github.com/gracekavemba/codebase-genius.git
cd codebase-genius
2. Create Virtual Environment
Bash
py -3.12 -m venv venv
Activate environment:
Windows
Bash
venv\Scripts\activate
Linux / Mac
Bash
source venv/bin/activate
3. Install Dependencies
Bash
pip install jaseci==1.4.2
pip install jaseci-serv==1.4.2
pip install jaclang
Running the Project
Start Jaseci Server
Bash
jsctl serve
Load JAC File
Open another terminal and activate the virtual environment.
Then run:
Bash
jsctl load jac/codebase_genius.jac
Execute Scanner Agent
Bash
jsctl walker run scan_repo -ctx "{\"repo_path\":\"sample_repo\"}"
Example Output
Markdown
# Codebase Documentation

## example.py

Purpose:
Core application logic

### Functions
- main() → Entry point of the program
- process_data() → Handles data processing
Python Code Analysis Example
Python
import ast

def analyze_python_code(code):
    tree = ast.parse(code)

    functions = [
        n.name for n in ast.walk(tree)
        if isinstance(n, ast.FunctionDef)
    ]

    return {
        "functions": functions,
        "description": "This file contains core logic."
    }
Future Improvements
Multi-language support
LLM-powered explanations
Dependency graph visualization
GitHub API integration
Real-time documentation updates
Web dashboard interface
Learning Outcomes
This project demonstrates:
Agentic AI system design
Multi-agent collaboration
JAC/Jaseci workflows
Automated software documentation
Python AST parsing
Intelligent developer tooling
Author
Grace Ndunda
GitHub: https://github.com/gracekavemba
