-- Those keys are not included in neovim 0.10 by default.
vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
vim.keymap.set('n', 'gra', vim.lsp.buf.code_action)
vim.keymap.set('n', 'grr', vim.lsp.buf.references)
vim.keymap.set('i', '<C-s>', vim.lsp.buf.signature_help)


vim.keymap.set("n", "<leader>n", function () vim.lsp.buf.code_action() end)



