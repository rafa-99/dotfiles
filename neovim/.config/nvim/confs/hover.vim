lua<<EOF
require("hover").setup {
	init = function()
	-- Require providers
	require("hover.providers.lsp")
	end,
	preview_opts = {
		border = {
			{"╭", "FloatBorder"},
			{"─", "FloatBorder"},
			{"╮", "FloatBorder"},
			{"│", "FloatBorder"},
			{"╯", "FloatBorder"},
			{"─", "FloatBorder"},
			{"╰", "FloatBorder"},
			{"│", "FloatBorder"},
		}
		},

	-- Whether the contents of a currently open hover window should be moved
	-- to a :h preview-window when pressing the hover keymap.
	preview_window = true,
	title = false
}
EOF
