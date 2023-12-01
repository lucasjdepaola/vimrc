return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    require("catppuccin").setup {}
  end,
  lazy = false,
  priority = 1000,
  opts = {},
}
