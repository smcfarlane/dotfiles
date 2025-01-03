return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme terafox")
    end,
  },
  { "tpope/vim-repeat", lazy = false },
  { "tpope/vim-sensible", lazy = false },
  { "tpope/vim-surround", lazy = false },
  { "tpope/vim-sleuth", lazy = false },
  { 'folke/neodev.nvim' },
  { "machakann/vim-highlightedyank", lazy = false },
  { 'tpope/vim-fugitive' },
  { "ntpeters/vim-better-whitespace" },
  { "vim-ruby/vim-ruby" },
  { "tpope/vim-rails" },
  { "tpope/vim-haml" },
  { "ekalinin/Dockerfile.vim" },
  { "towolf/vim-helm" },
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      local map = require('utils').map
      -- got this idea from NvChad
      map("n", "<leader>/", function() require("Comment.api").toggle.linewise.current() end, { desc = "toggle comment" })
      map("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", { desc = "toggle comment" })
    end,
    lazy = false,
  },
  {
    'stevearc/dressing.nvim',
    opts = {
      enabled = true,
    },
  },
  {
    'akinsho/bufferline.nvim',
    lazy = false,
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup{}
      local map = require('utils').map
      map('n', ']b', ':BufferLineCycleNext<CR>', { desc = 'go to next buffer' })
      map('n', '[b', ':BufferLineCyclePrev<CR>', { desc = 'go to previous buffer' })
      map('n', '<leader>]b', ':BufferLineMoveNext<CR>', { desc = 'move buffer next' })
      map('n', '<leader>[b', ':BufferLineMovePrev<CR>', { desc = 'move buffer previous' })
    end
  },
  -- {
  -- "ray-x/go.nvim",
  --   dependencies = {  -- optional packages
  --     "ray-x/guihua.lua",
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  --   config = function()
  --     require("go").setup()
  --   end,
  --   event = {"CmdlineEnter"},
  --   ft = {"go", 'gomod'},
  --   build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  -- }
}
