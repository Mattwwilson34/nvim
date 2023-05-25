-- NetRW
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Same as above but for delete
vim.keymap.set("x", "<leader>p", [["_dP]])


-- Yanks to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Formats current buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Start search and replace with the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Turns scripts like bash scripts into executables
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
