-- Toggle search highlight
vim.keymap.set("n", "<leader>h", function()
  vim.o.hlsearch = not vim.o.hlsearch
end, { desc = "Toggle search highlight" })

-- Apply format
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format file with LSP" })

-- Global LSP mappings
-- Neovim 0.11+ provides defaults: K (hover), grr (references), grn (rename),
-- gra (code action), gri (implementation), grt (type definition)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

-- Diagnostics mappings
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setqflist, { desc = "Send diagnostics to quickfix" })

vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })
vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })
