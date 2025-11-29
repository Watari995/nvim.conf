return {
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('kanagawa').setup {
      theme = 'dragon', -- ドラゴンテーマを使う
      transparent = true, -- 透明化を有効化
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { bold = true },
      statementStyle = { bold = true },
      typeStyle = {},
    }

    -- カラースキーム適用
    vim.cmd 'colorscheme kanagawa-dragon'

    -- 追加の透明化設定
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'MsgArea', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'NONE' })

    -- カーソルの色設定
    vim.api.nvim_set_hl(0, 'Cursor', { fg = '#FFA066', bg = '#FFA066' })
  end,
}
