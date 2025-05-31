vim.opt.number = true         -- Show absolute line numbers
vim.opt.relativenumber = true -- Show relative numbers too
vim.opt.tabstop = 4           -- Number of visual spaces per TAB
vim.opt.shiftwidth = 4        -- Number of spaces for each step of (auto)indent
vim.opt.expandtab = true      -- Convert tabs to spaces

-- Set the background to dark
vim.o.background = "dark"

-- Customize Gruvbox Material settings
vim.g.gruvbox_material_background = "medium"   -- Options: 'soft', 'medium', 'hard'
vim.g.gruvbox_material_foreground = "material" -- Options: 'material', 'mix', 'original'
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_better_performance = 1

-- Apply the colorscheme
vim.cmd("colorscheme gruvbox-material")
