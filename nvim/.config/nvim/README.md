# Neovim as an Integrated Development Environment (IDE)

This document defines how Neovim must behave to be called an Integrated 
Development Environment (IDE) and shows one of many possible
implementations.

More information can be found in the `notes/` directory.

## Features

Here is a list of the features an IDE must have (by some kind of order 
of importance):

- [x] Editable text
- [x] Syntax highlighting
- [x] File system manager
- [x] Line numbering
- [ ] Codebase navigation
- [ ] Unambiguous, fixed-width font
- [ ] User-friendly (and attractive) interface
- [ ] Multiple operating system support
- [ ] Target system (languages and databases) compatibility
- [ ] Help/suggestions/language support
- [ ] Code autocompletion
- [ ] Code folding
- [ ] Pattern maching
- [ ] Boilerplate/template creation
- [ ] Code compiler and runner
- [ ] Code debugging tools
- [ ] Testing suite
- [ ] Version control integration
- [ ] Linters and formatters
- [ ] Document viewer
- [ ] Speed
- [ ] Integrated terminal
- [ ] Database integration
- [x] Extensibility
- [ ] Remote development
- [ ] Code profiling
- [ ] GUI builders
- [ ] Pair programming
- [ ] Refactoring tools

## Implementation

### Editable Text

That's the bare minimum!

We need to load, write and save files. So, technically, gedit or Notepad++ are
enough to code, but Neovim is so much better. ;)

First, we need to install Neovim (as of April 2025, NVIM v0.11.0): https://neovim.io.

### Extensibility

Plugin managers increase IDEs' capabilities. An IDE that supports plugins or 
extensions enables us to enhance our workflow by tailoring our development 
environment.

Usually, we talk about extensibility at the end, when we alreadt have a 
self-respecting IDE. It's more the cherry on top of everything, but in this 
case we must install the [lazy.nvim](https://github.com/folke/lazy.nvim) plugin
manager for extensibility as we will use it to build our IDE.

### Line Numbering

Line numbering is not essential, but it's a must-have, particularly in 
Vi/Vim/Neovim. Line numbering speeds up navigating through files; for 
example, `8j` moves cursor 8 lines down or `14G` goes to the 14th line.

We only need to set options in lua/core/options.lua (and also have 
an `init.lua` file).

### Syntax Highlighting

Syntax highlighting does not bring much, but at the same time it truly does.
That's why gedit or Notepad++ have it!

We use the plugin nvim-treesitter for this.

### File System Manager

As soon as we are working on a couple of files, structured in a couple of 
directories (and subdirectories), we need a file system manager to speed up the 
process of navigating through everything.

Having a file system manager doesn't mean it must be open all the time, as it 
becomes distracting. Plus, it takes place for no reason.

The `nvim-tree` plugin adds a file system manager.



