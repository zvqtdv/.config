
--return{
  --{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

--}

return {
	'akinsho/bufferline.nvim',
	-- dependencies = 'nvim-tree/nvim-web-devicons',
	opts = {
		options = {
			mode = "tabs",

			-- diagnostics = "nvim_lsp",
			-- diagnostics_indicator = function(count, level, diagnostics_dict, context)
			-- 	local icon = level:match("error") and " " or " "
			-- 	return " " .. icon .. count
			-- end,
			-- indicator = {
			-- 	icon = '▎', -- this should be omitted if indicator style is not 'icon'
			-- 	-- style = 'icon' | 'underline' | 'none',
			--
			-- 	style = "icon",
			--
			-- },
			show_buffer_close_icons = false,
			show_close_icon = false,
			enforce_regular_tabs = true,
			show_duplicate_prefix = false,
			tab_size = 16,
			padding = 0,
			separator_style = "thick",
		}
	}
}


--vim.opt.termguicolors = true
--require("bufferline").setup{}
--require("bufferline").setup {
--    options = {
--        -- 使用 nvim 内置lsp
--        diagnostics = "nvim_lsp",
--        -- 左侧让出 nvim-tree 的位置
--        offsets = {{
--            filetype = "NvimTree",
--            text = "File Explorer",
--            highlight = "Directory",
--            text_align = "left"
--        }}
--    }
--}
