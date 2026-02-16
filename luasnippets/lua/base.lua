local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

return {
	-- function
	s({ trig = "function" }, {
		t("function "),
		i(1, "func_name"),
		t("("),
		i(2),
		t({ ")", "" }),
		i(0),
		t({ "", "end" }),
	}),
}
