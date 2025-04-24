--[[

Neovim/Vim options

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

--[[ Setting options ]]

-- Define a local variable opt, for vim.opt, which acts like the :set command
-- in vimscript (we could have called it `set` to end up with the same as
-- vimscript in vim)
-- See `:help vim.opt` and `:help option-list`
local opt = vim.opt

-- Show line numbers
-- vim.cmd("set number")
opt.number = true

-- Show relative line numbers
-- vim.cmd("set relativenumber")
opt.relativenumber = true

