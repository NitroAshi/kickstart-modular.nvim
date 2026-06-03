# Agent Instructions

## Project Overview

Personal Neovim config — a fork of [dam9000/kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim).

**Fork-specific additions:**
- GitHub Copilot via `copilot.lua` + `blink-cmp-copilot`, integrated with `blink.cmp`
- Nerd Font enabled (`vim.g.have_nerd_font = true`)
- All personal customizations isolated in `lua/custom/plugins/`

The upstream repo defines the overall file structure (entry point, plugin loader, kickstart plugin configs, etc.). **Treat `lua/custom/` as the stable customization boundary** — it is not owned by upstream and will never be overwritten by a merge.

## ⛔ Hard Rules

- **Never edit files under `lua/kickstart/`** unless it cannot be done from `lua/custom/`. If unavoidable, mark every changed line with `-- FORK: <reason>`.
- **Never bulk-replace** large blocks of existing config. Make the smallest possible diff.
- **Never manually edit `lazy-lock.json`**. It is managed by lazy.nvim.
- **Do not mirror upstream `README.md`**. Keep only fork-specific content there.

## ✅ Where to Make Changes

| Goal | Location |
|---|---|
| Add a plugin | New file in `lua/custom/plugins/` |
| Override an upstream plugin | `lua/custom/plugins/` using lazy.nvim `opts` or `config` |
| Global options | `lua/options.lua` |
| Keymaps | `lua/keymaps.lua` |
| Must patch an upstream file | Every changed line gets `-- FORK: <reason>` |

## Upstream Sync Workflow

```sh
# One-time setup
git remote add upstream https://github.com/dam9000/kickstart-modular.nvim.git

# Each sync
git fetch upstream
git stash push -m 'save local changes before upstream merge'   # if needed
git merge upstream/master
git stash pop                                                   # if stashed
# resolve conflicts (see below), then:
git add . && git commit -m 'chore: sync upstream'
git push origin master
```

**Conflict resolution rules:**
- `lua/kickstart/` and root upstream files → accept upstream version unless it breaks custom behavior
- `lua/custom/` → always keep local version
- `README.md` → keep local version; only add a note for significant upstream changes

## Code Style

- Lua style is governed by `.stylua.toml`. Run `stylua .` before committing any Lua edits.

## Testing

After any change, verify: launch Neovim with no startup errors, run `:checkhealth`, confirm plugins load correctly.
