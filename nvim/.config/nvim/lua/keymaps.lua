-- Obsidian
vim.keymap.set("n", "<leader>on", ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>")
vim.keymap.set(
  "n",
  "<leader>otn",
  ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>",
  { desc = "Format Notes" }
)
vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>", { desc = "Reformat title" })
vim.keymap.set("n", "<leader>gbb", ":GitBlameOpenCommitURL<CR>", { desc = "Git Blame: Open Commit URL" })

-- Open Fugitive status in a vertical split with a width of 60 columns
vim.keymap.set('n', '<leader>gg', '<cmd>vertical Git<CR><cmd>vertical resize -60<CR>', { desc = 'Git status (vertical)' })

-- Function to toggle between relative and absolute line numbers
vim.keymap.set('n', '<leader>rn', ":set rnu!<CR>", { desc = 'Toggle relative line numbers' })
