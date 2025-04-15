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

require("config.options")

require("lazy").setup({
	spec = {
		{import = "plugins"},
    {import = "plugins.colorscheme"}
	},
	 checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  }, -- automatically check for plugin updates
  -- 🚫 Disable luarocks warnings
  rocks = {
    enabled = false,
  },
})
require("config.keymaps")
