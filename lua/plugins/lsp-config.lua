return {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        vim.lsp.config('tsserver', {
            capabilities = capabilities,
        })
        vim.lsp.config('html', {
            capabilities = capabilities,
        })
        vim.lsp.config('lua_ls', {
            capabilities = capabilities,
        })


        local opts = { noremap = true, silent = true, buffer = bufnr }

        vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, {
            desc = "LSP: Mostrar documentação"
        }))

        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, {
            desc = "LSP: Ir para definição"
        }))

        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, vim.tbl_extend("force", opts, {
            desc = "LSP: Mostrar referências"
        }))

        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, {
            desc = "LSP: Ações de código"
        }))

    end
}
