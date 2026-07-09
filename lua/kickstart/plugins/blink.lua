vim.pack.add({
    "https://github.com/Saghen/blink.cmp",
})

require("blink.cmp").setup({
	keymap = {
		preset = "default",
	},

	appearance = {
		nerd_font_variant = "mono",
	},

	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 300,
		},

		menu = {
			border = "double",
		},
	},

	signature = {
		enabled = true,
	},

	fuzzy = {
		implementation = "prefer_rust_with_warning",
	},

	sources = {
		default = {
			"lsp",
			"path",
			"snippets",
			"buffer",
		},
	}

})
