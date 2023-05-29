local ls = require("luasnip")

require("luasnip.loaders.from_lua").lazy_load({
	paths = { "~/.config/nvim/snippets" },
})

-- Virtual Text
ls.config.set_config({
	history = true, --keep around last snippet local to jump back
	updateevents = "TextChanged,TextChangedI", --update changes as you type
	enable_autosnippets = true,
})

local opts = { noremap = true, silent = true }

vim.keymap.set("i", "<c-J>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("s", "<c-J>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("i", "<c-K>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
vim.keymap.set("s", "<c-K>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
