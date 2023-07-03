return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "stylua",
      "shellcheck",
      "flake8",
      "pyright",
      "python-lsp-server",
      "debugpy",
      "autoflake",
      "autopep8",
      "rust-analyzer",
      "rustfmt",
      "lua-language-server",
      "json-lsp",
      "clangd",
      "codelldb",
      "cpptools",
      "cpplint",
      "clang-format",
    })
  end,
}
