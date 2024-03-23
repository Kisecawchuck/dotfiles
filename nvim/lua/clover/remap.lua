-- Set leader
vim.g.mapleader = " "

-- Explorer
vim.keymap.set("n", "<leader>rn", vim.cmd.Ex)

-- Split Window
vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Tab Management
vim.keymap.set("n", "<C-t>", ":tabnew<Return>")
vim.keymap.set("n", "gn", "gt")
vim.keymap.set("n", "gp", "g<S-t>")

-- Move Window
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sl", "<C-w>l")

-- Move lines
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Yank system wide
vim.keymap.set("v", "<leader>y", '"+y')
