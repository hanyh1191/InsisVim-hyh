-- require("insis").setup({})
require("insis").setup({
  clangd = {
    enable = true,
    lsp = "clangd",
    linter = "clangd-tidy",
    formatter = "clang-format",
    format_on_save = true,
  },
  python = {
    enable = true,
    -- can be pylsp or pyright
    lsp = "pylsp",
    -- pip install black
    -- asdf reshim python
    formatter = "black",
    format_on_save = true,
  },
  lua = {
    enable = true,
    format_on_save = true,
  },
  markdown = {
    enable = true,
    -- formatter = false,
    format_on_save = true,
  },
  json = {
    enable = true,
    formatter = "fixjson",
    format_on_save = true,
  },
  bash = {
    enable = false,
    format_on_save = true,
  },
  yaml = {
    enable = true,
    format_on_save = true,
  },
})
