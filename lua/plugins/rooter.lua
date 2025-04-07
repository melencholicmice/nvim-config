return {
  "notjedi/nvim-rooter.lua",
  event = "BufEnter",
  config = function()
    require("nvim-rooter").setup({
      rooter_patterns = {
	      ".git", 
	      "Makefile", 
	      "package.json", 
	      "pyproject.toml" 
      }, -- adjust as per your project
      manual = false,     -- set to true if you want to control it manually
      fallback_to_cwd = true,
    })
  end,
}

