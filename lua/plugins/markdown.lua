return {
  {
    "ellisonleao/glow.nvim",
    keys = {
      {
        "<leader>mv",
        "<cmd>Glow<cr>",
        desc = "View markdown",
      },
    },
    config = function()
      require("glow").setup({
        border = "shadow",
        style = "dark",
        width = 160,
        pager = false,
        width_ratio = 0.8,
        height_ratio = 0.8,
      })
    end,
  },
  {
    "vitalk/vim-simple-todo",
  },
  {
    "dhruvasagar/vim-table-mode",
    keys = {
      {
        "<leader>mT",
        "<cmd>Tableize<cr>",
        desc = "Format a table",
      },
    },
  },
}
