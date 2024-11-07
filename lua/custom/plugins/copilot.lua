return {
  'zbirenbaum/copilot.lua',
  enabled = true,
  cmd = 'Copilot',
  build = ':Copilot auth',
  event = 'InsertEnter',
  opts = {
    suggestion = { enabled = false },
    panel = { enabled = false },
    filetypes = {
      c = true,
      cpp = true,
      lua = true,
      markdown = true,
      help = true,
    },
  },
  config = function()
    require('copilot').setup {}
  end,
}
