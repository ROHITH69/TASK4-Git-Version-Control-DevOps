# Task 4 Interview Questions and Answers

## 1. What is Git?
Git is a distributed version-control system that tracks changes to files and lets developers collaborate using commits and branches.

## 2. What is the difference between merge and rebase?
Merge joins histories and preserves the branch structure, often with a merge commit. Rebase replays commits on top of another base, creating new commit IDs and a more linear history. Avoid rebasing shared public commits.

## 3. What is a pull request?
A pull request is a GitHub collaboration workflow for proposing changes from one branch into another so they can be reviewed, discussed, checked, and merged.

## 4. How do you resolve merge conflicts?
Inspect conflicted files with `git status`, open each file, resolve the conflict markers while preserving the intended result, run relevant checks, stage the resolved files with `git add`, and complete the merge commit or continue the rebase as appropriate.

## 5. What are Git tags?
Tags are named references to specific commits, commonly used to mark releases such as `v1.0.0`. Annotated tags include metadata and a message.

## 6. What is a Git workflow?
A Git workflow is an agreed process for branching, committing, reviewing, merging, releasing, and maintaining code. This project uses `main`, `dev`, and feature branches with pull requests.

## 7. Explain `git stash`.
`git stash` temporarily saves local changes so you can switch context without making a commit. `git stash pop` reapplies the most recent stash and removes it from the stash list if successful.

## 8. What is the use of `.gitignore`?
`.gitignore` tells Git which untracked files and paths to ignore, such as secrets, local environment files, logs, caches, and build output. It does not untrack files already committed.
