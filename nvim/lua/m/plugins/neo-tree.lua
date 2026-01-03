return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
        opts = {
            close_if_last_window = true,
            popup_border_style = "rounded",
            enable_git_status = true,
            enable_diagnostics = true,
            default_component_configs = {
                indent = {
                    indent_size = 2,
                    padding = 1,
                    with_markers = true,
                    indent_marker = "│",
                    last_indent_marker = "└",
                },
                icon = {
                    folder_closed = "📁",
                    folder_open = "📂",
                    folder_empty = "📄",
                },
                git_status = {
                    symbols = {
                        added = "✚",
                        modified = "●",
                        deleted = "✖",
                        renamed = "➜",
                        untracked = "★",
                        ignored = "◌",
                        unstaged = "✗",
                        staged = "✓",
                        conflict = "⚠",
                    },
                },
            },
            filesystem = {
                follow_current_file = {
                    enabled = true,
                },
                hijack_netrw_behavior = "open_current",
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    hide_hidden = false,
                    hide_by_name = {
                        "node_modules",
                        ".git",
                        ".next",
                        ".nuxt",
                        ".cache",
                        "dist",
                        "build",
                        "target",
                    },
                },
            },
            window = {
                position = "left",
                width = 30,
                mapping_options = {
                    noremap = true,
                    nowait = true,
                },
            },
        },
    },
}