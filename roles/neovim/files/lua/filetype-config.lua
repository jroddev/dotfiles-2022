
-- https://github.com/nathom/filetype.nvim/issues/68#issuecomment-1029837698
local function bash_literal()
    vim.bo.filetype = 'sh'
    vim.b.is_bash = true
end

require("filetype").setup({
    overrides = {
        complex = {
            [".*j2"] = "yaml",
            [".*.sh"] = bash_literal,
            [".zsh*"] = bash_literal,
        }
    }

})
