-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

-- Set leaders
vim.g.mapleader = "å"
vim.g.maplocalleader = "ä"

-- Specify plugins
require("lazy").setup({
  "phha/zenburn.nvim",
})

-- Load colorscheme
require("zenburn").setup()
