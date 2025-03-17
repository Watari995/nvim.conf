return {
  {
    'nvim-tree/nvim-web-devicons',
    lazy = true, -- 必要な時にロード
    config = function()
      require('nvim-web-devicons').setup {
        override = {
          zsh = { icon = '', color = '#428850', cterm_color = '65', name = 'Zsh' },
        },
        default = true, -- 未定義のファイルタイプにもデフォルトアイコンを適用
      }
    end,
  },
}
