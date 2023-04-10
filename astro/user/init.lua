return {
  colorscheme = "kanagawa",

  plugins = {
    {
      "rebelot/kanagawa.nvim",
      as = "kanagawa",
      config = function()
        require("kanagawa").setup {}
      end,
    },
  },
}
