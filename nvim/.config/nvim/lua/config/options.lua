--  Set leader key early
vim.g.mapleader = " "

-- Basic Neovim Settings

vim.opt.encoding = "utf-8"        -- Set internal character encoding to UTF-8
vim.opt.fileencoding = "utf-8"    -- Set file encoding to UTF-8

-- Line Numbers
vim.opt.number = true          -- Show absolute line numbers
vim.opt.relativenumber = true  -- Show relative line numbers

-- Tabs & Indentation
vim.opt.tabstop = 2            -- Number of spaces per tab
vim.opt.shiftwidth = 2         -- Number of spaces per auto-indent
vim.opt.expandtab = true       -- Convert tabs to spaces
vim.opt.smartindent = true     -- Enable smart indentation
vim.opt.autoindent = true      -- Copy indentation from the previous line

-- Search
vim.opt.hlsearch = false       -- Disable search highlight
vim.opt.incsearch = true       -- Enable incremental search
vim.opt.ignorecase = true      -- Ignore case in searches

-- Appearance
vim.opt.termguicolors = true   -- Enable true color support
vim.opt.wrap = false           -- Disable line wrapping

-- Clipboard
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

--Options
vim.opt.wrap = false           -- vim.opt.cmdheight = 1        
vim.opt.cmdheight = 1          -- Height of the command bar
vim.opt.scrolloff = 8          -- Keep at least 10 lines above/below the cursor

vim.opt.showcmd = true         -- Show partial commands in the status bar

-- Split behaviour
vim.opt.splitright = true      -- Open new vertical splits to the right
vim.opt.splitbelow = true      -- Open new horizontal splits below

-- File handling
vim.opt.backup = false         -- Disable backup files

