return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local function my_on_attach(bufnr)
            local api = require("nvim-tree.api")

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true }
            end

            -- accessability
            vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
            vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit, opts('Open'))

            -- Tree options
            vim.keymap.set('n', 'd', 'j', opts('Move down'))
            vim.keymap.set('n', 'e', 'k', opts('Move up'))
            vim.keymap.set('n', '<C-i>', api.node.show_info_popup, opts('Info'))
            vim.keymap.set('n', 'P', api.node.navigate.parent, opts('Parent Directory'))
            vim.keymap.set('n', 'R', api.tree.reload, opts('Refresh'))
            vim.keymap.set('n', 'C', api.tree.collapse_all, opts('Collapse all'))
            vim.keymap.set('n', 'V', api.tree.expand_all, opts('Expand all'))
            vim.keymap.set('n', 'H', api.tree.toggle_hidden_filter, opts('Toggle Filter: Dotfiles'))
            vim.keymap.set('n', 'I', api.tree.toggle_gitignore_filter, opts('Toggle Filter: Git Ignore'))
            vim.keymap.set('n', 'B', api.tree.toggle_no_buffer_filter, opts('Toggle Filter: No Buffer'))
            -- vim.keymap.set('n', 'F', api.live_filter.clear, opts('Live Filter: Clear'))
            -- vim.keymap.set('n', 'f', api.live_filter.start, opts('Live Filter: Start'))

            -- Open and close
            vim.keymap.set('n', '<BS>', api.node.navigate.parent_close, opts('Close Directory'))
            vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
            vim.keymap.set('n', '<Tab>', api.node.open.preview, opts('Open Preview'))
            vim.keymap.set('n', '<C-p>', api.node.open.replace_tree_buffer, opts('Open: In Place'))
            vim.keymap.set('n', 'q', api.tree.close, opts('Close'))
            vim.keymap.set('n', 'o', function()
                    api.node.open.edit()
                    api.tree.close()
                end,
                opts('Open file, close tree'))
            vim.keymap.set('n', '<M-i>', function()
                    api.node.open.vertical()
                    api.tree.close()
                end,
                opts('Open: vertical'))
            vim.keymap.set('n', '<M-p>', function()
                    api.node.open.horizontal()
                    api.tree.close()
                end,
                opts('Open: horizontal'))

            -- file system
            vim.keymap.set('n', 'a', api.fs.create, opts('Create File Or Directory'))
            vim.keymap.set('n', 'r', api.fs.rename_sub, opts('Rename: Omit Filename'))
            vim.keymap.set('n', 'p', api.fs.copy.absolute_path, opts('Copy Absolute Path'))
            vim.keymap.set('n', 'y', api.fs.copy.filename, opts('Copy Name'))
            -- vim.keymap.set('n', 'Y', api.fs.copy.relative_path, opts('Copy Relative Path'))
            -- vim.keymap.set('n', 'p', api.fs.paste, opts('Paste'))
            vim.keymap.set('n', 'x', api.fs.cut, opts('Cut'))
            vim.keymap.set('n', 'j', api.fs.remove, opts('Remove'))
            vim.keymap.set('n', 's', api.node.run.system, opts('Run System'))


            -- Bookmarks
            -- vim.keymap.set('n', 'bd', api.marks.bulk.delete, opts('Delete Bookmarked'))
            -- vim.keymap.set('n', 'bt', api.marks.bulk.trash, opts('Trash Bookmarked'))
            -- vim.keymap.set('n', 'bmv', api.marks.bulk.move, opts('Move Bookmarked'))
            -- vim.keymap.set('n', 'M', api.tree.toggle_no_bookmark_filter, opts('Toggle Filter: No Bookmark'))
            -- vim.keymap.set('n', 'm', api.marks.toggle, opts('Toggle Bookmark'))
            --
            -- custom mappings
        end

        require("nvim-tree").setup {
            on_attach = my_on_attach,
        }

        vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })                -- toggle file explorer
        vim.keymap.set("n", "<leader>eo", "<cmd>NvimTreeFocus<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
        vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>",
            { desc = "Toggle file explorer on current file" })                                                         -- toggle file explorer on current file
    end,
}
