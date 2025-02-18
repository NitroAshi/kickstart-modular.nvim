return {
  'zbirenbaum/copilot.lua',
  enabled = true,
  cmd = 'Copilot',
  build = ':Copilot auth',
  event = 'InsertEnter',
  opts = {
    panel = { enabled = false, layout = { position = 'right', ratio = 0.4 } },
    suggestion = { enabled = true, auto_trigger = true },
    filetypes = {
      c = true,
      cpp = true,
      lua = true,
      python = true,
      markdown = true,
      help = true,
    },
  },
  config = function(_, opts)
    require('copilot').setup(opts)
  end,
}
