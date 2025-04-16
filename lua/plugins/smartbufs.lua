return {
  "johann2357/nvim-smartbufs",
  config = function()
    local smartbufs = require("nvim-smartbufs")

    -- Go to specific buffers
    vim.keymap.set("n", "<Leader>1", function() smartbufs.goto_buffer(1) end)
    vim.keymap.set("n", "<Leader>2", function() smartbufs.goto_buffer(2) end)
    vim.keymap.set("n", "<Leader>3", function() smartbufs.goto_buffer(3) end)
    vim.keymap.set("n", "<Leader>4", function() smartbufs.goto_buffer(4) end)
    vim.keymap.set("n", "<Leader>5", function() smartbufs.goto_buffer(5) end)
    vim.keymap.set("n", "<Leader>bnw", ":enew<CR>", { desc = "Open new buffer" })

    -- Buffer navigation
    vim.keymap.set("n", "<Leader>bn", function() smartbufs.goto_next_buffer() end, { desc = "Next buffer" })
    vim.keymap.set("n", "<Leader>bp", function() smartbufs.goto_prev_buffer() end, { desc = "Previous buffer" })

    -- Terminal navigation
    vim.keymap.set("n", "<Leader>c1", function() smartbufs.goto_terminal(1) end)
    vim.keymap.set("n", "<Leader>c2", function() smartbufs.goto_terminal(2) end)

    -- Buffer deletion
    vim.keymap.set("n", "<Leader>bd", function() smartbufs.close_current_buffer() end, { desc = "Close current buffer" })
    vim.keymap.set("n", "<Leader>bd1", function() smartbufs.close_buffer(1) end)
    vim.keymap.set("n", "<Leader>bd2", function() smartbufs.close_buffer(2) end)
  end,
}

