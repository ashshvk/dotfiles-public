return{
  "NvChad/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      filetypes = { "*" },
      user_default_options = {
        names = false, -- disable color names like "red"
        rgb_fn = true,
        hsl_fn = true,
        tailwind = true, -- optional if using TailwindCSS
      },
    })
  end,
}
