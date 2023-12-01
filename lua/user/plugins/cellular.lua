return {
  'eandrju/cellular-automaton.nvim',
  lazy = false,
  config = function()
    vim.keymap.set("n", "<leader>aar", function() vim.cmd("CellularAutomaton make_it_rain") end)
    vim.keymap.set("n", "<leader>aag", function() vim.cmd("CellularAutomaton game_of_life") end)
  end
}
