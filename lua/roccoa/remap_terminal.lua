vim.api.nvim_create_autocmd('TermOpen',{
	group = vim.api.nvim_create_augroup('custom-term-open',{ clear = true}),
	callback = function()
		vim.opt.relativenumber = true
		vim.opt.number = true
	end,
})

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]]);

-- In attesa di imparare come funzionano i buffer in neovim 
-- mi accontento di effettuare il toggle del terminale come segue.

---vim.keymap.set("n","<space>t",function()
--	if(vim.bo.buftype == 'terminal') then
--		vim.cmd("bdelete!")
--	else
--		vim.cmd.vnew()
--		vim.cmd.term()
--	end
--end)

