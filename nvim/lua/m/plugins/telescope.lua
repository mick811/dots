local ignore_dirs = {
    "node_modules",
    ".git",
    ".next",
    ".nuxt",
    ".cache",
    "dist",
    "build",
    "target",
    ".venv",
    "venv",
    "__pycache__",
    ".pytest_cache",
    ".mypy_cache",
}

return {
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        version = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            defaults = {
                prompt_prefix = "  ",
                selection_caret = "  ",
                layout_strategy = "horizontal",
                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        preview_width = 0.55,
                        results_width = 0.8,
                    },
                    width = 0.87,
                    height = 0.80,
                    preview_cutoff = 120,
                },
                file_ignore_patterns = ignore_dirs,
            },
            pickers = {
                find_files = {
                    hidden = true,
                    find_command = {
                        "rg",
                        "--files",
                        "--hidden",
                        "--no-ignore-vcs",
                    },
                },
            },
        },
        config = function(_, opts)
            require("telescope").setup(opts)
        end,
    },
}

