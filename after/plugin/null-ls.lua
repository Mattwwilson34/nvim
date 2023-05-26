local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion

null_ls.setup({
    sources = {

        -- FORMATTING
        -- Lua
        formatting.stylua,

        -- Python
        formatting.black,
        formatting.isort,

        -- Markdown
        formatting.markdownlint,

        -- Typescipt, JavaScript, HTML, CSS, JSON
        formatting.prettierd,

        -- Ruby
        formatting.rubocop,


        -- DIAGNOSTICS
        -- Typescipt, JavaScript, HTML, CSS, JSON
        diagnostics.eslint,

        -- Python
        diagnostics.flake8,

        -- Ruby
        diagnostics.rubocop,

        -- Markdown
        diagnostics.markdownlint,

        -- Yaml
        diagnostics.yamllint,

        -- Shell
        diagnostics.shellcheck,

        -- Completion
        completion.spell,
    },
})
