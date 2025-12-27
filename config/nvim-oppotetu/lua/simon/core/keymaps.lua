vim.g.mapleader = " "

-- Remap hjkl to sdfe in normal mode
vim.keymap.set({ 'n', 'v', 's', 'o' }, 's', 'h')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'd', 'j')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'e', 'k')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'f', 'l')

vim.keymap.set({ 'n', 'v', 's', 'o' }, 'k', 's')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'K', 'S')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'j', 'd')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'J', 'D')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'h', 'e')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'H', 'E')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'l', 'f')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'L', 'F')

vim.keymap.set('n', '<leader>ae', 'ggVG')

vim.keymap.set({ 'v', 'o' }, '<Tab>', '<Esc>')
vim.keymap.set({ 'i', 'n' }, '<Tab>', '<cmd>noh<cr><esc>', { desc = 'Escape and clear hlsearch' })
-- vim.keymap.set({ 'v', 'o' }, '<C-i>', '<Esc>')
-- vim.keymap.set({ 'i', 'n' }, '<C-i>', '<cmd>noh<cr><esc>', { desc = 'Escape and clear hlsearch' })
vim.keymap.set('n', 't', 'o<Esc>')

vim.keymap.set('n', '<leader>b', ':b#<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', 'leadermd', ':verbose map ')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>eq', ':q<CR>')
vim.keymap.set('n', '<leader>qa', ':qa<CR>')

-- buffers
vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- resize windows
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Theprimeagen keymaps
vim.keymap.set("v", "D", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "D", "mzJ`z")
--vim.keymap.set("n", "<C-d>", "<C-d>zz")
--vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- TODO: change
-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>]q", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>[q", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>]l", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>[l", "<cmd>lprev<CR>zz")

--vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- keymaps from Josean Martinez
-- vim.keymap.set("n", "<leader>nl", ":nohl<CR>", { desc = "Clear search highlights" })

--- window management
vim.keymap.set("n", "<leader>oi", "<C-w>v", { desc = "Split window vertically" })     -- split window vertically
vim.keymap.set("n", "<leader>op", "<C-w>s", { desc = "Split window horizontally" })   -- split window horizontally
vim.keymap.set("n", "<leader>oe", "<C-w>=", { desc = "Make splits equal size" })      -- make split windows equal width & height
vim.keymap.set("n", "<leader>ox", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
