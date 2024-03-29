local keymap = vim.keymap

-- Reload config
keymap.set('n', '<F4>', ':lua package.loaded.atxr = nil\n:source ~/.config/nvim/init.vim\n')

-- Disable yank with x
keymap.set('n', 'x', '"_x')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>')

-- Close window
keymap.set('n', 'sc', '<C-w>q')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', 's<left>', '<C-w><')
keymap.set('n', 's<right>', '<C-w>>')
keymap.set('n', 's<up>', '<C-w>+')
keymap.set('n', 's<down>', '<C-w>-')
