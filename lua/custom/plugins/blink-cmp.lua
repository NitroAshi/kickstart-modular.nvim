---@module 'lazy'
---@type LazySpec
return {
  {
    'saghen/blink.cmp',
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      opts.sources.default = opts.sources.default or { 'lsp', 'path', 'snippets' }
      if not vim.tbl_contains(opts.sources.default, 'copilot') then table.insert(opts.sources.default, 'copilot') end

      opts.sources.providers = opts.sources.providers or {}
      opts.sources.providers.copilot = {
        name = 'copilot',
        module = 'blink-cmp-copilot',
        score_offset = 200,
        async = true,
      }
    end,
  },
}
