local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Explorer
map("n", "<leader>pv", ":Ex<CR>")
map("n", "<leader>ch", "<cmd>checkhealth<CR>")

-- move visual line --
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- start lazy
map("n", "<leader>l", ":Lazy<CR>")
-- Insert Navigation
-- map("i", "<D-h>", "<Left>", { noremap = true })   -- Win + h = move left
-- map("i", "<D-l>", "<Right>", { noremap = true })  -- Win + l = move right
-- map("i", "<D-j>", "<Down>", { noremap = true })   -- Win + j = move down
-- map("i", "<D-k>", "<Up>", { noremap = true })     -- Win + k = move u

-- tabs -- 
map("n", "te", ":tabedit")

-- buffers --
map("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" }) 
map("n", "<leader>bl", ":ls<CR>", { desc = "List buffers" })

-- Split Window
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)
-- Diable continuations
-- vim.keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
-- vim.keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)
