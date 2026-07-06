return {
  'stevearc/conform.nvim',
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      -- Use clang-format for C, C++, and headers
      cpp = { "clang_format" },
      c = { "clang_format" },
      hpp = { "clang_format" },
      h = { "clang_format" },
      sql = { "sql_formatter" },
      go = { "gofumpt"}
    },
    -- Set up format-on-save
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
