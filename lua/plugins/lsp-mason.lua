return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig", -- 👈 Add this
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim", "nvim-lspconfig" }, -- 👈 Also add here
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",     -- Python
          "clangd",      -- C/C++
          "lua_ls",      -- Lua
        },
        automatic_installation = true,
      })

      local lspconfig = require("lspconfig")

      require("mason-lspconfig").setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({})
        end,
      })
    end,
  },
}

