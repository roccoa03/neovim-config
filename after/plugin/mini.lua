require('mini.git').setup()
require('mini.splitjoin').setup()

require ('mini.statusline').setup({ use_icons = true })
require('mini.icons').setup()

require ('mini.ai').setup({})
require ('mini.pairs').setup({})
require('mini.surround').setup()
-- HIPATTERNS{{{
local hipatterns = require('mini.hipatterns')
hipatterns.setup({
  highlighters = {
    -- Highlight standalone 'FIXME', 'HACK', 'DONE', 'NOTE'
    fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
    hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
    todo  = { pattern = '%f[%w]()DONE()%f[%W]',  group = 'MiniHipatternsTodo'  },
    note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },

    -- Highlight hex color strings (`#rrggbb`) using that color
    hex_color = hipatterns.gen_highlighter.hex_color(),
  },
})
-- }}}
-- MOVE {{{
require('mini.move').setup({
	-- Module mappings. Use `''` (empty string) to disable one.
	mappings = {
		-- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
		left = '<M-H>',
		right = '<M-L>',
		down = '<M-J>',
		up = '<M-K>',

		-- Move current line in Normal mode
		line_left = '<M-h>',
		line_right = '<M-l>',
		line_down = '<M-j>',
		line_up = '<M-k>',
	},

	-- Options which control moving behavior
	options = {
		-- Automatically reindent selection during linewise vertical move
		reindent_linewise = true,
	},
})

-- move current lines in visual mode 
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")

-- }}}
-- PICK {{{
	require('mini.pick').setup()
	vim.keymap.set("n","<leader>pf",function() vim.cmd.Pick("files") end)
	vim.keymap.set("n","<leader>b",function() vim.cmd("Pick buffers")  end);
--}}}


-- DONE 
-- Sistema i Keybinding per Move. Entrano in conflitto con 
-- i keybindings impostati di default per il terminale. 

-- require('mini.animate').setup()
--
--
--
--
local gen_loader = require('mini.snippets').gen_loader
require('mini.snippets').setup({
  snippets = {
    -- Load custom file with global snippets first (adjust for Windows)
    -- gen_loader.from_file('~/.config/nvim/snippets/global.json'),

    -- Load snippets based on current language by reading files from
    -- "snippets/" subdirectories from 'runtimepath' directories.
    gen_loader.from_lang(),
  },
})
