local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require "custom.plugins"
require 'custom.lsp-setup'
require 'custom.completions'
require 'custom.git-config'
require 'custom.treesitter'
require 'custom.telescope-config'

vim.cmd.colorscheme "catppuccin-mocha"
