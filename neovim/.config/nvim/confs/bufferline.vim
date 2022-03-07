lua << EOF
	require("bufferline").setup
	{
		options =
		{
			separator_style = "thick",
			always_show_bufferline = false,
			show_close_icon = false,
			diagnostics = "nvim_lsp",
	      		indicator_icon = "",

			offsets =
			{
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "center"
				}
			},

			diagnostics_indicator = function(count, level, diagnostics_dict, context)
							local icon = level:match("error") and " " or " "
							return " " .. icon .. count
						end
		},
	}
EOF

nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>
