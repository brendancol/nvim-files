vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Map 'jk' to Escape in insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true, silent = true })

-- Terminal mode mappings to exit terminal mode
vim.api.nvim_set_keymap('t', 'jk', '<C-\\><C-n>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', 'kj', '<C-\\><C-n>', {noremap = true, silent = true})

-- Autocommand to disable line numbers in terminal windows
vim.api.nvim_create_autocmd('TermOpen', {
  pattern = '*',
  command = 'setlocal nonumber norelativenumber'
})

-- Enable relative numbering
vim.o.relativenumber = true
vim.o.number = true

-- Copy with Cmd+C in visual mode
vim.o.clipboard = "unnamedplus"
vim.api.nvim_set_keymap('v', '<D-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<D-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '"+p', { noremap = true, silent = true })

