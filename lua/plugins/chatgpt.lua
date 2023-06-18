return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("chatgpt").setup({
      api_key_cmd = "op read 'op://personal/OpenAI/api key' --no-newline",
    })
  end,
  keys = {
    {
      "<leader>pe",
      function()
        require("chatgpt").edit_with_instructions()
      end,
      desc = "Edit with instructions",
      mode = "v",
    },
    {
      "<leader>pc",
      "<cmd>ChatGPT<cr>",
      desc = "Enter chat mode",
    },
  },
}
