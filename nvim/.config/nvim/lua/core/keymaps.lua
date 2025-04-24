--[[

Neovim key maps

]]

--[[

Information
-----------

The syntax to add a key map is

vim.keymap.set(mode, map, action, options)

with for example:

  * mode = "n" (normal mode)
  * map = "<C-L>" (ctrl-L)
  * action = ":nohl<CR>"
  * options = { desc = "Clear search highlight" }

Alternatives
------------

* Unknown

Tips
----

None

]]

-- Define a local variable set, for vim.keymap.set, which acts like the map
-- command in vimscript
local set = vim.keymap.set

-- Define a local variable opts, for preventing recursive maps (noremap = true)
-- and output messages from commands (silent = true)
local opts = {
	-- Ensure the mapping is non-recursive
	noremap = true,
	-- Suppress output messages from the command
	silent = true,
}

--[[ File system manager (nvim-tree plugin) ]]

opts.desc = "[E]xplore [C]ollapse"
set("n", "<leader>ec", "<CMD>NvimTreeCollapse<CR>", opts)

opts.desc = "[E]xplore [F]ile"
set("n", "<leader>ef", "<CMD>NvimTreeFindFileToggle<CR>", opts)

opts.desc = "[E]xplore [P]roject"
set("n", "<leader>ep", "<CMD>NvimTreeToggle<CR>", opts)

opts.desc = "[E]xplore [R]efresh"
set("n", "<leader>er", "<CMD>NvimTreeRefresh<CR>", opts)

opts.desc = "[E]xplore e[X]it"
set("n", "<leader>ex", "<CMD>NvimTreeClose<CR>", opts)
