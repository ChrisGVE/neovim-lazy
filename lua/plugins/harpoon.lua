return {
  "theprimeagen/harpoon",
  keys = {
    {
      "<C-t>",
      function()
        require("harpoon.ui").nav_file(1)
      end,
      desc = "Nav to harpoon file 1",
    },
    {
      "<C-y>",
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "Nav to harppon file 2",
    },
    {
      "<C-n>",
      function()
        require("harpoon.ui").nav_file(3)
      end,
      desc = "Nav to harpoon file 3",
    },
    {
      "<leader>a",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Add file to harpoon",
    },
    {
      "<C-e>",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Harpoon quick menu",
    },
  },
}
