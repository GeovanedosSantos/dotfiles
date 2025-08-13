require("config.lazy")
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 10
vim.opt.history = 1000
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keymaps 
vim.keymap.set("n","<leader>e", ":Ex<CR>", { noremap = true })
vim.keymap.set("x", "<leader>c" , ':! tr -s " " | column -t -s "|" -o "|"<CR>', { noremap = true })
