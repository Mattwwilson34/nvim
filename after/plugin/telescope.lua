local builtin = require("telescope.builtin")

-- Looks at all files
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})

vim.keymap.set("n", "<leader>pr", ":Telescope oldfiles<CR>", { silent = true })

-- Only looks at current git tracked files
vim.keymap.set("n", "<leader>pg", builtin.git_files, {})

-- Greps current file
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set("n", "<leader>pk", ":Telescope keymaps<CR>", {silent = true})

