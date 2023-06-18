return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "jcdickinson/codeium.nvim",
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" }, { name = "codeium" } }))
      -- opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
    end,
  },
}
