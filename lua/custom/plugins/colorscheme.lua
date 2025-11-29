return {
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('kanagawa').setup {
      theme = 'dragon', -- ドラゴンテーマを使う
      transparent = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { bold = true },
      statementStyle = { bold = true },
      typeStyle = {},
    }

    -- カラースキーム適用
    vim.cmd 'colorscheme kanagawa-dragon'

    vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
    vim.cmd [[ hi NormalNC guibg=NONE ctermbg=NONE ]]

    vim.cmd 'colorscheme kanagawa-dragon'

    vim.api.nvim_set_hl(0, 'Cursor', { fg = '#FFA066', bg = '#FFA066' })
  end,
}
