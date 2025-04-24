--[[

Syntax/parser highlighter

]]

--[[

Information
-----------

None

Alternatives
------------

* Unknown

Tips
----

None

]]

-- Define Lua variables as tables
return {
	-- Plugin: nvim-treesitter
	{
		-- Source
		-- ******
		-- Short plugin URL: https://github.com/nvim-treesitter/nvim-treesitter
		"nvim-treesitter/nvim-treesitter",
		-- Directory pointing to a local plugin 
		-- dir = "", 
		-- Custom git URL where the plugin is hosted
		-- url = "",
		-- Custom name for the plugin used for the local plugin directory and 
    -- as the display name
		-- name = "",
		--
		-- Loading
		-- *******
		-- Add plugin dependencies
		dependencies = {
      -- Syntax aware text-objects
			-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
 			"nvim-treesitter/nvim-treesitter-textobjects",
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
		event = {
			-- Open already existing file
			"BufReadPre",
			-- Open new file
			"BufNewFile",
		},
		-- Lasy-load on commands
		-- cmd = {},
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
		version = false,
		-- Not included in updates when set to true
		-- pin = false
		--
		-- Setup
		-- *****
		-- Define command to execute when this plugin is installed or updated
		build = ":TSUpdate",
		-- Configuration options
		-- opts = {},
		-- Define executable (config function) that is run after the plugin is
		-- loaded to set it up according to defined perferences
		-- If opts or config = true, the default implementation will automatically
		-- run require(MAIN).setup(opts)
		config = function()
			-- Import nvim-treesitter.configs
			local treesitter = require("nvim-treesitter.configs")
			-- Setup treesitter
			treesitter.setup({
				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = false,
				-- Automatically install missing parsers when
				-- entering buffer
				auto_install = true,
				-- Enable syntax highlighting
				highlight = {
					enable = true,
				},
				-- Enable indentation
				indent = { enable = true },
				-- Ensure these language parsers are installed
				ensure_installed = {
					"bash",
					"c",
					"cmake",
					"cpp",
					"css",
					"csv",
					"diff",
					"dockerfile",
					"gitignore",
					"go",
					"graphql",
					"helm",
					"html",
					"javascript",
					"json",
					"latex",
					"lua",
					"make",
					"markdown",
					"markdown_inline",
					"nginx",
					"python",
					"query",
					"regex",
					"rust",
					"tmux",
					"toml",
					"tsx",
					"typescript",
					"vimdoc",
					"vim",
					"xml",
					"yaml",
				},
				-- Select nodes in the syntax tree
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
			})
		end,
	},
}
