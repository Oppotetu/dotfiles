
-- -- info: formatting and syntax highlighting
-- vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" }, { confirm = false })

-- -- equivalent to :tsupdate
-- -- require("nvim-treesitter.install").update("all")
-- require("nvim-treesitter.install").update( 'lua', 'go', 'bash', 'html')

-- -- require("nvim-treesitter.configs").setup({
-- --   sync_install = true,

-- --   modules = {},
-- --   ignore_install = {},

-- --   ensure_installed = {
-- --     "lua",
-- --     "c",
-- --     "rust",
-- --     "go",
-- --     "bash",
-- --     "html",
-- --     "markdown",
-- --     "markdown_inline",
-- --     "vim",
-- --     "vimdoc",
-- --   },

-- --   auto_install = false, -- autoinstall languages that are not installed yet

-- --   highlight = {
-- --     enable = true,
-- --   },
-- -- })

-- -- -- Install parsers on startup (no-op if already installed)
-- -- local ts = require('nvim-treesitter.install')
-- -- ts.update({ langs = { 'lua', 'c', 'rust', 'go', 'bash', 'html', 'markdown', 'markdown_inline', 'vim', 'vimdoc' } })()

-- -- Enable highlighting via autocmd
-- vim.api.nvim_create_autocmd('FileType', {
--   group = vim.api.nvim_create_augroup('treesitter', {}),
--   pattern = '*',
--   callback = function()
--     local ft = vim.bo.filetype
--     -- Skip Netrw and other non-file buffers
--     if ft == 'netrw' or ft == 'NvimTree' or ft == '' then
--       return
--     end
--     -- Only start parser if it exists
--     local ok, _ = pcall(vim.treesitter.start, vim.api.nvim_get_current_buf(), ft)
--   end,
-- })


vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" }, { confirm = false })

require('nvim-treesitter').install({'javascript', 'typescript', 'zig', 'go', 'lua', 'bash', 'html', 'markdown', 'vim', 'vimdoc'})