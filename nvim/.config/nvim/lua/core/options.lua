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

--[[ Mapleader ]]

-- NOTE: Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nim so that mappings are correct

-- Leader is a namespace for custom keymaps (see `:help mapleader`)
-- Set <space> as the leader key
vim.g.mapleader = " "
-- Set <space> as the maplocalleader
vim.g.maplocalleader = "\\"

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

