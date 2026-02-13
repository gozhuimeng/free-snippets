local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function get_filename()
	return vim.fn.expand("%:t")
end

local function get_time()
	return os.date("%Y-%m-%d %H:%M")
end

local python_snippets = {
	s({ trig = "\\header" }, {
		t({ "# -*- coding: utf-8 -*-", "# File: " }),
		f(get_filename),
		t({ "", "# Created: " }),
		f(get_time),
		t({ "", "# Author: " }),
		i(2, "Zhuimeng"),
		t({ "", "# Descriptaion: " }),
		i(1, "文件说明"),
	}),
}

ls.add_snippets("python", python_snippets)
