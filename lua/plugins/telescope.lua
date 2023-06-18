return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
    },
  },
  {
    "nvim-telescope/telescope-github.nvim",
    config = function()
      require("telescope").load_extension("gh")
    end,
    keys = {
      {
        "<leader>gi",
        function()
          require("telescope").extensions.gh.issue()
        end,
        desc = "issues",
      },
      {
        "<leader>gp",
        function()
          require("telescope").extensions.gh.pull_request()
        end,
        desc = "pull requests",
      },
      {
        "<leader>gt",
        function()
          require("telescope").extensions.gh.gist()
        end,
        desc = "gist",
      },
      {
        "<leader>gr",
        function()
          require("telescope").extensions.gh.run()
        end,
        desc = "run",
      },
    },
  },
  {
    "nvim-telescope/telescope-symbols.nvim",
    keys = {
      {
        "<leader>fS",
        function()
          require("telescope.builtin").symbols({ sources = { "emoji", "kaomoji", "gitmoji" } })
        end,
        desc = "Symbols",
      },
    },
  },
}
