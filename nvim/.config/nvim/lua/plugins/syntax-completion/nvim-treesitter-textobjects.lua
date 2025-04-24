--[[

Syntax aware text objects

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
	-- Plugin: nvim-treesitter-textobjects
	{
		-- Source
		-- ******
		-- Short plugin URL: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
 		"nvim-treesitter/nvim-treesitter-textobjects",
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
		-- dependencies = {},
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
		-- event = {},
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
			-- Import nvim-treesitter.configs
			local treesitter = require("nvim-treesitter.configs")
			-- Setup treesitter
			treesitter.setup({
        textobjects = {
          -- Select text objects
          select = {
            enable = true,
            -- Find the next closest text object when keymap executing 
            -- similar to targets.vim
            lookahead = true,
            keymaps = {
              -- Use the capture groups defined in textobjects.scm
              -- Assignments
              ["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
              ["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
              ["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
              ["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },
              -- Parameters
              ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
              ["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },
              -- Conditionals
              ["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
              ["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },
              -- Loops
              ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
              ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },
              -- Calls
              ["af"] = { query = "@call.outer", desc = "Select outer part of a function call" },
              ["if"] = { query = "@call.inner", desc = "Select inner part of a function call" },
              -- Functions
              ["am"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
              ["im"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },
              -- Classes
              ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
              ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
            },
          },
          -- Swap text objects
          swap = {
            enable = true,
            swap_next = {
              -- Swap parameters/argument with next
              ["<leader>na"] = "@parameter.inner", 
              -- Swap function with next
              ["<leader>nm"] = "@function.outer", 
            },
            swap_previous = {
              -- Swap parameters/argument with prev
              ["<leader>pa"] = "@parameter.inner", 
              -- Swap function with previous
              ["<leader>pm"] = "@function.outer", 
            },
          },
          -- Move text objects
          move = {
            enable = true,
            -- Whether to set jumps in the jumplist
            set_jumps = true, 
            goto_next_start = {
              ["]f"] = { query = "@call.outer", desc = "Next function call start" },
              ["]m"] = { query = "@function.outer", desc = "Next method/function def start" },
              ["]c"] = { query = "@class.outer", desc = "Next class start" },
              ["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
              ["]l"] = { query = "@loop.outer", desc = "Next loop start" },

              -- Query group ca be pass to use query from
              -- `queries/<lang>/<query_group>.scm file in the runtime path.
              -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. 
              -- They also provide highlights.scm and indent.scm.
              ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
              ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
            },
            goto_next_end = {
              ["]F"] = { query = "@call.outer", desc = "Next function call end" },
              ["]M"] = { query = "@function.outer", desc = "Next method/function def end" },
              ["]C"] = { query = "@class.outer", desc = "Next class end" },
              ["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
              ["]L"] = { query = "@loop.outer", desc = "Next loop end" },
            },
            goto_previous_start = {
              ["[f"] = { query = "@call.outer", desc = "Prev function call start" },
              ["[m"] = { query = "@function.outer", desc = "Prev method/function def start" },
              ["[c"] = { query = "@class.outer", desc = "Prev class start" },
              ["[i"] = { query = "@conditional.outer", desc = "Prev conditional start" },
              ["[l"] = { query = "@loop.outer", desc = "Prev loop start" },
            },
            goto_previous_end = {
              ["[F"] = { query = "@call.outer", desc = "Prev function call end" },
              ["[M"] = { query = "@function.outer", desc = "Prev method/function def end" },
              ["[C"] = { query = "@class.outer", desc = "Prev class end" },
              ["[I"] = { query = "@conditional.outer", desc = "Prev conditional end" },
              ["[L"] = { query = "@loop.outer", desc = "Prev loop end" },
            },
          },
        },
      })
    end,
  },
}
