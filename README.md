# My Neovim Config (Fork of kickstart-modular.nvim)

This is my personal fork of [dam9000/kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim).

## What is different in this fork?

- **Copilot Integration**: Adds [copilot.lua](https://github.com/zbirenbaum/copilot.lua) and [blink-cmp-copilot](https://github.com/giuxtaposition/blink-cmp-copilot) for GitHub Copilot completions, integrated with [blink.cmp](https://github.com/saghen/blink.cmp).
- **Custom Plugins**: All personal plugins and overrides are placed in `lua/custom/plugins/` for easy management and conflict-free updates.
- **Upstream Sync**: Regularly rebased/merged with upstream, following a [documented update workflow](./UPDATE_GUIDE.md) to keep my changes minimal and maintainable.
- **Minimal Upstream Modifications**: Avoids editing upstream files unless necessary; most changes are modular and isolated.
- **Nerd Font Enabled**: `vim.g.have_nerd_font = true` by default for better icon support.
- **Other Tweaks**: Some options and keymaps may be adjusted for my workflow, but the core structure remains close to upstream.

## Upstream README

For all other details, see the [original upstream README](https://github.com/dam9000/kickstart-modular.nvim#readme).

---

## My Customization Highlights

- **GitHub Copilot**: Enabled via `copilot.lua` and integrated into completion with `blink-cmp-copilot`.
- **All custom plugins**: Placed in `lua/custom/plugins/` for easy updates and separation from upstream.
- **Update process**: See [UPDATE_GUIDE.md](./UPDATE_GUIDE.md) for how I keep this fork up-to-date with upstream while preserving my changes.

---

This config is intended for my personal use, but feel free to explore or adapt it!

