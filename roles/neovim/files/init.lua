
-- yay -S rust-analyzer nvim-packer-git

require('opts')
require('plugins')
require('rust-lsp')
require('treesitter')
require('nerdtree')
require('telescope-config')
require('comment-config')
require('cursor-line')
require('status-line')
require('vimux')

-- vim.cmd('colorscheme nord')
vim.cmd('colorscheme nightfox')
