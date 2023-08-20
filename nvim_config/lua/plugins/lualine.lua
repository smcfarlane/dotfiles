return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  config = function()
    require('lualine').setup({})
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" }
}
