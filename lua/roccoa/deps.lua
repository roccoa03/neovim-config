-- Clone 'mini.nvim' manually in a way that it gets managed by 'mini.deps'
local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'
--- 
---@diagnostic disable-next-line: undefined-field
if not vim.loop.as_stat(mini_path) then

  vim.cmd('echo "Installing `mini.nvim`" | redraw')
  local clone_cmd = {
    'git', 'clone', '--filter=blob:none',
    'https://github.com/echasnovski/mini.nvim', mini_path
  }
  vim.fn.system(clone_cmd)
  vim.cmd('packadd mini.nvim | helptags ALL')
  vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

-- Set up 'mini.deps' (customize to your liking)

require('mini.deps').setup({ path = { package = path_package } })

local add = MiniDeps.add

-- Add to current session (install if absent)
add({
  source = 'neovim/nvim-lspconfig',
  -- Supply dependencies near target plugin
})

add({
  source = 'nvim-treesitter/nvim-treesitter',
  -- Use 'master' while monitoring updates in 'main'
  checkout = 'master',
  monitor = 'main',
  -- Perform action after every checkout
  hooks = { post_checkout = function() vim.cmd('TSUpdate') end },
})


-- add ({ source = 'nvim-java/nvim-java', })

add ({
	source = 'ThePrimeagen/harpoon',
	depends = { 'nvim-lua/plenary.nvim' },
})


