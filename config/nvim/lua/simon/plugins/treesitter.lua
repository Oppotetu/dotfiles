-- keep parsers in sync with the plugin: run :TSUpdate whenever vim.pack updates it.
-- must be registered before vim.pack.add so it sees updates triggered on startup.
vim.api.nvim_create_autocmd('PackChanged', {
  group = vim.api.nvim_create_augroup('simon_treesitter_pack', {}),
  callback = function(ev)
    if ev.data.spec.name ~= 'nvim-treesitter' or ev.data.kind ~= 'update' then
      return
    end
    if not ev.data.active then
      vim.cmd.packadd('nvim-treesitter')
    end
    vim.cmd('TSUpdate')
  end,
})

vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" }, { confirm = false })

-- install_dir defaults to stdpath('data') .. '/site'
require('nvim-treesitter').setup()

-- async, no-op for parsers that are already installed
require('nvim-treesitter').install({
  'javascript', 'typescript', 'zig', 'go', 'lua', 'bash',
  'html', 'markdown', 'markdown_inline', 'vim', 'vimdoc',
  'c_sharp',
})

-- highlighting/folding are built into neovim; enable them for any filetype with a parser
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('simon_treesitter', {}),
  callback = function(ev)
    if not pcall(vim.treesitter.start, ev.buf) then
      return -- no parser for this filetype
    end
    -- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    -- vim.wo[0][0].foldmethod = 'expr'
    -- vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- experimental
  end,
})
