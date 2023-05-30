local auto_dark_mode = require("auto-dark-mode")

auto_dark_mode.setup({
	update_interval = 1000,
	set_dark_mode = function()
		vim.api.nvim_set_option("background", "dark")
		local status, _ = pcall(vim.cmd, "colorscheme base16-atelier-cave")
		if not status then
			print("colorscheme not found.")
			return
		end
		vim.cmd("hi Normal guibg=#191919")
		vim.cmd("hi NormalNC guibg=#191919")
		vim.cmd("hi LineNr guibg=#191919")
		vim.cmd("hi SignColumn guibg=#191919")
		vim.cmd("hi FoldColumn guibg=#191919")
		vim.cmd("hi StatusLine guifg=#303030 guibg=#707070")
		vim.cmd("hi StatusLineNC guifg=#202020 guibg=#707070")
		vim.cmd("hi VertSplit guibg=#202020 guifg=#202020")
		vim.cmd("hi TelescopeBorder guibg=#202020 guifg=#aaaaaa")
		vim.cmd("hi TelescopePromptBorder guibg=#202020 guifg=#aaaaaa")
		vim.cmd("hi TelescopePromptNormal guibg=#202020 guifg=aaaaaa")
		vim.cmd("hi TelescopePreviewTitle guibg=#202020 guifg=#aaaaaa")
		vim.cmd("hi TelescopePromptTitle guibg=#202020 guifg=#aaaaaa")
		vim.cmd("hi TelescopeResultsTitle guibg=#202020 guifg=#aaaaaa")
		vim.cmd("hi TelescopeResultsNormal guibg=#202020")
		vim.cmd("hi TelescopePreviewNormal guibg=#202020")
	end,
	set_light_mode = function()
		vim.api.nvim_set_option("background", "light")
		local status, _ = pcall(vim.cmd, "colorscheme base16-atelier-cave-light")
		if not status then
			print("colorscheme not found.")
			return
		end
		vim.cmd("hi Normal guibg=#ffffff")
		vim.cmd("hi NormalNC guibg=#ffffff")
		vim.cmd("hi LineNr guibg=#ffffff")
		vim.cmd("hi SignColumn guibg=#ffffff")
		vim.cmd("hi FoldColumn guibg=#ffffff")
		vim.cmd("hi StatusLine guifg=#d5d5d5 guibg=#303030")
		vim.cmd("hi StatusLineNC guifg=#eeeeee guibg=#303030")
		vim.cmd("hi VertSplit guibg=#eeeeee guifg=#eeeeee")
		vim.cmd("hi TelescopeBorder guibg=#eeeeee guifg=#404040")
		vim.cmd("hi TelescopePromptBorder guibg=#eeeeee guifg=#404040")
		vim.cmd("hi TelescopePromptNormal guibg=#eeeeee guifg=404040")
		vim.cmd("hi TelescopePromptPrefix guibg=red guifg=blue")
		vim.cmd("hi TelescopePreviewTitle guibg=#eeeeee guifg=#404040")
		vim.cmd("hi TelescopePromptTitle guibg=#eeeeee guifg=#404040")
		vim.cmd("hi TelescopeResultsTitle guibg=#eeeeee guifg=#404040")
		vim.cmd("hi TelescopeResultsNormal guibg=#eeeeee")
		vim.cmd("hi TelescopePreviewNormal guibg=#eeeeee")
		vim.cmd("hi TelescopeSelection guibg=#bbbbbb")
		vim.cmd("hi DiffAdd guibg=#ffffff")
		vim.cmd("hi DiffChange guibg=#ffffff")
		vim.cmd("hi DiffDelete guibg=#ffffff")
		vim.cmd("hi DiffText guibg=#ffffff")
	end,
})
auto_dark_mode.init()

-- local TelescopeColor = {
--   TelescopeBorder = {
--     guibg = '#000000',
--     guifg = '#000000',
--   },
--
--   TelescopePromptBorder = {
--     fg = '#000000',
--     bg = '#000000',
--   },
--
--   TelescopePromptNormal = {
--     fg = '#000000',
--     bg = '#000000',
--   },
--
--   TelescopePromptPrefix = {
--     fg = '#000000',
--     bg = '#000000',
--   },
--
--   TelescopeNormal = { bg = '#000000' },
--
--   TelescopePreviewTitle = {
--     fg = '#000000',
--     bg = '#000000',
--   },
--
--   TelescopePromptTitle = {
--     fg = '#000000',
--     bg = '#000000',
--   },
--
--   TelescopeResultsTitle = {
--     fg = '#000000',
--     bg = '#000000',
--   },
--
--   TelescopeSelection = {
--     fg = '#000000',
--     bg = '#000000',
--   },
--
--   TelescopeResultsDiffAdd = {
--     fg = '#000000',
--   },
--
--   TelescopeResultsDiffChange = {
--     fg = '#000000',
--   },
--
--   TelescopeResultsDiffDelete = {
--     fg = '#000000',
--   },
-- }
--
-- for hl, col in pairs (TelescopeColor) do
--   vim.api.nvim_set_hl(0, hl, col)
-- end
