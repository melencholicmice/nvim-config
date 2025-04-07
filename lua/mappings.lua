vim.g.mapleader = " "
vim.o.mouse = "a"

-- Keymaps
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Implementation" })

-- Optional: Mouse click (Left click = Go to Definition)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function()
    vim.keymap.set("n", "<LeftMouse>", function()
      vim.lsp.buf.definition()
    end, { noremap = true, silent = true, desc = "Go to definition on click" })
  end,
})


--- Window pane setting

-- Split windows
vim.keymap.set("n", "<leader>pv", ":vsplit<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>ph", ":split<CR>", { desc = "Horizontal Split" })

-- Navigate between splits
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to down split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to up split" })

-- Resize splits
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase width" })

-- Close current split
vim.keymap.set("n", "<leader>c", "<C-w>q", { desc = "Close current window" })

-- Tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>th", ":tabprevious<CR>", { desc = "Previous Tab" })

