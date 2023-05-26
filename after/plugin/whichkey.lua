local wk = require("which-key")

wk.setup({})

wk.register({
    a = { "Harpoon mark file" },
    p = {
        name = "file find and paste", -- optional group name
        f = { "Find all files" },
        s = { "grep current files" },
        p = { "Paste deleted/copied text" },
    },
    f = { "Format current buffer" },
    l = {
        name = "LSP",
        d = { "Open floating diagnostic" },
        w = {
            name = "Workspace",
            s = { "Lists symbols in quickfix" },
        },
    },
}, { prefix = "<leader>" })
