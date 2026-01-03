return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "moon",
      disable_background = true,
      disable_float_background = true,
      styles = {
        italic = true,
      },
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd.colorscheme("rose-pine-moon")
    end,
  },
}
