-- Load blink-cmp-copilot lazily on VeryLazy event
return {
  "giuxtaposition/blink-cmp-copilot",
  event = "VeryLazy", -- lazy load on VeryLazy event
  dependencies = { "zbirenbaum/copilot.lua", "saghen/blink.cmp" },
}
