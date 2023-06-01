-- Escape
vim.keymap.set("i", "jj", "<Esc>")

-- Move selected text around in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Appends current line to the line above it
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps cursor in the middle when moving up/down page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keeps search term in the middle when moving between highlights
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- When pasting over existing text in the buffer
-- you will not lose what is in the paste register
vim.keymap.set("x", "<leader>pp", [["_dP]])

-- Same as above but for delete
vim.keymap.set("x", "<leader>pp", [["_dP]])

-- Yanks to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Formats current buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Start search and replace with the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Turns scripts like bash scripts into executables
vim.keymap.set("n", "<leader>ex", "<cmd>!chmod +x %<CR>", { silent = true })

-- Search highlights
vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>", { silent = true })

-- Vertical help search snippet
vim.keymap.set("n", "<leader>vh", ":vert h ", { silent = true })

-- Open Terminal
vim.keymap.set("n", "<leader>tn", ":terminal<CR>i")

-- Run current buffer with python in tmux horizontal split
vim.keymap.set("n", "<leader>r", ":silent !tmux split-window 'python3 %; read'<CR>", { silent = true })
