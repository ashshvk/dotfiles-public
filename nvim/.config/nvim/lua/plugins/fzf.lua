-- plugins/fzf.lua

return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {}, 
  keys = {
    {
      "<leader>fc",
      function() require("fzf-lua").colorschemes() end,
      desc = "Pick colorscheme (persisted)"
    },
    { 
      "<leader>ff",
      function() require('fzf-lua').files() end,
      desc = "Find Files in project directory"
    },
    { 
      "<leader>fg",
      function() require('fzf-lua').live_grep() end,
      desc = "Find by grepping in project directory"
    },
    {
            "<leader><leader>",
            function()
                require("fzf-lua").buffers()
            end,
            desc = "[,] Find existing buffers",
        }
  }
}
