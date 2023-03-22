-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    number = false,
    relativenumber = false,
    mappings = {
      list = {
        { key = "<C-a>", action = "close" },
        { key = "s", action = "vsplit" }
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
    git_clean = false,
  },
})

vim.keymap.set("n", "<C-a>", ":NvimTreeToggle<CR>")
