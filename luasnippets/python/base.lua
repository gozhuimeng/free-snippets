local ls = require("luasnip")
local utils = require("utils.function")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

return {
	-- 定义函数
	s({ trig = "deffunc" }, {
		t("def "),
		i(1, "func_name"),
		t("("),
		i(2, "arg"),
		t(") -> "),
		i(3, "None"),
		t({ ":", "    " }),
		i(0, "pass"),
	}),
	-- if __main__
	s({ trig = "ifmain" }, {
		t({ 'if __name__ == "__main__":', "    " }),
		i(0, "pass"),
	}),
	-- 文件头信息
	s({ trig = "header" }, {
		t({ "# -*- coding: utf-8 -*-", "# File: " }),
		f(utils.get_filename),
		t({ "", "# Created: " }),
		f(utils.get_time),
		t({ "", "# Author: " }),
		i(2, "zhuimeng"),
		t({ "", "# Descriptaion: " }),
		i(1, "Desc"),
		t({ "", "", "" }),
		i(0),
	}),
}
