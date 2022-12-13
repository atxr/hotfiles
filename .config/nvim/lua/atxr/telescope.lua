require('telescope').setup{
  defaults = {
      prompt_prefix = "> ",
      selection_caret = "> ",
      entry_prefix = "  ",
      multi_icon = "<>",
  }
}

require("telescope").load_extension("file_browser")
require('telescope').load_extension('fzf')


-- Keymaps

-- Files
vim.api.nvim_set_keymap(
  "n",
  "<space>ff",
  ":Telescope find_files\n",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<space>fg",
  ":Telescope live_grep\n",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<space>fe",
  ":Telescope file_browser\n",
  { noremap = true }
)

-- Git
vim.api.nvim_set_keymap(
  "n",
  "<space>gc",
  ":Telescope git_commits\n",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<space>gs",
  ":Telescope git_status\n",
  { noremap = true }
)

-- nvim
vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope buffers\n",
  { noremap = true }
)
