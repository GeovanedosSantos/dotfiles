return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "lua_ls", "marksman" },
        vim.diagnostic.config({
            virtual_text = true,
            underline = true
        })
    },
    dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
    },
}

