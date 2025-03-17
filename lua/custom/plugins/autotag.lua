return {
  {
    'windwp/nvim-ts-autotag',
    lazy = false, -- Neovim起動時にプラグインが即ロードされるという意味
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
}
