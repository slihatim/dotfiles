-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Window left" })
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Window right" })
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Window up" })

-- run c++ as notification
vim.keymap.set("n", "<leader>1", function()
  vim.cmd("w") -- Save the current file
  local term_cmd = "g++ " .. vim.fn.expand("%") .. " && ./a.out"
  vim.cmd("split") -- Split window horizontally
  vim.cmd("wincmd j") -- Move to the bottom window
  vim.cmd("terminal " .. term_cmd)
  vim.cmd("startinsert") -- Enter insert mode in terminal
end, { desc = "Compile & Run C++ in terminal" })
