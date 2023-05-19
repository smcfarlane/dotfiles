local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  i = {
    -- navigate within insert mode
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
  },

  n = {
    -- switch between windows
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
  }
}

-- Your custom mappings
M.abc = {
  n = {
    ["<C-p>"] = { ":Telescope find_files<CR>", "Telescope Files" },
    -- tmux nav
    ["<C-h"] = { ":NvimTmuxNavigateLeft<CR>", "Nvim Tmux Navigate Left" },
    ["<C-j"] = { ":NvimTmuxNavigateDown<CR>", "Nvim Tmux Navigate Down" },
    ["<C-k"] = { ":NvimTmuxNavigateUp<CR>", "Nvim Tmux Navigate Up" },
    ["<C-l"] = { ":NvimTmuxNavigateRight<CR>", "Nvim Tmux Navigate Right" },
    ["<C-["] = { ":NvimTmuxNavigateLastActive<CR>", "Nvim Tmux Navigate Last Active" },
    ["<C-]"] = { ":NvimTmuxNavigateNext<CR>", "Nvim Tmux Navigate Next" },
  },

  i = {
     ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  }
}

return M
