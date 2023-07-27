local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>v"] = ""
  }
}

-- Your custom mappings
M.abc = {
  n = {
    ["<C-p>"] = { ":Telescope find_files<CR>", "Telescope Files" },
  },

  i = {
     ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  }
}

M.harpoon = {
  n = {
    ["<leader>ha"] = { "<cmd>lua require('harpoon.ui').add_file()<CR>", "Harpoon add file" },
    ["<leader>hm"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "Harpoon toggle menu" },
    ["<leader>hn"] = { "<cmd>lua require('harpoon.ui').nav_next()<CR>", "Harpoon next page" },
    ["<leader>hp"] = { "<cmd>lua require('harpoon.ui').nav_prev()<CR>", "Harpoon prev page" },
    ["<leader>h1"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", "Harpoon Nav File 1" },
    ["<leader>h2"] = { "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", "Harpoon Nav File 2" },
    ["<leader>h3"] = { "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", "Harpoon Nav File 3" },
    ["<leader>h4"] = { "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", "Harpoon Nav File 4" },
    ["<leader>h5"] = { "<cmd>lua require('harpoon.ui').nav_file(5)<CR>", "Harpoon Nav File 5" },
    ["<leader>h6"] = { "<cmd>lua require('harpoon.ui').nav_file(6)<CR>", "Harpoon Nav File 6" },
    ["<leader>h7"] = { "<cmd>lua require('harpoon.ui').nav_file(7)<CR>", "Harpoon Nav File 7" },
    ["<leader>h8"] = { "<cmd>lua require('harpoon.ui').nav_file(8)<CR>", "Harpoon Nav File 8" },
    ["<leader>h9"] = { "<cmd>lua require('harpoon.ui').nav_file(9)<CR>", "Harpoon Nav File 9" },
  }
}

M.tmux = {
  n = {
    -- tmux nav
    ["<C-h>"] = { ":NvimTmuxNavigateLeft<CR>", "Nvim Tmux Navigate Left" },
    ["<C-j>"] = { ":NvimTmuxNavigateDown<CR>", "Nvim Tmux Navigate Down" },
    ["<C-k>"] = { ":NvimTmuxNavigateUp<CR>", "Nvim Tmux Navigate Up" },
    ["<C-l>"] = { ":NvimTmuxNavigateRight<CR>", "Nvim Tmux Navigate Right" },
    ["<C-[>"] = { ":NvimTmuxNavigateLastActive<CR>", "Nvim Tmux Navigate Last Active" },
    ["<C-]>"] = { ":NvimTmuxNavigateNext<CR>", "Nvim Tmux Navigate Next" },
  }
}

return M
