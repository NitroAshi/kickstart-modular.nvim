return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  build = ':Copilot auth',
  init = function()
    local group = vim.api.nvim_create_augroup('kickstart-copilot-blink', { clear = true })
    vim.api.nvim_create_autocmd('User', {
      group = group,
      pattern = 'BlinkCmpMenuOpen',
      callback = function() vim.b.copilot_suggestion_hidden = true end,
    })
    vim.api.nvim_create_autocmd('User', {
      group = group,
      pattern = 'BlinkCmpMenuClose',
      callback = function() vim.b.copilot_suggestion_hidden = false end,
    })
  end,
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
    },
    panel = { enabled = true },
  },
}
