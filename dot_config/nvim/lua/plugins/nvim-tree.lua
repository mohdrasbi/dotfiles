return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}

    local keymap = vim.keymap.set
    keymap("n", "<leader>n", "<cmd>NvimTreeFindFile<CR>", { desc = "Reveal file in NvimTree" })
    keymap("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
  end,
}
