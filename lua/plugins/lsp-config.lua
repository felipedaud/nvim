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


        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    end
}
