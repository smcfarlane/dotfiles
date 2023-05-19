local M = {}

-- In order to disable a default keymap, use
M.disabled = {}

-- Your custom mappings
M.abc = {
  n = {
     ["<C-p>"] = {":Telescope Files <CR>", "Telescope Files"},
  },

  i = {
     ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  }
}

return M
