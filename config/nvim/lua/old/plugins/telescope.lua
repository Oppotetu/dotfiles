--local builtin = require('telescope.builtin')
--
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
--vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
--	{
--		'nvim-telescope/telescope.nvim', tag = '0.1.5',
--		dependencies = { 'nvim-lua/plenary.nvim' }
--	},

return {

    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local builtin = require("telescope.builtin")
        local actions = require("telescope.actions")
        local api = require("nvim-tree.api")

        local function press_enter(prompt_bufnr)
            actions.select_default(prompt_bufnr)
            api.tree.close()
            --     vim.cmd("%bd|e#|bd#")
        end

        require("telescope").setup({
            defaults = {
                --				path_display = { "truncate " },
                mappings = {
                    i = {
                        ["<C-e>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-d>"] = actions.move_selection_next,     -- move to next result
                        ["<Tab>"] = actions.close,                   -- close buffer
                        ["<C-f>"] = actions.toggle_selection,        -- close buffer
                        ["<M-i>"] = actions.select_vertical,         -- close buffer
                        ["<M-p>"] = actions.select_horizontal,       -- close buffer
                        ["<CR>"] = press_enter
                    },
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true,                   -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true,    -- override the file sorter
                    case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            }
        })

        require("telescope").load_extension("fzf")

        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>pr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Find string in cwd" })
        keymap.set("n", "<leader>pc", builtin.grep_string, { desc = "Find string under cursor in cwd" })

        keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git status" })
        keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Fuzzy find git files" })
    end,
}
