vim.pack.add({ 'https://github.com/FylerOrg/fyler.nvim' })

local fyler = require("fyler")

-- - : open Fyler rooted at the directory of the current buffer
vim.keymap.set(
  "n",
  "-",
  function()
    local path = vim.api.nvim_buf_get_name(0)
    fyler.open({
      root_path = path ~= "" and vim.fs.dirname(path) or vim.fn.getcwd(),
      kind = "split_left_most"
    })
  end,
  { desc = "Fyler: current file directory", }
)

-- _ : open Fyler rooted at Neovim's current working directory
vim.keymap.set(
  "n",
  "_",
  fyler.open({
    root_path = vim.fn.getcwd(),
    kind = "split_left_most"
  }),
  { desc = "Fyler: working directory", }
)
