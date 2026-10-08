vim.api.nvim_create_autocmd("FileType", {
    pattern = { "typescript", "typescriptreact" },
    callback = function()
        vim.bo.tabstop = 2
        vim.bo.shiftwidth = 2
        vim.bo.softtabstop = 2
        vim.bo.expandtab = true
    end,
})

-- Format on save, only for buffers with an LSP client that supports formatting
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not (client and client:supports_method("textDocument/formatting")) then
            return
        end
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = vim.api.nvim_create_augroup("lsp_format_" .. args.buf, { clear = true }),
            buffer = args.buf,
            callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, async = false })
            end,
        })
    end,
})
