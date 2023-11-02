lua << EOF
-- Set up nvim-cmp.
local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol_text',
			preset = 'codicons',
			maxwidth = 50,
			ellipsis_char = '...',
			before = function (_, vim_item)
					return vim_item
				end
		})
	},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
		end,
	},

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},

	mapping = cmp.mapping.preset.insert({
	['<C-b>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-Space>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.abort(),
	['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	["<Tab>"] = cmp.mapping(function(fallback)
	if cmp.visible() then
		cmp.select_next_item()
	else
		fallback()
		end
		end, { "i", "s" }),
	["<S-Tab>"] = cmp.mapping(function(fallback)
	if cmp.visible() then
		cmp.select_prev_item()
	else
		fallback()
		end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
	{ name = 'luasnip' },
	{ name = 'nvim_lsp' }
	})
})

-- Set up lspconfig.
require("mason").setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local masonlsp = require("mason-lspconfig")

masonlsp.setup {
	ensure_installed = {
		-- https://github.com/williamboman/mason-lspconfig.nvim - Server List
		'clangd',
		'gopls',
		'tsserver',
		'cssls',
		'html',
		'pyright'
		},
	automatic_installation = true,
	handlers =  {
		function (server_name)
			require("lspconfig")[server_name].setup {
				capabilities = capabilities
			}
			end

			-- Next, you can provide a dedicated handler for specific servers.
			-- For example, a handler override for the `rust_analyzer`:
			-- ["rust_analyzer"] = function ()
			--     require("rust-tools").setup {}
			-- end
	}
	}
EOF
