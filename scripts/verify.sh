#!/usr/bin/env bash
set -eu

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

required_files=(
  "README.md"
  ".gitignore"
  "CONTRIBUTING.md"
  "CHANGELOG.md"
  "docs/GIT_WORKFLOW.md"
  "docs/COMMAND_REFERENCE.md"
  "docs/TEST_PLAN.md"
  "docs/INTERVIEW_QUESTIONS.md"
  ".github/pull_request_template.md"
  ".github/ISSUE_TEMPLATE/task.md"
  "logs/README.md"
  "screenshots/README.md"
)

echo "Task 4 project verification"
echo "Project root: $ROOT_DIR"
missing=0
for file in "${required_files[@]}"; do
  if [[ -f "$file" ]]; then
    printf 'PASS  %s\n' "$file"
  else
    printf 'FAIL  %s\n' "$file"
    missing=1
  fi
done

if command -v git >/dev/null 2>&1; then
  echo "PASS  Git is installed: $(git --version)"
else
  echo "FAIL  Git is not installed or not on PATH"
  missing=1
fi

if [[ "$missing" -ne 0 ]]; then
  echo "Verification failed: one or more requirements are missing."
  exit 1
fi

echo "SUCCESS: required files exist and Git is available."
echo "Note: branch, remote, pull request, tag, and screenshot checks must be performed during the hands-on workflow."
