vim.opt.number = true         -- Show absolute line numbers
vim.opt.relativenumber = true -- Show relative numbers too

-- Set the background to dark
vim.o.background = "dark"

-- Customize Gruvbox Material settings
vim.g.gruvbox_material_background = "medium" -- Options: 'soft', 'medium', 'hard'
vim.g.gruvbox_material_foreground = "material" -- Options: 'material', 'mix', 'original'
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_better_performance = 1

-- Apply the colorscheme
vim.cmd("colorscheme gruvbox-material")
