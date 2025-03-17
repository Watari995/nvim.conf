return {
  'EdenEast/nightfox.nvim',
  name = 'nightfox',
  lazy = false, -- 起動時にロード
  priority = 1000, -- 他のプラグインよりも先に読み込む
  config = function()
    -- カラースキームをcarbonfoxに設定
    vim.cmd 'colorscheme carbonfox'
  end,
}
