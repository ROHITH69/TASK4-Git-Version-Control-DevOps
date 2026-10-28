# Test Plan and Screenshot Checklist

## A. Local file verification
Run:
```bash
chmod +x scripts/verify.sh
./scripts/verify.sh
```
Expected: all required files are found and the script exits with code `0`.

**Screenshot:** terminal showing the command and successful summary.

## B. Git branches
After creating branches:
```bash
git branch
git branch -a
```
Expected local branches include `main`, `dev`, and `feature/add-workflow-notes` (the feature branch may be removed locally after merge if desired).

**Screenshot:** terminal branch list.

## C. Commit history
```bash
git log --oneline --graph --decorate --all
```
Expected: real commits are visible. The graph depends on your actual sequence of commits and merges.

**Screenshot:** terminal commit graph.

## D. GitHub repository
Open your own repository page and show README and files.

**Screenshot:** repository main page.

## E. Pull requests
Capture the feature-to-dev PR after it is merged and the dev-to-main PR after it is merged. Ensure the base and compare branches are visible in at least one screenshot per PR.

**Screenshots:** PR details and merged status for each PR.

## F. Tag
Run:
```bash
git tag --list
git show v1.0.0 --no-patch
```
Optionally capture GitHub's Releases/Tags view.

**Screenshot:** tag name and annotation.

## G. Final state
```bash
git status
git remote -v
```
Expected: clean working tree and your actual GitHub remote URL.

**Screenshot:** final status and remote. Hide personal information if desired, but do not hide errors or misrepresent results.

## Evidence storage
Save screenshots as PNG/JPG in this folder using clear names, for example:
- `01-local-verification.png`
- `02-branches.png`
- `03-commit-history.png`
- `04-github-repository.png`
- `05-feature-pr-merged.png`
- `06-dev-main-pr-merged.png`
- `07-tag-v1.0.0.png`
- `08-final-git-status.png`

Screenshots are intentionally not pre-populated: capture them from your own real run.
