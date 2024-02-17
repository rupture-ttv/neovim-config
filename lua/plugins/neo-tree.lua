return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		keys = {
			{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
			{
				"<leader>be",
				function()
					require("neo-tree.command").execute({ source = "buffers", toggle = true })
				end,
				desc = "Buffer explorer",
			},
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
				popup_border_style = "rounded",
				enable_git_status = true,
				enable_diagnostics = true,
				enable_normal_mode_for_inputs = false, -- Enable normal mode for input dialogs.
				open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
				sort_case_insensitive = false, -- used when sorting files and directories in the tree
				sort_function = nil, -- use a custom function for sorting files and directories in the tree
				-- sort_function = function (a,b)
				--       if a.type == b.type then
				--           return a.path > b.path
				--       else
				--           return a.type > b.type
				--       end
				--   end , -- this sorts files and directories descendantly
				default_component_configs = {
					container = {
						enable_character_fade = true,
					},
					indent = {
						indent_size = 2,
						padding = 1, -- extra padding on left hand side
						-- indent guides
						with_markers = true,
						indent_marker = "│",
						last_indent_marker = "└",
						highlight = "NeoTreeIndentMarker",
						-- expander config, needed for nesting files
						with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
						expander_collapsed = "",
						expander_expanded = "",
						expander_highlight = "NeoTreeExpander",
					},
					git_status = {
						symbols = {
							-- Change type
							added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
							modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
							deleted = "✖", -- this can only be used in the git_status source
							renamed = "󰁕", -- this can only be used in the git_status source
							-- Status type
							untracked = "",
							ignored = "",
							unstaged = "󰄱",
							staged = "",
							conflict = "",
						},
					},
				},
				filesystem = {
					bind_to_cwd = false,
					follow_current_file = { enabled = true },
					use_libuv_file_watcher = true,
				},
			})
		end,
	},
}
