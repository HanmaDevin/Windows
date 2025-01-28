return {
	"rebelot/terminal.nvim",
	config = function()
		require("terminal").setup({
			layout = { open_cmd = "botright new" },
			cmd = { vim.o.shell },
			autoclose = false,
		})

		local term_map = require("terminal.mappings")
		vim.keymap.set(
			{ "n", "x" },
			"<leader>ts",
			term_map.operator_send,
			{ expr = true, desc = "Send text to terminal" }
		)
		vim.keymap.set("n", "<leader>to", term_map.toggle, { desc = "Toggle terminal" })
		vim.keymap.set(
			"n",
			"<leader>tO",
			term_map.toggle({ open_cmd = "enew" }),
			{ desc = "Toggle terminal in new buffer" }
		)
		vim.keymap.set("n", "<leader>tr", term_map.run, { desc = "Run terminal" })
		vim.keymap.set(
			"n",
			"<leader>tR",
			term_map.run(nil, { layout = { open_cmd = "enew" } }),
			{ desc = "Run terminal in new buffer" }
		)
		vim.keymap.set("n", "<leader>tk", term_map.kill, { desc = "Kill terminal" })
		vim.keymap.set("n", "<leader>t]", term_map.cycle_next, { desc = "Cycle to next terminal" })
		vim.keymap.set("n", "<leader>t[", term_map.cycle_prev, { desc = "Cycle to previous terminal" })
		vim.keymap.set(
			"n",
			"<leader>tl",
			term_map.move({ open_cmd = "belowright vnew" }),
			{ desc = "Move terminal below right vertical" }
		)
		vim.keymap.set(
			"n",
			"<leader>tL",
			term_map.move({ open_cmd = "botright vnew" }),
			{ desc = "Move terminal bottom right vertical" }
		)
		vim.keymap.set(
			"n",
			"<leader>th",
			term_map.move({ open_cmd = "belowright new" }),
			{ desc = "Move terminal below right" }
		)
		vim.keymap.set(
			"n",
			"<leader>tH",
			term_map.move({ open_cmd = "botright new" }),
			{ desc = "Move terminal to bottom right" }
		)
		vim.keymap.set(
			"n",
			"<leader>tf",
			term_map.move({ open_cmd = "float" }),
			{ desc = "Move terminal to floating window" }
		)
	end,
}
