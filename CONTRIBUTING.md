# Contributing

## Branching model
- `main`: reviewed, stable submission state.
- `dev`: integration branch for completed features.
- `feature/<short-description>`: one focused change per feature branch.

## Change process
1. Start from an up-to-date `dev`.
2. Create a descriptive feature branch.
3. Make a small, focused change.
4. Run `./scripts/verify.sh`.
5. Review `git diff` and `git status`.
6. Commit with a meaningful message.
7. Push the feature branch and open a pull request into `dev`.
8. Address review feedback and merge only after checks pass.
9. Open a pull request from `dev` to `main` when the integrated work is ready.

## Commit message examples
- `docs: explain branch workflow`
- `chore: add repository ignore rules`
- `test: verify required project files`
- `fix: correct Git command example`

## Security
Never commit access tokens, passwords, private keys, `.env` files, or personal credentials.
