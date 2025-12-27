return {
    'otavioschwanck/cool-substitute.nvim',

    config = function()
        require 'cool-substitute'.setup({
            setup_keybindings = true,
            mappings = {
                start = '<leader>ne',               -- Mark word / region
                start_word = '<leader>nr',          -- Mark word / region. Edit only full word
                start_and_edit = '<leader>ni',      -- Mark word / region and also edit
                start_and_edit_word = '<leader>no', -- Mark word / region and also edit.  Edit only full word.
                apply_substitute_and_next = 'm',    -- Start substitution / Go to next substitution
                apply_substitute_and_prev = 'M',    -- same as M but backwards
                apply_substitute_all = 'gs',        -- Substitute all
                force_terminate_substitute = 'g!!', -- Terminate macro (if some bug happens)
                terminate_substitute = '<Tab>',     -- Terminate macro
                skip_substitute = 'q',              -- Skip this occurrence
                -- goto_next = '<C-j>',                           -- Go to next occurence
                -- goto_previous = '<C-k>',                       -- Go to previous occurrence
            },
            reg_char = 'o',                                     -- letter to save macro (Dont use number or uppercase here)
            mark_char = 't',                                    -- mark the position at start of macro
            writing_substitution_color = "#ECBE7B",             -- for status line
            applying_substitution_color = "#98be65",            -- for status line
            edit_word_when_starting_with_substitute_key = false -- (press M to mark and edit when not executing anything anything)
        })
    end
}
