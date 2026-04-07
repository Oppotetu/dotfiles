return {
    "karb94/neoscroll.nvim",
    config = function()
        require("neoscroll").setup({})
        local t = {}
        -- Syntax: t[keys] = {function, {function arguments}}
        t["<C-e>"] = { "scroll", { "-vim.wo.scroll", "true", "250" } }
        t["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "250" } }
        t["<C-w>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "450" } }
        t["<C-r>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "450" } }
        t["<C-s>"] = { "scroll", { "-0.10", "true", "100" } }
        t["<C-f>"] = { "scroll", { "0.10", "true", "100" } }
        --t["zt"] = { "zt", { "250" } }
        --t["zz"] = { "zz", { "250" } }
        --t["zb"] = { "zb", { "250" } }

        require("neoscroll.config").set_mappings(t)
    end,
}
