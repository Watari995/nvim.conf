return {
  {
    'windwp/nvim-ts-autotag',
    lazy = true, -- 必要な時にロード
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
}
