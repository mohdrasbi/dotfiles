vim.keymap.set("i", "<Esc>", "<Esc>", { desc = "Fix Esc if overridden" })


-- Toggle search highlight
vim.keymap.set("n", "<leader>h", function()
  vim.o.hlsearch = not vim.o.hlsearch
end, { desc = "Toggle search highlight" })

-- Apply format
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format file with LSP" })

-- Global LSP mappings
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover info" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

-- Diagnostics mappings
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setqflist, { desc = "Send diagnostics to quickfix" })
