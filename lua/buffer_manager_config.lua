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
map({ 't', 'n' }, '<leader>b', bmui.toggle_quick_menu, opts)
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
