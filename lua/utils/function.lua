local M = {}

-- 获取文件名称
function M.get_filename()
	return vim.fn.expand("%:t")
end

-- 获取当前时间
function M.get_time()
	return os.date("%Y-%m-%d %H:%M")
end

return M
