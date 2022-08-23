local opt = vim.opt
vim.g.mapleader = " "            -- map leader to Space

-- [[ Context ]]
opt.colorcolumn = '80'           -- str:  Show col for max line length
opt.number = true                -- bool: Show line numbers
opt.relativenumber = true        -- bool: Show line numbers relative to cursor
opt.scrolloff = 4                -- int:  Min num lines of context
opt.signcolumn = "yes"           -- str:  Show the sign column

-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- str:  String encoding to use
opt.fileencoding = 'utf8'        -- str:  File encoding to use

-- [[ Theme ]]
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.termguicolors = true         -- bool: If term supports ui color then enable

-- [[ Search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches

-- [[ Whitespace ]]
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 4               -- num:  Size of an indent
opt.softtabstop = 4              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4                  -- num:  Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one

-- [[ Completion ]]
-- Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force user to select one from the menu
opt.completeopt = menuone,noinsert,noselect
-- Avoid showing extra messages when using completion
opt.shortmess = opt.shortmess + 'c'

-- [[ Other ]]
opt.updatetime = 300
vim.g.noswapfile = true


-- Trailing Whitespace
vim.cmd([[
" Highlights trailing whitespace
   highlight ExtraWhitespace ctermbg=red guibg=red
   match ExtraWhitespace /\s\+$/
   autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
   autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
   autocmd InsertLeave * match ExtraWhitespace /\s\+$/

"   disabled this as it conflicts with nvim-cursorline
"   autocmd BufWinLeave * call clearmatches()

" Trims trailing whitespace on save
   function! TrimWhiteSpace()
     %s/\s*$//
       ''
   endfunction
   autocmd FileWritePre * call TrimWhiteSpace()
   autocmd FileAppendPre * call TrimWhiteSpace()
   autocmd FilterWritePre * call TrimWhiteSpace()
   autocmd BufWritePre * call TrimWhiteSpace()
]])
