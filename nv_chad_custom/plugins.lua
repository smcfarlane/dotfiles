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
  {
    "numToStr/Comment.nvim",
    lazy = false,
    init = function()
      require("core.utils").load_mappings "comment"
    end,
    config = function()
      require("Comment").setup()
    end,
  },
  -- custom plugins
  { "tpope/vim-repeat", lazy = false },
  { "tpope/vim-sensible", lazy = false },
  { "tpope/vim-surround", lazy = false },
  { "machakann/vim-highlightedyank", lazy = false },
  { "ekalinin/Dockerfile.vim" },
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    config = function()
      require("core.utils").load_mappings "harpoon"
    end,
  },
  {
    "alexghergh/nvim-tmux-navigation",
    config = function()
      local nvim_tmux_nav = require('nvim-tmux-navigation')

      nvim_tmux_nav.setup {
        disable_when_zoomed = true -- defaults to false
      }
      require("core.utils").load_mappings "tmux"
    end,
    lazy = false
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<C-a>", -- <M-l> 
            accept_word = false,
            accept_line = false,
            next = "‘", -- <M-]>
            prev = "“", -- <M-[>
            dismiss = "∂", -- <M-d>
          },
        },
      })
    end,
  },
  { "towolf/vim-helm" }
}

return plugins
