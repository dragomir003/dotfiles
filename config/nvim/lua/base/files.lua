vim.filetype.add({
	extension = {
		c = 'c',
		h = 'c',
		m = 'matlab',
		typ = 'typst',
		sh = 'bash',
	},
	filename = {
		['*'] = function (path, buf)
			local fline = vim.api.nvim_buf_get_lines(buf, 0, 1, true)[0]
			if string.find(fline, "bash") or string.find(fline, "sh") then
				return "bash"
			elseif string.find(fline, "zsh") then
				return "zsh"
			end
		end
	}
})
