# Git Command Reference

| Command | Purpose |
|---|---|
| `git init` | Initialize a local repository |
| `git status` | Show changed, staged, and untracked files |
| `git add .` | Stage current directory changes |
| `git commit -m "message"` | Save a snapshot with a message |
| `git branch` | List local branches |
| `git switch -c dev` | Create and switch to a branch |
| `git switch main` | Switch branches |
| `git log --oneline --graph --decorate --all` | Visualize commit history |
| `git diff` | Review unstaged changes |
| `git diff --staged` | Review staged changes |
| `git stash push -m "message"` | Temporarily save uncommitted tracked changes |
| `git stash list` | List saved stashes |
| `git stash pop` | Reapply the latest stash |
| `git merge dev` | Merge `dev` into the current branch |
| `git rebase main` | Replay current-branch commits on top of `main` (use carefully on shared branches) |
| `git tag -a v1.0.0 -m "message"` | Create an annotated tag |
| `git push -u origin dev` | Push a branch and set upstream |
| `git remote -v` | Show configured remotes |

## Merge versus rebase
- **Merge** combines histories and usually creates a merge commit when needed. It preserves the branching history.
- **Rebase** replays commits on a new base and creates new commit IDs. Avoid rebasing commits that other people already rely on.

## `.gitignore`
Lists patterns Git should ignore when files are untracked. It does not automatically remove files that were already committed.
