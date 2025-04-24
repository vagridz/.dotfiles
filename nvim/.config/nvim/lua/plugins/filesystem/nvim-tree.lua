--[[

File explorer / tree

]]

--[[

Information
-----------

None

Alternatives
------------

* https://github.com/nvim-neo-tree/neo-tree.nvim

Tips
----

None

]]

-- Define Lua variables as tables
return {
	-- Plugin: nvim-tree
	{
		-- Source
		-- ******
		-- Short plugin URL: https://github.com/nvim-tree/nvim-tree.lua
		"nvim-tree/nvim-tree.lua",
		-- Directory pointing to a local plugin 
		-- dir = "", 
		-- Custom git URL where the plugin is hosted
		-- url = "",
		-- Custom name for the plugin used for the local plugin directory and as
		-- the display name
		-- name = "",
    --
		-- Loading
		-- *******
		-- Add plugin dependencies
	  -- Add plugin dependencies
		dependencies = {
			-- Icon support
			-- https://github.com/nvim-tree/nvim-web-devicons
			"nvim-tree/nvim-web-devicons",
		},
		-- When false (or if function returns false), the plugin will not be 
    -- included
		enabled = true,
		-- Only useful for starting plugins (lazy=false) to force loading certain 
    -- plugins first. Default priority is 50. 
		-- It's recommended to set this to a high number for colorschemes
		-- priority = 50,
		--
		-- Lazy Loading
		-- ************
		-- Plugin will only be loaded when needed if set to True
		lazy = true,
		-- Lazy-load this plugin on those events
		-- event = { },
		-- Lasy-load on commands
		cmd = {
			"NvimTreeFindFileToggle",
			"NvimTreeToggle",
			"NvimTreeRefresh",
		},
	  -- Lazy-load on filetype
		-- ft = {},
		-- Lazy-load on key mapping
		-- keys = {},
		--
		-- Versioning
		-- **********
		-- Branch of the repository
		-- branch = "",
		-- Tag of the repository
		-- tag = "",
		-- Version to use from the repository
		-- version = false,
		-- Not included in updates when set to true
		-- pin = false
    --
		-- Setup
		-- *****
		-- Define command to execute when this plugin is installed or updated
		-- build = ""
		-- Configuration options
		-- opts = {},
		-- Define executable (config function) that is run after the plugin is
		-- loaded to set it up according to defined perferences
		-- If opts or config = true, the default implementation will automatically
		-- run require(MAIN).setup(opts)
		config = function()
			-- Setup nvim-tree
			require("nvim-tree").setup({
        -- Change folder arrow icons
				renderer = {
					indent_markers = {
						enable = true,
					},
					icons = {
						glyphs = {
							folder = {
								-- Arrow when folder is closed
								arrow_closed = "",
								-- Arrow when folder is open
								arrow_open = "",
							},
						},
					},
				},
				-- Set view width and add relativenumbering to make navigation easier
				view = {
					width = 35,
          number = true,
					relativenumber = true,
				},
				-- Disable window_picker for
				-- explorer to work well with
				-- window splits
				actions = {
					open_file = {
						window_picker = {
							enable = false,
						},
					},
				},
				-- Show files ignore by git
				git = {
					ignore = true,
				},
			})
		end,
	},
}
