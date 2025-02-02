
require("codecompanion").setup({
	display = {
		action_palette = {
			width = 95,
			height = 10,
			prompt = "Prompt ", -- Prompt used for interactive LLM calls
			provider = "telescope", -- default|telescope|mini_pick
			opts = {
				show_default_actions = true,
				show_default_prompt_library = true,
			},
		},
		chat = {
			window = { position = 'right' }
		},
	},
	adapters = {
		deepseek_r1 = function()
			return require("codecompanion.adapters").extend("ollama", {
				name = "deepseek-r1",
				schema = {
					model = {
						default = "deepseek-r1:8b",
					},
					num_ctx = {
						default = 16384,
					},
					num_predict = {
						default = -1,
					},
				},
			})
		end,
	},
	strategies = {
		-- Change the default chat adapter
		chat = {
			adapter = "deepseek_r1",
			slash_commands = {
				["file"] = {
					callback = "strategies.chat.slash_commands.file",
					description = "Select a file using Telescope",
					opts = {
						provider = "telescope", -- Other options include 'default', 'mini_pick', 'fzf_lua', snacks
						contains_code = true,
					},
				},
			},
		},
		inline = {
			adapter = "deepseek_r1",
			keymaps = {
				accept_change = {
					modes = { n = "ga" },
					description = "Accept the suggested change",
				},
				reject_change = {
					modes = { n = "gr" },
					description = "Reject the suggested change",
				},
			},
		},
	},
})
