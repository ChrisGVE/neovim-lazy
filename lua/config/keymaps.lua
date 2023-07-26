-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

local Util = require("lazyvim.util")

-- Registering with WhichKey
local wk = require("which-key")

wk.register({
  -- Relative numbers
  ["<leader>uR"] = { ":set relativenumber!<cr>", "Relative number toggle" },
  -- Join line
  J = { "mzJ`z", "Join line + cursor fixed" },
  -- Jump and land on middle line
  ["<C-d>"] = { "<C-d>zz", "Scroll down, middle line" },
  ["<C-u>"] = { "<C-u>zz", "Scroll up, middle line" },
  ["<C-f>"] = { "<C-f>zz", "Scroll forward, middle line" },
  ["<C-b>"] = { "<C-b>zz", "Scroll backward, middle line" },
  ["<PageUp>"] = { "<PageUp>zz", "Page up, line middle" },
  ["<PageDown>"] = { "<PageDown>zz", "Page down, line middle" },
  n = { "nzzzv", "Next, line middle" },
  N = { "Nzzzv", "Previous, line middle" },
  -- Insert blank link
  ["<S-cr>"] = { "O<esc>", "Insert blank line above" },
  ["<cr>"] = { "o<esc>", "Insert blank line below" },
  -- Remove highlights
  ["//"] = { ":noh<cr>", "Clear search results" },
  ["<leader>o"] = {
    name = "obsidian",
  },
  ["<leader>h"] = {
    name = "help",
    t = { "<cmd>Telescope help_tags<cr>", "Help tags" },
    b = { "<cmd>Telescope builtin<cr>", "Telescope buildins" },
    w = { "<cmd>WhichKey<cr>", "Show all keybindings with Which-key" },
  },
  ["<leader>f"] = {
    c = {
      function()
        require("telescope.builtin").find_files({ cwd = "~/.config" })
      end,
      "Config files",
    },
    s = {
      function()
        require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
      end,
      "Grep string",
    },
  },
  ["<leader>g"] = {
    G = {
      function()
        require("neogit").open({ kind = "split_above" })
      end,
      "Neogit (cwd)",
    },
    g = {
      function()
        require("neogit").open({ kind = "split_above", cwd = Util.get_root() })
      end,
      "Neogit (root dir)",
    },
    C = {
      function()
        require("neogit").open({ "commit" })
      end,
      "Neogit commit",
    },
  },
})

-- Normal and visual model shortcuts
wk.register({
  mode = { "n", "v" },
  ["<leader>p"] = {
    name = "ChatGPT",
  },
})

-- Visual mode simple shortcuts
wk.register({
  mode = "v",
  J = { ":m '>+1<cr>gv=gv", "Move selected block down" },
  K = { ":m '<-2<cr>gv=gv", "Move selected block up" },
})

wk.register({
  -- Markdown
  mode = { "n", "i", "v" },
  ["<leader>m"] = {
    name = "markdown",
    I = { "<Plug>(simple-todo-new-start-of-line)", "New todo (start of line)" },
    i = { "<Plug>(simple-todo-new)", "New todo" },
    o = { "<Plug>(simple-todo-below)", "New todo (below)" },
    O = { "<Plug>(simple-todo-above)", "New todo (above)" },
    s = { "<Plug>(simple-todo-switch)", "Switch todo" },
    x = { "<Plug>(simple-todo-mark-as-done)", "Mark todo as done" },
    X = { "<Plug>(simple-todo-mark-as-undone)", "Mark todo as undone" },
  },
})
