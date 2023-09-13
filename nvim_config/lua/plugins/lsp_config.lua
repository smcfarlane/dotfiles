return {
  'neovim/nvim-lspconfig',
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "LspInfo", "LspInstall", "LspUninstall" },
  config = function()
    local lspconfig = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    lspconfig.solargraph.setup {}
    -- lspconfig.ruby_ls.setup{}
    lspconfig.gopls.setup {
      capabilities = capabilities,
    }
    lspconfig.html.setup {}
    lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
    }
    lspconfig.tsserver.setup {}
    require 'lspconfig'.tailwindcss.setup {
      filetypes = {
        "eruby",
        "html",
        "gohtml",
        "gohtmltmpl",
        "svelte",
      },
    }
    -- vim.lsp.set_log_level("debug")

    lspconfig.emmet_ls.setup({
      capabilities = capabilities,
      filetypes = {
        "css",
        "eruby",
        "html",
        "gohtml",
        "gohtmltmpl",
        "javascript",
        "javascriptreact",
        "less",
        "sass",
        "scss",
        "svelte",
        "typescriptreact",
        "vue"
      },
    })

    -- Global mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

    -- Use LspAttach autocommand to only map the following keys
    -- after the language server attaches to the current buffer
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = ev.buf, desc = 'Go to declaration' })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = 'Go to definition' })
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = ev.buf, desc = 'LSP Hover' })
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = ev.buf, desc = 'Go to implementation' })
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { buffer = ev.buf, desc = 'LSP Signature help' })
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder,
          { buffer = ev.buf, desc = 'Add workspace folder' })
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder,
          { buffer = ev.buf, desc = 'Remove workspace folder' })
        vim.keymap.set('n', '<space>wl', function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, { buffer = ev.buf, desc = 'List workspace folders' })
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, { buffer = ev.buf, desc = 'Go to type definition' })
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, { buffer = ev.buf, desc = 'LSP Rename' })
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, { buffer = ev.buf, desc = 'LSP Code action' })
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = ev.buf, desc = 'LSP References' })
        vim.keymap.set('n', 'gf', function()
          vim.lsp.buf.format { async = true }
        end, { buffer = ev.buf, desc = 'LSP Format' })
      end,
    })
  end,
}
