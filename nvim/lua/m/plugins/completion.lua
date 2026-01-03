return {
    {
        "saghen/blink.cmp",
        event = "InsertEnter",
        version = "v0.*",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        opts = {
            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = "mono",
            },
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },
            keymap = {
                preset = "default",
            },
            fuzzy = {
                implementation = "lua",
            },
        },
    },
}

