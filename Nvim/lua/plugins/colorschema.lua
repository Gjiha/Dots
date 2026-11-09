return {
  {
    "loctvl842/monokai-pro.nvim",
    tag = "v2.1.3",
    lazy = false,
    priority = 1000,

    config = function()
      require("monokai-pro").setup({
        transparent_background = false,
        terminal_colors = true,
        devicons = true,
        filter = "classic",

        day_night = {
          enable = false,
          day_filter = "classic",
          night_filter = "classic",
        },
      })

      vim.cmd.colorscheme("monokai-pro")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },
}
