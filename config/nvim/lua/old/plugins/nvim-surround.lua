return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        -- local input = require("nvim-surround.input")
        -- local functional = require("nvim-surround.functional")
        require("nvim-surround").setup({
            keymaps = {
                delete = "js",
            },
            -- Configuration here, or leave empty to use defaults
        })
    end
}
