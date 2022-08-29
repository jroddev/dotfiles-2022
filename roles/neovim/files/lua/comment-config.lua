-- https://github.com/numToStr/Comment.nvim
-- visual block -> <Shift /> to comment/uncomment
-- normal mode -> <Shift //> comment/uncomment current line
require('Comment').setup({
    toggler = {
        line = '??'
   },
    opleader = {
       line = '?'
    }
})
