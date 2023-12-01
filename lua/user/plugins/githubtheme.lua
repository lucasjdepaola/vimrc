return {
  'projekt0n/github-nvim-theme',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("github-theme").setup({})
  end
}
