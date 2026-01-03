return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "saghen/blink.cmp",
        },
        config = function()
            local lspconfig = require("lspconfig")
            local mason_lspconfig = require("mason-lspconfig")

            require("mason").setup()

            local capabilities = vim.lsp.protocol.make_client_capabilities()
            local on_attach = _G.lsp_on_attach

            mason_lspconfig.setup({
                ensure_installed = {
                    "lua_ls",
                    "bashls",
                    "jsonls",
                    "yamlls",
                    "html",
                    "cssls",
                    "tailwindcss",
                    "ts_ls",
                    "eslint",
                    "emmet_ls",
                    "pyright",
                    "gopls",
                },
                automatic_installation = true,
                handlers = {
                    function(server_name)
                        lspconfig[server_name].setup({
                            on_attach = on_attach,
                            capabilities = capabilities,
                        })
                    end,
                },
            })
        end,
    },
}
