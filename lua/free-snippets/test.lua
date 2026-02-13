local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

local all_snippets = {
	s({ trig = "test" }, {
		t("This is a Test -- "),
		i(0, "Test_name"),
	}),
}

ls.add_snippets("all", all_snippets)


