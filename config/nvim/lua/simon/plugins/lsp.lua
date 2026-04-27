-- vim.pack.add({
--   "https://github.com/neovim/nvim-lspconfig", -- default configs for lsps
-- }, { confirm = false })

-- -- lsp servers we want to use and their configuration
-- -- see `:h lspconfig-all` for available servers and their settings
-- local lsp_servers = {
--   bashls = {},
--   gopls = {},
--   ts_ls = {},
--   godot = {},
--   lua_ls = {
--     -- https://luals.github.io/wiki/settings/ | `:h nvim_get_runtime_file`
--     Lua = { workspace = { library = vim.api.nvim_get_runtime_file("lua", true) }, },
--   },
-- }


-- -- configure each lsp server on the table
-- -- to check what clients are attached to the current buffer, use
-- -- `:checkhealth vim.lsp`. to view default lsp keybindings, use `:h lsp-defaults`.
-- for server, config in pairs(lsp_servers) do
--   vim.lsp.config(server, {
--     settings = config,

--     -- only create the keymaps if the server attaches successfully
--     on_attach = function(_, bufnr)
--       vim.keymap.set("n", "grd", vim.lsp.buf.definition,
--         { buffer = bufnr, desc = "vim.lsp.buf.definition()", })

--       vim.keymap.set("n", "grf", vim.lsp.buf.format,
--         { buffer = bufnr, desc = "vim.lsp.buf.format()", })
--     end,
--   })
-- end

-- local lsp_servers = {
--   bashls = {},
--   gopls = {},
--   tsserver = {},
--   godot_ls = {},
--   lua_ls = {
--     Lua = {
--       workspace = { library = vim.api.nvim_get_runtime_file("lua", true) },
--     },
--   },
-- }

-- for server, config in pairs(lsp_servers) do
--   local cfg = vim.lsp.config(server, {
--     settings = { [server == 'lua_ls' and 'Lua' or nil] ~= nil and config or nil } or config,
--     on_attach = function(_, bufnr)
--       vim.keymap.set("n", "grd", vim.lsp.buf.definition,
--         { buffer = bufnr, desc = "vim.lsp.buf.definition()", })
--       vim.keymap.set("n", "grf", vim.lsp.buf.format,
--         { buffer = bufnr, desc = "vim.lsp.buf.format()", })
--     end,
--   })

--   -- Enable this config for matching buffers
--   vim.api.nvim_create_autocmd('FileType', {
--     pattern = server == 'tsserver' and { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' }
--            or server == 'lua_ls'   and { 'lua' }
--            or server == 'gopls'    and { 'go' }
--            or server == 'bashls'   and { 'sh', 'bash' }
--            or server == 'godot_ls' and { 'gdscript' }
--            or { '*' },
--     callback = function(args)
--       vim.lsp.start(cfg, { bufnr = args.buf })
--     end,
--   })
-- end

-- Common on_attach
local on_attach = function(_, bufnr)
  vim.keymap.set("n", "grd", vim.lsp.buf.definition,
    { buffer = bufnr, desc = "vim.lsp.buf.definition()" })

  vim.keymap.set("n", "grf", function()
    vim.lsp.buf.format({ async = false })
  end, { buffer = bufnr, desc = "vim.lsp.buf.format()" })
end

-- 1. Lua (lua_ls)
local lua_cfg = vim.lsp.config("lua_ls", {
  on_attach = on_attach,
  settings = {
    Lua = {
      workspace = {
        library = vim.api.nvim_get_runtime_file("lua", true),
      },
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "lua",
--   callback = function(args)
--     vim.lsp.start(lua_cfg, { bufnr = args.buf })
--   end,
-- })

-- 2. TypeScript / JavaScript (tsserver, not ts_ls)
local ts_cfg = vim.lsp.config("tsserver", {
  on_attach = on_attach,
})

vim.api.nvim_create_autocmd("LspAttach", {
  pattern = { "lua", "typescript", "typescriptreact", "javascript", "javascriptreact" },
  callback = function(args)
    vim.lsp.start(ts_cfg, { bufnr = args.buf })
  end,
})

