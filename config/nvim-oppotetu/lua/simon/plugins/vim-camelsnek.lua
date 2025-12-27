return {
    "nicwest/vim-camelsnek",
    config = function()
        vim.keymap.set('n', '<leader>ss', '<cmd>Snek<CR>', { desc = 'snake_case' })
        vim.keymap.set('n', '<leader>sl', '<cmd>Camel<CR>', { desc = 'camelCase' })
        vim.keymap.set('n', '<leader>sp', '<cmd>Pascal<CR>', { desc = 'PascalCase' })
        vim.keymap.set('n', '<leader>sk', '<cmd>Kebab<CR>')
        vim.keymap.set('n', '<leader>sa', '<cmd>Screm<CR>')
    end
}
