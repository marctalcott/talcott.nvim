return {
  'mhartington/formatter.nvim',
  configure = function()
    vim.keymap.set('n', '<Leader>ll', '<CMD>:FormatWrite', {})
  end,
}
