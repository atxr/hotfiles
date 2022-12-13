if not pcall(require, "telescope") then
  return
end

TelescopeMapArgs = TelescopeMapArgs or {}

local map_tele = function(key, f, options, buffer)
  local map_key = vim.api.nvim_replace_termcodes(key .. f, true, true, true)

  TelescopeMapArgs[map_key] = options or {}

  local mode = "n"
  local rhs = string.format("<cmd>lua require('atxr.telescope')['%s'](TelescopeMapArgs['%s'])<CR>", f, map_key)

  local map_options = {
    noremap = true,
    silent = true,
  }

  if not buffer then
    vim.api.nvim_set_keymap(mode, key, rhs, map_options)
  else
    vim.api.nvim_buf_set_keymap(0, mode, key, rhs, map_options)
  end
end

-- Files
map_tele("<space>ff", "find_files")
map_tele("<space>f/", "current_buffer_fuzzy_find")
map_tele("<space>fe", "file_browser")

-- Git
map_tele("<space>gc", "git_commits")
map_tele("<space>gs", "git_status")

-- nvim
map_tele("<space>fb", "buffers")

return map_tele
