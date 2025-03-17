return {
  'EdenEast/nightfox.nvim',
  name = 'nightfox',
  lazy = false, -- 起動時にロード
  priority = 1000, -- 他のプラグインよりも先に読み込む
  config = function()
    require('nightfox').setup {
      options = {
        transparent = true, -- 透過を有効化
      },
    }
    vim.cmd 'colorscheme carbonfox'

    -- Neovimの背景をターミナルのデフォルト背景に統一
    vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
    vim.cmd [[ hi NormalNC guibg=NONE ctermbg=NONE ]]
  end,
}
