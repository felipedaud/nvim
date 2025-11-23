return {
    {
        "mason-org/mason.nvim",
        opts = {},
        config = function()
            require("mason").setup()

            vim.api.nvim_create_autocmd("FileType", {
                pattern = "mason",
                callback = function()
                    vim.cmd("MasonUpdate")
                end,
            })
        end
    }, 
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            "neovim/nvim-lspconfig",
        },
    },
}
