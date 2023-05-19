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
  }
}

return plugins
