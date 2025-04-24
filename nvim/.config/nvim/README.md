# Neovim as an Integrated Development Environment (IDE)

This document defines how Neovim must behave to be called an Integrated 
Development Environment (IDE) and shows one of many possible
implementations.

## Features

Here is a list of the features an IDE must have (by some kind of order 
of importance):

- [x] Editable text
- [ ] Syntax highlighting
- [ ] File system manager
- [ ] Line numbering
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
- [ ] Extensibility
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

