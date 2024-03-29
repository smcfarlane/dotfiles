local opts = {noremap = true}
local map = vim.keymap.set
-- Setup
require("buffer_manager").setup({
  select_menu_item_commands = {
    v = {
      key = "<C-v>",
      command = "vsplit"
    },
    h = {
      key = "<C-h>",
      command = "split"
    }
  },
  short_file_names = true,
  short_term_names = true,
})
-- Navigate buffers bypassing the menu
local bmui = require("buffer_manager.ui")
local keys = '1234567890'
for i = 1, #keys do
  local key = keys:sub(i,i)
  map(
    'n',
    string.format('<leader>b%s', key),
    function () bmui.nav_file(i) end,
    opts
  )
end
-- Just the menu
map({ 't', 'n' }, '<leader>bb', bmui.toggle_quick_menu, opts)
-- Open menu and search
map({ 't', 'n' }, '<leader>bf', function ()
  bmui.toggle_quick_menu()
  -- wait for the menu to open
  vim.defer_fn(function ()
    vim.fn.feedkeys('/')
  end, 50)
end, opts)
-- Next/Prev
map('n', '<leader>bn', bmui.nav_next, opts)
map('n', '<leader>bp', bmui.nav_prev, opts)
map('n', 'gb', ":bp<CR>", {})
map('n', 'gB', ":bn<CR>", {})

-- Reorder buffers
-- Since the buffer menu is just a buffer with the specific file type buffer_manager,
-- you can define your own remaps using an autocmd for this filetype. For example,
-- the following remaps allow to move a line up and down in visual mode with
-- capital K and J, respectively.
vim.api.nvim_command([[
autocmd FileType buffer_manager vnoremap J :m '>+1<CR>gv=gv
autocmd FileType buffer_manager vnoremap K :m '<-2<CR>gv=gv
]])
