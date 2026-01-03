return {
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            presets = {
                bottom_search = true,
                command_palette = false,
                long_message_to_split = false,
                inc_rename = false,
            },
            views = {
                cmdline_popup = {
                    border = {
                        style = "rounded",
                    },
                },
            },
            routes = {
                {
                    filter = {
                        event = "msg_show",
                        kind = "",
                        find = "written",
                    },
                    opts = { skip = true },
                },
                {
                    filter = {
                        event = "msg_show",
                        kind = "search_count",
                    },
                    opts = { skip = true },
                },
            },
            notify = {
                enabled = true,
                view = "notify",
            },
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    },
    {
        "folke/trouble.nvim",
        cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
        opts = {
            auto_close = true,
            auto_preview = true,
            focus = false,
            follow = true,
            indent_guides = true,
            multiline = true,
            warn_no_results = true,
        },
    },
}
