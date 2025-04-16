return {
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- for file icons
      "lewis6991/gitsigns.nvim",     -- optional for git status
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    config = function()
      require("barbar").setup({
        animation = true,
        auto_hide = false,
        tabpages = true,
        clickable = true,
        icons = {
          buffer_index = true,
          filetype = { enabled = true },
          separator = { left = "▎", right = "" },
          modified = { button = "●" },
          pinned = { button = "", filename = true },
        },
      })

      -- Buffer navigation
      vim.keymap.set("n", "<S-l>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
      vim.keymap.set("n", "<S-h>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })

      -- Buffer close
      vim.keymap.set("n", "<Leader>bd", "<Cmd>BufferClose<CR>", { desc = "Close current buffer" })
      vim.keymap.set("n", "<Leader>bo", "<Cmd>BufferCloseAllButCurrent<CR>", { desc = "Close other buffers" })

      -- New buffer
      vim.keymap.set("n", "<Leader>bn", "<Cmd>enew<CR>", { desc = "New empty buffer" })

      -- Go to specific buffers
      for i = 1, 9 do
        vim.keymap.set("n", "<Leader>" .. i, "<Cmd>BufferGoto " .. i .. "<CR>", { desc = "Go to buffer " .. i })
      end

      -- Set options for display
      vim.opt.termguicolors = true
      vim.opt.showtabline = 2
    end,
  },
}

