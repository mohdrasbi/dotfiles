return {
  'zbirenbaum/copilot.lua',
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<C-l>",         -- Accept suggestion
          next = "<M-]>",           -- Next suggestion
          prev = "<M-[>",           -- Previous suggestion
          dismiss = "<M-e>",        -- Dismiss suggestion
        },
      },
      panel = { enabled = false },
    })
  end,
}
