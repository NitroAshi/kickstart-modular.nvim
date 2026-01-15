# Update Guide for My kickstart-modular.nvim Fork

## Quick Update Workflow (English)

1. Add upstream remote (only once)
2. Fetch upstream changes
3. Stash local changes if any
4. Merge upstream/master into your branch
5. Pop stash to restore your changes
6. Resolve merge conflicts (keep your custom code, especially in lua/custom/)
7. Test your config
8. Commit and push

This keeps your customizations while updating from upstream.

---

This project is a personal fork of [dam9000/kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim). The goal is to keep up-to-date with upstream improvements while maintaining my own customizations.

## Update Workflow

1. **Add Upstream Remote** (only once):
   ```sh
   git remote add upstream https://github.com/dam9000/kickstart-modular.nvim.git
   ```

2. **Fetch Upstream Changes:**
   ```sh
   git fetch upstream
   ```

3. **Stash Local Changes (if any):**
   ```sh
   git stash push -m 'save local changes before upstream merge'
   ```

4. **Merge Upstream into Local Branch:**
   ```sh
   git merge upstream/master
   ```

5. **Pop Stash to Restore Local Changes:**
   ```sh
   git stash pop
   ```

6. **Resolve Any Merge Conflicts:**
   - Prefer to keep custom changes, especially in `lua/custom/`.
   - Test your config after resolving conflicts.

7. **Commit and Push:**
   ```sh
   git add .
   git commit -m 'feat: update from upstream and keep my custom changes'
   git push origin master
   ```

## Customization Guidelines
- Place all personal customizations in `lua/custom/` or clearly marked sections.
- Avoid editing upstream files unless necessary; if you do, document the reason.
- After each update, review and test your config.

## Purpose
This guide helps keep the fork up-to-date and maintainable, and serves as a memory aid for future updates or for automation.
