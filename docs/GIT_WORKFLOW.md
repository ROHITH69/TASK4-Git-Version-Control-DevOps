# Git and GitHub Workflow

## 1. Initialize the repository
Run from the project root:
```bash
git init
git branch -M main
git add .
git commit -m "chore: initialize Task 4 Git workflow project"
```

## 2. Create and publish `dev`
```bash
git switch -c dev
git push -u origin dev
```
If `origin` has not been configured yet, add it using the GitHub repository URL first.

## 3. Create a feature branch
Start from `dev`:
```bash
git switch dev
git pull origin dev
git switch -c feature/add-workflow-notes
```
Make a small change, then inspect and commit it:
```bash
git status
git diff
git add docs/GIT_WORKFLOW.md
git commit -m "docs: add feature branch workflow note"
git push -u origin feature/add-workflow-notes
```

## 4. Open a pull request: feature → dev
On GitHub:
1. Open the repository's **Pull requests** tab.
2. Select **New pull request**.
3. Set **base** to `dev` and **compare** to `feature/add-workflow-notes`.
4. Review the changed files and create the PR.
5. Confirm there are no unexpected changes, then merge the PR.
6. Optionally delete the feature branch on GitHub after merging.

A pull request is a review and merge request; it is not the same thing as a Git commit.

## 5. Open a pull request: dev → main
After the feature PR has merged:
```bash
git switch dev
git pull origin dev
git log --oneline --graph --decorate --all
git push origin dev
```
On GitHub, create a PR with **base** `main` and **compare** `dev`. Review it, then merge.

## 6. Create and push a version tag
After the `dev` → `main` PR is merged:
```bash
git switch main
git pull origin main
git tag -a v1.0.0 -m "Task 4 Git workflow milestone"
git push origin v1.0.0
git tag --list
```
If the tag already exists, inspect it before creating another. Do not force-update a published tag just to hide a mistake.

## 7. Final verification
```bash
git status
git branch -a
git log --oneline --graph --decorate --all
git remote -v
git tag --list
```
A clean working tree should show `nothing to commit, working tree clean`.

## Optional: demonstrate a merge conflict safely
Only do this if you have time and understand the recovery steps. Create two branches that edit the same line differently, attempt to merge, inspect conflict markers, resolve the file manually, then:
```bash
git add <resolved-file>
git commit
```
Do not create a conflict in `main` just for a screenshot. The task does not require a forced conflict.
