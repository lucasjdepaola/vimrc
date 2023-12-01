local M = {};
local schemeIndex = 1
local options = { noremap = true }

M.my_init_commands = function()
  vim.keymap.set("c", "<C-H>", "<C-w>")
  vim.keymap.set("i", '<C-H>', '<C-w>')
  vim.keymap.set("c", "<C-BS>", "<C-w>")
  vim.keymap.set("i", '<C-BS>', '<C-w>')
  vim.keymap.set("n", "<leader>x", ":x<CR>")
  vim.keymap.set("n", "<leader>js", ":!node %<CR>")
  vim.keymap.set("n", "<leader>jp", ":!python3 %<CR>")
  vim.keymap.set("n", "<leader>jv", ":!javac *.java; java *")
  vim.keymap.set("n", "<leader>bs", ":colorscheme ")
  vim.keymap.set("n", ";", ":")
  vim.keymap.set("n", "L", "$")
  vim.keymap.set("n", "H", "^")
  vim.keymap.set("n", "J", "G")
  vim.keymap.set("n", "<leader>br", M.bg_scroll())
  vim.keymap.set("n", "yG", "ggVGy")
  vim.keymap.set("n", "<leader>s", ":%s/")
  vim.keymap.set("n", "<leader>bu", ":colorscheme blue")
  vim.cmd("colorscheme catppuccin")
  ---vim.keymap.set("n", "<leader>", "") -- default leader rebind.
  vim.keymap.set("x", ">", function()
    vim.cmd("normal! >>")
    vim.cmd("normal! gv")
  end)
  vim.keymap.set("x", "<", function()
    vim.cmd("normal! <<")
    vim.cmd("normal! gv")
  end)
  vim.keymap.set("n", ">", function() vim.cmd("normal! >>") end, options)
  vim.keymap.set("n", "<", function() vim.cmd("normal! <<") end, options)
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.offsetEncoding = { "utf-8" }
  vim.cmd("set norelativenumber")
  require("oil").setup()
  vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
end

M.bg_scroll = function()
  local bg_map = { "astrodark", "blue", "default" }
  local currentThemeCMD = ":colorscheme " .. bg_map[math.random(#bg_map)] .. "<CR>"
  return currentThemeCMD
end

return M
