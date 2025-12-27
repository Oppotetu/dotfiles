return {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
    config = function()
        require("Comment").setup({
            toggler  = {
                line = 'gnn',
                block = 'gbb'
            },
            opleader = {
                line = 'gn',
                block = 'gb'
            },
            extra    = {
                above = 'gnO',
                below = 'gno',
                eol = 'gnA'
            }
        })
    end
}
