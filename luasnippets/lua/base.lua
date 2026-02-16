local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

return {
    -- function
	s({ trig = "function" }, {
		t("function("),
		i(1),
		t({ ")", "", "end" }),
	}),
}
