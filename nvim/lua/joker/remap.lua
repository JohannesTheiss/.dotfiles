vim.g.mapleader = ","

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>,", vim.cmd.write)

-- Command-mode :w == :W
vim.cmd([[command! W w]])

-- Move a selected block of code with "J" and "K"
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Split window
vim.keymap.set('n', 'ss', ':split<CR><C-j>', { noremap=true })
vim.keymap.set('n', 'sv', ':vsplit<CR><C-l>', { noremap=true })

-- Map <C-w> to quit window
vim.keymap.set('n', '<C-w>', ':wincmd q<CR>', {noremap = true})

-- Navigate within the split windows in vim-style
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap=true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap=true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap=true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap=true })

-- Navigate within tabs 
vim.keymap.set('n', '<S-Tab>', ':tabnext<CR>', { noremap=true })
vim.keymap.set('n', '<C-t>', ':tabnew<CR>', { noremap=true })

-- Resize a window with arrow keys
vim.keymap.set('n', '<Right>', ':vertical resize +5<CR>', {noremap = true})
vim.keymap.set('n', '<Left>', ':vertical resize -5<CR>', {noremap = true})
vim.keymap.set('n', '<Up>', ':3winc +<CR>', {noremap = true})
vim.keymap.set('n', '<Down>', ':3winc -<CR>', {noremap = true})


-- Disable ex mode
-- vim.api.nvim_set_keymap('n', 'Q', '<Nop>', { noremap=true })

-- Fix SQL completion
-- vim.g.ftplugin_sql_omni_key = '<C-j>'

-- Disable perl provider
-- vim.g.loaded_perl_provider = 0

-- Nvim-tree remaps
vim.keymap.set('n', '<Space>e', ':NvimTreeToggle<CR>')

