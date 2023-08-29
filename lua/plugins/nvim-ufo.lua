return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",

  config = function()
    vim.o.foldcolumn = "1"
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- Using ufo provider need remap 'zR' and 'zM'
    vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
    vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
    vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds, { desc = "Open folds expect kinds" })
    vim.keymap.set("n", "zm", require("ufo").closeFoldsWith, { desc = "Close fold more" })

    -- local capabilities = vim.lsp.protocol.make_client_capabilities()
    -- capabilities.textDocument.foldingRange = {
    --   dynamicRegistration = false,
    --   lineFoldingOnly = true,
    -- }
    -- local language_servers = require("lspconfig").util.available_servers()
    -- for _, ls in ipairs(language_servers) do
    --   require("lspconfig")[ls].setup({
    --     capabilities = capabilities,
    --   })
    -- end
    -- require("ufo").setup()

    require("ufo").setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    })
  end,
}
