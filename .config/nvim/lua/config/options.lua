-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Identify hledger files so Treesitter knows to highlight them

vim.filetype.add({
  extension = {
    journal = "ledger",
    hledger = "ledger",
  },
})
