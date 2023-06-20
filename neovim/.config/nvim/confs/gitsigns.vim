lua << EOF
require('gitsigns').setup {
	signs = {
		add          = { text = '+' },
		change       = { text = '~' },
		delete       = { text = '-' },
		topdelete    = { text = '-' },
		changedelete = { text = '~-' },
		untracked    = { text = '┆' },
	},
	current_line_blame = true,
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
		delay = 10,
		ignore_whitespace = false,
	}
}
EOF
