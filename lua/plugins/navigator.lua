return {
	"ray-x/navigator.lua",
	dependencies = {
		{ "ray-x/guihua.lua", build = "cd lua/fzy && make", },
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		mason = true,
	},
}
