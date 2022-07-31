
-- yay -S rust-analyzer nvim-packer-git

require('opts')
require('plugins')
require('rust-lsp')
require('treesitter')
require('nerdtree')
require('telescope-config')
require('comment')
require('cursor-line')
require('status-line')
require('vimux')

-- vim.cmd('colorscheme nord')
vim.cmd('colorscheme nightfox')
