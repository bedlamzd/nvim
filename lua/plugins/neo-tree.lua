return {
	"nvim-neo-tree/neo-tree.nvim",
	init = function() vim.g.neo_tree_remove_legacy_commands = 1 end,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	version = "^2",
	opts = {
		window = {
			mappings = { ["<space>"] = false }
		}
	},
    keys = {
        { "<leader>e", "<cmd>Neotree toggle<cr>", desc="Toggle Neotree"},
        { "<leader>o", "<cmd>Neotree focus<cr>", desc="Focus Neotree"},
    }

}
