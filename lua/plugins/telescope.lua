return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required by Telescope
  },
  cmd = "Telescope",         -- load only when :Telescope is called
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Grep Files" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Find Buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Find Help" },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_config = {
          prompt_position = "top",
        },
        sorting_strategy = "ascending",
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    })
  end,
}

