require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

-- Add your mappings here
vim.api.nvim_set_keymap('n', '<C-K><C-T>', ':TagbarToggle<CR>', {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<C-K><C-F>', ':NvimTreeToggle<CR>', {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<C-K><C-P>', ':Telescope find_files<CR>', {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<C-K><C-G>', ':Telescope live_grep<CR>', {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<C-T><C-T>', ':ToggleTerm<CR>', {silent = true, noremap = true})


local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"
