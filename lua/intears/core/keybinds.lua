vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("i", "jk", "<esc>") -- back to normal mode

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search highlights
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "x", "_x") -- delete a char but do not save to register
keymap.set("n", "<C-w>", ":w<CR>") -- write file

keymap.set("n", "<leader>+", "<C-a>") -- intrement number 1 -> 2
keymap.set("n", "<leader>-", "<c-X>") -- decrement number 2 <- 1

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>t", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>x", ":tabclose<CR>") -- close current tab
keymap.set("n", "<Tab>", ":tabn<CR>") --  go to next tab
keymap.set("n", "<S-Tab>", ":tabp<CR>") --  go to previous tab

-- plugin keymaps

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
