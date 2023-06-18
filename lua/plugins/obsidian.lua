return {
  "epwalsh/obsidian.nvim",
  keys = {
    { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "New obsidian note" },
    { "<leader>of", "<cmd>ObsidianFollowLink<cr>", desc = "Follow link under the cursor" },
    { "<leader>oL", "<cmd>ObsidianLinkNew<cr>", desc = "Create a new note and link it" },
    { "<leader>ol", "<cmd>ObsidianLink<cr>", desc = "Link" },
    { "<leader>os", "<cmd>ObsidianSearch<cr>", desc = "Search in vault" },
    { "<leader>oo", "<cmd>ObsidianOpen<cr>", desc = "Open a note in Obsidian app" },
    { "<leader>oy", "<cmd>ObsidianYesterday<cr>", desc = "Open/create daily note for previous day" },
    { "<leader>ot", "<cmd>ObsidianToday<cr>", desc = "Open/create daily note for today" },
    { "<leader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "List of backlinks for current buffer" },
  },
  config = function()
    require("obsidian").setup({
      dir = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Chris' brain",
      completion = {
        nvim_cmp = true,
      },
      notes_subdir = "notes",
      daily_notes = {
        folder = "notes/dailies",
      },
      use_advanced_uri = true,

      note_frontmatter_func = function(note)
        -- local out = { id = note.id, aliases = note.aliases, tags = note.tags, }
        local out = { tags = note.tags }
        -- `note.metadata` contains any manually added fields in the frontmatter.
        -- So here we just make sure those fields are kept in the frontmatter.
        if note.metadata ~= nil and util.table_length(note.metadata) > 0 then
          for k, v in pairs(note.metadata) do
            out[k] = v
          end
        end
        return out
      end,

      note_id_func = function(title)
        -- Create note IDs in a Zettelkasten format with a timestampe and a suffix
        local suffix = ""
        if title ~= nil then
          -- If title is given, transform it into valid file name.
          suffix = title.gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        else
          -- If title is nil, just add 4 random uppercase letters to the suffix.
          for _ = 1, 4 do
            suffix = suffix .. string.char(math.random(65, 90))
          end
        end
        return tostring(os.time()) .. "-" .. suffix
      end,
    })
  end,
}
