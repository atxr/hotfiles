require('telescope').setup()
require("telescope").load_extension("file_browser")
require('telescope').load_extension('fzf')

-- Keymaps
local M = {}

M.find_files = function ()
  require('telescope.builtin').find_files()
end

M.find_browser = function ()
  require('telescope.builtin').find_browser()
end

M.current_buffer_fuzzy_find = function ()
  local ivy = require('telescope.themes').get_ivy()
  require('telescope.builtin').current_buffer_fuzzy_find(ivy)
end

M.git_commits = function ()
  require('telescope.builtin').git_commits()
end

M.git_status = function ()
  require('telescope.builtin').git_status()
end

M.buffers = function ()
  require('telescope.builtin').buffers()
end

return M
