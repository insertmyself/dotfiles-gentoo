return {
	"vyfor/cord.nvim",
	build = ":Cord update",
	lazy = false,
	config = function()
		require("cord").setup({
			variables = true,

			editor = {
				tooltip = "Sometimes dumb text editor",
			},

			display = {
				theme = "classic",
				swap_fields = true,
			},

			text = {
				editing = "Let him cook in ${filename}",
				file_browser = "Searching stuff in ${name}",
				docs = "Reading docs in ${name}",
				workspace = "Cooking in ${workspace}",
			},

			idle = {
				tooltip = "Doing something irl (probably)",
			},

			advanced = {
				workspace = {
					limit_to_cwd = true,
				},
			},
		})
	end,
}
