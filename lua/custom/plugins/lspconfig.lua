---@module 'lazy'
---@type LazySpec
return {
  {
    'neovim/nvim-lspconfig',
    init = function()
      local disable_root_dir = function(_, _) end

      vim.lsp.config('clangd', {
        cmd = {
          'clangd',
          '-j',
          '2',
          '--background-index',
          '--clang-tidy',
          '--completion-style=detailed',
          '--header-insertion=never',
        },
        root_dir = function(bufnr, on_dir)
          local root = vim.fs.root(bufnr, { 'compile_commands.json', '.git', 'Makefile' })
          if root then on_dir(root) end
        end,
        init_options = {
          fallbackFlags = { '-std=c++20' },
        },
      })

      -- Keep Lua formatting/configuration logic off the LSP path.
      vim.lsp.config('stylua', {
        root_dir = disable_root_dir,
      })
      vim.lsp.config('lua_ls', {
        root_dir = disable_root_dir,
      })

      vim.lsp.enable 'clangd'
    end,
  },
}
