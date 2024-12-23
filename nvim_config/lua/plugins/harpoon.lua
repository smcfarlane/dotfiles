return {
  "ThePrimeagen/harpoon",
  lazy = false,
  config = function()
    require("harpoon").setup({
      menu = {
        width = 90,
        height = 20,
      },
    })
    local map = require("utils").map
    map("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "Harpoon add file" })
    map("n", "<leader>hc", "<cmd>lua require('harpoon.mark').clear_all()<CR>", { desc = "Harpoon add file" })

    map("n", "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Harpoon toggle menu" })

    map("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Harpoon next page" })
    map("n", "<leader>hl", "<cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Harpoon next page" })
    map("n", "gb", "<cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Harpoon next page" })

    map("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", { desc = "Harpoon prev page" })
    map("n", "<leader>hh", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", { desc = "Harpoon prev page" })
    map("n", "gt", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", { desc = "Harpoon prev page" })

    map("n", "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", { desc = "Harpoon Nav File 1" })
    map("n", "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", { desc = "Harpoon Nav File 2" })
    map("n", "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", { desc = "Harpoon Nav File 3" })
    map("n", "<leader>h4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", { desc = "Harpoon Nav File 4" })
    map("n", "<leader>h5", "<cmd>lua require('harpoon.ui').nav_file(5)<CR>", { desc = "Harpoon Nav File 5" })
    map("n", "<leader>h6", "<cmd>lua require('harpoon.ui').nav_file(6)<CR>", { desc = "Harpoon Nav File 6" })
    map("n", "<leader>h7", "<cmd>lua require('harpoon.ui').nav_file(7)<CR>", { desc = "Harpoon Nav File 7" })
    map("n", "<leader>h8", "<cmd>lua require('harpoon.ui').nav_file(8)<CR>", { desc = "Harpoon Nav File 8" })
    map("n", "<leader>h9", "<cmd>lua require('harpoon.ui').nav_file(9)<CR>", { desc = "Harpoon Nav File 9" })
  end,
}
