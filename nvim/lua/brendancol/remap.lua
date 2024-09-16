vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Map 'jk' to Escape in insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true, silent = true })

-- Enable relative numbering
vim.o.relativenumber = true
vim.o.number = true

-- Copy with Cmd+C in visual mode
vim.o.clipboard = "unnamedplus"
vim.api.nvim_set_keymap('v', '<D-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<D-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '"+p', { noremap = true, silent = true })

