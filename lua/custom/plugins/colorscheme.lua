return {
  'datsfilipe/vesper.nvim',
  name = 'vesper',
  lazy = false, -- 起動時にロード
  priority = 1000, -- 他のプラグインよりも先に読み込む
  config = function()
    -- カラースキームを適用
    vim.cmd 'colorscheme vesper'
  end,
}
