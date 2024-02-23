-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_set_keymap("n", "<C-K><C-T>", ":TagbarToggle<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-K><C-F>", ":NvimTreeToggle<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-K><C-P>", ":Telescope find_files<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-K><C-G>", ":Telescope live_grep<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-T><C-T>", ":ToggleTerm<CR>", { silent = true, noremap = true })
