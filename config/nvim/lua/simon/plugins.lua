-- require("simon.plugins.theme")

-- INFO: library dependencies
vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
}, { confirm = false, })

require("simon.plugins.treesitter")
require("simon.plugins.blink")
require("simon.plugins.lsp")
require("simon.plugins.telescope")
require("simon.plugins.lualine")
require("simon.plugins.utility")
require("simon.plugins.which-key")
require("simon.plugins.neoscroll")

-- require("simon.plugins.editing.completion")
-- require("simon.plugins.editing.highlight")
-- require("simon.plugins.editing.tooling")
-- require("simon.plugins.editing.documentation")
-- require("simon.plugins.editing.misc")

-- require("simon.plugins.utilities.git")
-- require("simon.plugins.utilities.buffers")
-- require("simon.plugins.utilities.sessions")
-- require("simon.plugins.utilities.docgen")
-- require("simon.plugins.utilities.plugin-dev")

-- require("simon.plugins.interface.ui")
-- require("simon.plugins.interface.start-screen")
-- require("simon.plugins.interface.task-list")
-- require("simon.plugins.interface.status-bar")
-- require("simon.plugins.interface.file-explorer")
-- require("simon.plugins.interface.picker")
-- require("simon.plugins.interface.terminal")
-- require("simon.plugins.interface.which-key")

-- require("simon.plugins.debugging.dap")