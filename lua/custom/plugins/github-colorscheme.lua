return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false, -- 起動時にロード
  priority = 1000, -- 他のプラグインよりも先に読み込む
  config = function()
    require('github-theme').setup {
      -- 必要に応じてカスタマイズ
    }

    -- カラースキームを適用
    vim.cmd 'colorscheme github_dark_default'
  end,
}
