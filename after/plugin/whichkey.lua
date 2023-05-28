local wk = require("which-key")

wk.setup({})

wk.register({
	a = "Harpoon mark file",
	e = "Open file tree",
	f = "Format buffer",
	g = {
		name = "Git / Neogen",
		{
			s = "Toggle Git fugitive",
			d = "Neogen Documentation",
            l = "Lazy Git"
		},
	},
	l = {
		name = "LSP",
		c = {
			name = "Code Actions",
			a = " Code Action",
		},
		d = { "Open floating diagnostic" },
		r = {
			name = "References",
			r = "References",
			n = "Rename all references under cursor",
		},
		w = {
			name = "Workspace",
			s = { "Lists symbols in quickfix" },
		},
	},
	h = {
		name = "Color Highlight",
		h = "Highlight colors",
		c = "Cancel color highlight",
	},
	n = {
		name = "Text highlight",
		h = "Cancel text highlight",
	},
	p = {
		name = "file find and paste", -- optional group name
		f = { "Find all files" },
		s = { "grep current files" },
		p = { "Paste deleted/copied text" },
	},
	s = "Search and replace under cursor",
	u = "Toggle undo tree",
	x = "Trouble",
	v = {
		name = "Vertical help",
		h = "Vertical help",
	},
	y = "Yank selection to system clipboard",
	Y = "Yank line to system clipboard",
}, { prefix = "<leader>" })
