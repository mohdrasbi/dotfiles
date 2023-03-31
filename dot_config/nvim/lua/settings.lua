local cmd = vim.cmd 		                -- exectue vim commands
local exec = vim.api.nvim_exec 	        -- execute Vimscript
local fn = vim.fn 		                  -- call vim functions
local g = vim.g			                    -- global variables
local opt = vim.opt 		                -- global/buffer/windows-scoped options


-- General
g.mapleader = ' '		                    -- change leader to a space


-- Neovim UI
opt.number = true		                    -- show line numbers
opt.showmatch = true		                -- highlight matching paranthesis
opt.splitright = true		                -- vertical split to the right
opt.splitbelow = true		                -- horizontal split to the bottom


-- Memory, CPU
opt.hidden = true 		                  -- hidden background buffers
opt.history = 100		                    -- remember n lines in history
opt.lazyredraw = true		                -- faster scrolling
opt.synmaxcol = 240		                  -- max column for syntax highlight


-- Tabs, indent
opt.expandtab = true		                -- use spaces instead of tabs
opt.shiftwidth = 4                      -- shift 4 spaces when tab
opt.tabstop = 4                         -- 1 tab == 4 spaces
opt.smartindent = true                  -- autoindent new lines

-- Colorscheme
opt.termguicolors = true                -- enable 24-bit RGB colors


-- don't auto comment new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- 2 spaces for selected filetypes
cmd [[
  autocmd FileType lua,yaml setlocal shiftwidth=2 tabstop=2
]]
