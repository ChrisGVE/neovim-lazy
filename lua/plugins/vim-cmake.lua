return {
  "cdelledonne/vim-cmake",
  config = function()
    vim.g.cmake_link_compile_commands = true
  end,
  keys = {
    {
      "<leader>cM",
      "<cmd>CMakeOpen<cr>",
      desc = "Open CMake console window",
    },
  },
}
