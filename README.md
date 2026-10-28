# Task 4 — Version-Controlled DevOps Project with Git

A practical Git/GitHub workflow demonstration for the DevOps Internship Task 4.

## Objective
Manage a DevOps project using Git best practices.

## Tools
- Git
- GitHub
- Bash (for the optional local verification script)

## Deliverables covered
- Git repository initialized locally and pushed to GitHub
- `main`, `dev`, and `feature/*` branches
- Pull-request-based merge workflow
- Clear README and Markdown documentation
- `.gitignore`
- Annotated Git tag
- Evidence folder for screenshots and command logs
- Interview question answers

> Important: this ZIP is a ready-to-use project template. Git history, branches, pull requests, tags, screenshots, and remote repository are created during the hands-on steps; they are not fabricated inside this ZIP.

## Project structure
```text
TASK4_Git_Version_Control_DevOps/
├── README.md
├── .gitignore
├── CONTRIBUTING.md
├── CHANGELOG.md
├── docs/
│   ├── GIT_WORKFLOW.md
│   ├── COMMAND_REFERENCE.md
│   ├── TEST_PLAN.md
│   └── INTERVIEW_QUESTIONS.md
├── scripts/
│   └── verify.sh
├── .github/
│   ├── pull_request_template.md
│   └── ISSUE_TEMPLATE/
│       └── task.md
├── logs/
│   └── README.md
└── screenshots/
    └── README.md
```

## Quick start (macOS/Linux)
1. Extract the ZIP.
2. Open Terminal and move into the extracted folder:
   ```bash
   cd TASK4_Git_Version_Control_DevOps
   ```
3. Verify the project files:
   ```bash
   chmod +x scripts/verify.sh
   ./scripts/verify.sh
   ```
4. Initialize Git and make the first commit:
   ```bash
   git init
   git branch -M main
   git add .
   git commit -m "chore: initialize Task 4 Git workflow project"
   ```
5. Create the development branch:
   ```bash
   git switch -c dev
   ```
6. Create a feature branch and make a documented change:
   ```bash
   git switch -c feature/add-workflow-notes
   printf '\nFeature branch demonstration: changes are reviewed before merging.\n' >> docs/GIT_WORKFLOW.md
   git add docs/GIT_WORKFLOW.md
   git commit -m "docs: add feature branch workflow note"
   ```
7. Push the branches to GitHub and open a pull request from `feature/add-workflow-notes` into `dev`. Follow `docs/GIT_WORKFLOW.md` for the full process.
8. After the feature PR is merged into `dev`, open a second PR from `dev` into `main`.
9. Create a tag after the final merge:
   ```bash
   git switch main
   git pull origin main
   git tag -a v1.0.0 -m "Task 4 Git workflow milestone"
   git push origin v1.0.0
   ```
10. Save genuine screenshots in `screenshots/`, then commit and push them.

## GitHub repository setup
Create a **new empty repository** on GitHub for this task. Do not initialize it with a README, license, or `.gitignore` because those files are already in this project. Copy the repository's HTTPS URL, then run:
```bash
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git
git push -u origin main
git push -u origin dev
```
Replace the URL with your own repository URL. Never put a GitHub token/password into this README or commit it to Git.

## Evidence to capture
See [`docs/TEST_PLAN.md`](docs/TEST_PLAN.md). Capture screenshots of:
1. Successful local verification script
2. Git branch list showing `main`, `dev`, and feature branch
3. Commit history (`git log --oneline --graph --decorate --all`)
4. GitHub repository with files
5. Feature-to-dev pull request and merged status
6. Dev-to-main pull request and merged status
7. Tag `v1.0.0` visible in GitHub or terminal
8. Final clean `git status`

Do not add screenshots that claim a command succeeded unless you actually ran it successfully.

## Final verification
```bash
./scripts/verify.sh
git status
git branch -a
git log --oneline --graph --decorate --all
git tag --list
git remote -v
```

## Submission
Submit your GitHub repository URL using the internship's official submission form. The PDF says the task requires a new repository per task and a short README explaining the work.
