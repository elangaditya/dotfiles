return {
  "olexsmir/gopher.nvim",
  ft = "go",
  -- branch = "develop"
  -- (optional) will update plugin's deps on every update
  config = function()
    vim.keymap.set("n", "<leader>gsj", "<cmd> GoTagAdd json <CR>", { desc = "Add json struct tags" })
    vim.keymap.set("n", "<leader>gsd", "<cmd> GoTagAdd db <CR>", { desc = "Add db struct tags" })
    vim.keymap.set("n", "<leader>gsf", "<cmd> GoTagAdd form <CR>", { desc = "Add form struct tags" })
    vim.keymap.set("n", "<leader>ge", "<cmd> GoIfErr <CR>", { desc = "Add if err boilerplate" })
    vim.keymap.set("n", "<leader>gte", "<cmd> GoTestsExp <CR>", { desc = "Add tests for exported functions" })
    vim.keymap.set("n", "<leader>gta", "<cmd> GoTestsAll <CR>", { desc = "Add tests for all functions" })
  end,
  build = function()
    vim.cmd.GoInstallDeps()
  end,
  ---@type gopher.Config
  opts = {},
}
