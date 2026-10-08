-- lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false, -- main branch doesn't support lazy-loading
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "go",
      "python",
      "typescript",
      "tsx",
      "javascript",
      "yaml",
      "vim",
      "toml",
      "markdown",
      "markdown_inline",
      "lua",
      "json",
      "html",
      "bash",
      "dockerfile",
    })
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        if pcall(vim.treesitter.start, args.buf) then
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
