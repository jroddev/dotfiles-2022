
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- package manager
  use 'neovim/nvim-lspconfig' -- common lsp config

  use 'hrsh7th/nvim-cmp' -- completion
  use 'hrsh7th/cmp-nvim-lsp' -- lsp completion
  use 'hrsh7th/cmp-vsnip' -- snippet completion for nvim-cmp
  use 'hrsh7th/cmp-path' -- path completion
  use 'hrsh7th/cmp-buffer' -- buffer completion

  use 'simrat39/rust-tools.nvim' -- enable most rust-analzer features


  use 'redhat-developer/yaml-language-server'
  use 'bash-lsp/bash-language-server'
  use 'ansible/ansible-language-server'
  use 'hashicorp/terraform-ls'

  use 'hrsh7th/vim-vsnip' -- snippet engine

  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

  -- fuzzy finder
  use 'nvim-lua/popup.nvim'
  use {
      'nvim-telescope/telescope.nvim',
      requires = {
          {'nvim-lua/plenary.nvim'},
          {'BurntSushi/ripgrep'}
      }
    }

  -- Color Scheme
  use 'arcticicestudio/nord-vim'
  use "EdenEast/nightfox.nvim"

  use 'preservim/nerdtree'

  use 'ryanoasis/vim-devicons'
  use 'Xuyuanp/nerdtree-git-plugin'

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  use 'yamatsum/nvim-cursorline'

  use {
      'preservim/vimux',
      requires = {
          {'jtdowney/vimux-cargo'}
      }
  }

  use {
    'nvim-lualine/lualine.nvim',
    -- requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)

