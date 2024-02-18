-- Trouble
vim.keymap.set("n", "<leader>xx", function()
	require("trouble").toggle()
end)
vim.keymap.set("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end)
vim.keymap.set("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end)
vim.keymap.set("n", "<leader>xq", function()
	require("trouble").toggle("quickfix")
end)
vim.keymap.set("n", "<leader>xl", function()
	require("trouble").toggle("loclist")
end)
vim.keymap.set("n", "gR", function()
	require("trouble").toggle("lsp_references")
end)

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
vim.keymap.set("n", "<leader>,", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", {})
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "Document diagnostics" })
vim.keymap.set("n", "<leader>fD", "<cmd>Telescope diagnostics<cr>", { desc = "Workspace diagnostics" })
vim.keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Key Maps" })
vim.keymap.set("n", "<leader>fs", function()
	require("telescope.builtin").lsp_document_symbols({
		symbols = require("lazyvim.config").get_kind_filter(),
	})
end, { desc = "Goto Symbol" })
vim.keymap.set("n", "<leader>fS", function()
	require("telescope.builtin").lsp_dynamic_workspace_symbols({
		symbols = require("lazyvim.config").get_kind_filter(),
	})
end, { desc = "Goto Symbol (Workspace)" })
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Goto Definition" })
vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", { desc = "Goto Implementation" })
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "Goto References" })
