return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.csharpier,
        null_ls.builtins.diagnostics.actionlint,
        null_ls.builtins.diagnostics.codespell,
      },
    }

    vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {})
  end,
}
