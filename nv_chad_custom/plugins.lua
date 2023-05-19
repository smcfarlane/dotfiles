local plugins = {
  -- this opts will extend the default opts 
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"lua", "vim", "html", "css", "bash", "ruby", "javascript", "json", "yaml"},
    },
  },
  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
  {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "css-languageserver",
        "typescript-language-server",
        "stylua",
        "solargraph"
      },
    },
  },
  -- custom plugins
  { "tpope/vim-repeat", lazy = false },
  { "tpope/vim-sensible", lazy = false },
  { "tpope/vim-surround", lazy = false },
  { "machakann/vim-highlightedyank", lazy = false },
  { "ekalinin/Dockerfile.vim" },
  { "ThePrimeagen/harpoon" },
  {
    "alexghergh/nvim-tmux-navigation",
    config = function()
      local nvim_tmux_nav = require('nvim-tmux-navigation')

      nvim_tmux_nav.setup {
        disable_when_zoomed = true -- defaults to false
      }
    end,
    lazy = false
  },
  { "github/copilot.vim", lazy = false }
}

return plugins
