return {

  'fatih/vim-go',
  ft = 'go', -- only for filetype go

  config = function()
    -- Go-specific mappings for GoDef split, vertical split, and tab
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'go',
      callback = function()
        vim.keymap.set('n', '<leader>gs', '<Plug>(go-def-split)', { buffer = 0, silent = true })
        vim.keymap.set('n', '<leader>gv', '<Plug>(go-def-vertical)', { buffer = 0, silent = true })
      end,
    })
  end,
}
