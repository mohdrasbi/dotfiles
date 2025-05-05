return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use 'tanvirtin/monokai.nvim'

  -- LSP
  use "williamboman/mason.nvim"
  use 'neovim/nvim-lspconfig'

  -- Auto completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- Language parser
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }


  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  -- status line
  use 'famiu/feline.nvim'

  -- Lua
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons"
  }

  -- Git diff
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- Markdown preview
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  use {
  "kndndrj/nvim-dbee",
  requires = {
    "MunifTanjim/nui.nvim",
  },
  run = function()
    require("dbee").install()
  end,
}

end)
