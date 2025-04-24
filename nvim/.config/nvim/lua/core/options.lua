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

-- Set an 80 column border (horizontal line) for good coding style
-- vim.cmd("set cc=80")
opt.cc = "80"

-- Width of a tab character in columns (2 spaces for tabs)
-- vim.cmd("set tabstop=2")
opt.tabstop = 2

-- Amount of white spaces for level of indentation in columns
-- vim.cmd("set shiftwidth=2")
opt.shiftwidth = 2

-- Set the number of columns for a tab character
-- vim.cmd("set softtabstop=2")
opt.softtabstop = 2

-- Replace tabs by white space characters
-- vim.cmd("set expandtab")
opt.expandtab = true

-- Insert blanks according to 'shiftwidth'.  
-- <BS> (backspace) will delete a 'shiftwidth' worth of space 
-- at the start of the line.
opt.smarttab = true

-- Use the syntax/style of code for indenting
opt.smartindent = true

-- Use indentation of the current line for the next one
opt.autoindent = true

-- Show line under cursor
opt.cursorline = true
