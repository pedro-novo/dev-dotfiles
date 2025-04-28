return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local neotree = require("neo-tree")

		neotree.setup({
			close_if_last_window = true,
		})
		vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" }) -- toggle neo-tree
		vim.keymap.set(
			"n",
			"<leader>ef",
			"<cmd>Neotree reveal toggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		) -- toggle and focus current file
		vim.keymap.set("n", "<leader>ec", "<cmd>Neotree close<CR>", { desc = "Close file explorer" }) -- close neo-tree
		vim.keymap.set("n", "<leader>er", "<cmd>Neotree refresh<CR>", { desc = "Refresh file explorer" }) -- refresh neo-tree
	end,
}
