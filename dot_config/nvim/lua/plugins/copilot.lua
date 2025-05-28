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
          next = "<C-]>",           -- Next suggestion
          prev = "<C-[>",           -- Previous suggestion
          dismiss = "<C-/>",        -- Dismiss suggestion
        },
      },
      panel = { enabled = false },
    })
  end,
}
