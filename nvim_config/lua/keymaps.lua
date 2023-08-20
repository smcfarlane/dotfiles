local map = require("utils").map

map("i", "jk", "<ESC>", { desc = "easy escape from insert mode"})
map("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "toggle nvim tree explorer" })
