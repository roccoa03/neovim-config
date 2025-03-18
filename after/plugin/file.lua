
-- Disable netrw default_file_explorer 
---------------------------------------------
--vim.g.loaded_netrwPlugin = 1
--vim.g.loaded_netrw = 1
---------------------------------------------
--require("oil").setup({
--	default_file_explorer = true,
--	vim_options = {
--		show_hidden = true;
--
--	}
--})
require('mini.files').setup()
vim.keymap.set("n", "<leader>pv", function() MiniFiles.open() end)
