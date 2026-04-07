
-- clear search highlights with <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Remap hjkl to sdfe in normal mode
vim.keymap.set({ 'n', 'v', 's', 'o' }, 's', 'h')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'd', 'j')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'e', 'k')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'f', 'l')

vim.keymap.set({ 'n', 'v', 's', 'o' }, 'k', 's')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'K', 'S')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'j', 'd')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'J', 'D')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 't', 'e')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'T', 'E')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'l', 'f')
vim.keymap.set({ 'n', 'v', 's', 'o' }, 'L', 'F')

-- make y and v behave like C/D: from cursor to end of line
vim.keymap.set('n', 'Y', 'y$')
vim.keymap.set('n', 'V', 'v$h')
vim.keymap.set('n', 'vv', 'V')
vim.keymap.set('v', 'v', 'V')

vim.keymap.set('n', 'h', 'o<Esc>')

vim.keymap.set('n', '<leader>ae', 'ggVG')
vim.keymap.set('n', '<leader>ay', 'ggVGy')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>eq', ':q<CR>')

-- resize windows
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Theprimeagen keymaps
vim.keymap.set("v", "D", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "D", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "Q", "<nop>")

--- window management
vim.keymap.set("n", "<leader>of", "<C-w>v", { desc = "Split window vertically" })     
vim.keymap.set("n", "<leader>od", "<C-w>s", { desc = "Split window horizontally" })  
vim.keymap.set("n", "<leader>oe", "<C-w>=", { desc = "Make splits equal size" })    
vim.keymap.set("n", "<leader>ox", "<cmd>close<CR>", { desc = "Close current split" }) 