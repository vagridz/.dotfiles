--[[

Lazy plugin manager

]]

--[[

Information
-----------

Download and execute lazy.nvim plugin manager:
https://github.com/folke/lazy.nvim
See plugin spec: https://lazy.folke.io/spec

Alternatives
------------

* https://github.com/wbthomason/packer.nvim

Tips
----

:Lazy to check what's going on

]]

-- Define a local variable lazypath for the file path lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- If does not exist, clone the GitHub repository
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable", -- latest stable release
		lazyrepo,
		lazypath,
	})
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.vim:\n", "ErrorMesg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit... " },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

-- Add lazypath to vim's runtime path (rtp)
-- which allows us to `require` it
vim.opt.rtp:prepend(lazypath)

-- Set up lazy, and load dynamically `lua/plugins` directory and subdirectories
require("lazy").setup({
	  { import = "plugins.syntax-completion" },
	  { import = "plugins.filesystem" },
  }, 
  {
	-- Lazy automatically check for plugin updates
	checker = {
		enabled = true,
		notify = false,
	},
	-- Detection of plugins
	change_detection = {
		-- Remove message every time we save a plugin
		notify = false,
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = {
		colorscheme = { "habamax" },
	},
})
