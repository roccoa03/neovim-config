vim.g.mapleader = " "
--vim.cmd("Ex") = ("Ex<CR>")
vim.keymap.set("n", "<leader>rh", ":noh<CR>")

-- function to enable and disable spell
vim.keymap.set("n", "<Leader>s", function()
	-- vim.o.spell = not vim.o.spell
    vim.opt.spell = not(vim.opt.spell:get())
    print("spell: " .. tostring(vim.o.spell))
end)

-- clipboard keymaps
vim.keymap.set("n","<leader>y","\"+y")
vim.keymap.set("v","<leader>y","\"+y")
vim.keymap.set("n","<leader>Y","\"+Y")


-- USO: Seleziona la parola che vuoi eliminare senza perdere il contenuto del buffer
-- e usa <leader>p per eliminarla ed incollare la parola che hai copiato
vim.keymap.set("x", "<leader>p", "\"_dP")

-- autocompletion keymap
--vim.keymap.set("i", "(", "()<Left>")
--vim.keymap.set("i", "[", "[]<Left>")
--vim.keymap.set("i", "<", "<><Left>")
--vim.keymap.set("i", "{", "{}<Left>")
-- Molto utili per copiare senza sforzo un intero 
-- yap (Yank all paragraph)

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')


-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`

--
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

--vim.keymap.set("n", "<leader>v","" )
--
vim.keymap.set("n","<leader>ts","!tomcat10.start")
vim.keymap.set("n","<leader>tr","!tomcat10.stop")
