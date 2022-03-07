lua << EOF
	require('lualine').setup
	{
		options =
		{
			section_separators = { left = '', right = '' },
			component_separators = { left = '', right = '' },
			theme = 'pywal'
		}
	}
EOF
