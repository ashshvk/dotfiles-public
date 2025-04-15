local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Explorer
map("n", "<leader>pv", ":Ex<CR>")
map("n", "<leader>ch", "<cmd>checkhealth<CR>")

-- move visual line --
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Insert Navigation
map("i", "<D-h>", "<Left>", { noremap = true })   -- Win + h = move left
map("i", "<D-l>", "<Right>", { noremap = true })  -- Win + l = move right
map("i", "<D-j>", "<Down>", { noremap = true })   -- Win + j = move down
map("i", "<D-k>", "<Up>", { noremap = true })     -- Win + k = move u

-- fzf
-- vim.keymap.set("n", "<leader>ff", function() require("fzf-lua").files() end, { desc = "Find Files" })
-- map("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find Files" })
-- map("n", "<leader>/", "<cmd>FzfLua live_grep<CR>", { desc = "Live Grep" })
-- map("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "Open Buffers" })


-- example -- 
map("n", "<tab>", ":tabnext<Return>", opts)
map("n", "<s-tab>", ":tabprev<Return>", opts)
map("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" }) vim.keymap.set("n", "<leader>bl", ":ls<CR>", { desc = "List buffers" })

-- Diable continuations
-- vim.keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
-- vim.keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)
