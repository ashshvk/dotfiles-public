-- Disable unnecessary providers early
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_python3_provider = 0

-- netrw settings
--vim.g.netrw_liststyle = 3
--vim.g.netrw_banner = 0
--vim.g.netrw_browse_split = 4
--vim.g.netrw_altv = 1

require("config.lazy")
-- Force float transparency (theme sometimes overrides this)
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "NONE" })

-- Optional: match fzf-lua preview title bar if visible
vim.api.nvim_set_hl(0, "FzfLuaNormal", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "FzfLuaBorder", { bg = "NONE", fg = "NONE" })

