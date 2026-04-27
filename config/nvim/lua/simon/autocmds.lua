-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank({
      higroup = "CommandMode",
    })
  end,
})

-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = { '*' },
--   callback = function()
--     vim.lsp.buf.format({ async = false })
--   end,
-- })

-- vim.api.nvim_create_autocmd("ColorScheme", {
--   pattern = "*",
--   callback = function()
--     local groups = { "Normal", "NonText", "NormalFloat", "SignColumn" }
--     for _, group in ipairs(groups) do
--       vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
--     end
--   end,
-- })


-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = { 'js', 'ts' },
--   callback = function() vim.treesitter.start() end,
--   vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
--   vim.wo[0][0].foldmethod = 'expr'
-- })

-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = { 'javascript', 'typescript' },  -- or 'javascriptreact', etc.
--   callback = function()
--     -- Treesitter highlighting
--     vim.treesitter.start()
--     -- Treesitter folds
--     -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
--     -- vim.wo.foldmethod = 'expr'
--     vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
--   end,
-- })
