return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" }, -- ← load on file open/new
  config = function () 
    require('nvim-treesitter.configs').setup {
      ensure_installed = { "c", "cpp", "rust", "html", "css", "javascript", "typescript", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
      auto_install = false,
      highlight = { enable = true },
       indent = { enable = true },
    }
    end,
}  

