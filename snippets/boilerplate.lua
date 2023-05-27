local ls = require("luasnip")

local s = ls.s -- Snippet Node
local i = ls.i -- Insert Node
local t = ls.t -- Text Node

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {}

local group = vim.api.nvim_create_augroup("Lua Snippets", { clear = true })
local file_pattern = "*.lua"

-- Start Refactoring --

-- End Refactoring --

return snippets, autosnippets
