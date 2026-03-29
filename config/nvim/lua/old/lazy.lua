local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "simon.plugins" }, { import = "simon.plugins.lsp" } }, {
    -- install = {
    --     colorscheme = { "nightfly" },
    -- },
    -- checker = {
    --     enabled = false, -- automatically check for plugin updates
    --     notify = false,  -- get a notification when new updates are found
    -- },
})

vim.api.nvim_set_hl(0, "Normal", { guibg = NONE, ctermbg = NONE })
vim.cmd('hi! LineNr guibg=none ctermbg=none')
